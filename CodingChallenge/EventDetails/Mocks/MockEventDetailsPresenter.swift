//
//  MockEventDetailsPresenter.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 04/03/2022.
//

import Foundation

class MockEventDetailsPresenter: EventDetailsInteractorOutputProtocol {
        
    var isFavouriteSavedCalled = false
    var isFavouriteRemovedCalled = false
    
    func favouriteSaved() {
        isFavouriteSavedCalled = true
    }
    
    func favouriteRemoved() {
        isFavouriteRemovedCalled = true
    }
}
