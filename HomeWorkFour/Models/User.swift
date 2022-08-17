//
//  User.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 16.08.2022.
//

import Foundation

struct User {
    var user: String
    var password: String
}

    struct Person {
        var fullName: String
        var age: String
        var number: String
        var email: String
        var aboutMe: String
    }

extension User {
    static func getUser() -> User {
    User(user: "Stepan", password: "123")
    }
}

extension Person {
    static func getPerson() -> Person {
        Person(fullName: "Степан Юрин",
               age: "27",
               number: "+7(919)307-75-72",
               email: "satsteo@gmail.com",
               aboutMe: "Увлекаюсь музыкой. Играю на барабанах, гитаре, укулеле, фортепиано. Пою и преподаю вокал. Так же фанатею от верховой езды на лошадях. Счастливый отец маленького добермана :)"
        )
}
}
