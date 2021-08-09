import Foundation

struct Response: Codable {
    var data: [ResponseData]
    var last_updated: String
}

struct ResponseData: Codable {
    var change_cases: String
    var change_fatalities: String
    var change_recoveries: String
    var total_cases: String
    var total_fatalities: String
}

