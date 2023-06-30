import Foundation

// MARK: - Stops

typealias Stops = [Stop]

// MARK: - Stop

class Stop: Codable {
    let id, stopID: String
    let v: Int
    let createdAt: String
    let routes: [Route]
    let stopLat, stopLon, stopName, updatedAt: String

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

    init(id: String, stopID: String, v: Int, createdAt: String, routes: [Route], stopLat: String, stopLon: String, stopName: String, updatedAt: String) {
        self.id = id
        self.stopID = stopID
        self.v = v
        self.createdAt = createdAt
        self.routes = routes
        self.stopLat = stopLat
        self.stopLon = stopLon
        self.stopName = stopName
        self.updatedAt = updatedAt
    }
}
