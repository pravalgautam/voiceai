//
//  AppFontOnlySizeModifier.swift
//  Vaani
//
//  Created by Praval Gautam on 22/06/25.
//

import Foundation
import SwiftUI

struct AppFontOnlySizeModifier: ViewModifier {
    var size: CGFloat

    func body(content: Content) -> some View {
        content.font(Font.custom("Urbanist-Regular", size: size))
    }
}

struct AppFontSizeWeightModifier: ViewModifier {
    var size: CGFloat
    var weight: Font.Weight

    func body(content: Content) -> some View {
        switch weight {
        case .bold:
            content.font(Font.custom("Urbanist-Bold", size: size))
        case .semibold:
            content.font(Font.custom("Urbanist-SemiBold", size: size))
        case .medium:
            content.font(Font.custom("Urbanist-Medium", size: size))
        case .light:
            content.font(Font.custom("Urbanist-Light", size: size))
        case .ultraLight:
            content.font(Font.custom("Urbanist-ExtraLight", size: size))
        case .thin:
            content.font(Font.custom("Urbanist-Thin", size: size))
        case .heavy:
            content.font(Font.custom("Urbanist-Black", size: size))
        default:
            content.font(Font.custom("Urbanist-Regular", size: size))
        }
    }
}

extension View {
    func appFontOnlySize(size: CGFloat) -> some View {
        self.modifier(AppFontOnlySizeModifier(size: size))
    }

    func appFontSizeWeight(size: CGFloat, weight: Font.Weight) -> some View {
        self.modifier(AppFontSizeWeightModifier(size: size, weight: weight))
    }
}
