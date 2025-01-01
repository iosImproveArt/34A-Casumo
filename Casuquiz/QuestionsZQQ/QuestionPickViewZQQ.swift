//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewZodiakQuiz: View {
    
      var d4242d2 = "24dd2d"
    var d24d2d = 242
    func d24d2d24d24d() -> String {
        return "4d22d42dd"
    }
    func d24d42d24d() {
        print("4d24d2d2d2")
    }
    func dd342d24d() -> Float {
        print(1134 * 13413)
        return 134134 * 134134.13413
    }
    
    private struct IJcowkmrfco3r {}
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium)
            
            VStack(spacing: isSE ? 40: 70) {
                NavigationLink {
                    QuestionViewZodiakQuiz(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewZodiakQuiz(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewZodiakQuiz(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewZodiakQuiz(showLoading: false, selectedTab: .quiz)
}
