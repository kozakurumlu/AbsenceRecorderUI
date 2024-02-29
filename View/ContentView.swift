//
//  ContentView.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 04/02/2024.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    
    var body: some View {
        NavigationView{
            List(state.divisions, id: \.self.code){ division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingifAvailable(for: currentDate))){
                    DivisionItem(division: division)
                }
            }
            .onAppear(perform: {state.saveToFile()})
            .navigationTitle(currentDate.getShortDateFormat())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
        
    }
        
    
}

#Preview {
    ContentView(divisions: Division.examples)
        .environmentObject(StateController())
}
