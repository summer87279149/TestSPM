import SwiftUI

struct OnboardingView: View {
  // 1
  let onboarding: OnboardingModel
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12, style: .circular)
        .fill(.white)
        .shadow(radius: 12)
        .padding(.horizontal, 20)
      VStack(alignment: .center) {
        VStack {
          // 2
          Text(onboarding.title)
            .foregroundColor(.rwDark)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .padding(.horizontal, 10)
          
          Text(onboarding.description)
            .foregroundColor(.rwDark)
            .multilineTextAlignment(.center)
            .padding([.top, .bottom], 10)
            .padding(.horizontal, 10)
          
          onboarding.image
            .resizable()
            .frame(width: 140, height: 140, alignment: .center)
            .foregroundColor(.rwDark)
            .aspectRatio(contentMode: .fit)
        }
        .padding()
      }
    }
  }
}


struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(onboarding: .init(title: "头",
                                     description: "desc",
                                     image: .bird,
                                     nextButtonTitle: "下一步",
                                     skipButtonTitle: "跳过"))
  }
}
