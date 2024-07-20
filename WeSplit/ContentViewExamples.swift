//
//  ContentView.swift
//  WeSplit
//
//  Created by Quinn Liu on 7/19/24.
//

import SwiftUI

struct ContentViewExamples: View {
    // property
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack{
            Button("Tap Count: \(tapCount)") {
                tapCount+=1
            }
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Enter your name", text: $name)
                Text("Hello \(name)")
                Text("Hello world")
            
                Section {
                    Text("Hello world")

                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
