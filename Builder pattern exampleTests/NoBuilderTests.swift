//
//  NoBuilderTests.swift
//  Builder pattern exampleTests
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import XCTest
@testable import Builder_pattern_example

class NoBuilderTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }
}

// MARK: - Communication of intent examples
extension NoBuilderTests {
    func test_itShouldUseCorrectDeviceId_whenConnectionIsMade() {
        // given
        let device = Device(id: "abcde12345",
                            color: UIColor.red,
                            lastSeen: nil,
                            user: nil)

        // when
        // ...

        // then
        // Assert that the device ID was correct
    }

    func test_itShouldConnectToDevice_whenDeviceIsActivated() {
        // given
        let history = History(lastLoggedIn: Date(),
                              averageMonthlyUse: 10.4,
                              averageWeeklyUse: 2.6)
        let account = Account(userName: "test@example.com",
                              password: "password123",
                              history: history)
        let user = User(firstName: "Gabrielle",
                        surname: "Earnshaw",
                        age: 18,
                        location: "Huddersfield",
                        account: account)
        let device = Device(id: "abcde12345",
                            color: UIColor.red,
                            lastSeen: Date(),
                            user: user)

        // when
        // ...

        // then
        // Assert the connection code was calledfi
    }
}

// MARK: - Complex object graph examples
extension NoBuilderTests {
    func test_itShouldAuthenticate_whenUserLogsIn() {
        // given
        let history = History(lastLoggedIn: Date(),
                              averageMonthlyUse: 10.3,
                              averageWeeklyUse: 1.4)
        let account = Account(userName: "someone@example.com",
                              password: "password123",
                              history: history)
        let user = User(firstName: "Charlse",
                        surname: "Smith",
                        age: 30,
                        location: "Leeds",
                        account: account)

        // when
        // ...

        // then
        // Assert the user was authenticated
    }
}
