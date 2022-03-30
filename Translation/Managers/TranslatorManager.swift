//
//  TranslatorManager.swift
//  Translation
//
//  Created by JeongminKim on 2022/03/30.
//

import Foundation
import Alamofire

struct TranslatorManager {
    var sourceLanguage: Language = .ko
    var targetLanguage: Language = .en
    
    func translate(
        from text: String,
        completion: @escaping (String) -> Void
    ) {
        guard let url = URL(string: "https://openapi.naver.com/v1/papago/n2mt") else {
            return
        }
        let requestModel = TranslateRequestModel(
            source: sourceLanguage.languageCode,
            target: targetLanguage.languageCode,
            text: text
        )
        let headers: HTTPHeaders = [
            "X-Naver-Client-Id" : "y5IQU_fgg9LHBbqdFn6w",
            "X-Naver-Client-Secret" : "b5d_N31dDv"
        ]
        print("유알엘: \(url), \n리퀘스트모델: \(requestModel) \n헤더스: \(headers)")
        AF
            .request(url, method: .post, parameters: requestModel, headers: headers)
            .responseDecodable(of: TranslateResponseModel.self) { response in
                switch response.result {
                case .success(let data):
                    completion(data.translatedText)
                case .failure(let error):
                    completion(error.localizedDescription)
                }
            }
    }
}
