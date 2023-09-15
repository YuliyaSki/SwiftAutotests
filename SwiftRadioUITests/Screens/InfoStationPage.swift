//
//  InfoStationPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

struct InfoStationPage: BaseScreen {

    typealias InfoStationPage = AccessibilityIDs.InfoStationPage

    //MARK: UI elements
    
    static let stationImageInfo = app.images[InfoStationPage.stationImageInfo.rawValue]
    
    static let stationIconInfo = app.images[InfoStationPage.stationIconInfo.rawValue]
    
    static let stationLongDescInfo = app.staticTexts[InfoStationPage.stationLongDescInfo.rawValue]
    
    static let okayButtonInfo = app.buttons[InfoStationPage.okayButtonInfo.rawValue]
    
    static let leftNavBarButtonInfoPage = app.navigationBars.children(matching: .button).firstMatch

    static func checkStationNameInfoPage() {
            XCTAssertTrue(stationImageInfo.exists)
        }
}
