
import SwiftUI

struct OnboardingBackgroundView: View {
  // 1
  let backgroundPets = Pet.backgroundPets
  // 2
  var body: some View {
    ZStack {
      ForEach(backgroundPets) { pet in
        pet.petImage
        .resizable()
        .frame(width: 200, height: 200, alignment: .center)
        .position(pet.position)
      }
    }
  }
}


struct OnboardingBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingBackgroundView()
    }
}
