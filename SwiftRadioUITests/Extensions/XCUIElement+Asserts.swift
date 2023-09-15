//
//  XCUIElement+Asserts.swift
//  SwiftRadioUITests
//
//  Created by Юлия Колесникова on 14.09.2023.
//  Copyright © 2023 matthewfecher.com. All rights reserved.
//

import XCTest

extension XCUIElement {
    func verifyElement(
        event: ElementEvent = .exists,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        wait(for: event, file: file, line: line)
    }

    func verifySwitch(
        isOn: Bool,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        var switchState: String {
            isOn == true ? "1" : "0"
        }
        XCTAssertEqual(
            value as? String,
            switchState,
            "Ожидается состояние переключателя: \(isOn), но состояние переключателя \(!isOn)",
            file: file,
            line: line
        )
    }

    func verifyLabel(
        equal: String,
        isEqual: Bool = true,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        wait()
        XCTAssertEqual(
            label == equal,
            isEqual,
            isEqual ?
                "Лэйбл должен совпадать с: \(equal)," +
                " но он имеет значение: \(label)" :
                "Лэйбл не должен совпадать с: \(equal)," +
                " но он имеет значение: \(label)",
            file: file,
            line: line
        )
    }

    func verifyLabelsNotEqual(
        expression1: [String],
        expression2: [String],
        isEqual: Bool = true,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        wait()
        XCTAssertNotEqual(
            expression1 == expression2,
            isEqual,
            isEqual ?
                "Лэйбл должен совпадать с: \(expression2)," +
                " но он имеет значение: \(label)" :
                "Лэйбл не должен совпадать с: \(expression1)," +
                " но он имеет значение: \(label)",
            file: file,
            line: line
        )
    }

    func verifyText(
        equal: String,
        isEqual: Bool = true,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        wait()
        XCTAssertEqual(
            value as? String == equal,
            isEqual,
            isEqual ?
                "Текст должен совпадать с \(equal)," +
                " но он имеет значение: \(String(describing: value as? String))" :
                "Текст не должен совпадать с: \(equal)," +
                " но он имеет значение: \(String(describing: value as? String))",
            file: file,
            line: line
        )
    }

    /**
     Checking that progress of track is being made
     */
    func trackWasPlaying() {
        let progressValue = value as? String
        Thread.sleep(forTimeInterval: 5)
        let currentProgressValue = value as? String
        XCTAssertNotEqual(progressValue, currentProgressValue)
    }
}
