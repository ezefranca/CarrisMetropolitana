import Foundation

// MARK: - APIRouter Protocol

protocol APIRouter {
    static var baseURL: URL { get }
    var path: String { get }
}

extension APIRouter {
    var url: URL {
        let fullPath = "\(Self.baseURL)/\(path)"
        return URL(string: fullPath)!
    }
}
