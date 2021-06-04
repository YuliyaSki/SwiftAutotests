//
//  CommonTestCase.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.04.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class CommonTestCase: XCTestCase {
    let application = XCUIApplication()
    
    //предусловия перед запуском каждого теста в классе
    override func setUp() {
        super.setUp()
        application.launch()
        continueAfterFailure = false
    }
    
    //выполняет очистку после каждого теста в классе
    override func tearDown() {
        super.tearDown()
    }
}
