//
//  EventViewItem.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 02/03/2022.
//

import Foundation

struct EventViewItem {
    let id: Int?
    let photoUrl: String?
    let name: String?
    let place: String?
    let time: String?
    var isFavourite: Bool = false
}
