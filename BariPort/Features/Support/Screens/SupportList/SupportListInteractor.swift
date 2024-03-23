import Foundation
import BariPortAPI

protocol SupportListUsecase: AnyObject {
    func fetchSupportList() async throws -> [SupportListEntity.Cell]
}

final class SupportListInteractor: SupportListUsecase{
    init(){}
    
    func fetchSupportList() async throws -> [SupportListEntity.Cell] {
        return try await BariPortAPIClient.getReviews().map{
            $0.convert()
        }
    }
}

extension Reviews{
    func convert() -> SupportListEntity.Cell{
        // TODO: ここでは全てOptionalにして, UIで受信できなかったことを表示すべき
        return .init(
            imageURL: URL(string: self.imgUrl ?? ""),
            companyName: self.companyName ?? "",
            comment: self._description ?? "",
            createdAt: self.sendAt?.parseFromBariPortFormat() ?? Date.now,
            reputationValue: Float(self.evaluationScore ?? 0))
    }
}

final class MockSupportListInteractor: SupportListUsecase{
    func fetchSupportList() async throws -> [SupportListEntity.Cell]{
        []
    }
}
