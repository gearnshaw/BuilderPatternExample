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
    private var id: String = "Some ID"
    private var name: String = "Device name"
    private var color: UIColor = UIColor.black
    private var lastSeen: Date? = nil
    private var user: User? = nil

    func makeActivated() -> DeviceBuilder {
        self.user = UserBuilder().build()
        return self
    }

    func makeUnactivated() -> DeviceBuilder {
        self.user = nil
        return self
    }

    func with(id: String) -> DeviceBuilder {
        self.id = id
        return self
    }

    func with(name: String) -> DeviceBuilder {
        self.name = name
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

    func with(user: User?) -> DeviceBuilder {
        self.user = user
        return self
    }

    func build() -> Device {
        return Device(id: id,
                      name: name,
                      color: color,
                      lastSeen: lastSeen,
                      user: user)
    }
}
