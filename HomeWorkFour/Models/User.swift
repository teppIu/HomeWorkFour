//
//  User.swift
//  HomeWorkFour
//
//  Created by Stefan Iurin on 16.08.2022.
//

import Foundation

struct User {
    let user: String
    let password: String
    let person: Person
    let photo: Photo
}

    struct Person {
        let fullName: String
        let age: String
        let profession: String
        let number: String
        let email: String
        let factOne: String
        let factTwo: String
        let factThree: String
        let factFour: String
    }

struct Photo {
    let photoOne: String
    let photoTwo: String
    let photoThree: String
    let photoFour: String
    let photoFive: String
    let photoSix: String
    let photoSeven: String
}

extension User {
    static func getUser() -> User {
        User(user: "Stepan", password: "123",
             person: Person.getPerson(),
             photo: Photo.getPhoto())
    }
}

extension Person {
    static func getPerson() -> Person {
        Person(fullName: "Stepan Iurin",
               age: "27 year old",
               profession: "Future iOS-developer",
               number: "Number: +7(919)307-75-72",
               email: "E-mail: satsteo@gmail.com",
               factOne: "I am fond of music. I play drums, guitar, ukulele, piano.",
               factTwo: "I sing and teach vocals.",
               factThree: "I'm also a fan of horse riding.",
               factFour: "Happy father of a little Doberman :)"
        )
}
}

extension Photo {
    static func getPhoto() -> Photo {
        Photo(photoOne: "photoMain",
              photoTwo: "photoSam",
              photoThree: "photoWithSam",
              photoFour: "photoWithHorse",
              photoFive: "photoVocal",
              photoSix: "photoDrums",
              photoSeven: "photoWithHorseTwo")
    }
}
