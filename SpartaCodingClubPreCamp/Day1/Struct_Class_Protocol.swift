//
//  Struct_Class_Protocol.swift
//  SpartaCodingClubPreCamp
//
//  Created by yimkeul on 2/3/25.
//

import Foundation


func Ex_1() {
    struct User {
        var name: String
        var age: Int
    }

    var person1 = User(name: "철수", age: 20)
    var person2 = User(name: "영희", age: 21)

    print("=== Struct Example (Before 변경) ===")
    print("user1: \(person1.name), \(person1.age)")
    print("user2: \(person2.name), \(person2.age)")

    person1.age = 22
    person1.name = "짱구"

    person2.age = 55
    person2.name = "맹구"


    print("=== Struct Example (After 변경) ===")
    print("user1: \(person1.name), \(person1.age)")
    print("user2: \(person2.name), \(person2.age)")

}


func Ex_2() {

    class User {
        var name: String
        var age: Int
        init(name: String, age: Int) {
            self.name = name
            self.age = age
        }
    }
    var person1 = User(name: "철수", age: 20)
    var person2 = User(name: "영희", age: 21)

    print("\n=== Class Example (Before 변경) ===")
    print("userA: \(person1.name), \(person1.age)")
    print("userB: \(person2.name), \(person2.age)")

    person1.name = "훈이"
    person1.age = 10
    person2 = person1

    print("\n=== Class Example (After 변경) ===")
    print("userA: \(person1.name), \(person1.age)")
    print("userB: \(person2.name), \(person2.age)")

}

func Ex_3() {
    struct Person: Greetable {
        var name: String
        func greet() -> String {
            return "Hello, I'm \(name)"
        }
    }

    class Robot: Greetable {
        var id: String


        init(id: String) {
            self.id = id
        }

        func greet() -> String {
            return "Hello, I'm \(id)"
        }
    }
    print(Person(name: "짱구").greet())
    print(Robot(id: UUID().uuidString ).greet())
}
func Ex_4() {
    struct Alien: Greetable {}
    print(Alien().greet())
}

func Day1AllEx() {
    Ex_1()
    Ex_2()
    Ex_3()
    Ex_4()
}


fileprivate protocol Greetable {
    func greet() -> String
}

fileprivate extension Greetable {
    func greet() -> String {
        return "Hello"
    }
}

