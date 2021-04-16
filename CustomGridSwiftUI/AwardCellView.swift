//
//  AwardCellView.swift
//  CustomGridSwiftUI
//
//  Created by ALEKSEY SUSLOV on 17.04.2021.
//

import SwiftUI

struct AwardCellView: View {
    let award: Award
    let fontSize: CGFloat
    
    private var text: String {
        award.awarded ? award.title : "Not achieved yet"
    }
    
    var body: some View {
        VStack {
            if award.awarded {
                award.awardView
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 2)
                    )
            } else {
                award.awardView
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.gray)
                            .opacity(0.9)
                    )
            }
            Text(text)
                .font(.system(
                        size: fontSize,
                        weight: .light,
                        design: .serif)
                )
                .italic()
        }
    }
}

struct AwardCellView_Previews: PreviewProvider {
    static var previews: some View {
        AwardCellView(
            award: Award(
                awardView: AnyView(HypocycloidView(width: 130, height: 130, showSliders: false)),
                title: "Hypocycloid View",
                awarded: true
            ),
            fontSize: 15
        )
    }
}
