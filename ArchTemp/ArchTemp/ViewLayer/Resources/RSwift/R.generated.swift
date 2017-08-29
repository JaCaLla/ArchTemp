//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 0 images.
  struct image {
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `PlaceViewCell`.
    static let placeViewCell: Rswift.ReuseIdentifier<UIKit.UITableViewCell> = Rswift.ReuseIdentifier(identifier: "PlaceViewCell")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 2 view controllers.
  struct segue {
    /// This struct is generated for `AllPlacesP`, and contains static references to 1 segues.
    struct allPlacesP {
      /// Segue identifier `AllPlacesV`.
      static let allPlacesV: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, AllPlacesP, AllPlacesV> = Rswift.StoryboardSegueIdentifier(identifier: "AllPlacesV")
      
      /// Optionally returns a typed version of segue `AllPlacesV`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func allPlacesV(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, AllPlacesP, AllPlacesV>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.allPlacesP.allPlacesV, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `PlaceDetailP`, and contains static references to 1 segues.
    struct placeDetailP {
      /// Segue identifier `PlaceDetailV`.
      static let placeDetailV: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, PlaceDetailP, PlaceDetailV> = Rswift.StoryboardSegueIdentifier(identifier: "PlaceDetailV")
      
      /// Optionally returns a typed version of segue `PlaceDetailV`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func placeDetailV(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, PlaceDetailP, PlaceDetailV>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.placeDetailP.placeDetailV, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 3 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `main`.
    static let main = _R.storyboard.main()
    /// Storyboard `places`.
    static let places = _R.storyboard.places()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    /// `UIStoryboard(name: "places", bundle: ...)`
    static func places(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.places)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try places.validate()
      try main.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = MainMVP
      
      let bundle = R.hostingBundle
      let mainMVP = StoryboardViewControllerResource<MainMVP>(identifier: "MainMVP")
      let name = "main"
      
      func mainMVP(_: Void = ()) -> MainMVP? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: mainMVP)
      }
      
      static func validate() throws {
        if _R.storyboard.main().mainMVP() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'mainMVP' could not be loaded from storyboard 'main' as 'MainMVP'.") }
      }
      
      fileprivate init() {}
    }
    
    struct places: Rswift.StoryboardResourceType, Rswift.Validatable {
      let allPlacesP = StoryboardViewControllerResource<AllPlacesP>(identifier: "AllPlacesP")
      let bundle = R.hostingBundle
      let name = "places"
      let placeDetailP = StoryboardViewControllerResource<PlaceDetailP>(identifier: "PlaceDetailP")
      
      func allPlacesP(_: Void = ()) -> AllPlacesP? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: allPlacesP)
      }
      
      func placeDetailP(_: Void = ()) -> PlaceDetailP? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: placeDetailP)
      }
      
      static func validate() throws {
        if _R.storyboard.places().placeDetailP() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'placeDetailP' could not be loaded from storyboard 'places' as 'PlaceDetailP'.") }
        if _R.storyboard.places().allPlacesP() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'allPlacesP' could not be loaded from storyboard 'places' as 'AllPlacesP'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
