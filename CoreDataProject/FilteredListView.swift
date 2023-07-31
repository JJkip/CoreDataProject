//
//  FilteredListView.swift
//  CoreDataProject
//
//  Created by Joseph Langat on 30/07/2023.
//
import CoreData
import SwiftUI

struct FilteredListView<T: NSManagedObject, Content: View >: View{
    @FetchRequest var fetchRequest: FetchedResults<T>
    let content: (T) -> Content
    
    var body: some View {
        List(fetchRequest, id:\.self){ item in
            self.content(item)
        }
    }
    init(filterKey: String, filterValue: String, @ViewBuilder content: @escaping (T) -> Content) {
        _fetchRequest = FetchRequest<T>(sortDescriptors: [], predicate: NSPredicate(format: "%k BEGINSWITH %@", filter))
    }
}
