//
//  DivisionTests.swift
//  AbsenceRecorderUITests
//
//  Created by Kurumlu, Koza (RCH) on 26/02/2024.
//

import XCTest
@testable import AbsenceRecorderUI

final class DivisionTests: XCTestCase {

    

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        //arange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 10000000000000000000)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        //act
        let actual = division.getAbsence(for:dateLaterToday)
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual{
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
    }


}
