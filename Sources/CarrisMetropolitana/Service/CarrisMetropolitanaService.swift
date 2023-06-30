import Foundation

// MARK: - CarrisMetropolitanaService

class CarrisMetropolitanaService {
    private let urlSession: URLSession

    init() {
        let configuration = URLSessionConfiguration.default
        configuration.urlCache = URLCache(memoryCapacity: 20 * 1024 * 1024, diskCapacity: 100 * 1024 * 1024, diskPath: "SchedulesAPI")
        urlSession = URLSession(configuration: configuration)
    }

    /// Fetches data from the specified URL and decodes it into the specified type.
    /// - Parameters:
    ///   - url: The URL to fetch data from.
    /// - Returns: The decoded object of the specified type.
    private func fetchData<T: Decodable>(from url: URL) async throws -> T {
        let (data, _) = try await urlSession.data(from: url)
        return try JSONDecoder().decode(T.self, from: data)
    }
}

// MARK: - API Routes

extension CarrisMetropolitanaService {
    enum CarrisMetropolitanaRoutes: APIRouter {
        static let baseURL = URL(string: "https://schedules.carrismetropolitana.pt/api")!

        case allRoutesSummary
        case routeByID(String)
        case routesByShortName(String)
        case allStops
        case stopByID(String)

        var path: String {
            switch self {
            case .allRoutesSummary:
                return "routes/summary"
            case .routeByID(let routeID):
                return "routes/route_id/\(routeID)"
            case .routesByShortName(let routeShortName):
                return "routes/route_short_name/\(routeShortName)"
            case .allStops:
                return "stops"
            case .stopByID(let stopID):
                return "stops/\(stopID)"
            }
        }
    }
}

// MARK: - Service Methods

extension CarrisMetropolitanaService {
    /// Retrieves a summary of all routes.
    /// - Returns: A `Routes` object representing the summary of all routes.
    func getAllRoutesSummary() async throws -> Routes {
        let url = CarrisMetropolitanaRoutes.allRoutesSummary.url
        return try await fetchData(from: url)
    }

    /// Retrieves a route with the specified ID.
    /// - Parameters:
    ///   - routeID: The ID of the route to retrieve.
    /// - Returns: A `Route` object representing the route with the specified ID.
    func getRouteByID(routeID: String) async throws -> Route {
        let url = CarrisMetropolitanaRoutes.routeByID(routeID).url
        return try await fetchData(from: url)
    }

    /// Retrieves routes with the specified short name.
    /// - Parameters:
    ///   - routeShortName: The short name of the routes to retrieve.
    /// - Returns: A `Routes` object representing the routes with the specified short name.
    func getRoutesByShortName(routeShortName: String) async throws -> Routes {
        let url = CarrisMetropolitanaRoutes.routesByShortName(routeShortName).url
        return try await fetchData(from: url)
    }

    /// Retrieves all stops.
    /// - Returns: A `Stops` object representing all stops.
    func getAllStops() async throws -> Stops {
        let url = CarrisMetropolitanaRoutes.allStops.url
        return try await fetchData(from: url)
    }

    /// Retrieves a stop with the specified ID.
    /// - Parameters:
    ///   - stopID: The ID of the stop to retrieve.
    /// - Returns: A `Stop` object representing the stop with the specified ID.
    func getStopByID(stopID: String) async throws -> Stop {
        let url = CarrisMetropolitanaRoutes.stopByID(stopID).url
        return try await fetchData(from: url)
    }
}

