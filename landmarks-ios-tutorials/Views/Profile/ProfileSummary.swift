//
//  ProfileSummary.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/14.
//

import SwiftUI

struct ProfileSummary: View {
    
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(profile.username)
                .font(.title)
                .fontWeight(.bold)
            Text("Notifications: \(profile.prefersNotifications ? "ON" : "OFF")")
            Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
            Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)
                
                ScrollView(.horizontal) {
                    HStack {
                        HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Day")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "Tenth Hike")
                            .hueRotation(Angle(degrees: 45))
                    }
                    .padding(.bottom)
                }
            }
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
                HikeView(hike: modelData.hikes[0])
            }
            Spacer()
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
