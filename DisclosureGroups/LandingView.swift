//
//  ContentView.swift
//  DisclosureGroups
//
//  Created by Tim Mitra on 2024-05-03.
//

import SwiftUI

struct LandingView: View {
  
  @State private var myList: [Country] =
  [Country(
    name: "USA",
    animals: [Animals(
      name: "Turtle",
      weight: 15
    ),
              Animals(
                name: "Cat",
                weight: 8
              )]
  ),
   Country(
    name: "Canada",
    animals: [Animals(
      name: "Moose",
      weight: 990
    ),
              Animals(
                name: "Beaver",
                weight: 20
              )]
   ),
   Country(
    name: "Germany",
    animals: [Animals(
      name: "Chamois",
      weight: 130
    ),
              Animals(
                name: "Europian Badger",
                weight: 37
              )]
   )]
  
    var body: some View {
      NavigationView {
        NavigationLink("See Animals", destination: DisclosuresView(myList: $myList))
      }
    }
}

#Preview {
    LandingView()
}
