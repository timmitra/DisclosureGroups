//
//  DisclosuresView.swift
//  DisclosureGroups
//
//  Created by Tim Mitra on 2024-05-03.
//

import SwiftUI

struct DisclosuresView: View {
  @State private var expandMe = true
  // binding to LandingView myList
  @Binding var myList: [Country]
  
    var body: some View {
      List {
        ForEach($myList) { $oneCountry in
          DisclosureGroup(
            isExpanded: $oneCountry.expandMe) {
            ForEach(oneCountry.animals) { oneAnimal in
              Text("\(oneAnimal.name) \(oneAnimal.weight)")
            }
          } label: {
            Text("\(oneCountry.name)")
              .font(.headline)
          }
        }
      }
      .listStyle(SidebarListStyle())
    }
}

#Preview {
  DisclosuresView(myList: .constant([Country(
    name: "USA",
    animals: [Animals(
      name: "Turtle",
      weight: 15
    ),
              Animals(
                name: "Cat",
                weight: 8
              )]
  )]))
}
