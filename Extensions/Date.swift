//
//  Date.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 05/02/2024.
//

import Foundation

extension Date {
    
    func getShortDateFormat() -> String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }

}
