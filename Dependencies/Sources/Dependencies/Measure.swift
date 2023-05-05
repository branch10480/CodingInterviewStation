import Foundation

public class Measure {
    public static func mesure(body: @escaping () -> Void) {
        let trialCount: Int = 100
        let start = Date.timeIntervalSinceReferenceDate
        for _ in 0..<trialCount {
            body()
        }
        let end = Date.timeIntervalSinceReferenceDate
        print((end - start) / Double(trialCount), "sec")
    }
}
