import Foundation

// MARK: - Schedule
public struct Schedule: Codable, Identifiable {
    public let stopSequence, stopID: String
    public let stopName: String
    public let stopLon, stopLat, arrivalTime, arrivalTimeOperation: String
    public let departureTime, departureTimeOperation, id: String

    enum CodingKeys: String, CodingKey {
        case stopSequence = "stop_sequence"
        case stopID = "stop_id"
        case stopName = "stop_name"
        case stopLon = "stop_lon"
        case stopLat = "stop_lat"
        case arrivalTime = "arrival_time"
        case arrivalTimeOperation = "arrival_time_operation"
        case departureTime = "departure_time"
        case departureTimeOperation = "departure_time_operation"
        case id = "_id"
    }
}
