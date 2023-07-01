import Foundation

public typealias Routes = [Route]

// MARK: - Route
public struct Route: Codable, Identifiable {
    public let id, routeID: String
    public let v: Int
    public let createdAt: String
    public let directions: [Direction]?
    public let municipalities: [Municipality]
    public let routeColor, routeLongName, routeShortName, routeTextColor: String
    public let updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case routeID = "route_id"
        case v = "__v"
        case createdAt, directions, municipalities
        case routeColor = "route_color"
        case routeLongName = "route_long_name"
        case routeShortName = "route_short_name"
        case routeTextColor = "route_text_color"
        case updatedAt
    }

    public enum RouteColor: String, Codable {
        case bb3E96 = "#BB3E96"
        case ed1944 = "#ED1944"
        case f4Ac1C = "#F4AC1C"
        case fdb71A = "#FDB71A"
        case the00B8B0 = "#00B8B0"
        case the3D85C6 = "#3D85C6"
    }

    public enum RouteTextColor: String, Codable {
        case ffffff = "#FFFFFF"
    }
}
