//
//  BaseVC.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 02/03/2022.
//

import UIKit
import SVProgressHUD
import Toast_Swift

class BaseView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showLoader() {
        SVProgressHUD.show()
    }

    func hideLoader() {
        SVProgressHUD.dismiss()
    }

    func showErrorMessage(message: String) {
        self.view.makeToast(message)
    }
}
