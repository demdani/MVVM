import Foundation

struct ListResponseModel: Codable {
    let items: [ListItemResponseModel]
}

struct ListItemResponseModel: Codable {
    let title: String
    let description: String
    let imageURL: URL
}
