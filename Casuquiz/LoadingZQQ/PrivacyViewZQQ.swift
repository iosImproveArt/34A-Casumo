

import SwiftUI

struct PrivacyViewZodiakQuiz: View {
    @AppStorage("firstInApp") var firstInApp = true
    @Environment(\.dismiss) var dismiss
    @Binding var showLoading: Bool
    var fromMainView: Bool = false
    
    @AppStorage("urlString") var urlString = ""
    
    var bg: Color {
        urlString.isEmpty ? Color.hex("#370F4E"): .black
    }
    
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
        VStack {
            if urlString.isEmpty && fromMainView {
                HStack(spacing: 25) {
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        dismiss()
                    } label: {
                        Image(systemName: "return.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 30)
                            .foregroundColor(.white)
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .overlay {
                        Text("Privacy Policy")
                            .withFont(size: 33, weight: .bold)
                    }
                    .padding([.top, .leading])
                    
            }
            
            WebViewContainer(urlString: urlString)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }
                .padding(.top, 7)
                .padding(.bottom,  1)
                .background(bg)
            
            if urlString.isEmpty && !fromMainView {
                HStack {
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        firstInApp = false
                        dismiss()
                    } label: {
                        Image("green.button.bg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay {
                                Text("Accept")
                                    .withFont(size: 18, weight: .regular, color: .hex("3B0551"))
                            }
                    }
                   
                    Spacer()
                    
                    Button {
                        AppDelegate.orientationLock = .portrait
                        showLoading = false
                        firstInApp = false
                        dismiss()
                    } label: {
                        Image("green.button.bg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay {
                                Text("Reject")
                                    .withFont(size: 18, weight: .regular, color: .hex("3B0551"))
                            }
                    }
                    
                }.padding([.horizontal, .bottom])
            }
        }
        .background(bg)
        .onChange(of: urlString) { new in
            if urlString == "error" {
                showLoading = false
                dismiss()
            }
        }
        .navigationBarBackButtonHidden()
            .navigationTitle("")
                    .navigationBarHidden(true)
    }
}

#Preview {
    PrivacyViewZodiakQuiz(showLoading: .constant(true), fromMainView: false)
}
