//
//  RequestConnection.swift
//  MovieProjection
//
//  Created by Saday on 17.05.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class RequestConnection {
    
    //MARK:- Connection Variable
    private var serviceURL = String()
    private var servicePort = String()
    private var serviceDomain = String()
    private var serviceVersion = String()
    
    
    //MARK:- Connection Instance
    class func sharedInstance() -> RequestConnection{
        
        let rc = RequestConnection()
        rc.serviceDomain = configurationApi.domain
        rc.servicePort = configurationApi.port
        rc.serviceVersion = configurationApi.version
        rc.serviceURL = String(format:"%@%@%@", rc.serviceDomain, rc.servicePort, rc.serviceVersion)
        return rc
    }
    
    //MARK:- Connection Post Function
    func connectionPOST(service: String, parameter: NSDictionary, complateBlock: (json:JSON)->(), errorBlock: (error:NSError)->())  {
        
        let urlStr = String(format:"%@%@", self.serviceURL , service)
        
        let URL = NSURL(string: urlStr)!
        
        Alamofire.request(.POST, URL, parameters: parameter as? [String:AnyObject], encoding: .JSON).responseJSON { (response) -> Void in
            
            print("        -    Request POST    -           ")
            print("RC POST URL  = \(URL)")
            print("RC POST isFailer \(response.result.isFailure)")
            print("RC POST isSucces \(response.result.isSuccess)")
            print("        ----------------------           ")
            print(response)
            if(response.result.value != nil && response.response != nil){
                
                if(response.response?.statusCode == 200)
                {
                    // Server Success Response Data
                    complateBlock(json: JSON(response.result.value!))
                }else{
                    // Error Operation
                    errorBlock(error: response.result.error!)
                }
            }else{
                // Error Operation
                errorBlock(error: response.result.error!)
            }
        }
    }
    
    //MARK:- Connection Get Function
    func connectionGet(service: String, parameter: String, complateBlock: (json: JSON) -> (), errorBlock: (error: NSError) -> ()) {
        
        let URL = NSURL(string: String(format:"%@/%@%@", self.serviceURL , service,parameter))!
        
        print("RC GET URL = \(URL)")
        Alamofire.request(.GET, URL).responseJSON { (response) -> Void in
            
            print("RC GET isFailer \(response.result.isFailure)")
            print("RC GET isSucces \(response.result.isSuccess)")
            
            if(response.result.value != nil && response.response != nil){
                if(response.response?.statusCode == 200)
                {
                    complateBlock(json: JSON(response.result.value!))
                }else{
                    //Error Operation
                    errorBlock(error: response.result.error!)
                }
            }else{
                //Error Operation
                errorBlock(error: response.result.error!)
            }
        }
    }
    
    //MARK:- Connection Image Upload Function
    func connectionImageUpload(service: String, image: NSData, complateBlock: (json: JSON)->(), progressBlock: (progress: Float) -> (), errorBlock: () -> ()) {
        
        let URL = NSURL(string: String(format:"%@%@", self.serviceURL , service))!
        
        print("====== RC URL UPLOAD \(URL)")
        
        
        Alamofire.upload(.POST, URL , multipartFormData: { (multipartFormData:MultipartFormData) -> Void in
            
            
            multipartFormData.appendBodyPart(data: image, name: "resim", fileName: "photo.png", mimeType: "image/png")
            
            }, encodingMemoryThreshold: 10 * 1024 * 1024, encodingCompletion: { (encodingResult) -> Void in
                switch encodingResult {
                case .Success(let upload, _, _):
                    upload.responseJSON { response in
                        // success block
                        print(response.response?.statusCode)
                        print(response)
                        
                        if(response.result.value != nil && response.response != nil)
                        {
                            if(response.response?.statusCode == 200)
                            {//Server Success response Data
                                complateBlock(json: JSON(response.result.value!))
                                
                            }else
                            {//Error Operation
                                errorBlock()
                            }
                            
                            
                        }else
                        {//Error Operation
                            errorBlock()
                        }
                    }
                    upload.progress { _, totalBytesRead, totalBytesExpectedToRead in
                        let progress = Float(totalBytesRead)/Float(totalBytesExpectedToRead)
                        // progress block
                        progressBlock(progress: progress)
                    }
                case .Failure(_): errorBlock()
                    break
                    // failure block
                    
                }
        })
    }
    
    //MARK:- Connection Image Upload Function
    func connectionImageUpload2(service:String,image:NSData,parameter:[String:String],complateBlock:(json:JSON)->(),progressBlock:(progress:Float)->(),errorBlock:()->()){
        
        let URL = NSURL(string: String(format:"%@%@", self.serviceURL , service))!
        
        print("====== RC URL UPLOAD \(URL) ")
        Alamofire.upload(.POST, URL , multipartFormData: { (multipartFormData:MultipartFormData) -> Void in
            
            //  for (key,image) in image{
            multipartFormData.appendBodyPart(data: image, name: "resim", fileName: "photo.png", mimeType: "image/png")
            // }
            
            for (key, value) in parameter {
                multipartFormData.appendBodyPart(data: value.dataUsingEncoding(NSUTF8StringEncoding)!, name: key)
                print(key)
                print(value)
                print("   ")
            }
            
            
            }, encodingMemoryThreshold: 10 * 1024 * 1024, encodingCompletion: { (encodingResult) -> Void in
                switch encodingResult {
                case .Success(let upload, _, _):
                    upload.responseJSON { response in
                        // success block
                        // print(response)
                        if(response.result.isSuccess){
                            complateBlock(json: JSON(response.result.value!))
                        }else{
                            errorBlock()
                        }
                        
                    }
                    upload.progress { _, totalBytesRead, totalBytesExpectedToRead in
                        let progress = Float(totalBytesRead)/Float(totalBytesExpectedToRead)
                        // progress block
                        progressBlock(progress: progress)
                    }
                case .Failure(_):
                    // failure block
                    errorBlock()
                    break
                    
                    
                }
        })
        
    }
}

struct configurationApi {
    static var domain  = String()
    static var port    = String()
    static var version = String()
}

























