import Foundation

class BondBox<T> {

    weak var bond: Bond<T>?

    init(_ bond: Bond<T>) {
        self.bond = bond
    }
}
