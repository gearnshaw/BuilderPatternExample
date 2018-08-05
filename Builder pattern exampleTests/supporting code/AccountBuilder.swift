//
//  AccountBuilder.swift
//  Builder pattern exampleTests
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import Foundation
@testable import Builder_pattern_example

class AccountBuilder {
    private var userName: String = "Some username"
    private var password: String = "Some password"
    private var history: History? = nil

    func with(userName: String) -> AccountBuilder {
        self.userName = userName
        return self
    }

    func with(password: String) -> AccountBuilder {
        self.password = password
        return self
    }

    func with(history: History) -> AccountBuilder {
        self.history = history
        return self
    }

    func build() -> Account {
        let unwrappedHistory: History
        if let history = history {
            unwrappedHistory = history
        } else {
            unwrappedHistory = HistoryBuilder()
                .build()
        }

        return Account(userName: userName,
                       password: password,
                       history: unwrappedHistory)
    }
}
