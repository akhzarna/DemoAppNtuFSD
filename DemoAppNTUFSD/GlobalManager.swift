//
//  GlobalManager.swift
//  ServSearch
//
//  Created by Vishal Gohel on 8/1/17.
//  Copyright © 2017 Vishal Gohel. All rights reserved.
//

import Foundation
import UIKit

class GlobalManager: NSObject {
    
    var pathArrayObject = [String]()
    
    var index: Int = 0
    var count: Int = 0
    var imageUrl: String = ""
    
    class var sharedInstance: GlobalManager {
        struct Singleton {
            static let instance = GlobalManager()
        }
        return Singleton.instance
    }
    
    override init() {
        super.init()
    }
    
    var  arrayofQalma = [
    ["nameEnglish":"Surah Al-Kafiroun", "nameUrdu" : "سورۃ الکافرون", "nameEnglishMean" : "Meccan", "Surah-Verses" : "6", "nameUrduMean" : "طیب", "key" :0],
    ["nameEnglish":"Surah Al-Ikhlas","nameUrdu":"سورۃ الاخلاص","nameEnglishMean":"Meccan", "Surah-Verses": "4","nameUrduMean":"شہادت","key":1],
    ["nameEnglish":"Surah Al-Falaq","nameUrdu":"سورۃ الفلق","nameEnglishMean":"Meccan", "Surah-Verses":"5", "nameUrduMean" : "تمجید", "key":2],
    ["nameEnglish":"Surah An-Nas","nameUrdu":"سورۃ الناس","nameEnglishMean":"Meccan", "Surah-Verses":"6","nameUrduMean":"توحید", "key":3],
    ["nameEnglish":"Importance of Four-Qul","nameUrdu":"چار قل کی اہمیت","nameEnglishMean":"","nameUrduMean":"","key":4],
    ]
    
    struct ScreenSize
    {
        static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
        static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
        static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
        static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    }
    
}
