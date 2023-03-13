import Foundation

struct WelcomeValue: Codable {
    let buyPrice, sellPrice, lastTrade, high: String
    let low, avg, vol, volCurr: String
    let updated: Int

    enum CodingKeys: String, CodingKey {
        case buyPrice = "buy_price"
        case sellPrice = "sell_price"
        case lastTrade = "last_trade"
        case high, low, avg, vol
        case volCurr = "vol_curr"
        case updated
    }
}

typealias Welcome = [String: WelcomeValue]

