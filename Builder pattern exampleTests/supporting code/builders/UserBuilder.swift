//
//  UserBuilder.swift
//  Builder pattern exampleTests
//
//  Created by Gabrielle Earnshaw on 05/08/2018.
//  Copyright © 2018 Gabrielle Earnshaw. All rights reserved.
//

import Foundation
@testable import Builder_pattern_example

class UserBuilder {
    private var firstName: String = "Firstname"
    private var surname: String = "Surname"
    private var age: Int = 20
    private var location: String = "London"
    private var account: Account?

    func with(firstName: String) -> UserBuilder {
        self.firstName = firstName
        return self
    }

    func with(surname: String) -> UserBuilder {
        self.surname = surname
        return self
    }

    func with(age: Int) -> UserBuilder {
        self.age = age
        return self
    }

    func with(location: String) -> UserBuilder {
        self.location = location
        return self
    }

    func with(account: Account) -> UserBuilder {
        self.account = account
        return self
    }

    func build() -> User {
        let unwrappedAccount: Account
        if let account = account {
            unwrappedAccount = account
        } else {
            unwrappedAccount = AccountBuilder()
                .build()
        }

        return User(firstName: firstName,
                    surname: surname,
                    age: age,
                    location: location,
                    account: unwrappedAccount)
    }
}
