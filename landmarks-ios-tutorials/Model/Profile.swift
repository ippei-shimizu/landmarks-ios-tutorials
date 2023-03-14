//
//  Profile.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/14.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "default name")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "☀️"
        case autum = "🍁"
        case winter = "⛄️"
        
        var id: String { rawValue }
    }
}
