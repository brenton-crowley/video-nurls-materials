import Foundation

let sharedSession = URLSession.shared

sharedSession.configuration.allowsCellularAccess
sharedSession.configuration.allowsCellularAccess = false
sharedSession.configuration.allowsCellularAccess

let myDefaultConfiguration = URLSessionConfiguration.default
let ephemeralConfiguration = URLSessionConfiguration.ephemeral
let backgroundConfiguration = URLSessionConfiguration.background(withIdentifier: "com.learningAbout.URLSession")

myDefaultConfiguration.allowsCellularAccess = false
myDefaultConfiguration.allowsCellularAccess
myDefaultConfiguration.allowsExpensiveNetworkAccess = true
myDefaultConfiguration.allowsExpensiveNetworkAccess
myDefaultConfiguration.allowsConstrainedNetworkAccess = true
myDefaultConfiguration.allowsConstrainedNetworkAccess

let meDefaultSession = URLSession(configuration: myDefaultConfiguration)

let defaultSession = URLSession(configuration: .default)
