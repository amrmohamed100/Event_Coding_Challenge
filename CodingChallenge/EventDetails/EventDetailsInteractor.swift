//
//  EventDetailsInteractor.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 03/03/2022.
//

class EventDetailsInteractor: EventDetailsInteractorInputProtocol {
    
    var event: EventViewItem?
    var presenter: EventDetailsInteractorOutputProtocol?
    var localDatamanager: EventDetailsLocalDataManagerProtocol?
    
    init(event: EventViewItem?) {
        self.event = event
    }
    
    func saveToFavourites(eventId: Int) {
        localDatamanager?.saveToFavourites(eventId: eventId, completion: { [weak self] in
            self?.event?.isFavourite = true
            self?.presenter?.favouriteSaved()
        })
    }
    
    func removeFromFavourites(eventId: Int) {
        localDatamanager?.removeFromFavourites(eventId: eventId, completion: { [weak self] in
            self?.event?.isFavourite = false
            self?.presenter?.favouriteRemoved()
        })
    }
}
