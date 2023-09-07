import Foundation
import SwiftUI

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)
let urlString = "https://itunes.apple.com/search?media=music&entity=song&term=starlight"

guard let url = URL(string: urlString) else { fatalError("Could not create the URL") }

Task {
    let (data, response) = try await session.data(from: url)
    
    // Check to see if the HTTPURLResponse is 2xx.
    guard let httpResponse = response as? HTTPURLResponse,
          (200..<300).contains(httpResponse.statusCode),
          let jsonObject = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
          let prettyPrintedData = try? JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted]),
          let prettyPrintedString = String(data: prettyPrintedData, encoding: .utf8)
    else { return }

    print(prettyPrintedString)
}



