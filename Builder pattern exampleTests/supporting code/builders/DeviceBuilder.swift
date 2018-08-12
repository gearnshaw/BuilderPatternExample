//
//  DeviceBuilder.swift
//  Builder pattern exampleTests
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import Foundation
import UIKit
@testable import Builder_pattern_example

class DeviceBuilder {
    // MARK: - Private variables with default values
    private var id: String = "Some ID"
    private var color: UIColor = UIColor.black
    private var lastSeen: Date? = nil
    private var userId: String? = nil

    // MARK: - complex user set up in 'make' functions
    func makeActivated() -> DeviceBuilder {
        self.user = UserBuilder().build()
        self.lastSeen = Date()
        return self
    }

    func makeUnactivated() -> DeviceBuilder {
        self.user = nil
        self.lastSeen = nil
        return self
    }

    // MARK: - 'with' functions to set individual field values
    func with(id: String) -> DeviceBuilder {
        self.id = id
        return self
    }

    func with(color: UIColor) -> DeviceBuilder {
        self.color = color
        return self
    }

    func with(lastSeen: Date?) -> DeviceBuilder {
        self.lastSeen = lastSeen
        return self
    }

    func with(userId: String?) -> DeviceBuilder {
        self.userId = userId
        return self
    }

    // MARK: - 'build' function that creates and returns a constructed object
    func build() -> Device {
        return Device(id: id,
                      color: color,
                      lastSeen: lastSeen,
                      userId: userId)
    }
}
