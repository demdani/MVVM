import Foundation

class Dynamic<T> {

    var value: T {
        didSet {
            bonds.forEach { $0.bond?.listener(value) }
        }
    }

    var bonds: [BondBox<T>] = []

    init(_ value: T) {
        self.value = value
    }
}
