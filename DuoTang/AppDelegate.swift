import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
        
        self.window = UIWindow(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        self.window?.makeKeyAndVisible()
        
        setupTabBar()
        
        return true
    }
    
    func setupTabBar(){
        
        let tabbarController = UITabBarController()
        
        let homeController = DTNavigationController(rootViewController: DTHomeViewController())
        let productController = DTNavigationController(rootViewController: ProductViewController())
        let circleController = DTNavigationController(rootViewController: circleViewController())
        let moreController = DTNavigationController(rootViewController: meViewController())
        
        tabbarController.viewControllers = [homeController,productController,circleController,moreController]
        
        let tabbarItem1 = UITabBarItem(title: "单糖", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))
        let tabbarItem2 = UITabBarItem(title: "单品", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))
        let tabbarItem3 = UITabBarItem(title: "圈子", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))
        let tabbarItem4 = UITabBarItem(title: "我", image: UIImage(named: "CD"), selectedImage: UIImage(named: "CD"))

        
        homeController.tabBarItem = tabbarItem1
        productController.tabBarItem = tabbarItem2
      
        circleController.tabBarItem = tabbarItem3
        moreController.tabBarItem = tabbarItem4
        
        homeController.tabBarController?.tabBar.tintColor = DTGlobalRedColor()
        
        self.window?.rootViewController = tabbarController
    
    }
}

