//
//  EventsListLocalDataManager.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 03/03/2022.
//

import Foundation

class EventDetailsLocalDataManager: EventDetailsLocalDataManagerProtocol {
    
    func saveToFavourites(eventId: Int, completion : @escaping() -> ()) {
        RealmManager.sharedInstance.add(FavouriteEvent().initializeFromDB(eventId: eventId)) {
            completion()
        }
    }
    
    func removeFromFavourites(eventId: Int, completion : @escaping() -> ()) {
        RealmManager.sharedInstance.delete(FavouriteEvent().initializeFromDB(eventId: eventId)) {
            completion()
        }
    }
}
