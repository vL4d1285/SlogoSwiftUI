//
//  LogoView.swift
//  SlogoSwiftUI
//
//  Created by Vladislav Ryabtsev on 08.02.2022.
//

import SwiftUI

struct LogoView: View {
    
    @State private var endAmount: CGFloat = 0
    @State private var isFilling = false
    @State private var scale: Double = 360
    
    var body: some View {
        ZStack{
            LogoShape()
                .trim(from: 0, to: endAmount)
                .stroke(Color.red, lineWidth: 1)
                .onAppear {
                    withAnimation(.easeInOut(duration: 5)) {
                        endAmount = 1
                    }
                    withAnimation(.easeInOut(duration: 2).delay(4.5)) {
                        isFilling = true
                    }
                    withAnimation(Animation.linear(duration: 4.0).repeatForever(autoreverses: false).delay(5.5)) {
                        scale = 0
                    }
                }
            LogoShape()
                .fill(LinearGradient(
                    colors: [.white, .red, .red],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
                .opacity(isFilling ? 1 : 0)
        }
        .rotation3DEffect(.degrees(scale), axis: (x: 0, y: 1, z: 0))
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .frame(width: 200, height: 200)
    }
}

struct LogoShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.14265*width, y: 0.65516*height))
        path.addLine(to: CGPoint(x: 0.31453*width, y: 0.63844*height))
        path.addCurve(to: CGPoint(x: 0.37749*width, y: 0.76557*height),
                      control1: CGPoint(x: 0.32487*width, y: 0.69614*height),
                      control2: CGPoint(x: 0.34586*width, y: 0.73851*height))
        path.addCurve(to: CGPoint(x: 0.5055*width, y: 0.80615*height),
                      control1: CGPoint(x: 0.40912*width, y: 0.79262*height),
                      control2: CGPoint(x: 0.45179*width, y: 0.80615*height))
        path.addCurve(to: CGPoint(x: 0.63411*width, y: 0.77004*height),
                      control1: CGPoint(x: 0.5624*width, y: 0.80615*height),
                      control2: CGPoint(x: 0.60527*width, y: 0.79411*height))
        path.addCurve(to: CGPoint(x: 0.67738*width, y: 0.68559*height),
                      control1: CGPoint(x: 0.66296*width, y: 0.74597*height),
                      control2: CGPoint(x: 0.67738*width, y: 0.71782*height))
        path.addCurve(to: CGPoint(x: 0.65918*width, y: 0.63278*height),
                      control1: CGPoint(x: 0.67738*width, y: 0.6649*height),
                      control2: CGPoint(x: 0.67131*width, y: 0.6473*height))
        path.addCurve(to: CGPoint(x: 0.59562*width, y: 0.59488*height),
                      control1: CGPoint(x: 0.64704*width, y: 0.61825*height),
                      control2: CGPoint(x: 0.62586*width, y: 0.60562*height))
        path.addCurve(to: CGPoint(x: 0.45418*width, y: 0.55668*height),
                      control1: CGPoint(x: 0.57493*width, y: 0.58771*height),
                      control2: CGPoint(x: 0.52779*width, y: 0.57498*height))
        path.addCurve(to: CGPoint(x: 0.25484*width, y: 0.47015*height),
                      control1: CGPoint(x: 0.35949*width, y: 0.53321*height),
                      control2: CGPoint(x: 0.29304*width, y: 0.50437*height))
        path.addCurve(to: CGPoint(x: 0.17428*width, y: 0.29409*height),
                      control1: CGPoint(x: 0.20113*width, y: 0.422*height),
                      control2: CGPoint(x: 0.17428*width, y: 0.36332*height))
        path.addCurve(to: CGPoint(x: 0.21218*width, y: 0.16906*height),
                      control1: CGPoint(x: 0.17428*width, y: 0.24953*height),
                      control2: CGPoint(x: 0.18691*width, y: 0.20785*height))
        path.addCurve(to: CGPoint(x: 0.32139*width, y: 0.08043*height),
                      control1: CGPoint(x: 0.23744*width, y: 0.13027*height),
                      control2: CGPoint(x: 0.27385*width, y: 0.10073*height))
        path.addCurve(to: CGPoint(x: 0.49357*width, y: 0.05*height),
                      control1: CGPoint(x: 0.36894*width, y: 0.06014*height),
                      control2: CGPoint(x: 0.42633*width, y: 0.05*height))
        path.addCurve(to: CGPoint(x: 0.74154*width, y: 0.12222*height),
                      control1: CGPoint(x: 0.60338*width, y: 0.05*height),
                      control2: CGPoint(x: 0.68603*width, y: 0.07407*height))
        path.addCurve(to: CGPoint(x: 0.82897*width, y: 0.31498*height),
                      control1: CGPoint(x: 0.79704*width, y: 0.17035*height),
                      control2: CGPoint(x: 0.82618*width, y: 0.23461*height))
        path.addLine(to: CGPoint(x: 0.65231*width, y: 0.32274*height))
        path.addCurve(to: CGPoint(x: 0.60367*width, y: 0.22576*height),
                      control1: CGPoint(x: 0.64475*width, y: 0.27778*height),
                      control2: CGPoint(x: 0.62855*width, y: 0.24545*height))
        path.addCurve(to: CGPoint(x: 0.49178*width, y: 0.19622*height),
                      control1: CGPoint(x: 0.57881*width, y: 0.20606*height),
                      control2: CGPoint(x: 0.54151*width, y: 0.19622*height))
        path.addCurve(to: CGPoint(x: 0.37123*width, y: 0.22785*height),
                      control1: CGPoint(x: 0.44045*width, y: 0.19622*height),
                      control2: CGPoint(x: 0.40027*width, y: 0.20676*height))
        path.addCurve(to: CGPoint(x: 0.34318*width, y: 0.28215*height),
                      control1: CGPoint(x: 0.35252*width, y: 0.24138*height),
                      control2: CGPoint(x: 0.34318*width, y: 0.25948*height))
        path.addCurve(to: CGPoint(x: 0.36944*width, y: 0.33527*height),
                      control1: CGPoint(x: 0.34318*width, y: 0.30285*height),
                      control2: CGPoint(x: 0.35193*width, y: 0.32055*height))
        path.addCurve(to: CGPoint(x: 0.53176*width, y: 0.39376*height),
                      control1: CGPoint(x: 0.39172*width, y: 0.35397*height),
                      control2: CGPoint(x: 0.44583*width, y: 0.37346*height))
        path.addCurve(to: CGPoint(x: 0.72244*width, y: 0.45672*height),
                      control1: CGPoint(x: 0.6177*width, y: 0.41405*height),
                      control2: CGPoint(x: 0.68126*width, y: 0.43504*height))
        path.addCurve(to: CGPoint(x: 0.81912*width, y: 0.54565*height),
                      control1: CGPoint(x: 0.76362*width, y: 0.4784*height),
                      control2: CGPoint(x: 0.79585*width, y: 0.50804*height))
        path.addCurve(to: CGPoint(x: 0.85403*width, y: 0.685*height),
                      control1: CGPoint(x: 0.8424*width, y: 0.58324*height),
                      control2: CGPoint(x: 0.85403*width, y: 0.62969*height))
        path.addCurve(to: CGPoint(x: 0.81226*width, y: 0.82584*height),
                      control1: CGPoint(x: 0.85403*width, y: 0.73513*height),
                      control2: CGPoint(x: 0.84011*width, y: 0.78207*height))
        path.addCurve(to: CGPoint(x: 0.69409*width, y: 0.92342*height),
                      control1: CGPoint(x: 0.78441*width, y: 0.8696*height),
                      control2: CGPoint(x: 0.74502*width, y: 0.90213*height))
        path.addCurve(to: CGPoint(x: 0.50372*width, y: 0.95534*height),
                      control1: CGPoint(x: 0.64317*width, y: 0.94471*height),
                      control2: CGPoint(x: 0.57971*width, y: 0.95534*height))
        path.addCurve(to: CGPoint(x: 0.24888*width, y: 0.87866*height),
                      control1: CGPoint(x: 0.3931*width, y: 0.95534*height),
                      control2: CGPoint(x: 0.30816*width, y: 0.92978*height))
        path.addCurve(to: CGPoint(x: 0.14265*width, y: 0.65516*height),
                      control1: CGPoint(x: 0.18959*width, y: 0.82753*height),
                      control2: CGPoint(x: 0.15418*width, y: 0.75303*height))
        path.closeSubpath()
        return path
    }
}
