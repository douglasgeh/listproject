//
//  BaseViewController.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @available(*, unavailable, message: "Not implemented")
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, nibName: String, bundle: Bundle?) {
        super.init(nibName: nibName, bundle: bundle)
        
        view.backgroundColor = backgroundColor
    }
}
