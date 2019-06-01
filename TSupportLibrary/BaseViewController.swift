//
//  BaseViewController.swift
//  TSupportLibrary
//
//  Created by Matteo Corradin on 22/12/18.
//  Copyright © 2018 Matteo Corradin. All rights reserved.
//

import UIKit

open class BaseViewController: UIViewController {
    public func pushVc(id: String) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: id){
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    public func popVc() {
        self.navigationController?.popViewController(animated: true)
    }
    
    public func pushVcXib(vc: UIViewController) {
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    public func dismissVc() {
       self.dismiss(animated: true, completion: nil)
    }
    
    public func modalVcXib(vc: UIViewController) {
        self.present(vc, animated: true, completion: nil)
    }
    
    public func modalVcXibWithNav(vc: UIViewController){
        let nc = UINavigationController(rootViewController: vc)
        nc.isNavigationBarHidden = true
        self.present(nc, animated: true, completion: nil)
    }
}
