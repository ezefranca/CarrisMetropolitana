import Foundation

// MARK: - Shape
public struct Shape: Codable {
    public let shapeID: String
    public let shapePtLat, shapePtLon, shapePtSequence, shapeDistTraveled: String
    public let id: String

    enum CodingKeys: String, CodingKey {
        case shapeID = "shape_id"
        case shapePtLat = "shape_pt_lat"
        case shapePtLon = "shape_pt_lon"
        case shapePtSequence = "shape_pt_sequence"
        case shapeDistTraveled = "shape_dist_traveled"
        case id = "_id"
    }
}
