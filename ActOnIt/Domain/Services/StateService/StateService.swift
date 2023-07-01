import Foundation

final class StateService {
    private(set) lazy var task: TaskState = {
        TaskState()
    }()
    
    fileprivate let remote: RemoteService
    
    init(remote: RemoteService) {
        self.remote = remote
    }
}
