//
//  HalfTileView.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/18/24.
//

import SwiftUI

struct HalfTileView: View {
    var halfTile: HalfTile
    var hintValue: Int

    let dotColor: Color = .black
    let bgColor: Color = .white
    let bgHintColor: Color = Color(red: 0.6, green: 0.6, blue: 0.6)

    let frameWidth: CGFloat = 48.0
    let cornerRound: CGSize = CGSize(width: 4, height: 4)
    let padding: CGFloat = 4.0
    let borderWidth: CGFloat = 3.0
    let dotPadding: CGFloat = 2

    var body: some View {
        if halfTile.value == 1 {
            oneDot()
        } else if halfTile.value == 2 {
            twoDot()
        } else if halfTile.value == 3 {
            threeDot()
        } else if halfTile.value == 4 {
            fourDot()
        } else if halfTile.value == 5 {
            fiveDot()
        } else if halfTile.value == 6 {
            sixDot()
        } else {
            zeroDot()
        }
    }

    var bacgroundColor: Color {
        if hintValue > 0 {
            return bgHintColor
        } else {
            return bgColor
        }
    }

    @ViewBuilder func oneDot() -> some View {
        ZStack {
            RoundedRectangle(cornerSize: cornerRound)
                .fill(bacgroundColor)
                .stroke(.black, lineWidth: borderWidth)
            VStack (spacing: 0.0) {
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
            }
            .padding(padding)
        }
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func twoDot() -> some View {
        ZStack {
            RoundedRectangle(cornerSize: cornerRound)
                .fill(bacgroundColor)
                .stroke(.black, lineWidth: borderWidth)
            VStack (spacing: 0.0) {
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
            }
            .padding(padding)
        }
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func threeDot() -> some View {
        ZStack {
            RoundedRectangle(cornerSize: cornerRound)
                .fill(bacgroundColor)
                .stroke(.black, lineWidth: borderWidth)
            VStack (spacing: 0.0) {
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
            }
            .padding(padding)
        }
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func fourDot() -> some View {
        ZStack {
            RoundedRectangle(cornerSize: cornerRound)
                .fill(bacgroundColor)
                .stroke(.black, lineWidth: borderWidth)
            VStack (spacing: 0.0) {
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                }
            }
            .padding(padding)
        }
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func fiveDot() -> some View {
        ZStack {
            RoundedRectangle(cornerSize: cornerRound)
                .fill(bacgroundColor)
                .stroke(.black, lineWidth: borderWidth)
            VStack (spacing: 0.0) {
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                }
            }
            .padding(padding)
        }
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func sixDot() -> some View {
        ZStack {
            RoundedRectangle(cornerSize: cornerRound)
                .fill(bacgroundColor)
                .stroke(.black, lineWidth: borderWidth)
            VStack (spacing: 0.0) {
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                    Circle().foregroundStyle(bacgroundColor).padding(dotPadding)
                }
                HStack (spacing: 0.0) {
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                    Circle().foregroundStyle(dotColor).padding(dotPadding)
                }
            }
            .padding(padding)
        }
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func zeroDot() -> some View {
        ZStack {
            RoundedRectangle(cornerSize: cornerRound)
                .fill(bacgroundColor)
                .stroke(.black, lineWidth: borderWidth)
        }
        .frame(width: frameWidth, height: frameWidth)
    }
}

#Preview {
    let oneDot = HalfTile(value: 1)
    let twoDot = HalfTile(value: 2)
    let threeDot = HalfTile(value: 3)
    let fourDot = HalfTile(value: 4)
    let fiveDot = HalfTile(value: 5)
    let sixDot = HalfTile(value: 6)
    let zeroDot = HalfTile(value: 0)

    let vstack = VStack {
        HalfTileView(halfTile: oneDot, hintValue: 0)
        HalfTileView(halfTile: twoDot, hintValue: 0)
        HalfTileView(halfTile: threeDot, hintValue: 1)
        HalfTileView(halfTile: fourDot, hintValue: 2)
        HalfTileView(halfTile: fiveDot, hintValue: 0)
        HalfTileView(halfTile: sixDot, hintValue: 0)
        HalfTileView(halfTile: zeroDot, hintValue: 0)
        HalfTileView(halfTile: zeroDot, hintValue: 3)
    }
//        .background(.white)
        .padding(8)

    vstack
}
