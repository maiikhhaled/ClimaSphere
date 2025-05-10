import Foundation
import CoreLocation

protocol WeatherServiceDelegate {
    func weatherDidUpdate(_ service : WeatherService , model : WeatherInfo)
    func weatherFetchFaild(error : Error)
}

struct WeatherService {
    private let url =  "https://api.openweathermap.org/data/2.5/weather?appid=68cff2667357524af0cf9f8e46559b53&units=metric"
    var delegate : WeatherServiceDelegate?
    
    func fetchWeather(city : String) {
        let queryURL = "\(url)&q=\(city.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")"
        urlRequest(url: queryURL)
    }
    func fetchWeather(lat: CLLocationDegrees ,long: CLLocationDegrees){
        let queryURL = "\(url)&lat=\(lat)&lon=\(long)"
        urlRequest(url: queryURL)
    }
    private func urlRequest(url : String) {
        guard let url = URL(string:url) else {
            return
        }
        let session = URLSession(configuration: .default)
        let _: Void = session.dataTask(with: url) { data, response, error in
            if let error = error {
                delegate?.weatherFetchFaild(error: error)
                return
            }
            guard let data = data , let weatherInfo = parse(data: data) else {
                print("faild while parsing JSON")
                return
            }
            delegate?.weatherDidUpdate(self, model: weatherInfo)
        }
            .resume()
    }
    private func parse(data : Data)-> WeatherInfo? {
        
        let decoder = JSONDecoder()
        do {
            let reponse = try decoder.decode(APIWeatherResponse.self , from: data)
            let conditionId = reponse.weather.first?.id ?? 0
            let temp = reponse.main.temp
            let city = reponse.name
            return WeatherInfo(statusCode: conditionId , city: city, temperature: temp)
        }catch{
            delegate?.weatherFetchFaild(error: error)
            return nil
        }

    }
    
}


