//
//  ContentView.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 04/02/2024.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    
    var body: some View {
        Form {
            Text(Division.examples[0].code)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView(divisions: Division.examples)
    }
}
