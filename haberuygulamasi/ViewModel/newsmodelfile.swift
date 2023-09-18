//
//  newsmodelfile.swift
//  haberuygulamasi
//
//  Created by Emir Seçer on 18.09.2023.
//

import Foundation

struct newstableviewmodel {
    let newslist : [News]
    
    func numberOfRowsInSection() -> Int {
        return self.newslist.count
    }
    
    func newsAtIndexPath (_index : Int) -> newsviewmodel {
        let news = self.newslist[_index]
        return newsviewmodel(news: news)
        
        
    }
    
}

struct newsviewmodel {
    let news : News
    
    var title : String {
        return self.news.title
    }
    
    var story : String {
        
        return self.news.story
    }
    

    
}
