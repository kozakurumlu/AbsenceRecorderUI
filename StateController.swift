//
//  StateController.swift
//  AbsenceRecorderUI
//
//  Created by Kurumlu, Koza (RCH) on 25/02/2024.
//

import Foundation

class StateController: ObservableObject{
    @Published var divisions: [Division] = []
    
    init(){
        loadFromFile()
    }
    
    func getUrl(path:String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(path)
        return url
    }
    
    func loadFromFile(){
        let url = getUrl(path: "divisions.json")
        if let data = try? Data(contentsOf: url){
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func saveToFile(){
        let encoder = JSONEncoder()
        
        if let encoded = try? encoder.encode(divisions){
            if let json = String(data: encoded, encoding: .utf8) {
                let url = getUrl(path: "divisions.json")
                do {
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch{
                    print(error.localizedDescription)
                }
        
            }
        }
    }
    
}
