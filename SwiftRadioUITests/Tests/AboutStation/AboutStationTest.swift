//
//  AboutStationTest.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 30.01.2022.
//  Copyright © 2022 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

final class AboutStationTest:CommonTestCase {
    
    func testOpenInfoStation() {
        SwiftRadioPage(app: application)
            .selectStation()
        NowPlayingPage(app: application)
            .clickInformationButton()
        InfoStationPage(app: application)
            .checkStationNameInfoPage()
            .closeInfoPage()
    }
}
