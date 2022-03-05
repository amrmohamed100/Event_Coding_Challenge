//
//  EventsListLocalDataManager.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 03/03/2022.
//

import Foundation

class EventsListLocalDataManager: EventsListLocalDataManagerProtocol {
    func isEventInFavourites(eventId: Int) -> Bool {
        return !RealmManager.sharedInstance.getAllDataForObject(FavouriteEvent.self, query: "eventId = \(eventId)").isEmpty
    }
}
