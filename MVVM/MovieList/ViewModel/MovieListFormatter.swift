import Foundation

class MovieListFormatter {

    func listModel(from response: ListResponseModel) -> [ListModel] {
        return response.items.map {
            ListModel(title: $0.title, description: $0.description, imageURL: $0.imageURL)
        }
    }
}
