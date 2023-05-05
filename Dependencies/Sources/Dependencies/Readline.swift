import Foundation

public enum ReadLine {
    public static func int(message: String? = nil) -> Int {
        print("Int値の入力:", terminator: " ")
        return Int(readLine()!)!
    }

    public static func ints(separator: String = " ") -> [Int] {
        print("Int値の複数入力:", terminator: " ")
        return readLine()!.split(separator: separator).map{ Int($0)! }
    }
}
