//
//  MockEventsListLocalDataManager.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 04/03/2022.
//

import Foundation

class MockEventsListLocalDataManager: EventsListLocalDataManagerProtocol {
    func isEventInFavourites(eventId: Int) -> Bool {
        return true
    }
}
