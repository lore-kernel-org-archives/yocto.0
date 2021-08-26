Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.27454.1629962517291835568
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 00:21:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=esZ8tYyv;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="281403851"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; 
   d="scan'208";a="281403851"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Aug 2021 00:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; 
   d="scan'208";a="686869285"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga005.fm.intel.com with ESMTP; 26 Aug 2021 00:21:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 26 Aug 2021 00:21:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 26 Aug 2021 00:21:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 26 Aug 2021 00:21:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 26 Aug 2021 00:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AYvX62QVvGS9w6pwGcEfAvXiFyqkSnbwJvD8S37U9H3aTbUM43vJ/K5vdoAj1prrhf5dMDH5fT742KxR6ffCROH6kQzbE6EZ3TOWPucQxIMWxJ4XU6ZcDw+rmeVCyGDFPgTx5M9by76M7KoO3PThot8yZncntQx6/DqMpr9qQLT+loy16yR2zxjD2RK5jcoQ2LbbJ9YWUwa1ZS2OXWR6pf6KUsNi/8A1sMZhdCKlHSwVqi71mLohafB6KaXPLQgoTB/tjVQbl6f6pT/YN5YFhaeVAyon1T/kWcTv/PKP638q6nH8yQfovLEybi7wHVLVRXk7op0VFZUJ2aJAIfvWHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t6jt727Exyc6AGTEhGZbI64PTXL6CF8BO7Bbw2KxJuM=;
 b=BaNQg5opzeD3c/lUfN9GE9yCx08PCSLxTTd/xgB7o1bvgZMTIIjW1PYH0BqwSvom3EJ63uQ1y8bJYrCW83hq+8gF24irDosPF7Zz3nPb+QZMFofLZY/4jm7jcwcThcniPlL/uCpLZH+VZuNR3/D2qgrU9UKlvOEEV8fRdpU7XdzYiwVsXbtccegqhO5XmYmLNxpt797okbi6Ju1dQa8aq8HC4oAbB5yZKYSn2bmiVfWwPU9Ov23E5OA9zo/ns4eEIqEYoCJ3zrNn89XTadV2Fz/M6CLoaU2/YT/4jKSVdFIr5HxqP3Lt5HAmdgkWljoz+/lN6VZInx3K7fExgd8JPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t6jt727Exyc6AGTEhGZbI64PTXL6CF8BO7Bbw2KxJuM=;
 b=esZ8tYyvqZaUa9lsTsVIEhZuZMgenNNJIwX7VLMYMn0XS8kXnoedeg5u7MbaxZgMyC5s1qKDUQ54QGd1Kiv6RLZcngqXgaNjI0LVIjzGYRU1kziQM4s07WeixkQrg9s96LDTjN9vEVLgmdGCdaA4ZbHVd3dDUoQDMViTyCkyYBQ=
Received: from CO1PR11MB4881.namprd11.prod.outlook.com (2603:10b6:303:91::20)
 by MWHPR1101MB2270.namprd11.prod.outlook.com (2603:10b6:301:54::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.19; Thu, 26 Aug
 2021 07:21:52 +0000
Received: from CO1PR11MB4881.namprd11.prod.outlook.com
 ([fe80::1526:a53e:e787:6b8]) by CO1PR11MB4881.namprd11.prod.outlook.com
 ([fe80::1526:a53e:e787:6b8%7]) with mapi id 15.20.4436.027; Thu, 26 Aug 2021
 07:21:52 +0000
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"asconcepcion@acoro.eu" <asconcepcion@acoro.eu>
Subject: Re: [yocto] Dependencies are not resolved correctly when building the SDK
Thread-Topic: [yocto] Dependencies are not resolved correctly when building
 the SDK
Thread-Index: AQHXmkdBHnP5tl0WXk6nEhYr/aqiKquFYYWA
Date: Thu, 26 Aug 2021 07:21:52 +0000
Message-ID: <2d03d24613484fb47acc4fa2b257fbe5e3a4a1dd.camel@intel.com>
References: <32iL.1629960875523290856.eNOY@lists.yoctoproject.org>
In-Reply-To: <32iL.1629960875523290856.eNOY@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2d3e92a-7d71-4f9b-797a-08d968622d5d
x-ms-traffictypediagnostic: MWHPR1101MB2270:
x-microsoft-antispam-prvs: <MWHPR1101MB22707E3572FEBDBF62251667F8C79@MWHPR1101MB2270.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2/KDa0SniHSE3tk9rhEKO18Du55h5W+X4Irn0UBOSgBNcOAIZJ7EbA4N/VvCG9Fg0QRo5o9jWUhdLJ9/1TPaG8rsdtxJtixvuhUsyCrUxEtDtmrkxyFkd2Iwr+5GT4mGPcC9V5x+PrtDLP5E93UrxD6DGInihItaAJOneaN8m7WWd3lAykbkHzssEkg1A5wSxoBL2D6g6+wgnTn/LMrzMmJDJqjcAq0wCg4wY6oecGSyz3uyE6wJWAfUrqJE+M4I5h2Hdak3VI55ofScOIw1gnSV0Aruv6xkbxx78SZKy1vKcSdBll2b4qj/TGc7qTrt8Cj3QYEiikty2LAutoKXd8I0nMT6RDkj1D1K8f+HpH2hA0AlHeV2cc+qq6UkKXuC8p7lAtU/QURPSSNw81SNnnk3IgdpQYQYSao6+Uff9FjR/dbQVN9fr7+YJtrxA5YKaIjVopq/2DGMWaENtmrK3wTXGo9+KvlFH2+WyTzAw2Y1VkHOEwU+4xXT+glQqpDTwb5lWD7VVHwvGbWCW/Q0uO3fvqfB+wWEKDFWl4cVSZsGim4kJmxgjozM4FEmwH5vxW/yPaKiySauimkR/yJrnZWfQOKqi8cm+Nwl0pEvVB2bd9pVAe2cZC5OIqM2O7uK5+SeY2c+OZFCuPzUggt4jHY/cEYIxJUqCxyqvATTENbqYS/9x0Q2k+0D1hqig9lPvrQrLoRl9VMkAyA8MFD/og==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4881.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(8676002)(6486002)(478600001)(6512007)(4744005)(186003)(2906002)(38070700005)(8936002)(91956017)(76116006)(66946007)(26005)(38100700002)(36756003)(316002)(66556008)(2616005)(110136005)(64756008)(6506007)(66476007)(122000001)(71200400001)(86362001)(66446008)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHNVNFNtVU5lb2pQUTNpbEloOWdRM3h3bkFCQXQybXN5TW1RQmYreVo4aDh6?=
 =?utf-8?B?KzZFdGE4Um9xYjRWQm1Udkx1Uk4ralVCOTMvZVlzdHRQUHpwU2lFbG9yeEtS?=
 =?utf-8?B?TSsvVVB5RjFSc215TGgyUFhKcHV0UktWRW41VmJWNXNyU0dGMVNxQmttMmo4?=
 =?utf-8?B?MHlhS1VlcXdIUEliV3hmSnZtSmZSc0l1dFZmWE1aT3A2SmJWM1VkNlZVMTdp?=
 =?utf-8?B?VUZFNllCUXA5RGl2ckdWQ2Nab1BlVU94WlBMSVd3TGxCcUJIMjBRRTIxQTN0?=
 =?utf-8?B?by9KRlNUVklwaUo5TUM4L21SWU9qaWZsYmY2QVZtSWMwTDU3YWdIeSt0Q2Vs?=
 =?utf-8?B?bG9BOFptOUFnajFoZXFXWmNsSFNkWUVzQkJDTUt5ZmFtM3lwaVUyR0JBbDZi?=
 =?utf-8?B?bmhYMHZoOEZzMVVTQ0JxMjdML1kvRWZFcWNBRWN2WWpvbEZ1L0k0c0NNTDhH?=
 =?utf-8?B?YVBEcytKNXpxSE9paXN1WHI4eDNNazNPa0ZPOGx0cnFEV3c2bkVyYnBFaEg3?=
 =?utf-8?B?L2hwQnduZ1Q2cHpWUHNwaGVGVi9ZWE9odjFQaTNjbEdiYlZKWmlGREFPSjY1?=
 =?utf-8?B?Nk1Mck9KbFpRVlkzbmpxRFlaVlA5dzBjVG51ai85SlFwMFZzMmd2Q2hjY0Jy?=
 =?utf-8?B?aVBVMVkzY0x6NkxFeUpsQ2VLYXhyQVNwSmpGVE1WV3plL2FIWTltZ0ovNUtW?=
 =?utf-8?B?dHhuR3UvU1ZrQWRNMGEyMXZFTWZxa0xXRGxkRkJVQXdYS1k1bllTMVJRd0Fi?=
 =?utf-8?B?MDBzbWlpck1pYnhSOFYzeC9KcVBHcHNzc3hHNjI3eS9ZU0FKMTQyTGo2c1VE?=
 =?utf-8?B?MXpJUTF6dGNMSll1YmFOdkVtaGhSc05mZ252eDVkSXFlL3BVQTB6NjU1ZGdH?=
 =?utf-8?B?L1NyZEt3dStrVDFiV3luWWl5ZUNHZVVwUmVWdll1azdtWHVocGlhd1ZHejBJ?=
 =?utf-8?B?MHBkMm8vUUFwTmYwZjNDci9mV1lraUc0Mm1Lenc3NmVBdDJhbkQvU3JJYlZ1?=
 =?utf-8?B?clNRK0M0czVwcjc2Z2dJODVlQ0N1WEpubDc2aTkxc3FHaDFCdDYvT0JSZFor?=
 =?utf-8?B?MHZvdTNPbDEzSkl4VGI2VUpBeE8vNlAzUkN6VFNGZnZtdXZBMUs0WGtBNUhO?=
 =?utf-8?B?TVB4S2ZLQ3NaeGNqY0F0N0MwdVZ6dDZOUGphc0hTeHZjV2o2TEIvQlF2dVVO?=
 =?utf-8?B?ZzNyakk5blU3TXlnTEJMUCt5bml0QWxrRzF5VlFoNkJIRmNhc2N4SG50anRx?=
 =?utf-8?B?T0ZEdW15all1QVRRZG1PajlMbUNKM0hWTFpXdDBKejJsM3o4TW5ld2NadTBR?=
 =?utf-8?B?S3BSWm9URjZlcUl2cWJEbS9rdVpqcHlaemdTODQ4Nkl2NVhJRHBEdk9pNnFV?=
 =?utf-8?B?cU5nelVuaE4vT2Y0YWFmWnNhcHlFUDNvT3dpWGNRYWNEemhmcHYxY1QxaUtl?=
 =?utf-8?B?Z3pPU1ZtbGE3R3FoRUdWdWdjWTZhYmRwbXBUaGV1bXd5SkdyUm9SclhBb1BQ?=
 =?utf-8?B?OUVIaThLc01XTkx4R3pYZEg0Ky9jeFN1djgzNm0xY2RtTWErdEhGaU5jVnJ6?=
 =?utf-8?B?b1pLRDdKRnJVYU9ZZ1pkMWo3Nkd0NWdGZXFuZEQ5dFdGWHRmUjdFaUJMc1oy?=
 =?utf-8?B?SUUzVnM5Y0g3U3lXMTVSU3RzNTYzVVNWVkx3ZkRkTUZRdHlURlFVdCt5ai93?=
 =?utf-8?B?dmhjUWRhMzNnYnlNRW1lcVN1UEVtNnJsbkt0dFJqRzBjb2F2RUw0c3RBTnpH?=
 =?utf-8?B?UjBYT0RORkxJVjNaZjkwc3ZDbGhoemNhb0ZsZVN2NGFOSDJlWnRsWHFRYVhs?=
 =?utf-8?B?Y3cvNEFVQ1lmUXcrdHV2UT09?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4881.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2d3e92a-7d71-4f9b-797a-08d968622d5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2021 07:21:52.5237
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NIdesOvTLtw/3kd78daVVmTkeRdXCuw7gyONV30s1CvTm8dRuRBFsOYBUePyKDlT5nediig3o0HBFp08M/v1jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2270
Return-Path: anuj.mittal@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6A3570A47564742B3281C3C0B5DAF95@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDIxLTA4LTI1IGF0IDIzOjU0IC0wNzAwLCBhc2NvbmNlcGNpb24gd3JvdGU6DQo+
IEhlbGxvLA0KPiANCj4gV2UgaGF2ZSBhIGN1c3RvbSBwYWNrYWdlIHJlY2lwZSB0aGF0IGhhcyBh
IGJ1aWxkIGRlcGVuZGVuY3kgd2l0aA0KPiBhbm90aGVyIG9uZSAoZGVmaW5lZCBpbiB5b2N0byB3
aXRoIHRoZSBERVBFTkRTIHZhcmlhYmxlKS4gSWYgd2UgYnVpbGQNCj4gYW4gaW1hZ2UgdGhhdCBp
bmNsdWRlcyB0aGF0IHBhY2thZ2UsIGJpdGJha2Ugd2lsbCBidWlsZCB0aGUNCj4gZGVwZW5kZW5j
eQ0KPiBiZWZvcmUgYnVpbGRpbmcgdGhlIHBhY2thZ2UsIGFzIGV4cGVjdGVkLiBIb3dldmVyLCBp
ZiB3ZSBidWlsZCB0aGUNCj4gU0RLDQo+IGFzc29jaWF0ZWQgdG8gdGhhdCBpbWFnZSAod2l0aCBi
aXRiYWtlIDxpbWFnZT4gLWMgcG9wdWxhdGVfc2RrKSwgaXQNCj4gd2lsbCBmYWlsIGluIGJ1aWxk
aW5nIHRoYXQgcGFja2FnZSBiZWNhdXNlIG9mIGEgbWlzc2luZyBkZXBlbmRlbmN5Lg0KPiBEb2Vz
IGFueW9uZSBrbm93IHdoYXQgY291bGQgYmUgY2F1c2luZyB0aGlzIGJlaGF2aW9yPw0KDQpDYW4g
dGhhdCByZWNpcGUgZm9yIGRlcGVuZGVuY3kgcGFja2FnZSBhY3R1YWxseSBiZSBidWlsdCBmb3Ig
bmF0aXZlc2RrPw0KDQpUaGFua3MsDQoNCkFudWoNCg==
