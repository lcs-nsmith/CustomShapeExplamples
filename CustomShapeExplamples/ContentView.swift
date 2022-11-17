//
//  ContentView.swift
//  CustomShapeExplamples
//
//  Created by Nathan on 2022-11-17.
//

import SwiftUI

struct Diagonal: Shape {
    func path(in rect: CGRect) -> Path {
        
        // the path that decribes the shape
        var path = Path()
        
        // here is where we'd describe the shape
        path.move(to: CGPoint (x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        // send back (return) the path that describes the shape
        return path
    }
}
struct ContentView: View {
    var body: some View {
        Diagonal()
            .stroke()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
