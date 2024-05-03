//
//  Model.swift
//  DisclosureGroups
//
//  Created by Tim Mitra on 2024-05-03.
//

import Foundation

struct Animals: Identifiable {
  let id = UUID()
  var name: String
  var weight: Int
}

struct Country: Identifiable {
  let id = UUID()
  var name: String
  var animals: [Animals]
  var expandMe = true
}
