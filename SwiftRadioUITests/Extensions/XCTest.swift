//
//  XCTest.swift
//  SwiftRadioUITests
//
//  Created by Юлия Колесникова on 14.09.2023.
//  Copyright © 2023 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

public extension XCTest {

    @discardableResult
    func step(_ name: String, step: () -> Void) -> XCTest {
        XCTContext.runActivity(named: "Step: " + name) { _ in
            step()
        }
        return self
    }
}
