//
//  Division.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 04/02/2024.
//

import Foundation

class Division{
    let code: String
    var students: [Student] = []
    
    init(code: String){
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division{
        let division = Division(code: code)
        for _ in 0..<size{
            let new_student = Student(forename: "Forename", surname: "Surname", birthday: .now)
            division.students.append(new_student)
        }
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vCY-1", of: 12),
                           Division.createDivision(code: "vCZ-1", of: 9),
                           Division.createDivision(code: "xD1-1", of: 10),
                           Division.createDivision(code: "vBX-2", of: 7)]
    #endif
}
