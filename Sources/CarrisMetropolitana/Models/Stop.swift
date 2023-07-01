import Foundation

// MARK: - Stops

public typealias Stops = [Stop]

// MARK: - Stop

public struct Stop: Codable, Identifiable {
    public let id, stopID: String
    public let v: Int
    public let createdAt: String
    public let routes: [Route]
    public let stopLat, stopLon, stopName, updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case stopID = "stop_id"
        case v = "__v"
        case createdAt, routes
        case stopLat = "stop_lat"
        case stopLon = "stop_lon"
        case stopName = "stop_name"
        case updatedAt
    }
}
