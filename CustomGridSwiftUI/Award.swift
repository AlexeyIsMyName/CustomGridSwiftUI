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
    
    static func getAwards(withSize size: CGFloat) -> [Award] {
        [
            Award(
                awardView: AnyView(MyShapeView(width: size, height: size)),
                title: "Gradient Rectangles",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(GradientRectangles(width: size, height: size)),
                title: "Gradient Rectangles",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(PathView(width: size, height: size)),
                title: "Path View",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(CurvesView(width: size, height: size)),
                title: "Curves View",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(HypocycloidView(width: size, height: size, showSliders: false)),
                title: "Hypocycloid View",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(MyShapeView(width: size, height: size)),
                title: "Gradient Rectangles",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(GradientRectangles(width: size, height: size)),
                title: "Gradient Rectangles",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(PathView(width: size, height: size)),
                title: "Path View",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(CurvesView(width: size, height: size)),
                title: "Curves View",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(HypocycloidView(width: size, height: size, showSliders: false)),
                title: "Hypocycloid View",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(MyShapeView(width: size, height: size)),
                title: "Gradient Rectangles",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(GradientRectangles(width: size, height: size)),
                title: "Gradient Rectangles",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(PathView(width: size, height: size)),
                title: "Path View",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(CurvesView(width: size, height: size)),
                title: "Curves View",
                awarded: Bool.random()
            ),
            Award(
                awardView: AnyView(HypocycloidView(width: size, height: size, showSliders: false)),
                title: "Hypocycloid View",
                awarded: Bool.random()
            )
        ]
    }
}
