//
//  RSSViewController.swift
//  goo
//
//  Created by TomohikoSaito on 2015/11/04.
//  Copyright © 2015年 TomohikoSaito. All rights reserved.
//

import UIKit

class RSSViewController: UIViewController,NSXMLParserDelegate {
    
    var isTitle:Bool=false
    var isLink:Bool=false
    
    var parser = NSXMLParser()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url:String="http://rss.dailynews.yahoo.co.jp/fc/rss.xml"
        let urlToSend: NSURL = NSURL(string: url)!
        parser = NSXMLParser(contentsOfURL: urlToSend)!
        parser.delegate = self
        
        //以下の1行の処理でparse関連の処理が行われる。
        let success:Bool = parser.parse()
        
        if success {
            print("パース成功")
        } else {
            print("パース失敗")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // ここから下はParse関連処理
    
    //開始タグを読み込んだ時よばれる - Start
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        if (elementName == "title"){
            isTitle = true;
        }else if(elementName == "link"){
            isLink = true;
        }
    }
    
    //閉じタグを読み込んだ時よばれる - End
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if (elementName == "title"){
            isTitle = false;
        }else if(elementName == "link"){
            isLink = false;
        }
    }
    
    //タグ以外のテキストを読み込んだ時（タグとタグ間の文字列）
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        
        if(isTitle)
        {
            print("タイトル=\(string)")
        }else if (isLink){
            print("リンク=\(string)")
        }
    }
    //エラー発生時
    func parser(parser: NSXMLParser, parseErrorOccurred parseError: NSError) {
        NSLog("failure error: %@", parseError)
    }
}
