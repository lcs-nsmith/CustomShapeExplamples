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

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct IDEK: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        for i in 1...10 {
            var  factor = CGFloat(i)
            
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - factor, y: rect.midY - factor))
            path.addLine(to: CGPoint(x: rect.midX - factor, y: rect.maxY - factor))
            path.addLine(to: CGPoint(x: rect.minX - factor, y: rect.midY - factor))
            path.addLine(to: CGPoint(x: rect.midX - factor, y: rect.minY - factor))
        }
        return path
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Diagonal()
                .stroke()
                .foregroundColor(.green)
            Diamond()
                .stroke()
                .foregroundColor(.blue)
            IDEK()
                .stroke()
                .foregroundColor(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
