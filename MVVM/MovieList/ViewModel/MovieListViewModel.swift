import Foundation

protocol MovieListViewModel {
    var listBinding: Binding<[ListModel]> { get }
    func fetchMovies()
}

class MovieListViewModelImpl: MovieListViewModel {

    let listBinding = Binding<[ListModel]>(value: [])
    private let service: MovieListService
    private let formatter: MovieListFormatter

    init(service: MovieListService, formatter: MovieListFormatter) {
        self.service = service
        self.formatter = formatter
    }

    func fetchMovies() {
        service.fetchMovies { [weak self] result in
            guard let self = self else { return }

            switch result {
            case let .success(response):
                let items = self.formatter.listModel(from: response)
                self.listBinding.value.append(contentsOf: items)
            case let .failure(error):
                print()
            }
        }
    }

}
