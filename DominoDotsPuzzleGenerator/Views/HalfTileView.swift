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
    let bgHintColor: Color = .green

    let frameWidth: CGFloat = 48.0
    let cornerRadius: CGFloat = 8
    let padding: CGFloat = 4.0

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
            Rectangle()
                .foregroundStyle(bacgroundColor)
                .border(.blue)
                .cornerRadius(cornerRadius)
                .frame(width: frameWidth)
            VStack {
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
            }
            .padding(padding)
        }
        .border(.blue)
        .cornerRadius(cornerRadius)
        .frame(width: frameWidth, height: frameWidth)

    }

    @ViewBuilder func twoDot() -> some View {
        ZStack {
            Rectangle()
                .foregroundStyle(bacgroundColor)
                .border(.blue)
                .cornerRadius(cornerRadius)
            VStack {
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(dotColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
            }
            .padding(padding)
        }
        .border(.blue)
        .cornerRadius(cornerRadius)
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func threeDot() -> some View {
        ZStack {
            Rectangle()
                .foregroundStyle(bacgroundColor)
                .border(.blue)
                .cornerRadius(cornerRadius)
            VStack {
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(dotColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
            }
            .padding(padding)
        }
        .border(.blue)
        .cornerRadius(cornerRadius)
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func fourDot() -> some View {
        ZStack {
            Rectangle()
                .foregroundStyle(bacgroundColor)
                .border(.blue)
                .cornerRadius(cornerRadius)
            VStack {
                HStack{
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(dotColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(dotColor)
                }
            }
            .padding(padding)
        }
        .border(.blue)
        .cornerRadius(cornerRadius)
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func fiveDot() -> some View {
        ZStack {
            Rectangle()
                .foregroundStyle(bacgroundColor)
                .border(.blue)
                .cornerRadius(cornerRadius)
            VStack {
                HStack{
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(dotColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(dotColor)
                }
            }
            .padding(padding)
        }
        .border(.blue)
        .cornerRadius(cornerRadius)
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func sixDot() -> some View {
        ZStack {
            Rectangle()
                .foregroundStyle(bacgroundColor)
                .border(.blue)
                .cornerRadius(cornerRadius)
            VStack {
                HStack{
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(dotColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(dotColor)
                    Circle().foregroundStyle(dotColor)
                }
            }
            .padding(padding)
        }
        .border(.blue)
        .cornerRadius(cornerRadius)
        .frame(width: frameWidth, height: frameWidth)
    }

    @ViewBuilder func zeroDot() -> some View {
        ZStack {
            Rectangle()
                .foregroundStyle(bacgroundColor)
                .border(.blue)
                .cornerRadius(cornerRadius)
            VStack {
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
                HStack{
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                    Circle().foregroundStyle(bacgroundColor)
                }
            }
        }
        .border(.blue)
        .cornerRadius(cornerRadius)
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
    }.padding(8)

    vstack
}
