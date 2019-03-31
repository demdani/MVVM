import Foundation

protocol MovieListService {
    func fetchMovies(completion: @escaping (NetworkResult<ListResponseModel>) -> Void)
}

class MovieListServiceImpl: MovieListService {

    func fetchMovies(completion: @escaping (NetworkResult<ListResponseModel>) -> Void) {

    }
}
