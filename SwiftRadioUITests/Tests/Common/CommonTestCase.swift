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
    var application = XCUIApplication()
    
    
    //Preconditions before running each test in a class
    override func setUp() {
        super.setUp()
        application.launch()
        continueAfterFailure = false
    }
    
    //Function does a cleanup after each test in the class
    override func tearDown() {
        super.tearDown()
    }
    
    //Fuction explicit wait
    func waitFor(timeInterval: TimeInterval) {
        Thread.sleep(forTimeInterval: timeInterval)
    }
    
    //Function for handling system alert
    func emailErrorAlertHandler() {
        addUIInterruptionMonitor(withDescription: "Could Not Send Email") { alert in
            alert.buttons["OK"].tap()
            return true
        }
    }
    
    func wait(_ element: XCUIElement, _ predicateString: String) {
        let expectation = XCTNSPredicateExpectation(predicate: NSPredicate(format: predicateString), object: element)
        let time = 10.0
        let result = XCTWaiter().wait(for: [expectation], timeout: time)
        if result != .completed {
            XCTFail("Condition '\(predicateString)' for \(element) was not satisfied during \(time) seconds")
        }
    }
    
    func waitUntilVisible(_ element: XCUIElement) {
        return wait(element, "exists == true")
    }


}
