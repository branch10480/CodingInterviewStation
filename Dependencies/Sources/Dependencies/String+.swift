import Foundation

public extension String {
    var split: [String] {
        map { String($0) }
    }
}
