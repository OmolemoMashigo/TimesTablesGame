//
//  ContentView.swift
//  TimesTablesGame
//
//  Created by Omolemo Mashigo on 2025/02/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isGameActive = false
    @State private var selectedTables = 2
    @State private var numberOfQuestions = 5
    @State private var currentQuestion = 0
    @State private var score = 0
    
    struct Questions{
        let question: String
        let answer: Int
    }
    
    var body: some View {
        Group{
            if isGameActive{
                gameView
            }else{
                settingsView
            }
        }
        .padding()
    }
    
    var gameView: some View{
        Group {
            Text("Hello")
            Text("Game")
        }
    }
    
    var settingsView: some View{
        Group {
            Text("Hello")
            Text("Settings")
        }
    }
}

#Preview {
    ContentView()
}
