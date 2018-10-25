import Foundation
import Security
import ServiceManagement

public struct CommandLineInstaller {
  public static func start(_ completed: @escaping () -> Void) {
    var authorizationRef: AuthorizationRef?

    // let status = AuthorizationCreate(nil, nil, AuthorizationFlags(rawValue: 0), &authorizationRef)
    var items = AuthorizationItem(name: kSMRightBlessPrivilegedHelper, valueLength: 0, value: nil, flags: 0)

    var rights = AuthorizationRights(count: 1, items: &items)
    let flags: AuthorizationFlags = [.interactionAllowed, .extendRights, .preAuthorize]

    let stats = AuthorizationCreate(&rights, nil, flags, &authorizationRef)
    // let err = AuthorizationCopyRights(authorizationRef!, &rights, nil, flags, nil)

    var cfError: Unmanaged<CFError>?
    let result = SMJobBless(kSMDomainSystemLaunchd, "com.brightdigit.Speculid-Mac-Installer" as CFString, authorizationRef, &cfError)
    debugPrint(result)
    debugPrint(cfError?.takeRetainedValue())

    Application.current.withInstaller {
      result in

      switch result {
      case let .success(installer):
        installer.hello(name: "Foo", { value in

          debugPrint(value)
          completed()
        })

      case let .error(error):
        debugPrint(error)
        completed()
      }
    }
  }
}

extension CommandLineInstaller {
  public static func startSync() {
    let semaphore = DispatchSemaphore(value: 0)
    start {
      semaphore.signal()
    }
    semaphore.wait(timeout: .now() + 10)
  }
}
