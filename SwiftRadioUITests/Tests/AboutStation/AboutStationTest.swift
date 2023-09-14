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
        step("Выбирать станцию") {
            SwiftRadioPage.selectStation()
        }
        step("Открыть окно с информацией о станции") {
            NowPlayingPage.openInfoPage.tap()
        }
        step("Проверка отображения имени станции") {
            InfoStationPage.checkStationNameInfoPage()
        }
        step("Закрыть окно с информацией о станции") {
            InfoStationPage.okayButtonInfo.tap()
        }
    }
}
