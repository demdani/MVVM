import Foundation

enum NetworkResult<T> {
    case success(T)
    case failure(Error)
}
