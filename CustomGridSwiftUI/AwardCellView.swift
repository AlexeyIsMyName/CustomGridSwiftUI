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
                    .awarded()
            } else {
                award.awardView
                    .notAwarded()
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

extension View {
    func awarded() -> some View {
        modifier(AwardedMod())
    }
    
    func notAwarded() -> some View {
        modifier(NotAwardedMod())
    }
}

struct AwardedMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaleEffect(0.9)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray, lineWidth: 2)
            )
    }
}

struct NotAwardedMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaleEffect(0.9)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.gray)
                    .opacity(0.7)
            )
    }
}

struct AwardCellView_Previews: PreviewProvider {
    static var previews: some View {
        AwardCellView(
            award: Award(
                awardView: AnyView(HypocycloidView(width: 130, height: 130, showSliders: false)),
                title: "Hypocycloid View",
                awarded: false
            ),
            fontSize: 15
        )
    }
}
