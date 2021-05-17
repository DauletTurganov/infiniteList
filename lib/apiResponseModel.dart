// import 'package:equatable/equatable.dart';
class GitHubRespone {
  String q;
  var from;
  var to;
  bool more;
  var count;
  List<Hits> hits;

  GitHubRespone({this.q, this.from, this.to, this.more, this.count, this.hits});

  GitHubRespone.fromJson(Map<String, dynamic> json) {
    q = json['q'];
    from = json['from'];
    to = json['to'];
    more = json['more'];
    count = json['count'];
    if (json['hits'] != null) {
      hits = new List<Hits>();
      json['hits'].forEach((v) {
        hits.add(new Hits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['q'] = this.q;
    data['from'] = this.from;
    data['to'] = this.to;
    data['more'] = this.more;
    data['count'] = this.count;
    if (this.hits != null) {
      data['hits'] = this.hits.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hits {
  Recipe recipe;
  bool bookmarked;
  bool bought;

  Hits({this.recipe, this.bookmarked, this.bought});

  Hits.fromJson(Map<String, dynamic> json) {
    recipe =
    json['recipe'] != null ? new Recipe.fromJson(json['recipe']) : null;
    bookmarked = json['bookmarked'];
    bought = json['bought'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recipe != null) {
      data['recipe'] = this.recipe.toJson();
    }
    data['bookmarked'] = this.bookmarked;
    data['bought'] = this.bought;
    return data;
  }
}

class Recipe {
  String uri;
  String label;
  String image;
  String source;
  String url;
  String shareAs;
  var yield;
  List dietLabels;
  List healthLabels;
  List cautions;
  List ingredientLines;
  List<Ingredients> ingredients;
  double calories;
  double totalWeight;
  var totalTime;
  List cuisineType;
  List mealType;
  List dishType;
  TotalNutrients totalNutrients;
  TotalDaily totalDaily;
  List digest;

  Recipe(
      {this.uri,
        this.label,
        this.image,
        this.source,
        this.url,
        this.shareAs,
        this.yield,
        this.dietLabels,
        this.healthLabels,
        this.cautions,
        this.ingredientLines,
        this.ingredients,
        this.calories,
        this.totalWeight,
        this.totalTime,
        this.cuisineType,
        this.mealType,
        this.dishType,
        this.totalNutrients,
        this.totalDaily,
        this.digest});

  Recipe.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    label = json['label'];
    image = json['image'];
    source = json['source'];
    url = json['url'];
    shareAs = json['shareAs'];
    yield = json['yield'];
    dietLabels = json['dietLabels'];
    healthLabels = json['healthLabels'];
    cautions = json['cautions'];
    ingredientLines = json['ingredientLines'];
    if (json['ingredients'] != null) {
      ingredients = new List<Ingredients>();
      json['ingredients'].forEach((v) {
        ingredients.add(new Ingredients.fromJson(v));
      });
    }
    calories = json['calories'];
    totalWeight = json['totalWeight'];
    totalTime = json['totalTime'];
    cuisineType = json['cuisineType'];
    mealType = json['mealType'];
    dishType = json['dishType'];
    totalNutrients = json['totalNutrients'] != null
        ? new TotalNutrients.fromJson(json['totalNutrients'])
        : null;
    totalDaily = json['totalDaily'] != null
        ? new TotalDaily.fromJson(json['totalDaily'])
        : null;
    if (json['digest'] != null) {
      digest = new List<Digest>();
      json['digest'].forEach((v) {
        digest.add(new Digest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    data['label'] = this.label;
    data['image'] = this.image;
    data['source'] = this.source;
    data['url'] = this.url;
    data['shareAs'] = this.shareAs;
    data['yield'] = this.yield;
    data['dietLabels'] = this.dietLabels;
    data['healthLabels'] = this.healthLabels;
    data['cautions'] = this.cautions;
    data['ingredientLines'] = this.ingredientLines;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients.map((v) => v.toJson()).toList();
    }
    data['calories'] = this.calories;
    data['totalWeight'] = this.totalWeight;
    data['totalTime'] = this.totalTime;
    data['cuisineType'] = this.cuisineType;
    data['mealType'] = this.mealType;
    data['dishType'] = this.dishType;
    if (this.totalNutrients != null) {
      data['totalNutrients'] = this.totalNutrients.toJson();
    }
    if (this.totalDaily != null) {
      data['totalDaily'] = this.totalDaily.toJson();
    }
    if (this.digest != null) {
      data['digest'] = this.digest.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Ingredients {
  String text;
  double weight;
  String foodCategory;
  String foodId;
  String image;

  Ingredients(
      {this.text, this.weight, this.foodCategory, this.foodId, this.image});

  Ingredients.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    weight = json['weight'];
    foodCategory = json['foodCategory'];
    foodId = json['foodId'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['weight'] = this.weight;
    data['foodCategory'] = this.foodCategory;
    data['foodId'] = this.foodId;
    data['image'] = this.image;
    return data;
  }
}

class TotalNutrients {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL fATRN;
  ENERCKCAL fAMS;
  ENERCKCAL fAPU;
  ENERCKCAL cHOCDF;
  ENERCKCAL fIBTG;
  ENERCKCAL sUGAR;
  ENERCKCAL pROCNT;
  ENERCKCAL cHOLE;
  ENERCKCAL nA;
  ENERCKCAL cA;
  ENERCKCAL mG;
  ENERCKCAL k;
  ENERCKCAL fE;
  ENERCKCAL zN;
  ENERCKCAL p;
  ENERCKCAL vITARAE;
  ENERCKCAL vITC;
  ENERCKCAL tHIA;
  ENERCKCAL rIBF;
  ENERCKCAL nIA;
  ENERCKCAL vITB6A;
  ENERCKCAL fOLDFE;
  ENERCKCAL fOLFD;
  ENERCKCAL fOLAC;
  ENERCKCAL vITB12;
  ENERCKCAL vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;
  ENERCKCAL wATER;

  TotalNutrients(
      {this.eNERCKCAL,
        this.fAT,
        this.fASAT,
        this.fATRN,
        this.fAMS,
        this.fAPU,
        this.cHOCDF,
        this.fIBTG,
        this.sUGAR,
        this.pROCNT,
        this.cHOLE,
        this.nA,
        this.cA,
        this.mG,
        this.k,
        this.fE,
        this.zN,
        this.p,
        this.vITARAE,
        this.vITC,
        this.tHIA,
        this.rIBF,
        this.nIA,
        this.vITB6A,
        this.fOLDFE,
        this.fOLFD,
        this.fOLAC,
        this.vITB12,
        this.vITD,
        this.tOCPHA,
        this.vITK1,
        this.wATER});

  TotalNutrients.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT =
    json['FASAT'] != null ? new ENERCKCAL.fromJson(json['FASAT']) : null;
    fATRN =
    json['FATRN'] != null ? new ENERCKCAL.fromJson(json['FATRN']) : null;
    fAMS = json['FAMS'] != null ? new ENERCKCAL.fromJson(json['FAMS']) : null;
    fAPU = json['FAPU'] != null ? new ENERCKCAL.fromJson(json['FAPU']) : null;
    cHOCDF =
    json['CHOCDF'] != null ? new ENERCKCAL.fromJson(json['CHOCDF']) : null;
    fIBTG =
    json['FIBTG'] != null ? new ENERCKCAL.fromJson(json['FIBTG']) : null;
    sUGAR =
    json['SUGAR'] != null ? new ENERCKCAL.fromJson(json['SUGAR']) : null;
    pROCNT =
    json['PROCNT'] != null ? new ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE =
    json['CHOLE'] != null ? new ENERCKCAL.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? new ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? new ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? new ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? new ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? new ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? new ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? new ENERCKCAL.fromJson(json['P']) : null;
    vITARAE = json['VITA_RAE'] != null
        ? new ENERCKCAL.fromJson(json['VITA_RAE'])
        : null;
    vITC = json['VITC'] != null ? new ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? new ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? new ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? new ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A =
    json['VITB6A'] != null ? new ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE =
    json['FOLDFE'] != null ? new ENERCKCAL.fromJson(json['FOLDFE']) : null;
    fOLFD =
    json['FOLFD'] != null ? new ENERCKCAL.fromJson(json['FOLFD']) : null;
    fOLAC =
    json['FOLAC'] != null ? new ENERCKCAL.fromJson(json['FOLAC']) : null;
    vITB12 =
    json['VITB12'] != null ? new ENERCKCAL.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? new ENERCKCAL.fromJson(json['VITD']) : null;
    tOCPHA =
    json['TOCPHA'] != null ? new ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 =
    json['VITK1'] != null ? new ENERCKCAL.fromJson(json['VITK1']) : null;
    wATER =
    json['WATER'] != null ? new ENERCKCAL.fromJson(json['WATER']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT.toJson();
    }
    if (this.fATRN != null) {
      data['FATRN'] = this.fATRN.toJson();
    }
    if (this.fAMS != null) {
      data['FAMS'] = this.fAMS.toJson();
    }
    if (this.fAPU != null) {
      data['FAPU'] = this.fAPU.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG.toJson();
    }
    if (this.sUGAR != null) {
      data['SUGAR'] = this.sUGAR.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA.toJson();
    }
    if (this.cA != null) {
      data['CA'] = this.cA.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE.toJson();
    }
    if (this.fOLFD != null) {
      data['FOLFD'] = this.fOLFD.toJson();
    }
    if (this.fOLAC != null) {
      data['FOLAC'] = this.fOLAC.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1.toJson();
    }
    if (this.wATER != null) {
      data['WATER'] = this.wATER.toJson();
    }
    return data;
  }
}

class ENERCKCAL {
  String label;
  double quantity;
  String unit;

  ENERCKCAL({this.label, this.quantity, this.unit});

  ENERCKCAL.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    quantity = json['quantity'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    return data;
  }
}

class TotalDaily {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL cHOCDF;
  ENERCKCAL fIBTG;
  ENERCKCAL pROCNT;
  ENERCKCAL cHOLE;
  ENERCKCAL nA;
  ENERCKCAL cA;
  ENERCKCAL mG;
  ENERCKCAL k;
  ENERCKCAL fE;
  ENERCKCAL zN;
  ENERCKCAL p;
  ENERCKCAL vITARAE;
  ENERCKCAL vITC;
  ENERCKCAL tHIA;
  ENERCKCAL rIBF;
  ENERCKCAL nIA;
  ENERCKCAL vITB6A;
  ENERCKCAL fOLDFE;
  ENERCKCAL vITB12;
  ENERCKCAL vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;

  TotalDaily(
      {this.eNERCKCAL,
        this.fAT,
        this.fASAT,
        this.cHOCDF,
        this.fIBTG,
        this.pROCNT,
        this.cHOLE,
        this.nA,
        this.cA,
        this.mG,
        this.k,
        this.fE,
        this.zN,
        this.p,
        this.vITARAE,
        this.vITC,
        this.tHIA,
        this.rIBF,
        this.nIA,
        this.vITB6A,
        this.fOLDFE,
        this.vITB12,
        this.vITD,
        this.tOCPHA,
        this.vITK1});

  TotalDaily.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT =
    json['FASAT'] != null ? new ENERCKCAL.fromJson(json['FASAT']) : null;
    cHOCDF =
    json['CHOCDF'] != null ? new ENERCKCAL.fromJson(json['CHOCDF']) : null;
    fIBTG =
    json['FIBTG'] != null ? new ENERCKCAL.fromJson(json['FIBTG']) : null;
    pROCNT =
    json['PROCNT'] != null ? new ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE =
    json['CHOLE'] != null ? new ENERCKCAL.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? new ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? new ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? new ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? new ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? new ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? new ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? new ENERCKCAL.fromJson(json['P']) : null;
    vITARAE = json['VITA_RAE'] != null
        ? new ENERCKCAL.fromJson(json['VITA_RAE'])
        : null;
    vITC = json['VITC'] != null ? new ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? new ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? new ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? new ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A =
    json['VITB6A'] != null ? new ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE =
    json['FOLDFE'] != null ? new ENERCKCAL.fromJson(json['FOLDFE']) : null;
    vITB12 =
    json['VITB12'] != null ? new ENERCKCAL.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? new ENERCKCAL.fromJson(json['VITD']) : null;
    tOCPHA =
    json['TOCPHA'] != null ? new ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 =
    json['VITK1'] != null ? new ENERCKCAL.fromJson(json['VITK1']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA.toJson();
    }
    if (this.cA != null) {
      data['CA'] = this.cA.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1.toJson();
    }
    return data;
  }
}

class Digest {
  String label;
  String tag;
  String schemaOrgTag;
  double total;
  bool hasRDI;
  double daily;
  String unit;
  List<Sub> sub;

  Digest(
      {this.label,
        this.tag,
        this.schemaOrgTag,
        this.total,
        this.hasRDI,
        this.daily,
        this.unit,
        this.sub});

  Digest.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    tag = json['tag'];
    schemaOrgTag = json['schemaOrgTag'];
    total = json['total'];
    hasRDI = json['hasRDI'];
    daily = json['daily'];
    unit = json['unit'];
    if (json['sub'] != null) {
      sub = new List<Sub>();
      json['sub'].forEach((v) {
        sub.add(new Sub.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['tag'] = this.tag;
    data['schemaOrgTag'] = this.schemaOrgTag;
    data['total'] = this.total;
    data['hasRDI'] = this.hasRDI;
    data['daily'] = this.daily;
    data['unit'] = this.unit;
    if (this.sub != null) {
      data['sub'] = this.sub.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sub {
  String label;
  String tag;
  String schemaOrgTag;
  double total;
  bool hasRDI;
  double daily;
  String unit;

  Sub(
      {this.label,
        this.tag,
        this.schemaOrgTag,
        this.total,
        this.hasRDI,
        this.daily,
        this.unit});

  Sub.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    tag = json['tag'];
    schemaOrgTag = json['schemaOrgTag'];
    total = json['total'];
    hasRDI = json['hasRDI'];
    daily = json['daily'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['tag'] = this.tag;
    data['schemaOrgTag'] = this.schemaOrgTag;
    data['total'] = this.total;
    data['hasRDI'] = this.hasRDI;
    data['daily'] = this.daily;
    data['unit'] = this.unit;
    return data;
  }
}

//
// class GitHubRespone {
//   int id;
//   String nodeId;
//   String name;
//   String fullName;
//   Owner owner;
//   bool private;
//   String htmlUrl;
//   String description;
//   bool fork;
//   String url;
//   String archiveUrl;
//   String assigneesUrl;
//   String blobsUrl;
//   String branchesUrl;
//   String collaboratorsUrl;
//   String commentsUrl;
//   String commitsUrl;
//   String compareUrl;
//   String contentsUrl;
//   String contributorsUrl;
//   String deploymentsUrl;
//   String downloadsUrl;
//   String eventsUrl;
//   String forksUrl;
//   String gitCommitsUrl;
//   String gitRefsUrl;
//   String gitTagsUrl;
//   String gitUrl;
//   String issueCommentUrl;
//   String issueEventsUrl;
//   String issuesUrl;
//   String keysUrl;
//   String labelsUrl;
//   String languagesUrl;
//   String mergesUrl;
//   String milestonesUrl;
//   String notificationsUrl;
//   String pullsUrl;
//   String releasesUrl;
//   String sshUrl;
//   String stargazersUrl;
//   String statusesUrl;
//   String subscribersUrl;
//   String subscriptionUrl;
//   String tagsUrl;
//   String teamsUrl;
//   String treesUrl;
//   String cloneUrl;
//   String mirrorUrl;
//   String hooksUrl;
//   String svnUrl;
//   String homepage;
//   Null language;
//   int forksCount;
//   int stargazersCount;
//   int watchersCount;
//   int size;
//   String defaultBranch;
//   int openIssuesCount;
//   bool isTemplate;
//   List<String> topics;
//   bool hasIssues;
//   bool hasProjects;
//   bool hasWiki;
//   bool hasPages;
//   bool hasDownloads;
//   bool archived;
//   bool disabled;
//   String visibility;
//   String pushedAt;
//   String createdAt;
//   String updatedAt;
//   Permissions permissions;
//   TemplateRepository templateRepository;
//
//   GitHubRespone(
//       {this.id,
//         this.nodeId,
//         this.name,
//         this.fullName,
//         this.owner,
//         this.private,
//         this.htmlUrl,
//         this.description,
//         this.fork,
//         this.url,
//         this.archiveUrl,
//         this.assigneesUrl,
//         this.blobsUrl,
//         this.branchesUrl,
//         this.collaboratorsUrl,
//         this.commentsUrl,
//         this.commitsUrl,
//         this.compareUrl,
//         this.contentsUrl,
//         this.contributorsUrl,
//         this.deploymentsUrl,
//         this.downloadsUrl,
//         this.eventsUrl,
//         this.forksUrl,
//         this.gitCommitsUrl,
//         this.gitRefsUrl,
//         this.gitTagsUrl,
//         this.gitUrl,
//         this.issueCommentUrl,
//         this.issueEventsUrl,
//         this.issuesUrl,
//         this.keysUrl,
//         this.labelsUrl,
//         this.languagesUrl,
//         this.mergesUrl,
//         this.milestonesUrl,
//         this.notificationsUrl,
//         this.pullsUrl,
//         this.releasesUrl,
//         this.sshUrl,
//         this.stargazersUrl,
//         this.statusesUrl,
//         this.subscribersUrl,
//         this.subscriptionUrl,
//         this.tagsUrl,
//         this.teamsUrl,
//         this.treesUrl,
//         this.cloneUrl,
//         this.mirrorUrl,
//         this.hooksUrl,
//         this.svnUrl,
//         this.homepage,
//         this.language,
//         this.forksCount,
//         this.stargazersCount,
//         this.watchersCount,
//         this.size,
//         this.defaultBranch,
//         this.openIssuesCount,
//         this.isTemplate,
//         this.topics,
//         this.hasIssues,
//         this.hasProjects,
//         this.hasWiki,
//         this.hasPages,
//         this.hasDownloads,
//         this.archived,
//         this.disabled,
//         this.visibility,
//         this.pushedAt,
//         this.createdAt,
//         this.updatedAt,
//         this.permissions,
//         this.templateRepository});
//
//   GitHubRespone.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     nodeId = json['node_id'];
//     name = json['name'];
//     fullName = json['full_name'];
//     owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
//     private = json['private'];
//     htmlUrl = json['html_url'];
//     description = json['description'];
//     fork = json['fork'];
//     url = json['url'];
//     archiveUrl = json['archive_url'];
//     assigneesUrl = json['assignees_url'];
//     blobsUrl = json['blobs_url'];
//     branchesUrl = json['branches_url'];
//     collaboratorsUrl = json['collaborators_url'];
//     commentsUrl = json['comments_url'];
//     commitsUrl = json['commits_url'];
//     compareUrl = json['compare_url'];
//     contentsUrl = json['contents_url'];
//     contributorsUrl = json['contributors_url'];
//     deploymentsUrl = json['deployments_url'];
//     downloadsUrl = json['downloads_url'];
//     eventsUrl = json['events_url'];
//     forksUrl = json['forks_url'];
//     gitCommitsUrl = json['git_commits_url'];
//     gitRefsUrl = json['git_refs_url'];
//     gitTagsUrl = json['git_tags_url'];
//     gitUrl = json['git_url'];
//     issueCommentUrl = json['issue_comment_url'];
//     issueEventsUrl = json['issue_events_url'];
//     issuesUrl = json['issues_url'];
//     keysUrl = json['keys_url'];
//     labelsUrl = json['labels_url'];
//     languagesUrl = json['languages_url'];
//     mergesUrl = json['merges_url'];
//     milestonesUrl = json['milestones_url'];
//     notificationsUrl = json['notifications_url'];
//     pullsUrl = json['pulls_url'];
//     releasesUrl = json['releases_url'];
//     sshUrl = json['ssh_url'];
//     stargazersUrl = json['stargazers_url'];
//     statusesUrl = json['statuses_url'];
//     subscribersUrl = json['subscribers_url'];
//     subscriptionUrl = json['subscription_url'];
//     tagsUrl = json['tags_url'];
//     teamsUrl = json['teams_url'];
//     treesUrl = json['trees_url'];
//     cloneUrl = json['clone_url'];
//     mirrorUrl = json['mirror_url'];
//     hooksUrl = json['hooks_url'];
//     svnUrl = json['svn_url'];
//     homepage = json['homepage'];
//     language = json['language'];
//     forksCount = json['forks_count'];
//     stargazersCount = json['stargazers_count'];
//     watchersCount = json['watchers_count'];
//     size = json['size'];
//     defaultBranch = json['default_branch'];
//     openIssuesCount = json['open_issues_count'];
//     isTemplate = json['is_template'];
//     topics = json['topics'];
//     hasIssues = json['has_issues'];
//     hasProjects = json['has_projects'];
//     hasWiki = json['has_wiki'];
//     hasPages = json['has_pages'];
//     hasDownloads = json['has_downloads'];
//     archived = json['archived'];
//     disabled = json['disabled'];
//     visibility = json['visibility'];
//     pushedAt = json['pushed_at'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     permissions = json['permissions'] != null
//         ? new Permissions.fromJson(json['permissions'])
//         : null;
//     templateRepository = json['template_repository'] != null
//         ? new TemplateRepository.fromJson(json['template_repository'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['node_id'] = this.nodeId;
//     data['name'] = this.name;
//     data['full_name'] = this.fullName;
//     if (this.owner != null) {
//       data['owner'] = this.owner.toJson();
//     }
//     data['private'] = this.private;
//     data['html_url'] = this.htmlUrl;
//     data['description'] = this.description;
//     data['fork'] = this.fork;
//     data['url'] = this.url;
//     data['archive_url'] = this.archiveUrl;
//     data['assignees_url'] = this.assigneesUrl;
//     data['blobs_url'] = this.blobsUrl;
//     data['branches_url'] = this.branchesUrl;
//     data['collaborators_url'] = this.collaboratorsUrl;
//     data['comments_url'] = this.commentsUrl;
//     data['commits_url'] = this.commitsUrl;
//     data['compare_url'] = this.compareUrl;
//     data['contents_url'] = this.contentsUrl;
//     data['contributors_url'] = this.contributorsUrl;
//     data['deployments_url'] = this.deploymentsUrl;
//     data['downloads_url'] = this.downloadsUrl;
//     data['events_url'] = this.eventsUrl;
//     data['forks_url'] = this.forksUrl;
//     data['git_commits_url'] = this.gitCommitsUrl;
//     data['git_refs_url'] = this.gitRefsUrl;
//     data['git_tags_url'] = this.gitTagsUrl;
//     data['git_url'] = this.gitUrl;
//     data['issue_comment_url'] = this.issueCommentUrl;
//     data['issue_events_url'] = this.issueEventsUrl;
//     data['issues_url'] = this.issuesUrl;
//     data['keys_url'] = this.keysUrl;
//     data['labels_url'] = this.labelsUrl;
//     data['languages_url'] = this.languagesUrl;
//     data['merges_url'] = this.mergesUrl;
//     data['milestones_url'] = this.milestonesUrl;
//     data['notifications_url'] = this.notificationsUrl;
//     data['pulls_url'] = this.pullsUrl;
//     data['releases_url'] = this.releasesUrl;
//     data['ssh_url'] = this.sshUrl;
//     data['stargazers_url'] = this.stargazersUrl;
//     data['statuses_url'] = this.statusesUrl;
//     data['subscribers_url'] = this.subscribersUrl;
//     data['subscription_url'] = this.subscriptionUrl;
//     data['tags_url'] = this.tagsUrl;
//     data['teams_url'] = this.teamsUrl;
//     data['trees_url'] = this.treesUrl;
//     data['clone_url'] = this.cloneUrl;
//     data['mirror_url'] = this.mirrorUrl;
//     data['hooks_url'] = this.hooksUrl;
//     data['svn_url'] = this.svnUrl;
//     data['homepage'] = this.homepage;
//     data['language'] = this.language;
//     data['forks_count'] = this.forksCount;
//     data['stargazers_count'] = this.stargazersCount;
//     data['watchers_count'] = this.watchersCount;
//     data['size'] = this.size;
//     data['default_branch'] = this.defaultBranch;
//     data['open_issues_count'] = this.openIssuesCount;
//     data['is_template'] = this.isTemplate;
//     data['topics'] = this.topics;
//     data['has_issues'] = this.hasIssues;
//     data['has_projects'] = this.hasProjects;
//     data['has_wiki'] = this.hasWiki;
//     data['has_pages'] = this.hasPages;
//     data['has_downloads'] = this.hasDownloads;
//     data['archived'] = this.archived;
//     data['disabled'] = this.disabled;
//     data['visibility'] = this.visibility;
//     data['pushed_at'] = this.pushedAt;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     if (this.permissions != null) {
//       data['permissions'] = this.permissions.toJson();
//     }
//     if (this.templateRepository != null) {
//       data['template_repository'] = this.templateRepository.toJson();
//     }
//     return data;
//   }
// }
//
// class Owner {
//   String login;
//   int id;
//   String nodeId;
//   String avatarUrl;
//   String gravatarId;
//   String url;
//   String htmlUrl;
//   String followersUrl;
//   String followingUrl;
//   String gistsUrl;
//   String starredUrl;
//   String subscriptionsUrl;
//   String organizationsUrl;
//   String reposUrl;
//   String eventsUrl;
//   String receivedEventsUrl;
//   String type;
//   bool siteAdmin;
//
//   Owner(
//       {this.login,
//         this.id,
//         this.nodeId,
//         this.avatarUrl,
//         this.gravatarId,
//         this.url,
//         this.htmlUrl,
//         this.followersUrl,
//         this.followingUrl,
//         this.gistsUrl,
//         this.starredUrl,
//         this.subscriptionsUrl,
//         this.organizationsUrl,
//         this.reposUrl,
//         this.eventsUrl,
//         this.receivedEventsUrl,
//         this.type,
//         this.siteAdmin});
//
//   Owner.fromJson(Map<String, dynamic> json) {
//     login = json['login'];
//     id = json['id'];
//     nodeId = json['node_id'];
//     avatarUrl = json['avatar_url'];
//     gravatarId = json['gravatar_id'];
//     url = json['url'];
//     htmlUrl = json['html_url'];
//     followersUrl = json['followers_url'];
//     followingUrl = json['following_url'];
//     gistsUrl = json['gists_url'];
//     starredUrl = json['starred_url'];
//     subscriptionsUrl = json['subscriptions_url'];
//     organizationsUrl = json['organizations_url'];
//     reposUrl = json['repos_url'];
//     eventsUrl = json['events_url'];
//     receivedEventsUrl = json['received_events_url'];
//     type = json['type'];
//     siteAdmin = json['site_admin'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['login'] = this.login;
//     data['id'] = this.id;
//     data['node_id'] = this.nodeId;
//     data['avatar_url'] = this.avatarUrl;
//     data['gravatar_id'] = this.gravatarId;
//     data['url'] = this.url;
//     data['html_url'] = this.htmlUrl;
//     data['followers_url'] = this.followersUrl;
//     data['following_url'] = this.followingUrl;
//     data['gists_url'] = this.gistsUrl;
//     data['starred_url'] = this.starredUrl;
//     data['subscriptions_url'] = this.subscriptionsUrl;
//     data['organizations_url'] = this.organizationsUrl;
//     data['repos_url'] = this.reposUrl;
//     data['events_url'] = this.eventsUrl;
//     data['received_events_url'] = this.receivedEventsUrl;
//     data['type'] = this.type;
//     data['site_admin'] = this.siteAdmin;
//     return data;
//   }
// }
//
// class Permissions {
//   bool admin;
//   bool push;
//   bool pull;
//
//   Permissions({this.admin, this.push, this.pull});
//
//   Permissions.fromJson(Map<String, dynamic> json) {
//     admin = json['admin'];
//     push = json['push'];
//     pull = json['pull'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['admin'] = this.admin;
//     data['push'] = this.push;
//     data['pull'] = this.pull;
//     return data;
//   }
// }
//
// class TemplateRepository {
//   int id;
//   String nodeId;
//   String name;
//   String fullName;
//   Owner owner;
//   bool private;
//   String htmlUrl;
//   String description;
//   bool fork;
//   String url;
//   String archiveUrl;
//   String assigneesUrl;
//   String blobsUrl;
//   String branchesUrl;
//   String collaboratorsUrl;
//   String commentsUrl;
//   String commitsUrl;
//   String compareUrl;
//   String contentsUrl;
//   String contributorsUrl;
//   String deploymentsUrl;
//   String downloadsUrl;
//   String eventsUrl;
//   String forksUrl;
//   String gitCommitsUrl;
//   String gitRefsUrl;
//   String gitTagsUrl;
//   String gitUrl;
//   String issueCommentUrl;
//   String issueEventsUrl;
//   String issuesUrl;
//   String keysUrl;
//   String labelsUrl;
//   String languagesUrl;
//   String mergesUrl;
//   String milestonesUrl;
//   String notificationsUrl;
//   String pullsUrl;
//   String releasesUrl;
//   String sshUrl;
//   String stargazersUrl;
//   String statusesUrl;
//   String subscribersUrl;
//   String subscriptionUrl;
//   String tagsUrl;
//   String teamsUrl;
//   String treesUrl;
//   String cloneUrl;
//   String mirrorUrl;
//   String hooksUrl;
//   String svnUrl;
//   String homepage;
//   Null language;
//   int forks;
//   int forksCount;
//   int stargazersCount;
//   int watchersCount;
//   int watchers;
//   int size;
//   String defaultBranch;
//   int openIssues;
//   int openIssuesCount;
//   bool isTemplate;
//   License license;
//   List<String> topics;
//   bool hasIssues;
//   bool hasProjects;
//   bool hasWiki;
//   bool hasPages;
//   bool hasDownloads;
//   bool archived;
//   bool disabled;
//   String visibility;
//   String pushedAt;
//   String createdAt;
//   String updatedAt;
//   Permissions permissions;
//   bool allowRebaseMerge;
//   String tempCloneToken;
//   bool allowSquashMerge;
//   bool deleteBranchOnMerge;
//   bool allowMergeCommit;
//   int subscribersCount;
//   int networkCount;
//
//   TemplateRepository(
//       {this.id,
//         this.nodeId,
//         this.name,
//         this.fullName,
//         this.owner,
//         this.private,
//         this.htmlUrl,
//         this.description,
//         this.fork,
//         this.url,
//         this.archiveUrl,
//         this.assigneesUrl,
//         this.blobsUrl,
//         this.branchesUrl,
//         this.collaboratorsUrl,
//         this.commentsUrl,
//         this.commitsUrl,
//         this.compareUrl,
//         this.contentsUrl,
//         this.contributorsUrl,
//         this.deploymentsUrl,
//         this.downloadsUrl,
//         this.eventsUrl,
//         this.forksUrl,
//         this.gitCommitsUrl,
//         this.gitRefsUrl,
//         this.gitTagsUrl,
//         this.gitUrl,
//         this.issueCommentUrl,
//         this.issueEventsUrl,
//         this.issuesUrl,
//         this.keysUrl,
//         this.labelsUrl,
//         this.languagesUrl,
//         this.mergesUrl,
//         this.milestonesUrl,
//         this.notificationsUrl,
//         this.pullsUrl,
//         this.releasesUrl,
//         this.sshUrl,
//         this.stargazersUrl,
//         this.statusesUrl,
//         this.subscribersUrl,
//         this.subscriptionUrl,
//         this.tagsUrl,
//         this.teamsUrl,
//         this.treesUrl,
//         this.cloneUrl,
//         this.mirrorUrl,
//         this.hooksUrl,
//         this.svnUrl,
//         this.homepage,
//         this.language,
//         this.forks,
//         this.forksCount,
//         this.stargazersCount,
//         this.watchersCount,
//         this.watchers,
//         this.size,
//         this.defaultBranch,
//         this.openIssues,
//         this.openIssuesCount,
//         this.isTemplate,
//         this.license,
//         this.topics,
//         this.hasIssues,
//         this.hasProjects,
//         this.hasWiki,
//         this.hasPages,
//         this.hasDownloads,
//         this.archived,
//         this.disabled,
//         this.visibility,
//         this.pushedAt,
//         this.createdAt,
//         this.updatedAt,
//         this.permissions,
//         this.allowRebaseMerge,
//         this.tempCloneToken,
//         this.allowSquashMerge,
//         this.deleteBranchOnMerge,
//         this.allowMergeCommit,
//         this.subscribersCount,
//         this.networkCount});
//
//   TemplateRepository.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     nodeId = json['node_id'];
//     name = json['name'];
//     fullName = json['full_name'];
//     owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
//     private = json['private'];
//     htmlUrl = json['html_url'];
//     description = json['description'];
//     fork = json['fork'];
//     url = json['url'];
//     archiveUrl = json['archive_url'];
//     assigneesUrl = json['assignees_url'];
//     blobsUrl = json['blobs_url'];
//     branchesUrl = json['branches_url'];
//     collaboratorsUrl = json['collaborators_url'];
//     commentsUrl = json['comments_url'];
//     commitsUrl = json['commits_url'];
//     compareUrl = json['compare_url'];
//     contentsUrl = json['contents_url'];
//     contributorsUrl = json['contributors_url'];
//     deploymentsUrl = json['deployments_url'];
//     downloadsUrl = json['downloads_url'];
//     eventsUrl = json['events_url'];
//     forksUrl = json['forks_url'];
//     gitCommitsUrl = json['git_commits_url'];
//     gitRefsUrl = json['git_refs_url'];
//     gitTagsUrl = json['git_tags_url'];
//     gitUrl = json['git_url'];
//     issueCommentUrl = json['issue_comment_url'];
//     issueEventsUrl = json['issue_events_url'];
//     issuesUrl = json['issues_url'];
//     keysUrl = json['keys_url'];
//     labelsUrl = json['labels_url'];
//     languagesUrl = json['languages_url'];
//     mergesUrl = json['merges_url'];
//     milestonesUrl = json['milestones_url'];
//     notificationsUrl = json['notifications_url'];
//     pullsUrl = json['pulls_url'];
//     releasesUrl = json['releases_url'];
//     sshUrl = json['ssh_url'];
//     stargazersUrl = json['stargazers_url'];
//     statusesUrl = json['statuses_url'];
//     subscribersUrl = json['subscribers_url'];
//     subscriptionUrl = json['subscription_url'];
//     tagsUrl = json['tags_url'];
//     teamsUrl = json['teams_url'];
//     treesUrl = json['trees_url'];
//     cloneUrl = json['clone_url'];
//     mirrorUrl = json['mirror_url'];
//     hooksUrl = json['hooks_url'];
//     svnUrl = json['svn_url'];
//     homepage = json['homepage'];
//     language = json['language'];
//     forks = json['forks'];
//     forksCount = json['forks_count'];
//     stargazersCount = json['stargazers_count'];
//     watchersCount = json['watchers_count'];
//     watchers = json['watchers'];
//     size = json['size'];
//     defaultBranch = json['default_branch'];
//     openIssues = json['open_issues'];
//     openIssuesCount = json['open_issues_count'];
//     isTemplate = json['is_template'];
//     license =
//     json['license'] != null ? new License.fromJson(json['license']) : null;
//     topics = json['topics'].cast<String>();
//     hasIssues = json['has_issues'];
//     hasProjects = json['has_projects'];
//     hasWiki = json['has_wiki'];
//     hasPages = json['has_pages'];
//     hasDownloads = json['has_downloads'];
//     archived = json['archived'];
//     disabled = json['disabled'];
//     visibility = json['visibility'];
//     pushedAt = json['pushed_at'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     permissions = json['permissions'] != null
//         ? new Permissions.fromJson(json['permissions'])
//         : null;
//     allowRebaseMerge = json['allow_rebase_merge'];
//     tempCloneToken = json['temp_clone_token'];
//     allowSquashMerge = json['allow_squash_merge'];
//     deleteBranchOnMerge = json['delete_branch_on_merge'];
//     allowMergeCommit = json['allow_merge_commit'];
//     subscribersCount = json['subscribers_count'];
//     networkCount = json['network_count'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['node_id'] = this.nodeId;
//     data['name'] = this.name;
//     data['full_name'] = this.fullName;
//     if (this.owner != null) {
//       data['owner'] = this.owner.toJson();
//     }
//     data['private'] = this.private;
//     data['html_url'] = this.htmlUrl;
//     data['description'] = this.description;
//     data['fork'] = this.fork;
//     data['url'] = this.url;
//     data['archive_url'] = this.archiveUrl;
//     data['assignees_url'] = this.assigneesUrl;
//     data['blobs_url'] = this.blobsUrl;
//     data['branches_url'] = this.branchesUrl;
//     data['collaborators_url'] = this.collaboratorsUrl;
//     data['comments_url'] = this.commentsUrl;
//     data['commits_url'] = this.commitsUrl;
//     data['compare_url'] = this.compareUrl;
//     data['contents_url'] = this.contentsUrl;
//     data['contributors_url'] = this.contributorsUrl;
//     data['deployments_url'] = this.deploymentsUrl;
//     data['downloads_url'] = this.downloadsUrl;
//     data['events_url'] = this.eventsUrl;
//     data['forks_url'] = this.forksUrl;
//     data['git_commits_url'] = this.gitCommitsUrl;
//     data['git_refs_url'] = this.gitRefsUrl;
//     data['git_tags_url'] = this.gitTagsUrl;
//     data['git_url'] = this.gitUrl;
//     data['issue_comment_url'] = this.issueCommentUrl;
//     data['issue_events_url'] = this.issueEventsUrl;
//     data['issues_url'] = this.issuesUrl;
//     data['keys_url'] = this.keysUrl;
//     data['labels_url'] = this.labelsUrl;
//     data['languages_url'] = this.languagesUrl;
//     data['merges_url'] = this.mergesUrl;
//     data['milestones_url'] = this.milestonesUrl;
//     data['notifications_url'] = this.notificationsUrl;
//     data['pulls_url'] = this.pullsUrl;
//     data['releases_url'] = this.releasesUrl;
//     data['ssh_url'] = this.sshUrl;
//     data['stargazers_url'] = this.stargazersUrl;
//     data['statuses_url'] = this.statusesUrl;
//     data['subscribers_url'] = this.subscribersUrl;
//     data['subscription_url'] = this.subscriptionUrl;
//     data['tags_url'] = this.tagsUrl;
//     data['teams_url'] = this.teamsUrl;
//     data['trees_url'] = this.treesUrl;
//     data['clone_url'] = this.cloneUrl;
//     data['mirror_url'] = this.mirrorUrl;
//     data['hooks_url'] = this.hooksUrl;
//     data['svn_url'] = this.svnUrl;
//     data['homepage'] = this.homepage;
//     data['language'] = this.language;
//     data['forks'] = this.forks;
//     data['forks_count'] = this.forksCount;
//     data['stargazers_count'] = this.stargazersCount;
//     data['watchers_count'] = this.watchersCount;
//     data['watchers'] = this.watchers;
//     data['size'] = this.size;
//     data['default_branch'] = this.defaultBranch;
//     data['open_issues'] = this.openIssues;
//     data['open_issues_count'] = this.openIssuesCount;
//     data['is_template'] = this.isTemplate;
//     if (this.license != null) {
//       data['license'] = this.license.toJson();
//     }
//     data['topics'] = this.topics;
//     data['has_issues'] = this.hasIssues;
//     data['has_projects'] = this.hasProjects;
//     data['has_wiki'] = this.hasWiki;
//     data['has_pages'] = this.hasPages;
//     data['has_downloads'] = this.hasDownloads;
//     data['archived'] = this.archived;
//     data['disabled'] = this.disabled;
//     data['visibility'] = this.visibility;
//     data['pushed_at'] = this.pushedAt;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     if (this.permissions != null) {
//       data['permissions'] = this.permissions.toJson();
//     }
//     data['allow_rebase_merge'] = this.allowRebaseMerge;
//     data['temp_clone_token'] = this.tempCloneToken;
//     data['allow_squash_merge'] = this.allowSquashMerge;
//     data['delete_branch_on_merge'] = this.deleteBranchOnMerge;
//     data['allow_merge_commit'] = this.allowMergeCommit;
//     data['subscribers_count'] = this.subscribersCount;
//     data['network_count'] = this.networkCount;
//     return data;
//   }
// }
//
// class License {
//   String key;
//   String name;
//   String url;
//   String spdxId;
//   String nodeId;
//   String htmlUrl;
//
//   License(
//       {this.key, this.name, this.url, this.spdxId, this.nodeId, this.htmlUrl});
//
//   License.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     name = json['name'];
//     url = json['url'];
//     spdxId = json['spdx_id'];
//     nodeId = json['node_id'];
//     htmlUrl = json['html_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['key'] = this.key;
//     data['name'] = this.name;
//     data['url'] = this.url;
//     data['spdx_id'] = this.spdxId;
//     data['node_id'] = this.nodeId;
//     data['html_url'] = this.htmlUrl;
//     return data;
//   }
// }