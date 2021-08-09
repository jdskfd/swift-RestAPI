import SwiftUI

class Connection: ObservableObject {
//    @Published var items = [ResponseData]()
    @Published var apiData = [1:""]
    
    func get() {
        guard let url = URL(string: "https://api.covid19tracker.ca/summary") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { (data, res, err) in
            guard let data = data else { return }
            do {
                let result = try JSONDecoder().decode(Response.self, from: data)
                print("result is \(result)")
                DispatchQueue.main.async {
                    self.apiData[1] = result.data[0].change_cases
                    self.apiData[2] = result.data[0].total_cases
                    self.apiData[3] = result.data[0].change_fatalities
                    self.apiData[4] = result.data[0].total_fatalities
                    self.apiData[5] = result.data[0].change_recoveries
                    self.apiData[6] = result.last_updated
                    
                }
            } catch (let error) {
                print(error)
            }
        }
        task.resume()
    }
    
    
    
}

