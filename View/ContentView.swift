//
//  ContentView.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 04/02/2024.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division] = Division.examples
    var currentDate: Date = Date()
    var body: some View {
        NavigationView{
            List(divisions, id: \.self.code){ division in
                Text(division.code)
                    .padding()
            }
            .navigationTitle(currentDate.getShortDateFormat())
        }
        
    }
        
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View{
            ContentView(divisions: Division.examples)
        }
    }
}
