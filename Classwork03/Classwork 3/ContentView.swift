//
//  ContentView.swift
//  Classwork 3
//
//  Created by Lukman Aščić on 19.03.2026.
//
import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            ForEach(courses, id: \.name) { course in
                HStack {
                    VStack(alignment: .leading) {
                        Text(course.name).fontWeight(.bold)
                        Text(course.instructor)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(course.semester)
                        Text("Credits: \(course.credits)")
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    ContentView()
}
