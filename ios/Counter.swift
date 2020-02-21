//
//  Counter.swift
//  CounterNativeModuleApp
//
//  Created by Panayotis Matsinopoulos on 20/02/2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

@objc(Counter)
class Counter: NSObject {
  @objc
  static var count = 0
  
  @objc
  func increment() {
    print("calling\n")
    Counter.count += 1
    print("count is \(Counter.count)")
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([NSNull(), Counter.count])
  }
}
