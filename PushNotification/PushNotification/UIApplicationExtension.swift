//
//  UIApplicationExtension.swift
//  PushNotification
//
//  Created by Dang Duy Cuong on 10/13/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//

import UIKit

public extension UIApplication {
    class func getTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {

        if let nav = base as? UINavigationController {
            return getTopViewController(base: nav.visibleViewController)

        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return getTopViewController(base: selected)

        } else if let presented = base?.presentedViewController {
            return getTopViewController(base: presented)
        }
        return base
    }
}

//public extension UIApplication {
//    class func getTopVC() -> UIViewController? {
//    //        if var keyWindow = UIApplication.shared.connectedScenes
//    //        .filter({$0.activationState == .foregroundActive})
//    //        .map({$0 as? UIWindowScene})
//    //        .compactMap({$0})
//    //        .first?.windows
//    //            .filter({$0.isKeyWindow}).first {
//    //            keyWindow.endEditing(true)
//    //        }
//            if var topController = UIApplication.shared.keyWindow?.rootViewController {
//                while let presentedViewController = topController.presentedViewController {
//                    topController = presentedViewController
//                }
//                return topController
//            }
//            return nil
//        }
//}
