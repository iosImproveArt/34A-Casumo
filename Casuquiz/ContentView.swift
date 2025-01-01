

import SwiftUI

struct ContentViewZodiakQuiz: View {
    @AppStorage("notificationsAvalible") var notificationsAvalible = true
    @State var showLoading = true
    @State var selectedTab: Tabs = .quiz
    
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
        ZStack {
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBar
                        
                        switch selectedTab {
                        case .quiz:
                            QuestionPickViewZodiakQuiz()
                        case .profile:
                            ProfileViewZodiakQuiz()
                        case .facts:
                            FactsViewZodiakQuiz()
                        case .questions:
                            QuestionsViewZodiakQuiz()
                        }
                        tapBar
                    }.background(2, padding: 0)
                }
            }
            
            LoadingViewSQ(showView: $showLoading)
                .opacity(showLoading ? 1: 0)
                .onChange(of: showLoading) { newValue in
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
    
    private var topBar: some View {
        HStack {
            NavigationLink {
                PrivacyViewZodiakQuiz(showLoading: .constant(true), fromMainView: true)
            } label: {
                Text("Privacy policy")
                    .withFont(size: 16, weight: .light)
            }
            
            Spacer()
            
            Button {
                notificationsAvalible.toggle()
                if notificationsAvalible {
                    NotificationManagerZodiakQuiz.shared.createDailyNotification()
                } else {
                    NotificationManagerZodiakQuiz.shared.removePendingNotifications()
                }
            } label: {
                Image("notification.label")
                    .grayscale(notificationsAvalible ? 0: 1)
            }
        }.padding(.horizontal)
    }
    
    private var tapBar: some View {
        HStack {
            Button {
                selectedTab = .quiz
            } label: {
                Image("tab 1")
                    .opacity(selectedTab == .quiz ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .profile
            } label: {
                Image("tab 2")
                    .opacity(selectedTab == .profile ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .facts
            } label: {
                Image("tab 3")
                    .opacity(selectedTab == .facts ? 1: 0.6)
            }
            
            Spacer()
            
            Button {
                selectedTab = .questions
            } label: {
                Image("tab 4")
                    .opacity(selectedTab == .questions ? 1: 0.6)
            }
        }.padding(.horizontal, 40)
            .padding(.vertical)
            .padding(.bottom, 50)
            .background {
                Color.hex("0F1922")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            }
            .cornerRadius(41)
            .padding(.bottom, isSE ? -50: -60)
    }
}

#Preview {
    ContentViewZodiakQuiz(showLoading: false)
}


enum Tabs {
    case quiz
    case profile
    case facts
    case questions
}


