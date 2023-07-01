import Foundation

// MARK: - Direction
public struct Direction: Codable, Identifiable, Equatable, Hashable {
    public static func == (lhs: Direction, rhs: Direction) -> Bool {
        lhs.id == rhs.id && lhs.headsign == rhs.headsign
    }

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

    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
}
