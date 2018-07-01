//
//  OSInteractor.swift
//  OSInteractor
//
//  Created by Jeremy Bannister on 7/1/18.
//  Copyright © 2018 Jeremy Bannister. All rights reserved.
//

// MARK: - Initial Declaration
public protocol OSInteractor {
  // Primitive Interaction
  func click (at x: Double, _ y: Double)
  func openApp (_ name: String)
  func press (_ key: PressableKey)
  func type (_ text: String)
  func hold (keys: [HoldableKey], action: ()->())
  
  // Shortcuts
  func selectAll ()
  func copySelection ()
  func cutSelection ()
  func paste ()
  func quit ()
  func newTab ()
  func closeTab ()
}

// MARK: - Convenience Overloads
extension OSInteractor {
  public func hold (_ key: HoldableKey, action: ()->()) {
    self.hold(keys: [key], action: action)
  }
}

// MARK: - Default Shortcut Implementations
extension OSInteractor {
  public func selectAll () { print("Concrete OSInteractor did not implement `selectAll()`") }
  public func copySelection () { print("Concrete OSInteractor did not implement `copySelection()`") }
  public func cutSelection () { print("Concrete OSInteractor did not implement `cutSelection()`") }
  public func paste () { print("Concrete OSInteractor did not implement `paste()`") }
  public func quit () { print("Concrete OSInteractor did not implement `quit()`") }
  public func newTab () { print("Concrete OSInteractor did not implement `newTab()`") }
  public func closeTab () { print("Concrete OSInteractor did not implement `closeTab()`") }
}
