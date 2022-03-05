//
//  MockEventsListPresenter.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 04/03/2022.
//

import Foundation

class MockEventsListPresenter: EventsListInteractorOutputProtocol {
    
    var errorMessage: String?
    
    var isHideLoaderCalled = false
    var isEventsLoadedCalled = false
    
    func showLoader() {
        
    }
    
    func hideLoader() {
        isHideLoaderCalled = true
    }
    
    func showErrorMessage(message: String) {
        errorMessage = message
    }
    
    func eventsLoaded() {
        isEventsLoadedCalled = true
    }
}
