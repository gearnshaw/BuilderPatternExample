//
//  BuilderTests.swift
//  Builder pattern exampleTests
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import XCTest
@testable import Builder_pattern_example

class BuilderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
}

// MARK: - Communication of intent examples
extension BuilderTests {
    func test_itShouldSendAlert_whenDeviceIsFound() {
        // given
        let device = DeviceBuilder()
            .build()

        // when
        // ...

        // then
        // Assert that alert was sent
    }

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

// MARK: - Complex object graph examples
extension BuilderTests {
    func test_itShouldAuthenticate_whenUserLogsIn() {
        // given
        let user = UserBuilder()
                    .build()

        // when
        // ...

        // then
        // Assert the user was authenticated
    }

    func test_itShouldFailLogin_whenPasswordNotCorrect() {
        // given
        let userName = "test@example.com"
        let password = "Not the right password"
        let account = AccountBuilder()
            .with(userName: userName)
            .with(password: password)
            .build()
        let user = UserBuilder()
            .with(account: account)
            .build()

        // when
        // ...

        // then
        // Assert that login failed
    }
}
