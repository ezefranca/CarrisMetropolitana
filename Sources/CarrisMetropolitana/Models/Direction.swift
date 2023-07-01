import Foundation

// MARK: - Direction
public struct Direction: Codable, Identifiable {
    public let patternID, directionID: String
    public let headsign: String
    public let shape: [Shape]
    public let trips: [Trip]
    public let id: String

    enum CodingKeys: String, CodingKey {
        case patternID = "pattern_id"
        case directionID = "direction_id"
        case headsign, shape, trips
        case id = "_id"
    }
}
