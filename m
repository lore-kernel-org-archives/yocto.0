Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web08.2400.1627979072603638024
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 01:24:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=nzOSniL1;
 spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: sangeeta.jain@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="193221674"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="193221674"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 01:24:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="441080349"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmsmga007.fm.intel.com with ESMTP; 03 Aug 2021 01:24:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 01:24:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 3 Aug 2021 01:24:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 01:24:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQJDsDcRsuTgJcg6qr2K8RWDys8eX+KsVafQ/shoUo8mkDo4GiqUv9ZbC/WXawQcgvovSUM0sUfwEMv8NZTGOwCuu8XgSfLddNxOgyVNV+Sd2pKfeW3ssVQK2tP26YdAPoiAXD2X8QAeopuch/ArjDWSaK4Zq6sV2/Hq2n3MRLyaih2ck/OyAvT8Wx06fQ2/BQzlvoheb5xmYgz+SSpqpx84YcEo/jgxf725Bs1vprrGUPzsuGPxFAwLb1XVHk8RR34Ruhqeue7spU15GoR4v72nFYHJy6VQuTjWBkGfqDmrZM05ojSN+oclaDLdqIXukyAJp2Sq6f1/+Fb8jvK+Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UzxCgexrIi+4eXYTvJb7j8CDz6bS0dBM4zqOHIly8qw=;
 b=OzdsramsqPA1VLFaLYvub4cvaJ2P7gcv8NgUcg3wy5Ml/3KnkS/ydIRCtT66IG+DvkIOwgjJXwa1EgqO65aXrIYV6RIg/rseT8S9QRN8kgAyvXr4m6OyfIG3OeJOKeW/5xzJh01iNMxK/OuRIbMxbe46zNw9zyBiIWLiB/ptAr8Iy0KJk81+uXCnb8K5grpRAPX+kv3g3P1GfXmwSM+YQ/BLolQiKWAPrh6nrfrBCYM5sLZ0YioAKn0I1LaN09qQKGDQ4ZU9xLX5WYjPbUJYJUIFinPFzyCzfqFZZRXhY3pmQWsO1rF7dNLLZgRsJtufr3ir4l1yohknmdxOwVPK8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UzxCgexrIi+4eXYTvJb7j8CDz6bS0dBM4zqOHIly8qw=;
 b=nzOSniL1sD3o2EpB36ygjdpogMnLPpnNoxevFJoIAJKar9HA+jEIiLP/+7+CFSdEodVBuK8GEjf6SnIn+vMPfnIcCoLQkllEFZIFTbDec5waulwM5oQSXsjAHHCncgbfKab57CGNbElvn0GAruDrAn7sU70qhr2G3Czd6vEUG6A=
Received: from DM8PR11MB5608.namprd11.prod.outlook.com (2603:10b6:8:35::5) by
 DM8PR11MB5606.namprd11.prod.outlook.com (2603:10b6:8:3c::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15; Tue, 3 Aug 2021 08:24:26 +0000
Received: from DM8PR11MB5608.namprd11.prod.outlook.com
 ([fe80::419f:4e95:48ef:398d]) by DM8PR11MB5608.namprd11.prod.outlook.com
 ([fe80::419f:4e95:48ef:398d%3]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 08:24:26 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder build (yocto-3.1.10.rc1)
Thread-Topic: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.1.10.rc1)
Thread-Index: AQHXgzmHWCYcE4G6Pky7P1UuZVeXIqthez8A
Date: Tue, 3 Aug 2021 08:24:26 +0000
Message-ID: <DM8PR11MB5608C31732DA5D96842C3760E3F09@DM8PR11MB5608.namprd11.prod.outlook.com>
References: <de37e80025dfd59afd14daa355bf6100e70a656d.camel@linuxfoundation.org>
In-Reply-To: <de37e80025dfd59afd14daa355bf6100e70a656d.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 807b3ae0-6597-42d2-838a-08d956581b63
x-ms-traffictypediagnostic: DM8PR11MB5606:
x-microsoft-antispam-prvs: <DM8PR11MB56060BC57DE2E6CC74CD8748E3F09@DM8PR11MB5606.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h7YHeAgQmwaQahSWdwqnN3CEP+o1CWejysxbxoBekTZU5NILLcEvHk6u3GNY8pZL9kL2i0ZgN4LFKQzKlmW+OU4ZyvEXNdD6ujUqBb8o7tl3m0U5AL47Cc3VWY30CVrCZvXsN0mXNHGMlgITlSUNZ5h7A2xT6lbBSKN3YbHmKN8YkoTTHvqzjhE7nItwzu42cW9AD9CmB1ogUuVNDTC9vYOb43l+crt4b9O4IdpmNw6FSyFfyKoUFx5DQ/XutkVMnEBjWFPVS6H9H35fret6JDXgI2Jtx+pA5ZPidBCdzpRmW+7R+o+fwmv/ciiN6VvMioMJ3Cumgorbw0jLOEYf14IzpBdmlCi1A5X1+10TefCiqmzy0lUPES7yNl0JbJ/mmXsaCdTRrBVcLLlCScwbKYywmysAd7k2ZxXnbQGz+82hg7QU/IRBjK45H1dPLurR78G1DX1A/3cvsuS/CQQWfy0V47mkBZwI49UOO6Se2oqpb6A64e4x/vddQIGrDXdYmVRedykE5O3zbDfYPj5PrmhmD/PhHiuxRnO+P/wv0kO1lKk9YDhy0we6sVGsNVYu0QcSiHmCa8nC1Kdj5t7HDtO978+6C1CYXx1BfPfX9NvbH2ueea/apCC4eyVpXr8xblmJXo8q7tjHZaHua0DsP02U7+7h4dL56GGAM2GYKzIxiyCCkIvF78fXuaUYtcHWgwxrlyd1+EQDvxGd26KIjRSzqaK4EEe2Q1lUO5iVo1VIVjFhQxWN/Om+2bl59bPpgFQ8Iq5FXGGYQDz+1sphFPSwbmmAjjEE8ezCuvxgmi7lC4U9ZY3IdmojvRj/EazQ8J0WBalM8/cqgSL4nTjjTwwVN/+GtWOZfI/EM2MZHsY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5608.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(86362001)(8676002)(71200400001)(450100002)(8936002)(55016002)(478600001)(83380400001)(9686003)(966005)(33656002)(52536014)(110136005)(5660300002)(122000001)(38100700002)(2906002)(316002)(38070700005)(53546011)(26005)(6506007)(186003)(76116006)(15650500001)(66556008)(64756008)(66476007)(66446008)(66946007)(7696005)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OE1IU01xdXVzaEZpNkVkVlRaWjU5OHp6K1JvUENRL0FqNWlzNmNzSzlycDVV?=
 =?utf-8?B?cTluT2prTUV6ZDlKaXlhYWdnQ2lJUVFONjhQZ3NpWmFCSmM2aEU2eW9ZdWt3?=
 =?utf-8?B?RFJtU1FxOU9Uay8rZHdKa1RBVkZvcFErN0U1V2NsQUp2UDRQSllYdVJqSFRq?=
 =?utf-8?B?Rnd5NjFqTERGcHAxL3JFaUR1ZmJVM1lBaFJqbnlmcTZoTG1mVlVBMDV3NDI4?=
 =?utf-8?B?UzNWcm84bmIyOFZSM2ZGMVYvaFBNYUpIeU00V01NcjRsUEh0cjVqTWNPQlBx?=
 =?utf-8?B?UkRVRlVTRWxIVHI3bEJha0FVcHJMaWN4TkYrZzlQZURFdi9TZFF5YVhlZWxF?=
 =?utf-8?B?NkhOTHU2ek9jV2N2TTFkSmp6OTZwZU80bytpZzM1NVJOWXhzZkF6RzY4VlZ0?=
 =?utf-8?B?RGlrSE44ODFKNCtlcllDMFNBTjQ0R012TWJreG1pL0xrSDhzeXA1K2xEK05S?=
 =?utf-8?B?RS9CbnhzTVRyd3ZOcjk3OGZINS95SXA2ajBWNFhhcDczZnNJS0NBNXRhUWh2?=
 =?utf-8?B?c1ErUTJ2T1EzV1JEOUFqbVFlcFVMSjdQdkhHTVErc203ekZPVktldWlOUVZa?=
 =?utf-8?B?c0RyQ1hSamR5K3FEMzUrc3NXQXBTejJHTkxER2F5dHFHYWhDTnRrYkViamh1?=
 =?utf-8?B?VXY5UlZ6K3NhbnNaUTJWVVJwVzRhNFRreGQwOXBLbzNtSjYwUUtwT0V1VHI1?=
 =?utf-8?B?ajNyVHB0cjZRSTJJZ3lOSEgyNFI1aFJxeG5DOTh6amZGSFR1enBLVDgvWEtD?=
 =?utf-8?B?YzQ0dUltK3d0dU90Q1UreVJpSlhGVDRmak82K1VmeExDNmdsUnN3MjFUZXBh?=
 =?utf-8?B?TWVFeGJ4d1BHV25XcitHaVdjWDczTEdVMzl6aGZuSmhxMEVnbHBLdDBzSWdP?=
 =?utf-8?B?ZktKTHVFT2QwcjQyd2ZDbzZub3gxRlpkTEM2MVdQMDBycEZydVBLek15TStn?=
 =?utf-8?B?ZDV2T1dIeXcwalN2TkRjRmVYVzBwbVVycW5Ed29PMHZySGlQTnp2WmpQc1hi?=
 =?utf-8?B?aWVrbnlRV3VFemlqNEZEcXNnZU1obS93QUFiSGJtWTgxVlJwaDh4cDhoV0tT?=
 =?utf-8?B?U1N0OVR4UDBJMXo5UTBmSERuSkxOY1Z3by96L3lFZkZpVjZBNjJwZk5aTDZP?=
 =?utf-8?B?ZTgrQzRWckQvME9zOGFTbzc2S3FzNWY5MFpNbWJ3SmF4dXcwbUQ4R2ZkUEhX?=
 =?utf-8?B?MW9ma2NVUHRCdGhPMGV1bUgwVXFsODFjaTBFVjlHME1OakUyMkVudEQ1V3E0?=
 =?utf-8?B?UWxTbkZqZmkzd2N6YTRGbkRqc1JzaFBFcU83QzgxZklTQUFDUGdtSzhGeVBn?=
 =?utf-8?B?R3prMzVDYUFrV0Z5dlJJejVFNWFBTTNyS01WMGJkMk1WUks5ZlY1eno4Z2Jm?=
 =?utf-8?B?eHNEZ0xzNm5aZW5TRjFEWW5sQTc5Y0wvdGxsdHVwTlZEZjd2VXpweVduTTl0?=
 =?utf-8?B?YVRXUmpOUFh6bVZyVWFJdmpkd2hkWk1lckJqM1BvTUl0RmxUUUcydHhQQ0kw?=
 =?utf-8?B?bTZ4M0htUEpvdGM2Zks0czBSanZuSG44Y1VUSFFLcXhxUE5NRllPazdmeE93?=
 =?utf-8?B?YUFjSzdIcnRsTTNBY0JGRE9GTm00dG1oblRnWEZERU5BUnVwbU5KbjBDT3Zp?=
 =?utf-8?B?S1pqN3JuQnMxcnFyWW51WTdZdUk2d3NnWmFMcU5RNEdqcWgvdjd1bjdkYmF2?=
 =?utf-8?B?NDQvQzFDWjBaa3RMenViOWphOTVxSHRtWk51cTkxdXREeTFBeEIvY3NhVGV5?=
 =?utf-8?Q?CB5rRqX8WgjYuCR0fNXWGZbZj2mDDEdQBoIRDYr?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5608.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 807b3ae0-6597-42d2-838a-08d956581b63
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 08:24:26.4680
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J8jtbVv/jdmhegMfFuZChucFQ+7jCd9vepvhDxgoTih+G3kMxqv9fFC1BGcbnn/QZNZsUdPNxYTvud6C6vz8vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5606
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgcGxhbm5pbmcgZm9yIFFBIGV4ZWN1dGlv
biBmb3IgWVAgYnVpbGQgeW9jdG8tMy4xLjEwLnJjMSBXZSBhcmUgcGxhbm5pbmcgdG8gZXhlY3V0
ZSBmb2xsb3dpbmcgdGVzdHMgZm9yIHRoaXMgY3ljbGU6DQoNCk9FUUEtbWFudWFsIHRlc3RzIGZv
ciBmb2xsb3dpbmcgbW9kdWxlOg0KMS4gT0UtQ29yZQ0KMi4gQlNQLWh3DQoNClJ1bnRpbWUgYXV0
byB0ZXN0IGZvciBmb2xsb3dpbmcgcGxhdGZvcm1zOg0KMS4gTWlubm93VHVyYm90IDMyLWJpdA0K
Mi4gQ29mZmVlIExha2UNCjMuIE5VQyA3DQo0LiBOVUMgNg0KNS4gRWRnZXJvdXRlcg0KNi4gQmVh
Z2xlYm9uZQ0KDQpFVEEgZm9yIGNvbXBsZXRpb24gaXMgbmV4dCBGcmlkYXksIEF1ZyAwNg0KDQoN
ClRoYW5rcywNClNhbmdlZXRhDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJv
bTogcWEtYnVpbGQtbm90aWZpY2F0aW9uQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHFhLWJ1aWxk
LQ0KPiBub3RpZmljYXRpb25AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9mIFJp
Y2hhcmQgUHVyZGllDQo+IFNlbnQ6IFdlZG5lc2RheSwgMjggSnVseSwgMjAyMSA2OjQ4IEFNDQo+
IFRvOiA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gPHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmc+DQo+IENjOiBxYS1idWlsZC1ub3RpZmljYXRpb24gPHFhLWJ1aWxkLW5vdGlmaWNh
dGlvbkBsaXN0cy55b2N0b3Byb2plY3Qub3JnPg0KPiBTdWJqZWN0OiBbcWEtYnVpbGQtbm90aWZp
Y2F0aW9uXSBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZA0K
PiAoeW9jdG8tMy4xLjEwLnJjMSkNCj4gDQo+IEEgYnVpbGQgZmxhZ2dlZCBmb3IgUUEgKHlvY3Rv
LTMuMS4xMC5yYzEpIHdhcyBjb21wbGV0ZWQgb24gdGhlIGF1dG9idWlsZGVyIGFuZA0KPiBpcyBh
dmFpbGFibGUgYXQ6DQo+IA0KPiANCj4gICAgIGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8v
cHViL3JlbGVhc2VzL3lvY3RvLTMuMS4xMC5yYzENCj4gDQo+IA0KPiBCdWlsZCBoYXNoIGluZm9y
bWF0aW9uOg0KPiANCj4gYml0YmFrZTogMGUwYWYxNWI4NGUwN2U2NzYzMzAwZGNkMDkyYjk4MDA4
NmI5YjljNA0KPiBtZXRhLWFnbDogNjhjMDAyOTYwMmU1MzlkMDA1YzMzYjZjMzZiYWEzMmUzNGJm
NjdiZg0KPiBtZXRhLWFybTogYjc5YjkxMjJlMGRjNjZjYTAzNTQyZjgyZmY0ZmE4ZWIwNTE3NGY2
MQ0KPiBtZXRhLWF3czogZDY2ZGU2ZWQ4MmZlNmI4OWUzYjhiMjYyNmY0ZGI2ZjVkN2Q1NzEzZA0K
PiBtZXRhLWdwbHYyOiA2MGIyNTFjMjViYTg3ZTk0NmEwY2E0Y2RjOGQxN2IxY2IwOTI5MmFjDQo+
IG1ldGEtaW50ZWw6IGQ4YmY4NmFlNjI4OGFlNTIwYjhkZGQ3MjA5YTBiNDQ4Yjk2OTNmNDgNCj4g
bWV0YS1taW5ndzogNTI0ZGU2ODYyMDViNWQ2NzM2NjYxZDQ1MzJmNWY5OGZlZTg1ODliNw0KPiBt
ZXRhLW9wZW5lbWJlZGRlZDogOGZiY2ZiOWYwMjNlMGVhYjdmMTIyZWIxOTYwN2ExYzc1N2IwZDI0
NQ0KPiBvZWNvcmU6IDlhZTMzOWFjZTkyNzRiZTcxYmZkM2I1ZTVkYTY0ZGNlYWM5ZmE5NjMNCj4g
cG9reTogMmE4NDhlOTUwNzQzMThmM2EyNDNkZjdiM2Y0MDUxM2ExMzE3M2E4Mg0KPiANCj4gDQo+
IA0KPiBUaGlzIGlzIGFuIGF1dG9tYXRlZCBtZXNzYWdlIGZyb20gdGhlIFlvY3RvIFByb2plY3Qg
QXV0b2J1aWxkZXINCj4gR2l0OiBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy95b2N0by1hdXRv
YnVpbGRlcjINCj4gRW1haWw6IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcNCj4g
DQo+IA0KPiANCj4gDQo+IA0KPiANCg0K
