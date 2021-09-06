Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.18870.1630908658032222786
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Sep 2021 23:10:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=h0YQBvI7;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: sangeeta.jain@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="218028253"
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; 
   d="scan'208";a="218028253"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2021 23:10:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; 
   d="scan'208";a="512369295"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga001.jf.intel.com with ESMTP; 05 Sep 2021 23:10:55 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 5 Sep 2021 23:10:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 5 Sep 2021 23:10:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sun, 5 Sep 2021 23:10:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oXbZRwtCsKO0W2hH07ZvRE4lNZdlYAPXDnr/RMgxXEtlha7cE5137zaWGURTkCZuTYkdE/Lyt+XHLeIExhCE+i8PJnk+t5suG1D7h2XdIHu4mUrFcnl9KeD+rJwRmYnbXZX2uH4EY7wEt7kmXK2w9zmbs4T4YsLanbESsX2IrbyhvsF2cwEDbAL722Pzs8PvrT1TdJIX5RuH76fqmBLtMr2tpoXVdJBzN5bDngxeEIOmwJ26z/jRvIttVkHRSf2ZMlv2zT8Lha0OQc/H/623AXnqhCTfMj5b9ubuO5n6u1/LqArzqFJYQ0mm6YuYWXq7rDkFodLPVSOEgsWYCCSqkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=DNIBC2fUb/ljj2qtRSrGwgCgvHuYLvpmfzcdNkMkXyg=;
 b=ZNDXn7xKm7hnnXetO/m/lgm6KvpmPMZn2WF+Sv3N0Xdeo/K8ipBNXx3UU5iaG8n/1tVmTLFZIKehsNBJGTDAliSEK46cX7GWnh3NOTTDWR5l4KnEKjWxgparaFjQvOcrUQ9WzSc6GPCp+XWarMpInaM3TDD/oN8gaMQ4fpWMGDKdNCZLKKA/MfBybpjS1+nk9mkT7N8xM11c7dN6m8Zgq63ZsuFG20Hl4YAZB8RVfxVEhoHudYAFZ50uk5ymi7vJFL/BUy32ckLdJj1nmf8jif7Rx9ZTv2/1WjxuWeVlLAsreUIPoTwMuyFuYoxAwle/2jwUJiun1ajiZWd8mGQC6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNIBC2fUb/ljj2qtRSrGwgCgvHuYLvpmfzcdNkMkXyg=;
 b=h0YQBvI7KvaLPOCyi5us4gVZUmFiIqxIL3346Sarsc9//gung26T/5g928ucJBeQxBoW6zofGSToRbN0Ltkm5ikjIJE3fj0zh7wNgu5OOKSCuWIPeS9IwPMkK2C8U+2QZgLAWHZsXN/zrZD+AukYRtqEaHiUNMHcMzhq8yb/1J4=
Received: from BN9PR11MB5483.namprd11.prod.outlook.com (2603:10b6:408:104::10)
 by BN6PR11MB1922.namprd11.prod.outlook.com (2603:10b6:404:100::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Mon, 6 Sep
 2021 06:10:53 +0000
Received: from BN9PR11MB5483.namprd11.prod.outlook.com
 ([fe80::882:4e40:b0e4:239e]) by BN9PR11MB5483.namprd11.prod.outlook.com
 ([fe80::882:4e40:b0e4:239e%6]) with mapi id 15.20.4478.025; Mon, 6 Sep 2021
 06:10:53 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
CC: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>, "Jamaluddin, Khairul
 Rohaizzat" <khairul.rohaizzat.jamaluddin@intel.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder build (yocto-3.4_M3.rc1)
Thread-Topic: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.4_M3.rc1)
Thread-Index: AQHXoZCEflXdXewLekGSN4mG02DNpauWiGMQ
Date: Mon, 6 Sep 2021 06:10:53 +0000
Message-ID: <BN9PR11MB5483981EFD271D058850B923E3D29@BN9PR11MB5483.namprd11.prod.outlook.com>
References: <1e259a6e721b585979f81366408ed6570616441b.camel@linuxfoundation.org>
In-Reply-To: <1e259a6e721b585979f81366408ed6570616441b.camel@linuxfoundation.org>
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
x-ms-office365-filtering-correlation-id: 2b433a6c-96e1-4d23-5e0f-08d970fd155e
x-ms-traffictypediagnostic: BN6PR11MB1922:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB192206281EC5DD8A3B698085E3D29@BN6PR11MB1922.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: no9E8pBgQoFmoIPwzMnc55jUBqqvlK+gSLDDCe48Gw6QCBRNCOjJNYm7oHAb9l39TfbBK5mrNsTI5YrcPx03wqyVi/1UPECUg9qY5XrIZjh3nkMJ8xWQTKqDNeSTh9N4/vXrjSM9aBsqCECPShXIKs9GbVKhCdW12KC6OlvpfrP/OdAbD9GTqW1gMQ39Ru1DHBvhFVKPSfnjBXHjwa8fp3gQO5HAhLtD1tmMLGh+bueLQWpF43qRxhWpO1yJ7DoaVgf6jeCbBGSnBt83/55N2fXYqyXBS6CqfxacMsB+OI7DxHTvpsx+XNOaJGvEpynidcfDthk51+RGcZUrsaagFrVjwoo0czE08KTunWmNtlECyj7yIIzpnyRchLCM6EqxjICSxcflhUbxsl+fm0BTSerH/sE0sysa9VZM9IiwVxOCnPrmkJWRrbWoM3Ae+x88QteiWosE3GSmXvK+2QCP6R3uTcH+u7h8dTu/FkdNB16D7h7iByJjqmOB/ZmkXV0FNVtrGfu+Og/pEO95TfQLxBpIC0q1BtclutSIzEXSDG/6+TUkrJeeDLjFRfqHCbQCaPMnrqOzw6Vdn5cvYpPpmmr2dP673+yhLjLEd6bqlKUxh6p4sG04Gvh17eJ3tsYcBYajbfaqWd+xlCCUQCGIj74iUZQxxvJw7aReBEIlRk0fnu6CI0q5CqRDLZS0317iqAI+9pJELq2m1UaOUmNaNxbCk9zZ7giUc7VAzVaA40w26wK9ByjPVRCjFzjvtWr3DM+AwJGLIxeYmJLCy5zJWbDHcdKU+SKCiuOXo4BVwEOzoMt/DvjWH3avcSssK9SvsXsh1HzDzFg6DRz5I0s4RdH61S41MPjMMMdWRQwN7/0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5483.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(7696005)(450100002)(8676002)(15650500001)(66476007)(71200400001)(122000001)(186003)(2906002)(38070700005)(8936002)(53546011)(6506007)(54906003)(76116006)(55236004)(110136005)(66946007)(66556008)(508600001)(9686003)(38100700002)(33656002)(66446008)(64756008)(4326008)(316002)(26005)(5660300002)(107886003)(52536014)(966005)(55016002)(86362001)(83380400001)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmpja2c0NmR1K29Jb2xqY3pmbkRiQ3RpSGI0S04ybkUxdmsvSGR5V0gvUUtq?=
 =?utf-8?B?NnNLeUFOdGxwb1MzZVA4OVhLdnAvMnJXaGtIVlRzb2NNdVVjMGhMS2lyelZk?=
 =?utf-8?B?TGhIcmF6M1MvNld4eTBXWS9sclJGY1FxZWl4LzNZVTFRZzViYVozRytJck4r?=
 =?utf-8?B?cEg5ZDNuQ3MzdGFVcUNZSnFCa3JBay9PMHN4SHZaeEg1Qm1Ga2dtRlZIMkNN?=
 =?utf-8?B?NTEzZmdIQXBIaEl0VnNyQ3QvaHJ5NHovNWMyd0FhTEovdnVTenl6S1dyWE8w?=
 =?utf-8?B?QWVDem1WSDJNRCtNNENRY2JJUUoxMjVrS3VXZkpHNng4ZWRvNkdFdkxSdTBU?=
 =?utf-8?B?QWFPZkFPUjhIOW5SMDJGQ1lCTEg1ZUVZNXN6SHJudE9tUnU5VGVOWTBOQjJk?=
 =?utf-8?B?Q2xjaEJSYUpXenlCVFNZcDRaalJMcTRwTFNWZ0JGYkUrT2pKTW4xQmZROVpZ?=
 =?utf-8?B?czAxREpLVmVZN3dxajJsSWZiTjR5U1YzMGNrK05rU1pEU0hER1hMYlh1TE9U?=
 =?utf-8?B?Z1ZtMFVLRjlSNHFqRVRodU1IcmZvZ2FEY0p2bThDQVRmMnhkRDM5K2xncVJZ?=
 =?utf-8?B?MzhmcXlMa0dvUVRGMFBjQU83Q1N1UE1TMWF5VU1nY2pTY3FOWHZQM2UzVDRp?=
 =?utf-8?B?ZkdDTk1hWXBVODlJL3ByY1QyZUhsTVdObEozZnJ4eER1OHFaeUxQUThvdE0y?=
 =?utf-8?B?dU9id1JCK1FjQzZ0S3hvcVZ6TTYxTDhNWjBueW8vSDFaZ21VRmhReGtaNXYw?=
 =?utf-8?B?T0RET3Qrc21oWkU2R1NUZ1BwM01iRW8zbzBYclMrN2dEbDZlSmEyd0xVS2VK?=
 =?utf-8?B?RmQ0U1FrQkpxNC9JQy9WNnA5K2x0dlFEZXlDRXp5cE4wRnJTNDhZMklhVjBJ?=
 =?utf-8?B?SUJnYjlJcUY1dVU5VS9QMy9UTWs0eUpSWFpnRmZ6RVlRRFRDZVlkdXE4UXVm?=
 =?utf-8?B?K2dvU05idkZxRkJGZ2VUSGRVelJDZ0Z4UVNQNWpjRHZKL1RwSWtsR0dxWDV2?=
 =?utf-8?B?V0t4eWJ2amZjbVBvZXlJckFONVdUVnBRTGRHeXpUcnI5dC94alBTclB2VWs5?=
 =?utf-8?B?cS8vVGg4dE1Jcm5zU201TFE0RndKR25tRmRzdWhnTHo3OWJ6cENXOFN0OEkw?=
 =?utf-8?B?ZWVnS1JsTW9UVlZ4SmRTeVhIWVYyckp2U2JJTlZHY0Naa1kwb2FsSWV1OWZV?=
 =?utf-8?B?MEdTUjNTUUdhTjROZVA0QVpUcHBYZkNNT25xamdndks4YnRPR294Z0UwQTVp?=
 =?utf-8?B?MEtROUs2ZGtzNGdWdzZkWmx5R1IyeDlac2lGTVQ2eWIvUTQ0Mm1NNy9HbGxk?=
 =?utf-8?B?VmtiaENWc2tTanZLUll3NDExZ1ZBVTAzdW1ncTRQdkRNckxuMHpPZEJXcStv?=
 =?utf-8?B?a3ZCQVE1RmFzaWt0Tkx2bmUvL2ZIekc1OUJQVXlMOFZLSlZaQjFNbE83WHJY?=
 =?utf-8?B?UFZXRUhHOXVIb3RGdEhkNmF4dXNLT2dJNFBuS3lOcEV4RTlMNXVYQUg1QU1q?=
 =?utf-8?B?UThrSlh6R01JeW1VeXdKbDVpbmxDWS95aUt2T0FWa2pCeWFJUG5rZlkvbEFh?=
 =?utf-8?B?UmVVMzV2bUEyRjVDL1NXendJQW9OcklwNEZEMC85anFsdFR5empKWkFhWlc3?=
 =?utf-8?B?aGNybE4vbGs3bWxoOUc1YnJ6eWZGQUt3Nm5VOWpwQ1M5MytMUkFUZHViemRE?=
 =?utf-8?B?bi9BVUdnUzRDOUMxWERFbjRuYlh3VnlvUVBCb0ZId3dUZW9SaFdjS3RTaVlU?=
 =?utf-8?Q?WnG7CcXrGGpeC2Y2pYDKvlv+B/jedENZZ36ReIg?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5483.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b433a6c-96e1-4d23-5e0f-08d970fd155e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2021 06:10:53.6202
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: raC2aKpBBVoxsxh4Wv7ZpfwjT3muVjg38yGeO6zrVnHEEzx9nNqUEa4lUJ8SKlwCGD12jVjblh4pDB8VagivWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1922
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgcGxhbm5pbmcgZm9yIFFBIGV4ZWN1dGlv
biBmb3IgWVAgYnVpbGQgeW9jdG8tMy40X00zLnJjMS4gV2UgYXJlIHBsYW5uaW5nIHRvIGV4ZWN1
dGUgZm9sbG93aW5nIHRlc3RzIGZvciB0aGlzIGN5Y2xlOg0KDQpPRVFBLW1hbnVhbCB0ZXN0cyBm
b3IgZm9sbG93aW5nIG1vZHVsZToNCjEuIE9FLUNvcmUNCjIuIEJTUC1odw0KDQpSdW50aW1lIGF1
dG8gdGVzdCBmb3IgZm9sbG93aW5nIHBsYXRmb3JtczoNCjEuIE1pbm5vd1R1cmJvdCAzMi1iaXQN
CjIuIENvZmZlZSBMYWtlDQozLiBOVUMgNw0KNC4gTlVDIDYNCjUuIEVkZ2Vyb3V0ZXINCjYuIEJl
YWdsZWJvbmUNCg0KRVRBIGZvciBjb21wbGV0aW9uIGlzIG5leHQgVGh1cnNkYXksIFNlcHRlbWJl
ciA5Lg0KDQpUaGFua3MsDQpTYW5nZWV0YQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+IEZyb206IHFhLWJ1aWxkLW5vdGlmaWNhdGlvbkBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxx
YS1idWlsZC0NCj4gbm90aWZpY2F0aW9uQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFs
ZiBPZiBSaWNoYXJkIFB1cmRpZQ0KPiBTZW50OiBTYXR1cmRheSwgNCBTZXB0ZW1iZXIsIDIwMjEg
OToyNyBQTQ0KPiBUbzogPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IDx5b2N0b0BsaXN0
cy55b2N0b3Byb2plY3Qub3JnPg0KPiBDYzogcWEtYnVpbGQtbm90aWZpY2F0aW9uIDxxYS1idWls
ZC1ub3RpZmljYXRpb25AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4NCj4gU3ViamVjdDogW3FhLWJ1
aWxkLW5vdGlmaWNhdGlvbl0gUUEgbm90aWZpY2F0aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxk
ZXIgYnVpbGQNCj4gKHlvY3RvLTMuNF9NMy5yYzEpDQo+IA0KPiBBIGJ1aWxkIGZsYWdnZWQgZm9y
IFFBICh5b2N0by0zLjRfTTMucmMxKSB3YXMgY29tcGxldGVkIG9uIHRoZSBhdXRvYnVpbGRlcg0K
PiBhbmQgaXMgYXZhaWxhYmxlIGF0Og0KPiANCj4gDQo+ICAgICBodHRwczovL2F1dG9idWlsZGVy
LnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by0zLjRfTTMucmMxDQo+IA0KPiANCj4gQnVpbGQg
aGFzaCBpbmZvcm1hdGlvbjoNCj4gDQo+IGJpdGJha2U6IDBhMTE2OTZlMDg5OGMzYzUxMDhlNmQ3
YzVhZDI4ZGE1MGUwMGVhNjYNCj4gbWV0YS1hZ2w6IDYwMzQ0ZWZhN2E1MGRjMjU0OGZjNGI1ZDY4
YjVhZDRkNjBjNDAyM2ENCj4gbWV0YS1hcm06IDQ2ZThmYzZhNjdlZmJjYzM1N2NmNTA3YjkwM2Ez
ZTNlMTMzYzc4ZjcNCj4gbWV0YS1hd3M6IDMyYWUyMDU2NmEzOTQ1NGFiMGJhNGM4MGMyM2EzMmVk
N2MxNGRjYWYNCj4gbWV0YS1ncGx2MjogZjA0ZTQzNjliZjlkZDMzODUxNjUyODFiOWZhMmVkMTA0
M2IwZTQwMA0KPiBtZXRhLWludGVsOiBjYjFiZjJiZGMxYjIwZjc2ZmRlOGIyOTFhMTJiMzYxYTRi
YzI1MTFlDQo+IG1ldGEtbWluZ3c6IGY1ZDc2MWNiZDVjOTU3ZTQ0MDVjNWQ0MGIwYzIzNmQyNjNj
OTE2YTgNCj4gbWV0YS1vcGVuZW1iZWRkZWQ6IDE1MTFlMjVjZWE2OWI5OGJmMjc3ODk4NGQ3YTY0
OWRhZDU1OTc4NzgNCj4gb2Vjb3JlOiBmZmI4ODY0OTczOTBkNGRlMjYzMWJkYTY3MWYyZjYzMWJj
MGJjN2JlDQo+IHBva3k6IGYyNzI4ZDNlYzhjMDU4OWUwMmU5YTNjZTdjZjhhY2E5MDJjYWUwYTMN
Cj4gDQo+IA0KPiANCj4gVGhpcyBpcyBhbiBhdXRvbWF0ZWQgbWVzc2FnZSBmcm9tIHRoZSBZb2N0
byBQcm9qZWN0IEF1dG9idWlsZGVyDQo+IEdpdDogZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcv
eW9jdG8tYXV0b2J1aWxkZXIyDQo+IEVtYWlsOiByaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRp
b24ub3JnDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQoNCg==
