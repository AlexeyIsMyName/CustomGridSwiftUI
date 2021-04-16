//
//  ShapesView.swift
//  AnimationSwiftUI
//
//  Created by ALEKSEY SUSLOV on 13.04.2021.
//

import SwiftUI

struct ShapesView: View {
    let awards = Award.getAwards(withSize: 130)
    
    var body: some View {
        NavigationView {
            CustomGridView(items: awards, columns: 2) { itemSize, award in
                AwardCellView(award: award, fontSize: itemSize / 12)
                    .padding()
                    .frame(width: itemSize, height: itemSize)
            }
            .navigationBarTitle("Shapes")
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
