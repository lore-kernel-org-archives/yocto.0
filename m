Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web12.1160.1627450420769225561
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 22:33:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=TCjZqhTV;
 spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: sangeeta.jain@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="192861767"
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; 
   d="scan'208";a="192861767"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 22:33:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; 
   d="scan'208";a="499095930"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by fmsmga004.fm.intel.com with ESMTP; 27 Jul 2021 22:33:39 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 22:33:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 27 Jul 2021 22:33:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 27 Jul 2021 22:33:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKvJFqU43bq3BG7uzc6Q17ToBIGsLOlI8+kUSJZoopgjqZQ2y2tLvLZHdFRL6lehUqsEaYmFBSoyjXlQaIFh4L16RI4HP4+3NPv5RXp9UcgGkx/NLvKFUeq8Lp69rVBigJC3h+cQLzIOLXMV/FGubKlcO3SLH0Ci2dOXbeGy9ZLXPdyXS+M5DzHFJMMyI4RROdKO0icfK9y1+iYBC8bnQWYzk2dOorE59r8nV2iInFsgW0QQikTV+WunH6lLrbRWZ6lwmXP2vX7R9Zbblu2SxDmgfze9tsvJVKV9ZAkV9a6YGB1cca+Vbpxs2VsNI/2KFXFy8K2htPDRarwYM8G/Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QoM0rbhjDqpAyJicwXszlofhRd5HHoi5y/KGKEE7lKY=;
 b=BQ08RofEsEQsbqjYzuT+DE4hB0svgfyWXQRTCWW8Mwd5gYyP06wj/L90Zh99XPt9bAmzYaySw/nDud6oyVluiPmtihhHpiKkabZ+HUp9wxaIl5cydtMYlaZAGpve+NVj6vRCYRsqhvWEPtVMMj1e+1gZN1yCdsvRrjj9CnLjNqH6ZWcVAkz2W1G74oJgiRU7e6Pu8HGSdZqToRqf/x5GF4EIIt6iwr9CBUSwbtDu3b9GKU/buvhHVBvjH80RVyd2ZMUNJycn6mlkUE9xWJjTaRCaZsAiU8FWEYjKsdXa9aMAwnLbJDnLtt50S0mZeTfIoY06VMliAGQuCMYV1rkbdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QoM0rbhjDqpAyJicwXszlofhRd5HHoi5y/KGKEE7lKY=;
 b=TCjZqhTV7AWTZu5EnntSxa+EOJoY5jGc6L1DON+6pSQz+Vxy6CQcE+MudMYA+4tFCTLU7iFyUGjmJ8FgqKHgWY7QXtpEiGmGwiIhgA1xLIOhFkUC1E7GyjHHIKKRpmyT+pbb74/AaAR971BYgePySw+kdIDJF1yJfCHpc4+FWw8=
Received: from DM8PR11MB5608.namprd11.prod.outlook.com (2603:10b6:8:35::5) by
 DM8PR11MB5639.namprd11.prod.outlook.com (2603:10b6:8:24::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.26; Wed, 28 Jul 2021 05:33:38 +0000
Received: from DM8PR11MB5608.namprd11.prod.outlook.com
 ([fe80::419f:4e95:48ef:398d]) by DM8PR11MB5608.namprd11.prod.outlook.com
 ([fe80::419f:4e95:48ef:398d%3]) with mapi id 15.20.4373.018; Wed, 28 Jul 2021
 05:33:38 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
CC: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.3.2.rc2)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.3.2.rc2)
Thread-Index: AQHXgvamrq5hpa/2gE2mOK9XqE2Cx6tX3YBA
Date: Wed, 28 Jul 2021 05:33:38 +0000
Message-ID: <DM8PR11MB5608A1E5468E3FE9E7C3BDFBE3EA9@DM8PR11MB5608.namprd11.prod.outlook.com>
References: <0c60ce5c7e5456d31dc1d89a94451f9d39aa08be.camel@linuxfoundation.org>
In-Reply-To: <0c60ce5c7e5456d31dc1d89a94451f9d39aa08be.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfc56e54-6d56-439d-b008-08d951894064
x-ms-traffictypediagnostic: DM8PR11MB5639:
x-microsoft-antispam-prvs: <DM8PR11MB5639E6D24036E7EDF3FC778AE3EA9@DM8PR11MB5639.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0IgHih5jWF2gTrPER4RjGIWQDZTOCa9cnKUJbkcmUUbY2gPKkBYPxn15b8jImwocW4rXwXkLVxuZLubJ/t/AkAIFNEffBrUVIojwv9E7EgCBFND7dPP/XMq6ISdA28hfD/PViYP6DbwskoM6zY74bZ+osFY3HIldu3rqWleijeOT7H+BLw2p9f/zFAWiRpKWLeF/17MWWso9J4+EkI0Qbndx6M4FL6xie28V9R55muzKKsFKja7nr9hCN7hNnpmWEShU+rR0UDeEyts4RTGV1OaAOx9zEzW09yoLCWZP8Zk6wkMFxU6bUqg4v1f0McrH9boMD3v8meQdDpM1PxqBBLKFTuABV4OApAE9S3K6JH1RLdK1Fruu6AhBEfov0eqYh+e0wT+r1luTHWthrl0lF8qYmqDwGmfxZrHr7l6bsN6qb5U+1TGdDgf0sAk9ftmMRdHxtywBT13cTzB3z0BZyI4mRyzz5wbUE4bYGVSEt9jZYfQt1YkeuEQ/ZBi4YWuKCaBds0aMkgXlaYi+0Ysc1ZpFth3sbuuKATWdQ6SDHypEJuTns/v88s4Nh67hMkh0e/jnRoR9I0xg4QlOOLw27dtIrH2+MouG004IEfkPfSmphS7Lvmr5XRNgTfwsZ9/r3HEhs3pIaj/nLDAo4U4ObSaSmnnIZvO0zE2Y1ZGZyuNZpkhrJX9SSaHnaaHnBbVUUVy2/FlLoXQGFXNcGBVo+rHjgWzXwkztOSvVqyZ/Gv29kLdSGJXilCRHlNF2Pszd9z0GpuWlAs5l9SbqyljnQJhet2vIrBFO6AIMqC1x9LXqII3etrYilXTDc0f9Uog+
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5608.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(346002)(136003)(376002)(396003)(5660300002)(64756008)(15650500001)(38100700002)(26005)(52536014)(4326008)(38070700005)(966005)(6506007)(110136005)(8936002)(76116006)(53546011)(71200400001)(83380400001)(478600001)(66446008)(7696005)(66946007)(66476007)(66556008)(55016002)(316002)(8676002)(186003)(86362001)(2906002)(9686003)(122000001)(33656002)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WUdNNDh5R0YzdzIzTDZSTXo1MGJCdXJaZGdLNGhFME4wMzZPd0lPZXpxSFdW?=
 =?utf-8?B?RnlnVjlhOWdzbE94cHFUQlB1eDBHOXBWUTFLUkFmMVc1VGp5NmlGT3Z0bVdp?=
 =?utf-8?B?QlF0UVo2a2hoTUxqTjB6SXIvUm04WGs0SjNtTEhSZi82NGpsT2JTZ3JUWVFw?=
 =?utf-8?B?dDU1VGpXdWFnd1FWOTgxVGorSjc2bXFBdm1seEV1WFAyZzEyVVFUdzdiYjJz?=
 =?utf-8?B?c3VvY1NhUVpqQ0pxdk10QS9TL3JNVXN0VTVJSlR5bGRCaHFIZTNzcmgzQUxH?=
 =?utf-8?B?SExyYzdoU2pBQ2tOL3lObHc5dkVyOXpqV0NZc1ZaL2ZyaENPbzhXcmU4Y2lH?=
 =?utf-8?B?SitaK0RsRURybkVnUEZicXRZSDBhazdGNUpEeU9Pc2JWdXhnK0kxRUp6QUpQ?=
 =?utf-8?B?dWNHdjYvbWRVemlWZHRUa0Z6ekdSUjhPOG51a1lKYVlxTHFkTUp3UHliYm1E?=
 =?utf-8?B?ZmVxVlg0djl5UU05R24xWFRKNVBrMExJRmhJajlaMVJha0dGOW8zaUozVS9S?=
 =?utf-8?B?WnRWdnF3N2k0ZmRkZ2s1VVArWTRjZm1sNm5aNmpXOWMwc3N1S0ZaYmEzZEhX?=
 =?utf-8?B?ejJtVkhpUkl5bVdUMzRuRHFKZzA3bjFLRjEyVjlJN1ZHN2VMTlVPby9meUdn?=
 =?utf-8?B?aHVWU3o0YzZranFKSUdaRG03bXdVd2dFclFXa0NnNk5GZTJtbE1vS0VhcnFD?=
 =?utf-8?B?aVNlaEp3YjhaL1FNVlkzNHFIelZVYWxpZnZBN2xVbzZINUNCQ0Y0THZjSUd2?=
 =?utf-8?B?S3dPYTBpc3VBdzNiSjVlT1FmNzRic3h5d1hhNzFJdjNDMHNyNXByWTY5YWNt?=
 =?utf-8?B?SDdwWEt4dVNXam5TVExzdStnYWZ2NlpSY3kzTFhwQWpibm5ZaVY4b1FWMVBx?=
 =?utf-8?B?L2YwMGQ2Rlc0d0FLaVBDUnNOQ1VIYVRtZXg2SXNWU0VuMHc0anFsbktKcTdD?=
 =?utf-8?B?Y1I1bTNDQ0p1VGFPS1BvV3RJcWFoRGVtd2Q4czJySVpZVFRSaHZyQzRFaHUv?=
 =?utf-8?B?WVJDcXZmYTAvZjM0WUFMYlp4QWxDV1NkUnJBdTlZUFJ2dngrS2xkaGVlMVpY?=
 =?utf-8?B?a0ZGV0JXMUswNW5nK014bVlFTDdmdXB2d0M4SXNmTTdKcXpyYmFOUCtCNHBB?=
 =?utf-8?B?dVNDNG1IcGZsWHNHWUdnbzdtV25Ib200R0hPbk8wM1lraWtzbEUwMndGamd6?=
 =?utf-8?B?TGhiNVQ1WmJxZG1wRHJiOTBMbjF3QmpTYnV6d2ZPdEc3U0ZoT3hnam1nM242?=
 =?utf-8?B?NGJDZWV3bUxJVzNRQ242MTExV2pBY3BqSlFVMFU1TklQaFEwRWRYYUYrQjNr?=
 =?utf-8?B?VDBWQUdjc1VBMnNSUHc2OU5VOEswRkpQKy9NMUZVZHhaVUF3a3FNQXp3amli?=
 =?utf-8?B?M3poM2Y2SytUZXJYem8wZHJiSERiWEJ0TGQveXJrYVBMNlJtMWluNHNMNzkx?=
 =?utf-8?B?S3A5UHZUTzVrNjUyZGwva3Z2NVhKNXRLbExaMjRDZzlQbXIrUGpDT1ZTOStp?=
 =?utf-8?B?allUbW5VYTBWOE9jNWdsOFRycHg4VUpSQm1yWTVydE9xM0dyVDl0WnIvY1BK?=
 =?utf-8?B?aVluR3BuRDRYSkxlTlhSc3VKMlg0ZUZnSUZrcHdmbkI0SHNQRVpNRTUwaXBK?=
 =?utf-8?B?RjQvY0kyMGNDbWtRSFBvTDVGS1ZwM2dmYkc3UExWdmk3Vy8vODNlaUcvSkkw?=
 =?utf-8?B?SmR4cmQ1MzRCeW5VQzNKVUx5cmF5RXQvZS8xVXFGZ0RNblh4YUR1OHVTMnlv?=
 =?utf-8?Q?/ISnMRU7eneB+AGjvjT2Q8RcIjnEKz4RYTcAKq/?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5608.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc56e54-6d56-439d-b008-08d951894064
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2021 05:33:38.1240
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7lyOqLzDkya+2DffKkFH2HtEqDsMISvAC1KvRRz0ssSpuQ1sU5uYOUawsjJw/XALjv/3Y3NkgCyYbg6oGhbh+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5639
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgcGxhbm5pbmcgZm9yIFFBIGV4ZWN1dGlv
biBmb3IgWVAgYnVpbGQgeW9jdG8tMy4zLjIucmMyLiBXZSBhcmUgcGxhbm5pbmcgdG8gZXhlY3V0
ZSBmb2xsb3dpbmcgdGVzdHMgZm9yIHRoaXMgY3ljbGU6DQoNCk9FUUEtbWFudWFsIHRlc3RzIGZv
ciBmb2xsb3dpbmcgbW9kdWxlOg0KMS4gT0UtQ29yZQ0KMi4gQlNQLWh3DQoNClJ1bnRpbWUgYXV0
byB0ZXN0IGZvciBmb2xsb3dpbmcgcGxhdGZvcm1zOg0KMS4gTWlubm93VHVyYm90IDMyLWJpdA0K
Mi4gQ29mZmVlIExha2UNCjMuIE5VQyA3DQo0LiBOVUMgNg0KNS4gRWRnZXJvdXRlcg0KNi4gQmVh
Z2xlYm9uZQ0KDQpFVEEgZm9yIGNvbXBsZXRpb24gaXMgbmV4dCBNb25kYXksIEF1ZyAwMi4NCg0K
DQpUaGFua3MsDQpTYW5nZWV0YQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmc+IE9uIEJlaGFsZg0KPiBPZiBSaWNoYXJkIFB1cmRpZQ0KPiBTZW50OiBUdWVzZGF5LCAy
NyBKdWx5LCAyMDIxIDEwOjUwIFBNDQo+IFRvOiA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+DQo+IENjOiBxYS1idWlsZC1ub3RpZmlj
YXRpb24gPHFhLWJ1aWxkLW5vdGlmaWNhdGlvbkBsaXN0cy55b2N0b3Byb2plY3Qub3JnPg0KPiBT
dWJqZWN0OiBbeW9jdG9dIFFBIG5vdGlmaWNhdGlvbiBmb3IgY29tcGxldGVkIGF1dG9idWlsZGVy
IGJ1aWxkICh5b2N0by0NCj4gMy4zLjIucmMyKQ0KPiANCj4gQSBidWlsZCBmbGFnZ2VkIGZvciBR
QSAoeW9jdG8tMy4zLjIucmMyKSB3YXMgY29tcGxldGVkIG9uIHRoZSBhdXRvYnVpbGRlciBhbmQg
aXMNCj4gYXZhaWxhYmxlIGF0Og0KPiANCj4gDQo+ICAgICBodHRwczovL2F1dG9idWlsZGVyLnlv
Y3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by0zLjMuMi5yYzINCj4gDQo+IA0KPiBCdWlsZCBoYXNo
IGluZm9ybWF0aW9uOg0KPiANCj4gYml0YmFrZTogNzMxZmI1MmViMDMzMzhjMGJkYjJhMjI1NmMy
MmM2NGMyMmJjYmFjZQ0KPiBtZXRhLWFnbDogZWUzOTdkMDk5YmY1ZGI5MWYxNGYzNTdmODc0YTBm
YjA3NDIwOGZiZQ0KPiBtZXRhLWFybTogNGUxNGExYzVlZTg0ODA4Y2NlYjUzNTRjNmMyNmRkOGVi
ZTY2OTZjZQ0KPiBtZXRhLWF3czogZDY2ZGU2ZWQ4MmZlNmI4OWUzYjhiMjYyNmY0ZGI2ZjVkN2Q1
NzEzZA0KPiBtZXRhLWdwbHYyOiA5ZTExOWYzMzNjYzhmNTNiZDNjZjY0MzI2ZjgyNmRiYzZjZTNk
YjBmDQo+IG1ldGEtaW50ZWw6IDRjN2VlY2YyNTUwZmNhOTEzNmEzMzI0MDBiZTZkYTM1OGQyNjRj
YjYNCj4gbWV0YS1taW5ndzogNDIyYjk2Y2IyYjYxMTY0NDJiZTFmNDBkZmI1YmQ3NzQ0N2QxMjE5
ZQ0KPiBtZXRhLW9wZW5lbWJlZGRlZDogOGZiY2ZiOWYwMjNlMGVhYjdmMTIyZWIxOTYwN2ExYzc1
N2IwZDI0NQ0KPiBvZWNvcmU6IGU0NThjMTU2MjdlN2IyNzM5MmQxNThjYmI5NDE3ZjY2NDI0YWE3
ZDUNCj4gcG9reTogMzFjNjM5ZWI4NjY0MDU5ZWI0ZWQ3MTFiZTkxNzNjMjIzYjRjYzk0MA0KPiAN
Cj4gDQo+IA0KPiBUaGlzIGlzIGFuIGF1dG9tYXRlZCBtZXNzYWdlIGZyb20gdGhlIFlvY3RvIFBy
b2plY3QgQXV0b2J1aWxkZXINCj4gR2l0OiBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy95b2N0
by1hdXRvYnVpbGRlcjINCj4gRW1haWw6IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5v
cmcNCj4gDQo+IA0KDQo=
