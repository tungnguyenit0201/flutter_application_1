class UserModel {
  int? accountID;
  String? address;
  String? businessName;
  String? code;
  String? color;
  String? confirmedTime;
  String? createdTime;
  int? customerID;
  String? districtCode;
  String? email;
  int? entityID;
  List<Null>? examinationAndTreatmentLicense;
  ExaminationAndTreatmentLicenseInfo? examinationAndTreatmentLicenseInfo;
  String? firstOrderAt;
  List<String>? flattenLocation;
  List<Null>? gpp;
  ExaminationAndTreatmentLicenseInfo? gppInfo;
  int? isActive;
  bool? isNewBie;
  bool? isUploadLicense;
  String? lastActionTime;
  String? lastOrderAt;
  String? lastUpdatedTime;
  String? legalRepresentative;
  String? level;
  int? levelPoint;
  ExaminationAndTreatmentLicenseInfo? licenseInfo;
  List<Null>? licenses;
  String? name;
  int? ordersCount;
  List<PharmacyEligibilityLicense>? pharmacyEligibilityLicense;
  PharmacyEligibilityLicenseInfo? pharmacyEligibilityLicenseInfo;
  String? phone;
  int? point;
  String? provinceCode;
  String? scope;
  String? scopeRequest;
  String? status;
  List<Null>? tags;
  int? totalPoint;
  String? wardCode;

  UserModel({
    this.accountID,
    this.address,
    this.businessName,
    this.code,
    this.color,
    this.confirmedTime,
    this.createdTime,
    this.customerID,
    this.districtCode,
    this.email,
    this.entityID,
    this.examinationAndTreatmentLicense,
    this.examinationAndTreatmentLicenseInfo,
    this.firstOrderAt,
    this.flattenLocation,
    this.gpp,
    this.gppInfo,
    this.isActive,
    this.isNewBie,
    this.isUploadLicense,
    this.lastActionTime,
    this.lastOrderAt,
    this.lastUpdatedTime,
    this.legalRepresentative,
    this.level,
    this.levelPoint,
    this.licenseInfo,
    this.licenses,
    this.name,
    this.ordersCount,
    this.pharmacyEligibilityLicense,
    this.pharmacyEligibilityLicenseInfo,
    this.phone,
    this.point,
    this.provinceCode,
    this.scope,
    this.scopeRequest,
    this.status,
    this.tags,
    this.totalPoint,
    this.wardCode,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    accountID = json['accountID'];
    address = json['address'];
    businessName = json['businessName'];
    code = json['code'];
    color = json['color'];
    confirmedTime = json['confirmedTime'];
    createdTime = json['createdTime'];
    customerID = json['customerID'];
    districtCode = json['districtCode'];
    email = json['email'];
    entityID = json['entityID'];
    if (json['examinationAndTreatmentLicense'] != null) {
      examinationAndTreatmentLicense = <Null>[];
      json['examinationAndTreatmentLicense'].forEach((v) {
        examinationAndTreatmentLicense!.add(new Null.fromJson(v));
      });
    }
    examinationAndTreatmentLicenseInfo =
        json['examinationAndTreatmentLicenseInfo'] != null
            ? new ExaminationAndTreatmentLicenseInfo.fromJson(
              json['examinationAndTreatmentLicenseInfo'],
            )
            : null;
    firstOrderAt = json['firstOrderAt'];
    flattenLocation = json['flattenLocation'].cast<String>();
    if (json['gpp'] != null) {
      gpp = <Null>[];
      json['gpp'].forEach((v) {
        gpp!.add(new Null.fromJson(v));
      });
    }
    gppInfo =
        json['gppInfo'] != null
            ? new ExaminationAndTreatmentLicenseInfo.fromJson(json['gppInfo'])
            : null;
    isActive = json['isActive'];
    isNewBie = json['isNewBie'];
    isUploadLicense = json['isUploadLicense'];
    lastActionTime = json['lastActionTime'];
    lastOrderAt = json['lastOrderAt'];
    lastUpdatedTime = json['lastUpdatedTime'];
    legalRepresentative = json['legalRepresentative'];
    level = json['level'];
    levelPoint = json['levelPoint'];
    licenseInfo =
        json['licenseInfo'] != null
            ? new ExaminationAndTreatmentLicenseInfo.fromJson(
              json['licenseInfo'],
            )
            : null;
    if (json['licenses'] != null) {
      licenses = <Null>[];
      json['licenses'].forEach((v) {
        licenses!.add(new Null.fromJson(v));
      });
    }
    name = json['name'];
    ordersCount = json['ordersCount'];
    if (json['pharmacyEligibilityLicense'] != null) {
      pharmacyEligibilityLicense = <PharmacyEligibilityLicense>[];
      json['pharmacyEligibilityLicense'].forEach((v) {
        pharmacyEligibilityLicense!.add(
          new PharmacyEligibilityLicense.fromJson(v),
        );
      });
    }
    pharmacyEligibilityLicenseInfo =
        json['pharmacyEligibilityLicenseInfo'] != null
            ? new PharmacyEligibilityLicenseInfo.fromJson(
              json['pharmacyEligibilityLicenseInfo'],
            )
            : null;
    phone = json['phone'];
    point = json['point'];
    provinceCode = json['provinceCode'];
    scope = json['scope'];
    scopeRequest = json['scopeRequest'];
    status = json['status'];
    if (json['tags'] != null) {
      tags = <Null>[];
      json['tags'].forEach((v) {
        tags!.add(new Null.fromJson(v));
      });
    }
    totalPoint = json['totalPoint'];
    wardCode = json['wardCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountID'] = this.accountID;
    data['address'] = this.address;
    data['businessName'] = this.businessName;
    data['code'] = this.code;
    data['color'] = this.color;
    data['confirmedTime'] = this.confirmedTime;
    data['createdTime'] = this.createdTime;
    data['customerID'] = this.customerID;
    data['districtCode'] = this.districtCode;
    data['email'] = this.email;
    data['entityID'] = this.entityID;
    if (this.examinationAndTreatmentLicense != null) {
      data['examinationAndTreatmentLicense'] =
          this.examinationAndTreatmentLicense!.map((v) => v.toJson()).toList();
    }
    if (this.examinationAndTreatmentLicenseInfo != null) {
      data['examinationAndTreatmentLicenseInfo'] =
          this.examinationAndTreatmentLicenseInfo!.toJson();
    }
    data['firstOrderAt'] = this.firstOrderAt;
    data['flattenLocation'] = this.flattenLocation;
    if (this.gpp != null) {
      data['gpp'] = this.gpp!.map((v) => v.toJson()).toList();
    }
    if (this.gppInfo != null) {
      data['gppInfo'] = this.gppInfo!.toJson();
    }
    data['isActive'] = this.isActive;
    data['isNewBie'] = this.isNewBie;
    data['isUploadLicense'] = this.isUploadLicense;
    data['lastActionTime'] = this.lastActionTime;
    data['lastOrderAt'] = this.lastOrderAt;
    data['lastUpdatedTime'] = this.lastUpdatedTime;
    data['legalRepresentative'] = this.legalRepresentative;
    data['level'] = this.level;
    data['levelPoint'] = this.levelPoint;
    if (this.licenseInfo != null) {
      data['licenseInfo'] = this.licenseInfo!.toJson();
    }
    if (this.licenses != null) {
      data['licenses'] = this.licenses!.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['ordersCount'] = this.ordersCount;
    if (this.pharmacyEligibilityLicense != null) {
      data['pharmacyEligibilityLicense'] =
          this.pharmacyEligibilityLicense!.map((v) => v.toJson()).toList();
    }
    if (this.pharmacyEligibilityLicenseInfo != null) {
      data['pharmacyEligibilityLicenseInfo'] =
          this.pharmacyEligibilityLicenseInfo!.toJson();
    }
    data['phone'] = this.phone;
    data['point'] = this.point;
    data['provinceCode'] = this.provinceCode;
    data['scope'] = this.scope;
    data['scopeRequest'] = this.scopeRequest;
    data['status'] = this.status;
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    data['totalPoint'] = this.totalPoint;
    data['wardCode'] = this.wardCode;
    return data;
  }
}

class ExaminationAndTreatmentLicenseInfo {
  String? number;
  String? place;

  ExaminationAndTreatmentLicenseInfo({this.number, this.place});

  ExaminationAndTreatmentLicenseInfo.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    place = json['place'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['place'] = this.place;
    return data;
  }
}

class PharmacyEligibilityLicense {
  String? name;
  String? publicURL;

  PharmacyEligibilityLicense({this.name, this.publicURL});

  PharmacyEligibilityLicense.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    publicURL = json['publicURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['publicURL'] = this.publicURL;
    return data;
  }
}

class PharmacyEligibilityLicenseInfo {
  String? date;
  String? number;
  String? place;

  PharmacyEligibilityLicenseInfo({this.date, this.number, this.place});

  PharmacyEligibilityLicenseInfo.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    number = json['number'];
    place = json['place'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['number'] = this.number;
    data['place'] = this.place;
    return data;
  }
}

class Null {
  Null();

  Null.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
