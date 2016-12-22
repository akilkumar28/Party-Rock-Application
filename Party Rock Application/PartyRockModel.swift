//
//  PartyRockModel.swift
//  Party Rock Application
//
//  Created by AKIL KUMAR THOTA on 12/22/16.
//  Copyright © 2016 AKIL KUMAR THOTA. All rights reserved.
//

import Foundation

class PartyRockModel {
    
    private var _VideoImg : String
    private var _VideoURL: String
    private var _VideoTitle: String
    
    
    var VideoImg :String {
        return _VideoImg
    }
    var VideoURL : String {
        return _VideoURL
    }
    var VideoTitle :String {
        return _VideoTitle
    }
    
    init(VideoImg:String,VideoUrl: String, VideoTitle: String) {
        self._VideoImg = VideoImg
        self._VideoURL = VideoUrl
        self._VideoTitle = VideoTitle
    }
    
}

