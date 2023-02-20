import Foundation

class BaseURLProvider {
    #if DEVELOPMENT
    let baseURLString = "http://localhost:3000"
    let baseAPIString = "http://localhost:3000/api/v1"
    #elseif STAGING
    let baseURLString = "http://staging.actonit.herokuapp.com"
    let baseAPIString = "http://staging.actonit.herokuapp.com/api/v1"
    #else
    let baseURLString = "http://actonit.com"
    let baseAPIString = "http://actonit.com/api/v1"
    #endif
    
    static let shared = BaseURLProvider()
    
    var environmentSpecificAPIURL: URL {
        URL(string: baseAPIString)!
    }
}
