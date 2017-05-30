//
//  Api.swift
//  MovieProjection
//
//  Created by Saday on 17.05.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import SwiftyJSON

class Api {
    
    static var linkName = "http://159.203.131.130:3000/"
    
    // Key Code Yönetimi
    class func Key(json:JSON, controller: UIViewController) -> Bool {
        
        switch json["KEY"].int! {
            
        case 200://Başarılı
            
            return true
        case 205://Sayfalama bitti
            return false
            
        case 400://Hata oldu
            // controller.notificationStatusBar(json["T"].string!, backColor: UIColor.appSunFlowerColor())
            
            return false
            
        case 401://auth key boş
            // controller.notificationStatusBar("Auth Yok", backColor: UIColor.appSunFlowerColor())
            
            return false
            
        case 403:
            //favori ürünün yok
            return false
        case 405:// oturum yok
            //   controller.notificationStatusBar("Oturum Kapatılıyor", backColor: UIColor.appSunFlowerColor())
            //   UserInformation.sharedInstance.deleteAllInformation()
            //    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            //  appDelegate.leftSide?.menuArray()
            return false
            
        case 301://Kayıt ol Ekranına Git
            
            return false
            
        case 302://Kayıt ol Ekranına Git
            return false
            
        case 304://Email KAyıtlı
            //    controller.notificationStatusBar("Email Adresi Kayıtlı", backColor: UIColor.appSunFlowerColor())
            return false
            
        case 305://Kayıt olma hatası
            //  controller.notificationStatusBar("Kayıt Olurken Bir Hata Oldu", backColor: UIColor.appGrapeFruiteColor())
            return false
            
        case 306://Token hatası
            return false
        case 307:
            //   controller.notificationStatusBar("Bu Email Adresi Başka Hesaba Kayıtlı", backColor: UIColor.appSunFlowerColor())
            return false
            
        default:
            return false
        }
    }
}
