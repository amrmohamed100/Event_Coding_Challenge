//
//  MockEventDetailsLocalDataManager.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 04/03/2022.
//

import Foundation

class MockEventDetailsLocalDataManager: EventDetailsLocalDataManagerProtocol {
    
    func saveToFavourites(eventId: Int, completion: @escaping () -> ()) {
        completion()
    }
    
    func removeFromFavourites(eventId: Int, completion: @escaping () -> ()) {
        completion()
    }
}
