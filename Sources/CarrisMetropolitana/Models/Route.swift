import Foundation

public typealias Routes = [Route]

// MARK: - Route
public class Route: Codable, Identifiable {

    public let id, routeID: String
    public let v: Int
    public let createdAt: String
    public let municipalities: [Municipality]
    public let routeColor: RouteColor
    public let routeLongName, routeShortName: String
    public let routeTextColor: RouteTextColor
    public let updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case routeID = "route_id"
        case v = "__v"
        case createdAt, municipalities
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

    public init(id: String, routeID: String, v: Int, createdAt: String, municipalities: [Municipality], routeColor: RouteColor, routeLongName: String, routeShortName: String, routeTextColor: RouteTextColor, updatedAt: String) {
        self.id = id
        self.routeID = routeID
        self.v = v
        self.createdAt = createdAt
        self.municipalities = municipalities
        self.routeColor = routeColor
        self.routeLongName = routeLongName
        self.routeShortName = routeShortName
        self.routeTextColor = routeTextColor
        self.updatedAt = updatedAt
    }
}
