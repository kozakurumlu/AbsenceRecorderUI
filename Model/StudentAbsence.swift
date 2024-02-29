//
//  StudentAbsence.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 26/02/2024.
//

import Foundation


class StudentAbsence: ObservableObject, Codable {
    let student: Student
    @Published var isAbsent: Bool = false
    
    init(student:Student){
        self.student = student
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        student = try container.decode(Student.self, forKey: .student)
        isAbsent = try container.decode(Bool.self, forKey: .isAbsent)
    }
    
    private enum CodingKeys: CodingKey {
        case student, isAbsent
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(student, forKey: CodingKeys.student)
        try container.encode(isAbsent, forKey: CodingKeys.isAbsent)
        
    }

    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename: "Koza", surname: "Kurumlu", birthday: Date()))
    #endif
}
