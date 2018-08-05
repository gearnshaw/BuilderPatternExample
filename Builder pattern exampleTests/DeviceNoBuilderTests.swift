//
//  DeviceNoBuilderTests.swift
//  Builder pattern exampleTests
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import XCTest
@testable import Builder_pattern_example

class DeviceNoBuilderTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }
}

extension DeviceNoBuilderTests {
    func test_itShouldUseCorrectDeviceId_whenConnectionIsMade() {
        // given
        let expectedId = "abcde12345"
        let device = Device(id: expectedId,
                            name: "deviceName",
                            color: UIColor.red,
                            lastSeen: nil,
                            userId: "skjf3874")

        // when
        // ...

        // then
        // Assert that the device ID was correct
    }

    func test_itShouldConnectToDevice_whenDeviceIsActivated() {
        // given
        let device = Device(id: "abc1234",
                            name: "deviceName",
                            color: UIColor.red,
                            lastSeen: nil,
                            userId: "skjf3874")

        // when
        // ...

        // then
        // Assert the connection code was calledfi
    }
}
