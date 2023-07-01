import Foundation

// MARK: - Municipality
public struct Municipality: Codable, Identifiable {
    public let municipalityID: String
    public let value: String
    public let id: String

    enum CodingKeys: String, CodingKey {
        case municipalityID = "id"
        case value
        case id = "_id"
    }

    public init(municipalityID: String, value: String, id: String) {
        self.municipalityID = municipalityID
        self.value = value
        self.id = id
    }
}
