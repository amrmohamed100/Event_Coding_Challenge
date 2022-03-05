//
//  EventCell.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 03/03/2022.
//

import UIKit
import SDWebImage

class EventCell: UITableViewCell {
    
    public static let idntifier = "EventCell"

    @IBOutlet weak var eventPhotoImageView: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var eventPlaceLabel: UILabel!
    @IBOutlet weak var eventTimeLabel: UILabel!
    @IBOutlet weak var favouriteImageView: UIImageView!
    
    var event: EventViewItem! {
        didSet {
            populateData()
        }
    }
    
    func populateData() {
        if let image = event.photoUrl, let url = URL(string: image) {
            eventPhotoImageView.sd_setImage(with: url, completed: nil)
        }
        
        eventNameLabel.text = event.name
        eventPlaceLabel.text = event.place
        eventTimeLabel.text = event.time
        favouriteImageView.isHidden = !event.isFavourite
    }
}
