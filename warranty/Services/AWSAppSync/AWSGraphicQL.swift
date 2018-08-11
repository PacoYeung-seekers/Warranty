//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateGraphicBagBrandInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, nameCn: Optional<String?> = nil, nameEng: Optional<String?> = nil, nameZh: Optional<String?> = nil) {
    graphQLMap = ["id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var nameCn: Optional<String?> {
    get {
      return graphQLMap["nameCn"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameCn")
    }
  }

  public var nameEng: Optional<String?> {
    get {
      return graphQLMap["nameEng"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameEng")
    }
  }

  public var nameZh: Optional<String?> {
    get {
      return graphQLMap["nameZh"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameZh")
    }
  }
}

public struct DeleteGraphicBagBrandInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String) {
    graphQLMap = ["id": id]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct UpdateGraphicBagBrandInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, nameCn: Optional<String?> = nil, nameEng: Optional<String?> = nil, nameZh: Optional<String?> = nil) {
    graphQLMap = ["id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var nameCn: Optional<String?> {
    get {
      return graphQLMap["nameCn"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameCn")
    }
  }

  public var nameEng: Optional<String?> {
    get {
      return graphQLMap["nameEng"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameEng")
    }
  }

  public var nameZh: Optional<String?> {
    get {
      return graphQLMap["nameZh"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameZh")
    }
  }
}

public struct TableGraphicBagBrandFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: Optional<TableStringFilterInput?> = nil, nameCn: Optional<TableStringFilterInput?> = nil, nameEng: Optional<TableStringFilterInput?> = nil, nameZh: Optional<TableStringFilterInput?> = nil) {
    graphQLMap = ["id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh]
  }

  public var id: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["id"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var nameCn: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["nameCn"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameCn")
    }
  }

  public var nameEng: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["nameEng"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameEng")
    }
  }

  public var nameZh: Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["nameZh"] as! Optional<TableStringFilterInput?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nameZh")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Optional<String?> = nil, eq: Optional<String?> = nil, le: Optional<String?> = nil, lt: Optional<String?> = nil, ge: Optional<String?> = nil, gt: Optional<String?> = nil, contains: Optional<String?> = nil, notContains: Optional<String?> = nil, between: Optional<[String?]?> = nil, beginsWith: Optional<String?> = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: Optional<String?> {
    get {
      return graphQLMap["ne"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Optional<String?> {
    get {
      return graphQLMap["eq"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Optional<String?> {
    get {
      return graphQLMap["le"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Optional<String?> {
    get {
      return graphQLMap["lt"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Optional<String?> {
    get {
      return graphQLMap["ge"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Optional<String?> {
    get {
      return graphQLMap["gt"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Optional<String?> {
    get {
      return graphQLMap["contains"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Optional<String?> {
    get {
      return graphQLMap["notContains"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: Optional<[String?]?> {
    get {
      return graphQLMap["between"] as! Optional<[String?]?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: Optional<String?> {
    get {
      return graphQLMap["beginsWith"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public final class CreateGraphicBagBrandMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateGraphicBagBrand($input: CreateGraphicBagBrandInput!) {\n  createGraphicBagBrand(input: $input) {\n    __typename\n    id\n    nameCN\n    nameENG\n    nameZH\n  }\n}"

  public var input: CreateGraphicBagBrandInput

  public init(input: CreateGraphicBagBrandInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createGraphicBagBrand", arguments: ["input": GraphQLVariable("input")], type: .object(CreateGraphicBagBrand.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createGraphicBagBrand: CreateGraphicBagBrand? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createGraphicBagBrand": createGraphicBagBrand.flatMap { $0.snapshot }])
    }

    public var createGraphicBagBrand: CreateGraphicBagBrand? {
      get {
        return (snapshot["createGraphicBagBrand"] as? Snapshot).flatMap { CreateGraphicBagBrand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createGraphicBagBrand")
      }
    }

    public struct CreateGraphicBagBrand: GraphQLSelectionSet {
      public static let possibleTypes = ["GraphicBagBrand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("nameCN", type: .scalar(String.self)),
        GraphQLField("nameENG", type: .scalar(String.self)),
        GraphQLField("nameZH", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, nameCn: String? = nil, nameEng: String? = nil, nameZh: String? = nil) {
        self.init(snapshot: ["__typename": "GraphicBagBrand", "id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var nameCn: String? {
        get {
          return snapshot["nameCN"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameCN")
        }
      }

      public var nameEng: String? {
        get {
          return snapshot["nameENG"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameENG")
        }
      }

      public var nameZh: String? {
        get {
          return snapshot["nameZH"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameZH")
        }
      }
    }
  }
}

public final class DeleteGraphicBagBrandMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteGraphicBagBrand($input: DeleteGraphicBagBrandInput!) {\n  deleteGraphicBagBrand(input: $input) {\n    __typename\n    id\n    nameCN\n    nameENG\n    nameZH\n  }\n}"

  public var input: DeleteGraphicBagBrandInput

  public init(input: DeleteGraphicBagBrandInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteGraphicBagBrand", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteGraphicBagBrand.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteGraphicBagBrand: DeleteGraphicBagBrand? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteGraphicBagBrand": deleteGraphicBagBrand.flatMap { $0.snapshot }])
    }

    public var deleteGraphicBagBrand: DeleteGraphicBagBrand? {
      get {
        return (snapshot["deleteGraphicBagBrand"] as? Snapshot).flatMap { DeleteGraphicBagBrand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteGraphicBagBrand")
      }
    }

    public struct DeleteGraphicBagBrand: GraphQLSelectionSet {
      public static let possibleTypes = ["GraphicBagBrand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("nameCN", type: .scalar(String.self)),
        GraphQLField("nameENG", type: .scalar(String.self)),
        GraphQLField("nameZH", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, nameCn: String? = nil, nameEng: String? = nil, nameZh: String? = nil) {
        self.init(snapshot: ["__typename": "GraphicBagBrand", "id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var nameCn: String? {
        get {
          return snapshot["nameCN"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameCN")
        }
      }

      public var nameEng: String? {
        get {
          return snapshot["nameENG"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameENG")
        }
      }

      public var nameZh: String? {
        get {
          return snapshot["nameZH"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameZH")
        }
      }
    }
  }
}

public final class UpdateGraphicBagBrandMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateGraphicBagBrand($input: UpdateGraphicBagBrandInput!) {\n  updateGraphicBagBrand(input: $input) {\n    __typename\n    id\n    nameCN\n    nameENG\n    nameZH\n  }\n}"

  public var input: UpdateGraphicBagBrandInput

  public init(input: UpdateGraphicBagBrandInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateGraphicBagBrand", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateGraphicBagBrand.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateGraphicBagBrand: UpdateGraphicBagBrand? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateGraphicBagBrand": updateGraphicBagBrand.flatMap { $0.snapshot }])
    }

    public var updateGraphicBagBrand: UpdateGraphicBagBrand? {
      get {
        return (snapshot["updateGraphicBagBrand"] as? Snapshot).flatMap { UpdateGraphicBagBrand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateGraphicBagBrand")
      }
    }

    public struct UpdateGraphicBagBrand: GraphQLSelectionSet {
      public static let possibleTypes = ["GraphicBagBrand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("nameCN", type: .scalar(String.self)),
        GraphQLField("nameENG", type: .scalar(String.self)),
        GraphQLField("nameZH", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, nameCn: String? = nil, nameEng: String? = nil, nameZh: String? = nil) {
        self.init(snapshot: ["__typename": "GraphicBagBrand", "id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var nameCn: String? {
        get {
          return snapshot["nameCN"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameCN")
        }
      }

      public var nameEng: String? {
        get {
          return snapshot["nameENG"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameENG")
        }
      }

      public var nameZh: String? {
        get {
          return snapshot["nameZH"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameZH")
        }
      }
    }
  }
}

public final class ListGraphicBagBrandsQuery: GraphQLQuery {
  public static let operationString =
    "query ListGraphicBagBrands($filter: TableGraphicBagBrandFilterInput, $limit: Int, $nextToken: String) {\n  listGraphicBagBrands(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      nameCN\n      nameENG\n      nameZH\n    }\n    nextToken\n  }\n}"

  public var filter: TableGraphicBagBrandFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableGraphicBagBrandFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listGraphicBagBrands", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListGraphicBagBrand.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listGraphicBagBrands: ListGraphicBagBrand? = nil) {
      self.init(snapshot: ["__typename": "Query", "listGraphicBagBrands": listGraphicBagBrands.flatMap { $0.snapshot }])
    }

    public var listGraphicBagBrands: ListGraphicBagBrand? {
      get {
        return (snapshot["listGraphicBagBrands"] as? Snapshot).flatMap { ListGraphicBagBrand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listGraphicBagBrands")
      }
    }

    public struct ListGraphicBagBrand: GraphQLSelectionSet {
      public static let possibleTypes = ["GraphicBagBrandConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "GraphicBagBrandConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["GraphicBagBrand"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("nameCN", type: .scalar(String.self)),
          GraphQLField("nameENG", type: .scalar(String.self)),
          GraphQLField("nameZH", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, nameCn: String? = nil, nameEng: String? = nil, nameZh: String? = nil) {
          self.init(snapshot: ["__typename": "GraphicBagBrand", "id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var nameCn: String? {
          get {
            return snapshot["nameCN"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nameCN")
          }
        }

        public var nameEng: String? {
          get {
            return snapshot["nameENG"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nameENG")
          }
        }

        public var nameZh: String? {
          get {
            return snapshot["nameZH"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nameZH")
          }
        }
      }
    }
  }
}

public final class GetGraphicBagBrandQuery: GraphQLQuery {
  public static let operationString =
    "query GetGraphicBagBrand($id: String!) {\n  getGraphicBagBrand(id: $id) {\n    __typename\n    id\n    nameCN\n    nameENG\n    nameZH\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getGraphicBagBrand", arguments: ["id": GraphQLVariable("id")], type: .object(GetGraphicBagBrand.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getGraphicBagBrand: GetGraphicBagBrand? = nil) {
      self.init(snapshot: ["__typename": "Query", "getGraphicBagBrand": getGraphicBagBrand.flatMap { $0.snapshot }])
    }

    public var getGraphicBagBrand: GetGraphicBagBrand? {
      get {
        return (snapshot["getGraphicBagBrand"] as? Snapshot).flatMap { GetGraphicBagBrand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getGraphicBagBrand")
      }
    }

    public struct GetGraphicBagBrand: GraphQLSelectionSet {
      public static let possibleTypes = ["GraphicBagBrand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("nameCN", type: .scalar(String.self)),
        GraphQLField("nameENG", type: .scalar(String.self)),
        GraphQLField("nameZH", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, nameCn: String? = nil, nameEng: String? = nil, nameZh: String? = nil) {
        self.init(snapshot: ["__typename": "GraphicBagBrand", "id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var nameCn: String? {
        get {
          return snapshot["nameCN"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameCN")
        }
      }

      public var nameEng: String? {
        get {
          return snapshot["nameENG"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameENG")
        }
      }

      public var nameZh: String? {
        get {
          return snapshot["nameZH"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameZH")
        }
      }
    }
  }
}

public final class OnCreateGraphicBagBrandSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateGraphicBagBrand($id: String, $nameCN: String, $nameENG: String, $nameZH: String) {\n  onCreateGraphicBagBrand(id: $id, nameCN: $nameCN, nameENG: $nameENG, nameZH: $nameZH) {\n    __typename\n    id\n    nameCN\n    nameENG\n    nameZH\n  }\n}"

  public var id: String?
  public var nameCN: String?
  public var nameENG: String?
  public var nameZH: String?

  public init(id: String? = nil, nameCN: String? = nil, nameENG: String? = nil, nameZH: String? = nil) {
    self.id = id
    self.nameCN = nameCN
    self.nameENG = nameENG
    self.nameZH = nameZH
  }

  public var variables: GraphQLMap? {
    return ["id": id, "nameCN": nameCN, "nameENG": nameENG, "nameZH": nameZH]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateGraphicBagBrand", arguments: ["id": GraphQLVariable("id"), "nameCN": GraphQLVariable("nameCN"), "nameENG": GraphQLVariable("nameENG"), "nameZH": GraphQLVariable("nameZH")], type: .object(OnCreateGraphicBagBrand.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateGraphicBagBrand: OnCreateGraphicBagBrand? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateGraphicBagBrand": onCreateGraphicBagBrand.flatMap { $0.snapshot }])
    }

    public var onCreateGraphicBagBrand: OnCreateGraphicBagBrand? {
      get {
        return (snapshot["onCreateGraphicBagBrand"] as? Snapshot).flatMap { OnCreateGraphicBagBrand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateGraphicBagBrand")
      }
    }

    public struct OnCreateGraphicBagBrand: GraphQLSelectionSet {
      public static let possibleTypes = ["GraphicBagBrand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("nameCN", type: .scalar(String.self)),
        GraphQLField("nameENG", type: .scalar(String.self)),
        GraphQLField("nameZH", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, nameCn: String? = nil, nameEng: String? = nil, nameZh: String? = nil) {
        self.init(snapshot: ["__typename": "GraphicBagBrand", "id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var nameCn: String? {
        get {
          return snapshot["nameCN"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameCN")
        }
      }

      public var nameEng: String? {
        get {
          return snapshot["nameENG"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameENG")
        }
      }

      public var nameZh: String? {
        get {
          return snapshot["nameZH"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameZH")
        }
      }
    }
  }
}

public final class OnDeleteGraphicBagBrandSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteGraphicBagBrand($id: String, $nameCN: String, $nameENG: String, $nameZH: String) {\n  onDeleteGraphicBagBrand(id: $id, nameCN: $nameCN, nameENG: $nameENG, nameZH: $nameZH) {\n    __typename\n    id\n    nameCN\n    nameENG\n    nameZH\n  }\n}"

  public var id: String?
  public var nameCN: String?
  public var nameENG: String?
  public var nameZH: String?

  public init(id: String? = nil, nameCN: String? = nil, nameENG: String? = nil, nameZH: String? = nil) {
    self.id = id
    self.nameCN = nameCN
    self.nameENG = nameENG
    self.nameZH = nameZH
  }

  public var variables: GraphQLMap? {
    return ["id": id, "nameCN": nameCN, "nameENG": nameENG, "nameZH": nameZH]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteGraphicBagBrand", arguments: ["id": GraphQLVariable("id"), "nameCN": GraphQLVariable("nameCN"), "nameENG": GraphQLVariable("nameENG"), "nameZH": GraphQLVariable("nameZH")], type: .object(OnDeleteGraphicBagBrand.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteGraphicBagBrand: OnDeleteGraphicBagBrand? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteGraphicBagBrand": onDeleteGraphicBagBrand.flatMap { $0.snapshot }])
    }

    public var onDeleteGraphicBagBrand: OnDeleteGraphicBagBrand? {
      get {
        return (snapshot["onDeleteGraphicBagBrand"] as? Snapshot).flatMap { OnDeleteGraphicBagBrand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteGraphicBagBrand")
      }
    }

    public struct OnDeleteGraphicBagBrand: GraphQLSelectionSet {
      public static let possibleTypes = ["GraphicBagBrand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("nameCN", type: .scalar(String.self)),
        GraphQLField("nameENG", type: .scalar(String.self)),
        GraphQLField("nameZH", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, nameCn: String? = nil, nameEng: String? = nil, nameZh: String? = nil) {
        self.init(snapshot: ["__typename": "GraphicBagBrand", "id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var nameCn: String? {
        get {
          return snapshot["nameCN"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameCN")
        }
      }

      public var nameEng: String? {
        get {
          return snapshot["nameENG"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameENG")
        }
      }

      public var nameZh: String? {
        get {
          return snapshot["nameZH"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameZH")
        }
      }
    }
  }
}

public final class OnUpdateGraphicBagBrandSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateGraphicBagBrand($id: String, $nameCN: String, $nameENG: String, $nameZH: String) {\n  onUpdateGraphicBagBrand(id: $id, nameCN: $nameCN, nameENG: $nameENG, nameZH: $nameZH) {\n    __typename\n    id\n    nameCN\n    nameENG\n    nameZH\n  }\n}"

  public var id: String?
  public var nameCN: String?
  public var nameENG: String?
  public var nameZH: String?

  public init(id: String? = nil, nameCN: String? = nil, nameENG: String? = nil, nameZH: String? = nil) {
    self.id = id
    self.nameCN = nameCN
    self.nameENG = nameENG
    self.nameZH = nameZH
  }

  public var variables: GraphQLMap? {
    return ["id": id, "nameCN": nameCN, "nameENG": nameENG, "nameZH": nameZH]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateGraphicBagBrand", arguments: ["id": GraphQLVariable("id"), "nameCN": GraphQLVariable("nameCN"), "nameENG": GraphQLVariable("nameENG"), "nameZH": GraphQLVariable("nameZH")], type: .object(OnUpdateGraphicBagBrand.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateGraphicBagBrand: OnUpdateGraphicBagBrand? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateGraphicBagBrand": onUpdateGraphicBagBrand.flatMap { $0.snapshot }])
    }

    public var onUpdateGraphicBagBrand: OnUpdateGraphicBagBrand? {
      get {
        return (snapshot["onUpdateGraphicBagBrand"] as? Snapshot).flatMap { OnUpdateGraphicBagBrand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateGraphicBagBrand")
      }
    }

    public struct OnUpdateGraphicBagBrand: GraphQLSelectionSet {
      public static let possibleTypes = ["GraphicBagBrand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("nameCN", type: .scalar(String.self)),
        GraphQLField("nameENG", type: .scalar(String.self)),
        GraphQLField("nameZH", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, nameCn: String? = nil, nameEng: String? = nil, nameZh: String? = nil) {
        self.init(snapshot: ["__typename": "GraphicBagBrand", "id": id, "nameCN": nameCn, "nameENG": nameEng, "nameZH": nameZh])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var nameCn: String? {
        get {
          return snapshot["nameCN"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameCN")
        }
      }

      public var nameEng: String? {
        get {
          return snapshot["nameENG"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameENG")
        }
      }

      public var nameZh: String? {
        get {
          return snapshot["nameZH"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nameZH")
        }
      }
    }
  }
}