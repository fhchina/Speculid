
import Foundation
import AppKit
import SwiftVer

var exceptionHandler: ((NSException) -> Void)?

func exceptionHandlerMethod(exception: NSException) {
  if let handler = exceptionHandler {
    handler(exception)
  }
}

open class Application: NSApplication {
  var statusItem: NSStatusItem!

  open override func finishLaunching() {
    super.finishLaunching()

    let menu = NSMenu(title: "Speculid")
    let item = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    item.title = "Speculid"
    item.menu = menu
    statusItem = item
  }

  private class _VersionHandler {
  }

  public static let bundle = Bundle(for: _VersionHandler.self)

  public static let vcs = VersionControlInfo(type: VCS_TYPE,
                                             baseName: VCS_BASENAME,
                                             uuid: Hash(string: VCS_UUID!),
                                             number: VCS_NUM,
                                             date: VCS_DATE,
                                             branch: VCS_BRANCH,
                                             tag: VCS_TAG,
                                             tick: VCS_TICK,
                                             extra: VCS_EXTRA,
                                             hash: Hash(string: VCS_FULL_HASH)!,

                                             isWorkingCopyModified: VCS_WC_MODIFIED)

  public static let sbd = Stage.dictionary(fromPlistAtURL: Application.bundle.url(forResource: "versions", withExtension: "plist")!)!
  // StageBuildDictionaryProtocol! = nil

  public static let version = Version(
    bundle: bundle,
    dictionary: sbd,
    versionControl: vcs)!

  public static func begin(withArguments _: SpeculidArgumentsProtocol, _: @escaping (SpeculidApplicationProtocol) -> Void) {
    let operatingSystem = ProcessInfo.processInfo.operatingSystemVersionString

    let analyticsConfiguration = AnalyticsConfiguration(trackingIdentifier: "UA-33667276-6", applicationName: "speculid", applicationVersion: String(describing: version), customParameters: [.operatingSystemVersion: operatingSystem])
    let tracker = AnalyticsTracker(configuration: analyticsConfiguration, sessionManager: AnalyticsSessionManager())
    NSSetUncaughtExceptionHandler(exceptionHandlerMethod)

    exceptionHandler = tracker.track

    tracker.track(event: AnalyticsEvent(category: "main", action: "launch", label: "application"))

    let application = SpeculidApplication(configuration: SpeculidConfiguration.default, tracker: tracker)
  }
}
