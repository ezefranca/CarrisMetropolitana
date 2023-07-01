import Foundation

// MARK: - Trip
public struct Trip: Codable, Identifiable {
    public let tripID: String
    public let serviceID: String
    public let calendarDesc: String
    public let dates: [String]
    public let schedule: [Schedule]
    public let id: String

    enum CodingKeys: String, CodingKey {
        case tripID = "trip_id"
        case serviceID = "service_id"
        case calendarDesc = "calendar_desc"
        case dates, schedule
        case id = "_id"
    }
}
