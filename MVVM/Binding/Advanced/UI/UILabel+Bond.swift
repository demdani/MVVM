import UIKit

private var handle: UInt8 = 0

extension UILabel {

    var textBond: Bond<String>? {
        if let bond = objc_getAssociatedObject(self, &handle) {
            return bond as? Bond<String>
        } else {
            let bond = Bond<String>() { [weak self] text in
                self?.text = text
            }
            objc_setAssociatedObject(self, &handle, bond, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return bond
        }
    }
}
