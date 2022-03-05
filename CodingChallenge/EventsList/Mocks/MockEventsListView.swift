//
//  MockEventsListView.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 04/03/2022.
//

import Foundation

class MockEventsListView: EventsListViewProtocol {
    var presenter: EventsListPresenterProtocol?
    
    var errorMessage: String?
    
    var isShowLoaderCalled = false
    var isHideLoaderCalled = false
    var isReloasdDataCalled = false
    
    func showLoader() {
        isShowLoaderCalled = true
    }
    
    func hideLoader() {
        isHideLoaderCalled = true
    }
    
    func reloadData() {
        isReloasdDataCalled = true
    }
    
    func showErrorMessage(message: String) {
        errorMessage = message
    }
}
