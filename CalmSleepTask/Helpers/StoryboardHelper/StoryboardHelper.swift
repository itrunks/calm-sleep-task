//
//  StoryboardHelper.swift
//  CalmSleepTask
//
//  Created by Raja Pichai on 29/12/22.
//

import UIKit

extension UIStoryboard {

    enum Storyboard: String {
        case Main
    }

    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.rawValue, bundle: bundle)
    }

    class func storyboard(_ storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: storyboard.rawValue, bundle: bundle)
    }

    func instantiateViewController<T: UIViewController>() -> T {
        guard let viewController = self.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Couldn't instantiate view controller with identifier \(T.storyboardIdentifier) ")
        }

        return viewController
    }
}

extension UIViewController: StoryboardIdentifiable {}

// MARK: identifiable

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

