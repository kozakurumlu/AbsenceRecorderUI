//
//  RootTabView.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 25/02/2024.6
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            ContentView(divisions: Division.examples)
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem{
                    Image(systemName: "chart.pie")
                    Text("Statistics View")
                }
            
        }
    }
}

#Preview {
    RootTabView()
}
