Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E7DC433EF
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 14:43:04 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web10.15065.1634049783440871197
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 07:43:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=B+oyNZzB;
 spf=pass (domain: intel.com, ip: 134.134.136.100,
 mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="290659075"
X-IronPort-AV: E=Sophos;i="5.85,367,1624345200";
   d="scan'208";a="290659075"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 07:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,367,1624345200";
   d="scan'208";a="625974034"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2021 07:43:01 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 07:43:01 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 07:43:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 07:43:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 07:43:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XIHmhz/JVy9COwQRtMa2OMkRQ96lKxufqaQ2OQiRM9QVYALBsl5P6ISlmUx2RxJaq4jgv2s3vNlYkVp6QA2BBKAgpow6S4O2HdAQV5O+7JiGXzPbCLvN8FqiOpctMjUS98dpICFlt0Y5ajmw5LiJqIFUA+KVTblyzwboy6llQe3rvbN6pSkoEs5q1mzS55GNSqPI++6jgKGvCQ0RnpqTxtgFi3Hh/mRsOWX0kDn40ck8GSLcA4tiRNIUGbiXL+zpJHVBxC0d0aESBPZIGhM6S2jb644Z4HIHBS9TDciFda2aGeaTZdy0qmI8a4GSI8P5/TVPHLzSQzx/YLhLaLHv5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aulooCEE8Oyp60SzYlL9z3AvD0yWxulE4oTyeSBpV/s=;
 b=DkUy0WwWZvLnw4mdje5gCJkbEipH1sgGo+kuhzh7o4mShkoOM8HJ6hs8mICEg+xPnBZvaHGGVcGpkfmBakLzCCeMQsA+rRJavADhbyo8Z2OITV4Ma3JkSja4VCCaK1keBhJ/labQD4w+QQiyGM5abka/l0eqOJS7eEpnxvFXdWEw4NU6lYoM2Hk4/imVsUt9I3jS9SS3YHlrM0CwnjnSPqSDrRBH0ZzmJT0xSltXGakwmA++DuwaeuFoSaOJ+56/oJnrssP+5ZV50cuxUpL8L/iRYeCHK7iOTsLaX8g1ngPfKl9+dRrubmJiHS7Qk5eZdO3rCnE6cKqwP9lBkoCNPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aulooCEE8Oyp60SzYlL9z3AvD0yWxulE4oTyeSBpV/s=;
 b=B+oyNZzB4oM26O0Uw9fi66S3R2lLicNW5W9ot6Z+GLM52HwdYZobx5UMi5FzkwtuVO8c2ctszE8gtGq8qbcNxYSo1NYRj35E9wWcQcCcscGb11ind9J9gqPP3Y4CGlgNZeoCsdMtj3t15u+TU6SlQhO93nOp3TimHqWq/orUNDk=
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by BY5PR11MB3910.namprd11.prod.outlook.com (2603:10b6:a03:185::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Tue, 12 Oct
 2021 14:42:59 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::8953:241d:7255:35be%3]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 14:42:59 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #zeus meta-intel
Thread-Topic: [yocto] #zeus meta-intel
Thread-Index: 
 Ade7lYNzGnXDdfszSXOKckUgK88nGwAwKyaAAAC+XnAAASNjAAAAO6hgABbwMwAAp4rrkAADYIMQAARXqwA=
Date: Tue, 12 Oct 2021 14:42:59 +0000
Message-ID: <6a6b365dfa81948b6fdc3d49bf6f182d95fd1d85.camel@intel.com>
References: <83b8bb$6ndulk@mga04.intel.com>
In-Reply-To: <83b8bb$6ndulk@mga04.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: baesystems.com; dkim=none (message not signed)
 header.d=none;baesystems.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87ba9223-bddf-43f2-adad-08d98d8e9630
x-ms-traffictypediagnostic: BY5PR11MB3910:
x-microsoft-antispam-prvs: 
 <BY5PR11MB3910A8BE1E88C316A2017414F8B69@BY5PR11MB3910.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4iA7vYWdLZEK54hmcIA/7AkHugltE/q/PegmG4Rioj2S9gH2ZpW2/04ciNQurcSmRVWPb/hsJdlD9VmN0Dmz+YP8imgvBkNO/hs6ckPd4X/6GdsPAolHyAsfWaeFUvCsjVzul0uW1LxZM0EVleTP3d+RbiZVGl2rJsZMmrf2oc+Eqxsl28BpTwoza42JokxlnV5ncfvgZU4Nd8yRb1fFejEnIIMiv6WsjsIRIrw2rv+DCnouUZUydXtDLoLxl1oVtDUUNIBs9KAo9nsRlzUHsJxLSkjUXlZ9IpdkFXZ2RUTvW7JCyqNRBTXXt1QPiD/cJ8bWaiVIw/ed8vVuVFeB4IGGaDFsV1Sf4kuCO62GFoYywwrkLuah48XePyeepPvUNYk72dbXF6rVPb4l2M62fpWx5/o1RzDVruDBKp3XSxG9eH2yIgrzjEmuQLJru1PleEcdCTfEEVT9qcI1tSwYycWmyx8i6k8ftsDUNtwu34skgpdiG8BZeje8HXEK7gpZWHyZfwewubnpFscfmuyVyuE8iCnXpKqvfxrsVGOjYu0Tg6CSlFHWC4Sr85qZZAvpgqAYg1FkR8gSHjYH4FXxblzSXU5uih/DJFg3Y8Veg4Q8I/kbhyhY8g/z179d1qhpCN7rLyfrcn6JigIPh+QxHmiWqlVQRDiTFbtHfhAEamS6Gcvi/TJS85dGS19wmJlHfxvXY5/2qDE+jeMhAodL3A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2616005)(66476007)(38070700005)(66556008)(8676002)(110136005)(316002)(71200400001)(86362001)(6486002)(64756008)(66446008)(8936002)(26005)(66946007)(4001150100001)(5660300002)(186003)(558084003)(6512007)(91956017)(76116006)(6506007)(38100700002)(508600001)(36756003)(122000001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?NGk5UTV0MmZnSU1BNzQwaElqanFZRXFUb1p0Q29zRUpYTjJIa1JRNHYwLzBM?=
 =?utf-8?B?NXI1L0lUZ1lrUDhUQnQveXBaSFJkV3gwTkhvdWpEVmFKbTlVTGllaUZQeDN3?=
 =?utf-8?B?aDFZQUE3Q2Y1SjBHdlBKQ09abGtCK1M3RVNDRXpqZjY4TDVEL2hyVXdLQTI4?=
 =?utf-8?B?YjJTQWp4Yms3Y2hraFA4YXMwNG9MOW15Q1pmZ3VPZTdXZkZjSHVzNS85QTNH?=
 =?utf-8?B?V0lrUVNlYVNWOWhuZzU1TmN2L2tIMHQ5ZE5nOXZUaWtkSXBaK3MzOFRlSWJr?=
 =?utf-8?B?OWRSajNNN2FKWFBjdFQrbGdicUhyc2srSkdnY3RNN1NHd2VONmhPdnJqejYx?=
 =?utf-8?B?T1NCSzlYOEFDREF3YUFqUkc3dWhVL0tUdGRFc0VSQmFnMHpaOEZKSEx2Snpm?=
 =?utf-8?B?N0pkdnc3N3JNbnJiT1ZDMzNvbkxFMGhHcUlRVDl2a2Ftd1V3eXJzREFPVzlx?=
 =?utf-8?B?YkFWNnozT0ZRSXU1SDB1Z2thWGdXUDlYRzdmWVh5VlQ1V3M1VXBYZ1RDZmI1?=
 =?utf-8?B?RzhMZ3hIUGlyUUlOdlF1MGZSYy9NUGswT25kQkJhWUJ5MlI2ZloxQ0xZZmw4?=
 =?utf-8?B?QWhKN3NzNGp2K2ZuTVIzRHZJTHZQM3JnK2l1elRCbURXcDdtdW9TRytDeEwv?=
 =?utf-8?B?UElVS1EyUWV2YUFxZ2IxTnBsWEh4YURjeHVMYjMwc1kvZ3ZJNnJmSlk5aWZ3?=
 =?utf-8?B?OWlZNkVPMnV0N21CQVE5MzU3SU1FYk81eGw5NnE2UkVpTk53RFlIaFpQb0xw?=
 =?utf-8?B?VHp5YlQ3ZlVmSVp4c2xRTllHWmJGYXo2Ti9ucnp0S2NpbWxUSjJDN092QXdo?=
 =?utf-8?B?VmFFaUgrVTZ2M0daczVEUWx1d0dzL1VrN213ZmVFRGdPWFFKeTBGakxuaHha?=
 =?utf-8?B?S1pVMlcyWDJHUENyS2ZodkdFbm43Tm5YdE4vM2I3SnZNZkRhV2VXQmJrOCtI?=
 =?utf-8?B?Nm9xNnJUT255eEUyYlVGZU9CbnVTVUtHWEZOeGNsK3hCS2JvUE9QRC9VR0Fs?=
 =?utf-8?B?TDBYaTlvZmw5dlRnVVlhRXB0NU80SWdYN2ltZHRUeXJKWmh2V2N2NXEzSU0v?=
 =?utf-8?B?NzU0S0k5YjJCVXZZMmNqRW5WL1NjTWpqU1puYVlmVFYreXFhRkFDN0hSQjBO?=
 =?utf-8?B?OFp2MjJ4MjVFa1pNMU5vc05CWEVvUndLNTAyT1h2bkMyc1YrOURrY29ib1BC?=
 =?utf-8?B?ZHBZazRXSXkxMlIyd3BHZmc0Z0k3ODZ0ejRZQzdrUkg0K3B1V0xqcU5DYVk5?=
 =?utf-8?B?UmdSZVBORDFsN3JjSU1TQU1vbUQ1TFUvYmJSd2hnTXdBM3VQSWcxbUJyRGh5?=
 =?utf-8?B?TGhYME5UMVJjUjFLREdDNlpmM2xReWpIT21IdThDaGtvaEVweE5ucTBWVXh1?=
 =?utf-8?B?TkxNekNtSXI1RGtQcStwV3kvVVpZQ1l2S3g5NnhtZHVEUUlRemRaTGI5Q0U2?=
 =?utf-8?B?QnJnQlIrVmFqZXV3TFRYZ1VZaFlpVW9EeVQxS1QvbVJIbjhaSU1zb2E4bmZj?=
 =?utf-8?B?SGtwMmkxa2FGWmtSaEtqbE9tRW5kTVFsMzFNYjF5Y0ZVeTFwaWpnMnJVQkVr?=
 =?utf-8?B?WXJzajBMVU95STNEZDlmSTIvUmVRODVpYytFQTk1ajF1bm5vdStMeDIzRFRx?=
 =?utf-8?B?U3Z0OHduNG5tcVMxcW1xM2dXNXJ4WDk0emtmdExRWGRKQlVGZ1VIc0c2b3Rn?=
 =?utf-8?B?YXQrRlRVZHVGRGpKYnpmcy9MRFEybEZydGM4Rmc5KzN1V3dJTTFjZjVoZjIv?=
 =?utf-8?B?MkR6Qk44aFZrRmx3WWtFRDgrd3VTRTRSdWs4NFpaUFpUU0JTNkQ3eEt1K0pn?=
 =?utf-8?B?dXVmUnFIdVhNdkhXazNjUT09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <CE2F2B23ABD54D4B85425CD65A0F8BCD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 87ba9223-bddf-43f2-adad-08d98d8e9630
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2021 14:42:59.2777
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ov5RNQejvGxxG3fcn5A7teTmY68YEUEB89WwQBbLVD9uXfb0586rdgMSnDTlsTaxoA3EblqKhPN91dQYnIy4lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3910
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 14:43:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55039

T24gVHVlLCAyMDIxLTEwLTEyIGF0IDEyOjQzICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMp
IHdyb3RlOg0KPiBnKys6IGVycm9yOiB1bnJlY29nbml6ZWQgY29tbWFuZCBsaW5lIG9wdGlvbiDi
gJgtc3RkPWMrKzE04oCZDQoNCkl0IGxvb2tzIGxpa2UgdGhlIGdjYyB2ZXJzaW9uIGlzIHRvbyBv
bGQgb24geW91ciBob3N0IGZvciB0aGlzIHRvIHdvcmsuDQoNClRoYW5rcywNCg0KQW51ag0K

