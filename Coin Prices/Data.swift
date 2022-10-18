// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coins = try? newJSONDecoder().decode(Coins.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - Coin
public struct Coin: Codable, Identifiable, Hashable {
    public let id, symbol, name: String
    public let image: String
    public let currentPrice: Double
    public let marketCap, marketCapRank: Int
    public let fullyDilutedValuation: Int?
    public let totalVolume: Double
    public let high24H, low24H, priceChange24H, priceChangePercentage24H: Double?
    public let marketCapChange24H, marketCapChangePercentage24H: Double?
    public let circulatingSupply: Double
    public let totalSupply, maxSupply: Double?
    public let ath, athChangePercentage: Double
    public let athDate: String
    public let atl, atlChangePercentage: Double
    public let atlDate: String
    public let roi: Roi?
    public let lastUpdated: String
    public let sparklineIn7D: SparklineIn7D

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case roi
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
    }

    public init(id: String, symbol: String, name: String, image: String, currentPrice: Double, marketCap: Int, marketCapRank: Int, fullyDilutedValuation: Int?, totalVolume: Double, high24H: Double?, low24H: Double?, priceChange24H: Double?, priceChangePercentage24H: Double?, marketCapChange24H: Double?, marketCapChangePercentage24H: Double?, circulatingSupply: Double, totalSupply: Double?, maxSupply: Double?, ath: Double, athChangePercentage: Double, athDate: String, atl: Double, atlChangePercentage: Double, atlDate: String, roi: Roi?, lastUpdated: String, sparklineIn7D: SparklineIn7D) {
        self.id = id
        self.symbol = symbol
        self.name = name
        self.image = image
        self.currentPrice = currentPrice
        self.marketCap = marketCap
        self.marketCapRank = marketCapRank
        self.fullyDilutedValuation = fullyDilutedValuation
        self.totalVolume = totalVolume
        self.high24H = high24H
        self.low24H = low24H
        self.priceChange24H = priceChange24H
        self.priceChangePercentage24H = priceChangePercentage24H
        self.marketCapChange24H = marketCapChange24H
        self.marketCapChangePercentage24H = marketCapChangePercentage24H
        self.circulatingSupply = circulatingSupply
        self.totalSupply = totalSupply
        self.maxSupply = maxSupply
        self.ath = ath
        self.athChangePercentage = athChangePercentage
        self.athDate = athDate
        self.atl = atl
        self.atlChangePercentage = atlChangePercentage
        self.atlDate = atlDate
        self.roi = roi
        self.lastUpdated = lastUpdated
        self.sparklineIn7D = sparklineIn7D
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public static func == (lhs: Coin, rhs: Coin) -> Bool {
        return lhs.id == rhs.id && lhs.id == rhs.id
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - Roi
public struct Roi: Codable, Hashable {
    public let times: Double
    public let currency: Currency
    public let percentage: Double

    public init(times: Double, currency: Currency, percentage: Double) {
        self.times = times
        self.currency = currency
        self.percentage = percentage
    }
}

public enum Currency: String, Codable, Hashable {
    case btc = "btc"
    case eth = "eth"
    case usd = "usd"
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - SparklineIn7D
public struct SparklineIn7D: Codable, Hashable {
    public let price: [Double]

    public init(price: [Double]) {
        self.price = price
    }
}

public typealias Coins = [Coin]
