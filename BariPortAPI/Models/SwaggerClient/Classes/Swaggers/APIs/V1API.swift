//
// V1API.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class V1API {
    /**
     チャットルーム情報取得

     - parameter projectId: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getChatRooms(projectId: String, completion: @escaping ((_ data: [ChatRooms]?,_ error: Error?) -> Void)) {
        getChatRoomsWithRequestBuilder(projectId: projectId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     チャットルーム情報取得
     - GET /chat_room

     - examples: [{contentType=application/json, example=[ {
  "name" : "name",
  "id" : "id",
  "type" : "type",
  "projectId" : "projectId"
}, {
  "name" : "name",
  "id" : "id",
  "type" : "type",
  "projectId" : "projectId"
} ]}]
     - parameter projectId: (query)  

     - returns: RequestBuilder<[ChatRooms]> 
     */
    open class func getChatRoomsWithRequestBuilder(projectId: String) -> RequestBuilder<[ChatRooms]> {
        let path = "/chat_room"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "projectId": projectId
        ])


        let requestBuilder: RequestBuilder<[ChatRooms]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     メッセージ一覧取得

     - parameter chatRoomId: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMessages(chatRoomId: String, completion: @escaping ((_ data: [MessagesGet]?,_ error: Error?) -> Void)) {
        getMessagesWithRequestBuilder(chatRoomId: chatRoomId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     メッセージ一覧取得
     - GET /messages

     - examples: [{contentType=application/json, example=[ {
  "chatRoomId" : "chatRoomId",
  "id" : "id",
  "text" : "text",
  "userId" : "userId"
}, {
  "chatRoomId" : "chatRoomId",
  "id" : "id",
  "text" : "text",
  "userId" : "userId"
} ]}]
     - parameter chatRoomId: (query)  

     - returns: RequestBuilder<[MessagesGet]> 
     */
    open class func getMessagesWithRequestBuilder(chatRoomId: String) -> RequestBuilder<[MessagesGet]> {
        let path = "/messages"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "chatRoomId": chatRoomId
        ])


        let requestBuilder: RequestBuilder<[MessagesGet]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     プロジェクト一覧取得

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProjects(completion: @escaping ((_ data: [Projects]?,_ error: Error?) -> Void)) {
        getProjectsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     プロジェクト一覧取得
     - GET /projects/list

     - examples: [{contentType=application/json, example=[ {
  "companyName" : "companyName",
  "chatRoomId" : "chatRoomId",
  "description" : "description",
  "testUrl" : "testUrl",
  "projectName" : "projectName"
}, {
  "companyName" : "companyName",
  "chatRoomId" : "chatRoomId",
  "description" : "description",
  "testUrl" : "testUrl",
  "projectName" : "projectName"
} ]}]

     - returns: RequestBuilder<[Projects]> 
     */
    open class func getProjectsWithRequestBuilder() -> RequestBuilder<[Projects]> {
        let path = "/projects/list"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[Projects]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     レビュー一覧取得

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getReviews(completion: @escaping ((_ data: [Reviews]?,_ error: Error?) -> Void)) {
        getReviewsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     レビュー一覧取得
     - GET /reviews/list

     - examples: [{contentType=application/json, example=[ {
  "imgUrl" : "imgUrl",
  "evaluationScore" : 0,
  "companyName" : "companyName",
  "description" : "description",
  "id" : "id",
  "sendAt" : "sendAt"
}, {
  "imgUrl" : "imgUrl",
  "evaluationScore" : 0,
  "companyName" : "companyName",
  "description" : "description",
  "id" : "id",
  "sendAt" : "sendAt"
} ]}]

     - returns: RequestBuilder<[Reviews]> 
     */
    open class func getReviewsWithRequestBuilder() -> RequestBuilder<[Reviews]> {
        let path = "/reviews/list"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[Reviews]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     テストAPI

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func hello(completion: @escaping ((_ data: Hello?,_ error: Error?) -> Void)) {
        helloWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     テストAPI
     - GET /hello

     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]

     - returns: RequestBuilder<Hello> 
     */
    open class func helloWithRequestBuilder() -> RequestBuilder<Hello> {
        let path = "/hello"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Hello>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     チャットルーム参加登録

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postChatRoomParticipants(body: ChatRoomParticipantsBody, completion: @escaping ((_ data: Result?,_ error: Error?) -> Void)) {
        postChatRoomParticipantsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     チャットルーム参加登録
     - POST /chat_room_participants

     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<Result> 
     */
    open class func postChatRoomParticipantsWithRequestBuilder(body: ChatRoomParticipantsBody) -> RequestBuilder<Result> {
        let path = "/chat_room_participants"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Result>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     メッセージ投稿

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postMessage(body: MessagesPost, completion: @escaping ((_ data: Result?,_ error: Error?) -> Void)) {
        postMessageWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     メッセージ投稿
     - POST /message

     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<Result> 
     */
    open class func postMessageWithRequestBuilder(body: MessagesPost) -> RequestBuilder<Result> {
        let path = "/message"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Result>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
