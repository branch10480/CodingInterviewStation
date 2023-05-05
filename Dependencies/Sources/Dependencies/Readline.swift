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

    public static func twoInts(separator: String = " ") -> (Int, Int) {
        print("2つの整数を入力:", terminator: " ")
        let ints: [Int] = readLine()!.split(separator: separator).map{ Int($0)! }
        return (ints[0], ints[1])
    }

    public static func threeInts(separator: String = " ") -> (Int, Int, Int) {
        print("3つの整数を入力:", terminator: " ")
        let ints: [Int] = readLine()!.split(separator: separator).map{ Int($0)! }
        return (ints[0], ints[1], ints[2])
    }
}
