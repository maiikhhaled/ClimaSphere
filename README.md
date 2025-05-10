

# WeatherNow

WeatherNow is a simple iOS weather app I built using Swift and UIKit.  
The goal was to create a clean, functional app that allows users to check the current weather by either typing a city name or using their current location.

This project helped me practice working with APIs, handle JSON data, and use CoreLocation for location-based features. I also focused on keeping the code structured and easy to maintain, following the MVC design pattern.

---

## What the app does:

- Lets users search for weather by city name
- Fetches weather based on the user’s current GPS location
- Displays temperature and a weather condition icon
- Provides a clean and minimal user interface

---

## Tech used:

- **Swift**
- **UIKit**
- **CoreLocation**
- **OpenWeatherMap API**
- **URLSession**

---

## Project structure:

- `MainViewController.swift`: handles UI and user interaction
- `WeatherService.swift`: fetches and decodes data from the API
- `WeatherInfo.swift`: prepares weather data for display
- `APIWeatherResponse.swift`: matches the raw API JSON structure

---

## To run the project:

1. Download or clone the repo
2. Open it in Xcode
3. Go to `WeatherService.swift` and replace the API key with your own from [openweathermap.org](https://openweathermap.org/api)
4. Run it on a simulator or a real device
5. Allow location access to test location-based weather

---

## Why I built this:

I wanted to apply what I’ve learned in iOS development by building a real, working app.  
Rather than just following tutorials, I took the core ideas and restructured the code in my own way.  
It was a great chance to get more confident with network requests, model-view separation, and working with external APIs.

---

<h3>Screenshots</h3>

<p>This app supports both Light and Dark Mode to enhance the user experience across different environments. The UI is designed to be clean, responsive, and informative.</p>

<h4>Main UI Components:</h4>

<ul>
  <li><strong>Search Bar</strong>: At the top of the screen, allows users to search for any city.</li>
  <li><strong>Airplane Icon</strong>: When tapped, fetches weather data based on the user's current GPS location.</li>
  <li><strong>Temperature Display</strong>: Shows the current temperature in Celsius.</li>
  <li><strong>City Label</strong>: Displays the name of the city being queried.</li>
  <li><strong>Weather Icon</strong>: Represents the current weather condition (clouds, sun, etc.).</li>
  <li><strong>Adaptive Background</strong>: Background adjusts based on the system appearance (dark/light).</li>
</ul>

<p align="center">
  <img src="https://github.com/user-attachments/assets/3287aa3d-8aa4-4d24-8eb4-d500813a2260" alt="Dark Mode - Weather App" width="250"/>
  &nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/9e1642cb-0481-4c81-9308-8aed8cdf3c4a" alt="Light Mode - Weather App" width="250"/>
</p>

<p align="center" style="font-size: 14px;">
  <em>
    <strong>Left: Dark Mode</strong> — shows the weather for Paris with sunset colors and dark background.<br/>
    <strong>Right: Light Mode</strong> — same layout in light theme. Both screens include the search bar, current location button, weather icon, and temperature.
  </em>
</p>





