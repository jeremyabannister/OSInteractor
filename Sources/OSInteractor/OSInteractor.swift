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
  func type (_ text: String)
  func press (_ key: PressableKey)
  func whileHolding (keys: [HoldableKey], do action: ()->())
  func openApp (_ name: String)
  
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
  public func whileHolding (_ key: HoldableKey, do action: ()->()) {
    self.whileHolding(keys: [key], do: action)
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
