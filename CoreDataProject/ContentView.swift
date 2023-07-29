//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Joseph Langat on 24/07/2023.
//
import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFilter = "A"
    
    var body: some View {
        VStack {
            
            Button("Add Examples") {
                    let taylor = Singer(context: moc)
                    taylor.firstName = "Taylor"
                    taylor.lastName = "Swift"

                    let ed = Singer(context: moc)
                    ed.firstName = "Ed"
                    ed.lastName = "Sheeran"

                    let adele = Singer(context: moc)
                    adele.firstName = "Adele"
                    adele.lastName = "Adkins"

                    try? moc.save()
                }

                Button("Show A") {
                    lastNameFilter = "A"
                }

                Button("Show S") {
                    lastNameFilter = "S"
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
