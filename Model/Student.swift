//
//  Student.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 04/02/2024.
//

import Foundation


class Student: Codable{
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename:String, surname:String, birthday: Date){
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = Student(forename: "Koza", surname: "Kurumlu", birthday: Date())
    static let examples = [example]
    #endif
}
