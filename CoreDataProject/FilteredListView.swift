//
//  FilteredListView.swift
//  CoreDataProject
//
//  Created by Joseph Langat on 30/07/2023.
//

import SwiftUI

struct FilteredListView: View {
    @FetchRequest var fetchRequest: FetchedResults<Singer>
    
    var body: some View {
        List(fetchRequest, id:\.self){ singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
        }
    }
    init(filter: String) {
        _fetchRequest = FetchRequest<Singer>(sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
    }
}
