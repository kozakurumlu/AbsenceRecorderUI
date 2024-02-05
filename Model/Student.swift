//
//  Student.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 04/02/2024.
//

import Foundation


class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename:String, surname:String, birthday: Date){
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
}
