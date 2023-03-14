//
//  CircleImage.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/13.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(color:.gray, radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
