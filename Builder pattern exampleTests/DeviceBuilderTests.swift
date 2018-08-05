//
//  DeviceTests.swift
//  Builder pattern exampleTests
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import XCTest
@testable import Builder_pattern_example

class DeviceBuilderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
}

extension DeviceBuilderTests {
    func test_itShouldUseCorrectDeviceId_whenConnectionIsMade() {
        // given
        let expectedId = "abcde12345"
        let device = DeviceBuilder()
            .with(id: expectedId)
            .build()

        // when
        // ...

        // then
        // Assert that the device ID was correct
    }

    func test_itShouldConnectToDevice_whenDeviceIsActivated() {
        // given
        let device = DeviceBuilder()
                        .makeActivated()
                        .build()

        // when
        // ...

        // then
        // Assert the connection code was called
    }
}
