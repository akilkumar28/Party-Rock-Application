//
//  VideoVC.swift
//  Party Rock Application
//
//  Created by AKIL KUMAR THOTA on 12/22/16.
//  Copyright © 2016 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var weblabel: UILabel!
    
    @IBOutlet weak var WebView: UIWebView!
    
    private var _partyrock: PartyRockModel!
    
    var WebLbl : PartyRockModel {
        get {
            return _partyrock
        } set {
            _partyrock = newValue
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        weblabel.text = WebLbl.VideoTitle
        WebView.loadHTMLString(WebLbl.VideoURL, baseURL: nil)
        

    }
    
    

 

}
