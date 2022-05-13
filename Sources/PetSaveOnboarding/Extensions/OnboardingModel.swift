import Foundation
import SwiftUI

public struct OnboardingModel: Identifiable {
  public let id = UUID()
  // 1
  let title: String
  let description: String
  let image: Image
  
  // 2
  let nextButtonTitle: String
  let skipButtonTitle: String
  
  // 3
  public init(
    title: String,
    description: String,
    image: Image,
    nextButtonTitle: String = "Next",
    skipButtonTitle: String = "Skip") {
      self.title = title
      self.description = description
      self.image = image
      self.nextButtonTitle = nextButtonTitle
      self.skipButtonTitle = skipButtonTitle
    }
}

