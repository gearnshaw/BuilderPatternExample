//
//  HistoryBuilder.swift
//  Builder pattern exampleTests
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import Foundation
@testable import Builder_pattern_example

class HistoryBuilder {
    private var lastLoggedIn: Date? = nil
    private var averageMonthlyUse: Double = 1.1
    private var averageWeeklyUse: Double = 2.2

    func with(lastLoggedIn: Date?) -> HistoryBuilder {
        self.lastLoggedIn = lastLoggedIn
        return self
    }

    func with(averageMonthlyUse: Double) -> HistoryBuilder {
        self.averageMonthlyUse = averageMonthlyUse
        return self
    }

    func with(averageWeeklyUse: Double) -> HistoryBuilder {
        self.averageWeeklyUse = averageWeeklyUse
        return self
    }

    func build() -> History {
        return History(lastLoggedIn: lastLoggedIn,
                       averageMonthlyUse: averageMonthlyUse,
                       averageWeeklyUse: averageWeeklyUse)
    }
}
