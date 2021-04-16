//
//  Award.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 14.04.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(MyShapeView(width: 150, height: 150)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(GradientRectangles(width: 150, height: 150)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView(width: 150, height: 150)),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView(width: 150, height: 150)),
                title: "Curves View",
                awarded: true
            ),
            Award(
                awardView: AnyView(HypocycloidView(width: 150, height: 150, showSliders: false)),
                title: "Hypocycloid View",
                awarded: true
            )
        ]
    }
}
