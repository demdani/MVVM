import Foundation

class Bond<T> {

    typealias Listener = (T) -> Void

    var listener: Listener

    init(_ listener: @escaping Listener) {
        self.listener = listener
    }

    func bind(_ dynamic: Dynamic<T>) {
        dynamic.bonds.append(BondBox(self))
    }
}
