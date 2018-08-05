//
//  Device.swift
//  Builder pattern example
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import Foundation
import UIKit

struct Device {
    let id: String
    let name: String
    let color: UIColor
    var lastSeen: Date?
    var user: User?

    var isActivated: Bool {
        return user != nil && lastSeen != nil
    }
}
