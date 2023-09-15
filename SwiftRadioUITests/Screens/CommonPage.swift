//
//  CommonPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 24.04.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class CommonPage {
    
    enum AnotherAppIds: String {
        case documentsApp = "com.apple.DocumentsApp"
        case safari = "com.apple.mobilesafari"
        case springBoard = "com.apple.springboard"
        case settings = "com.apple.Preferences"
        case vividApp = "com.vivid.money.debug"
    }
    
    
    //Screen element detection function
    func getElementPositionAsCGFloat(element: XCUIElement) -> (x: CGFloat, y: CGFloat) {
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
    
    //Fuction explicit wait
    func waitFor(timeInterval: TimeInterval) {
        Thread.sleep(forTimeInterval: timeInterval)
    }
    
}
