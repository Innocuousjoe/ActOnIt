import Foundation
import Moya

typealias APIProvider = MoyaProvider<API>

enum API {
    case listTasks
}

extension API: TargetType, AccessTokenAuthorizable {
    var baseURL: URL {
        return BaseURLProvider.shared.environmentSpecificAPIURL
    }
    
    var path: String {
        switch self {
        case .listTasks:
            return "tasks"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .listTasks:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .listTasks:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        nil
    }
    
    var authorizationType: AuthorizationType? {
        .bearer
    }
}
