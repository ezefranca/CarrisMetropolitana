import Foundation

// MARK: - Municipality
public class Municipality: Codable, Identifiable {
    public let municipalityID: String
    public let value: Value
    public let id: String

    enum CodingKeys: String, CodingKey {
        case municipalityID = "id"
        case value
        case id = "_id"
    }

    public init(municipalityID: String, value: Value, id: String) {
        self.municipalityID = municipalityID
        self.value = value
        self.id = id
    }

    public enum Value: String, Codable {
        case alcochete = "Alcochete"
        case almada = "Almada"
        case amadora = "Amadora"
        case barreiro = "Barreiro"
        case cascais = "Cascais"
        case cimAlentejoCentral = "CIM Alentejo Central"
        case cimOeste = "CIM Oeste"
        case lisboa = "Lisboa"
        case loures = "Loures"
        case mafra = "Mafra"
        case moita = "Moita"
        case montijo = "Montijo"
        case odivelas = "Odivelas"
        case oeiras = "Oeiras"
        case palmela = "Palmela"
        case seixal = "Seixal"
        case sesimbra = "Sesimbra"
        case setúbal = "Setúbal"
        case sintra = "Sintra"
        case vilaFrancaDeXira = "Vila Franca de Xira"
    }
}
