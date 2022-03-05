//
//  MockEventDetailsView.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 04/03/2022.
//

import Foundation

class MockEventDetailsView: EventDetailsViewProtocol {
    var delegate: EventDetailsDelegate?
    var presenter: EventDetailsPresenterProtocol?
    
    var isShowDataCalled = false
    var isRefreshCalled = false
    
    func showData(event: EventViewItem?) {
        isShowDataCalled = true
    }
    
    func refreshFavouriteButtonIcon(isFavourite: Bool) {
        isRefreshCalled = true
    }
}
