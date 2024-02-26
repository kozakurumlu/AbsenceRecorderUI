//
//  StateController.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 25/02/2024.
//

import Foundation

class StateController: ObservableObject{
    @Published var divisions: [Division]
    
    init(){
        let divisions = Division.examples
    }
}
