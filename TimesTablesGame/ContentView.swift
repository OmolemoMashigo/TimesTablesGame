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
    @State private var questions: [Questions] = []
    @State private var userAnswers: [Int] = []
    
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
        VStack{
            if currentQuestion < questions.count{
                
            }
            else{
                Button("Play Again") {
                    resetGame()
                }
            }
        }
    }
    
    var settingsView: some View{
        VStack{
            Stepper("times tables up to \(selectedTables)", value: $selectedTables, in: 2...12)
                .padding()
            
            Picker("Number of questions", selection: $numberOfQuestions){
                Text("5").tag(5)
                Text("10").tag(10)
                Text("15").tag(15)
                Text("20").tag(20)
            }
            .pickerStyle(.segmented)
            .padding()
            
            Button("Start Game"){
                startGame()
            }
        }
    }
    
    func startGame(){
        isGameActive = true
    }

    func resetGame(){
        isGameActive = false
    }
    
    func generateQuestions() -> [Questions]{
        var questions: [Questions] = []
        
        for _ in 0..<numberOfQuestions{
            let num1 = Int.random(in: 2...selectedTables)
            let num2 = Int.random(in: 2...12)
            
            let question = "what is \(num1) x \(num2) ?"
            let answer = num1 * num2
            
            questions.append(Questions(question: question, answer: answer))
            
        }
        return questions
    }
}



#Preview {
    ContentView()
}
