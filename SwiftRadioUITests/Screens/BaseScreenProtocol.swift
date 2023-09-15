//
//  BaseScreenProtocol.swift
//  SwiftRadioUITests
//
//  Created by Юлия Колесникова on 04.08.2023.
//  Copyright © 2023 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

protocol BaseScreen {
    static var app: XCUIApplication { get }
    static var safari: XCUIApplication { get }
    
}
extension BaseScreen {
    static var app: XCUIApplication {
        XCUIApplication()
    }

    static var safari: XCUIApplication {
        XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
    }

    static func getElementPositionAsCGFloat(element: XCUIElement) -> (x: CGFloat, y: CGFloat) {
        let frame = element.frame
        let xPosition = frame.origin.x
        let yPosition = frame.origin.y
        let screenWidth = UIScreen.main.fixedCoordinateSpace
            .bounds.width
        let screenHeight = UIScreen.main.fixedCoordinateSpace
            .bounds.height
        let elementXPositionAsPortionOfScreen = xPosition / screenWidth
        let elementYPositionAsPortionOfScreen = yPosition / screenHeight
        return (
            x: elementXPositionAsPortionOfScreen,
            y: elementYPositionAsPortionOfScreen
        )
    }

    static func waitFor(timeInterval: TimeInterval) {
        Thread.sleep(forTimeInterval: timeInterval)
    }
}
