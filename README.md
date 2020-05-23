# UISceneCustomWindow on iOS13+ and Xcode11+ with backward compatibility

<a href="https://youtu.be/7twS9Vi0kmw">
<img src="https://github.com/kamrul-cse/UISceneCustomWindow/blob/master/Screenshots/banner.png" width="100%" > 
</a>

How to use own window on later of iOS 13.0 where `UIScene` introduced.

Here we are going to learn -
 + Custom Window along with UIScene
 + Backward compatibility to <iOS 13.0
 + Manage own  Navigation Flow

Set own navigation flow

See step by step in <a href="https://youtu.be/7twS9Vi0kmw">YouTube Video</a>

Here is my `ViewController` with Custom `UIWindow` and `UINavigationController`

<a href="https://youtu.be/7twS9Vi0kmw">
<img src="https://github.com/kamrul-cse/UISceneCustomWindow/blob/master/Screenshots/output_iPhone5s.png" width="35%" >
<img src="https://github.com/kamrul-cse/UISceneCustomWindow/blob/master/Screenshots/output_iPhone11Pro.png" width="35%" >
</a>

Here is my entire `AppDelegate` file:

```swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let newWindow = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = ViewController.getViewController()
        let navController = UINavigationController(rootViewController: viewController)
        
        newWindow.rootViewController = navController
        
        window = newWindow
        
        newWindow.makeKeyAndVisible()
        
        return true
    }

}

@available (iOS 13.0, *)
extension AppDelegate {
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
```


## Author
Md. Kamrul Hasan, mhgolap11@gmail.com

© MKHG Lab, mkhglab@gmail.com
