# 🚌 🟨⬛️
# Carris Metropolitana Service

This project provides a Swift API client for interacting with the Carris Metropolitana API, which allows users to access data related to routes and stops in the metropolitan area.

> Note: This project was generated with the assistance of ChatGPT, an AI language model developed by OpenAI.

## Getting Started

### Requirements

- iOS 15.0+ (or macOS with macOS 12.0+)
- Xcode 14.0+
- Swift 5.8+

### Installation

To use the Carris Metropolitana Service in your project, follow these steps:

1. Add the following dependency to your `Package.swift` file:

```swift
    dependencies: [
        .package(url: "https://github.com/ezefranca/CarrisMetropolitana.git", branch: "main"),
    ],
```

2. Import the CarrisMetropolitana module in your Swift files:

```swift
import CarrisMetropolitana
```

### Usage
Here is an example of how to use the CarrisMetropolitanaService:

```swift
let service = CarrisMetropolitanaService()

do {
    let routes = try await service.getAllRoutesSummary()
    print(routes)
} catch {
    print("Error: \(error)")
}
```

For more details on the available methods and their usage, please refer to the source code.

## Acknowledgements

The code in this project was generated with the assistance of ChatGPT, an AI language model developed by OpenAI.

## License

This project is licensed under the [MIT License](/LICENSE).

And [Carris Metropolitana License](https://github.com/carrismetropolitana/schedules-api)
