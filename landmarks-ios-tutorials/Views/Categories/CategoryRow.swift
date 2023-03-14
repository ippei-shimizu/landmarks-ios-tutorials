//
//  CategoryRow.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/14.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    ForEach(items) { item in
                        NavigationLink {
                            LandmarkDetail(landmark: item)
                        } label: {
                            CategoryItem(landmark: item)
                        }
                    }
                }
            }
        }
        .frame(height: 185)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: ModelData().landmark[0].category.rawValue, items: Array(ModelData().landmark.prefix(4)))
    }
}
