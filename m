Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.856.1586395129527691618
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Apr 2020 18:18:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=yyx9k/hV;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: ZfJzCim20MIzYSO0FiYL9vqQUqyCQQIn08qzQG82To2F95IRmtSb3mAqeHmUIiNV5VGZxjNRs1
 Pj4X+I7pTraw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2020 18:18:49 -0700
IronPort-SDR: kX6NXnlx/Q1Chwe4NU/8inGTXXQLCrsYDAvYGIPNrXony8U1VKyvH5GHrEsY2bUoaFPY12IywF
 e+sZFBi2UrEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,360,1580803200"; 
   d="scan'208";a="275638097"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by fmsmga004.fm.intel.com with ESMTP; 08 Apr 2020 18:18:49 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 18:18:48 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 18:18:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 8 Apr 2020 18:18:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e/N4n3yZV2DRla0gdgrDL+XXWWO+htFRWXEFf44uit+/ia8nL4QaJMzR+sTieEJeJBFs1SWlEY7TOSQ9A6dhdGTIxliIG8QAi/iUG1nAte9FmzAYT7Bos4AlpjttBdw132Cuzp7Tj3nCbOks3+UZOeghHT62l/qRmHys/v4LmrKnPygvRR7QwMhk/k+c3JLDhH0FFqnInTf6n6L/sKg0IEmL2SHsHF50YM+E2GW6e+X53SuQOkLLGZrQEezBu2hbVsYU+ikgTZLWO0CgZiqEPT5T16dbmt+CyWTzYnmUl3rAyBt09ENr24/0ER/FNPiYRrRw67e8EsDpzIg1JKlj9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mTw8/F/ltjvLmvd1EfX8o/CgcLH+zVZ94vULtfUF3+E=;
 b=NcKTdeGaNkA/sKL4WJST5L4c3EOEE++Ddt/TS3Gq1MzpwZH0DMIS4QqoMhBt++X2DC3+3lO8SQbkkMPTvcL+3yIsEbdSb5EyqNvU2jBdK/3N3kyNqD8ay4hg77KvZq0N22Jffkth5lykbP/jlIzj9M1tdeU12HZkzPfuOaV2RsB36mtnSMU1/i/qHcS43J/JJUNikWn/3DPDCoc2WpwAVSCxdTVBjfyO0Pmam8ovvMtMAEuUheneMuv+z6gB8u+wKpWCspUUAckcnpyI9ZonTYHQKMdiSC2PznPT/L7Ttmw2EHnFTeeC04QVWQZojr0uHuIGAV88JlM8KZXmus7pkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mTw8/F/ltjvLmvd1EfX8o/CgcLH+zVZ94vULtfUF3+E=;
 b=yyx9k/hVIJXD0IF15srUM67YrHHYgamXornbus5JzNnViAV1HVnffrisN1/GXefRZkimHo+IlpkaNcLs+3g5MsAndOJvNSlgIdl1h/dcwc506UPHbcgu717yVDXKBqEabKrfGwhEitwAWxmgRSy2vLFcYCiofgAVpitsP1WjswY=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (2603:10b6:903:11d::9)
 by CY4PR11MB1669.namprd11.prod.outlook.com (2603:10b6:910:10::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Thu, 9 Apr
 2020 01:18:46 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb%9]) with mapi id 15.20.2878.021; Thu, 9 Apr 2020
 01:18:46 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.rc2)
Thread-Topic: QA notification for completed autobuilder build (yocto-3.1.rc2)
Thread-Index: AQHWDaidT5v2YNGIhEC5K0WlzLYZMahv/XvQ
Date: Thu, 9 Apr 2020 01:18:46 +0000
Message-ID: <CY4PR11MB1879614F7BCF0705E05D020AE3C10@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200408040108.BA881414AB8@localhost>
 <4d89830f1cdc32700b6aa62cb1d92e7f460f2f16.camel@linuxfoundation.org>
In-Reply-To: <4d89830f1cdc32700b6aa62cb1d92e7f460f2f16.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9331daee-b5f7-4799-a442-08d7dc23f3b9
x-ms-traffictypediagnostic: CY4PR11MB1669:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1669ED44E2247E3C2BC794D6E3C10@CY4PR11MB1669.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR11MB1879.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(396003)(346002)(376002)(39860400002)(136003)(366004)(53546011)(5660300002)(110136005)(54906003)(15650500001)(186003)(6506007)(81166007)(7696005)(86362001)(4326008)(316002)(71200400001)(52536014)(966005)(33656002)(76116006)(81156014)(26005)(478600001)(2906002)(9686003)(8676002)(66446008)(55016002)(8936002)(66946007)(66476007)(66556008)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 47xZmsBJqr1+p8btbjzfdxnIhRzU+il2pDrMzQbKBSPzC3Ar5399i71BzeadQHnDydeYSw3L5iQd90HDqdQ0uzcwL2I0vMRcs11eGhNuMSSJ4VffVVLvu68tuZ7liWc3yYTnIgzsiclMA3MUYrH+pZjb2jMPuReoIS4z6MdEbFKgwNdF5bUSFqYfmRMflLbBCSCGlAtvj0pBur+70MS/rmq+zCz6HYceE+DURPxKhrdRUoPPuEq85m2VjZVeF5K1kC23lznyZWhFS6ShIZgKq3BDk3Zb3UFs7sYpJZ/t6UBGFRS98/JQ+00c38IuU6zPcVwD9rmOMu7I60gDY9FrDdNUWSPHViSDjkl2qAWkEnRk7RPJ8NFqWKHOuZ6H+VKOM19vf5Quvi8Rmh60GRl4b8Aur5Um1/6teNAqbREBZgKA+16WjJErR+nIudvm8oudkZ4xfFZOgKvej9UYNWQZ24/Zd3RHAw49T5rGRK45b4J4AaE1Dc0+/2iZxytePpJjjXt0Tc7XJmnFxhuuLvlr4Q==
x-ms-exchange-antispam-messagedata: A1cIQm9jJ0//T8XmlXc+i6WEsu7gryiThaHZAFotkLa0/84XvUM/BfrsV3KHht9HJOiIktxxeeObEZd3/bwnRaSf+pbIqkP8895kXQb+s6o1V45bRiPiWvDK/8ezJ10fL8FVuPvOft7JmHc63RYUrg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9331daee-b5f7-4799-a442-08d7dc23f3b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 01:18:46.5351
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4oaNvzL7sYVw2ZL60pODO2BsPbxGyxTdRgUrhtj7mfj36aluwTLMr7AMru5o/rCsT7CDDOpX2fEhRfQMfgwE0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1669
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgbm93IHJ1bm5pbmcgUUEgZXhlY3V0aW9u
IGZvciBZUCBidWlsZCB5b2N0by0zLjEucmMyLg0KV2UgYXJlIHBsYW5uaW5nIHRvIGV4ZWN1dGUg
Zm9sbG93aW5nIHRlc3RzIGZvciB0aGlzIGN5Y2xlOg0KDQpPRVFBLW1hbnVhbCB0ZXN0cyBmb3Ig
Zm9sbG93aW5nIG1vZHVsZToNCjEuIE9FLUNvcmUNCjIuIEJTUC1odw0KDQpSdW50aW1lIGF1dG8g
dGVzdCBmb3IgZm9sbG93aW5nIHBsYXRmb3JtczoNCjEuIE1pbm5vd1R1cmJvdCAzMi1iaXQNCjIu
IENvZmZlZSBMYWtlDQozLiBOVUMgNw0KNC4gTlVDIDYNCjUuIEVkZ2Vyb3V0ZXINCjYuIEJlYWds
ZWJvbmUNCg0KRVRBIGZvciBjb21wbGV0aW9uIGlzIG5leHQgTW9uZGF5LCBBcHJpbCAxMy4NCg0K
VGhhbmtzLA0KU2FuZ2VldGENCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9t
OiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4g
U2VudDogV2VkbmVzZGF5LCA4IEFwcmlsLCAyMDIwIDk6MjEgUE0NCj4gVG86IHBva3lidWlsZEBs
b2NhbGhvc3QueW9jdG9wcm9qZWN0Lm9yZzsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0K
PiBDYzogb3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IHlpLnpoYW9Ad2luZHJpdmVyLmNvbTsgU2Fu
Z2FsLCBBcG9vcnYNCj4gPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZyA8
ZWUucGVuZy55ZW9oQGludGVsLmNvbT47IENoYW4sDQo+IEFhcm9uIENodW4gWWV3IDxhYXJvbi5j
aHVuLnlldy5jaGFuQGludGVsLmNvbT47IGFrdXN0ZXI4MDhAZ21haWwuY29tOw0KPiBzam9sbGV5
LnlwLnBtQGdtYWlsLmNvbTsgSmFpbiwgU2FuZ2VldGEgPHNhbmdlZXRhLmphaW5AaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBSZTogUUEgbm90aWZpY2F0aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxk
ZXIgYnVpbGQgKHlvY3RvLTMuMS5yYzIpDQo+IA0KPiBPbiBXZWQsIDIwMjAtMDQtMDggYXQgMDQ6
MDEgKzAwMDAsIHBva3lidWlsZEBsb2NhbGhvc3QueW9jdG9wcm9qZWN0Lm9yZw0KPiB3cm90ZToN
Cj4gPiBBIGJ1aWxkIGZsYWdnZWQgZm9yIFFBICh5b2N0by0zLjEucmMyKSB3YXMgY29tcGxldGVk
IG9uIHRoZQ0KPiA+IGF1dG9idWlsZGVyIGFuZCBpcyBhdmFpbGFibGUgYXQ6DQo+ID4NCj4gPg0K
PiA+ICAgICBodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by0z
LjEucmMyDQo+ID4NCj4gPg0KPiA+IEJ1aWxkIGhhc2ggaW5mb3JtYXRpb246DQo+ID4NCj4gPiBi
aXRiYWtlOiA0NjE4ZGEyMDk0MTg5ZTRkODE0YjdkNjU2NzJjYjY1Yzg2YzA2MjZhDQo+ID4gbWV0
YS1ncGx2MjogNjBiMjUxYzI1YmE4N2U5NDZhMGNhNGNkYzhkMTdiMWNiMDkyOTJhYw0KPiA+IG1l
dGEtaW50ZWw6IGJkNTM5ZWE5NjJlZTI4NWViNzEwNTM1ODNlM2MxN2ZhMTY2ZmM2MTANCj4gPiBt
ZXRhLW1pbmd3OiA1MjRkZTY4NjIwNWI1ZDY3MzY2NjFkNDUzMmY1Zjk4ZmVlODU4OWI3DQo+ID4g
b2Vjb3JlOiAxNzk1ZjMwZDhhYjczZDM1NzEwY2E5OTA2NGM1MTE5MGRjODQ4NTNlDQo+ID4gcG9r
eTogNWQ0N2NkZjQ0OGI2Y2ZmNWJiN2NjNWIwYmEwNDI2YjgyMzVlYzQ3OA0KPiA+DQo+ID4NCj4g
DQo+IFRoZXJlIHdlcmUgdHdvIGZhaWx1cmVzIGluIHRoaXMgYnVpbGQgZHVlIHRvIGNvbGxlY3Qt
cmVzdWx0cyBmYWlsaW5nLiBJIGZpeGVkIHRoZQ0KPiBtaXNzaW5nIGRlcGVuZGVuY3kgb24gdGhh
dCBhdXRvYnVpbGRlciB3b3JrZXIgKHRoZXJlIHdhcyBhbHJlYWR5IGFuIG9wZW4gYnVnDQo+IGJ1
dCBpdCB3YXNuJ3QgZml4ZWQgeWV0KSBhbmQgcmVyYW4gdGhlIGNvbGxlY3Rpb25zIHNjcmlwdHMg
c28gdGhlIHJlc3VsdHMgd2VyZQ0KPiBhZGRlZCBhbmQgaGFuZGxlZC4NCj4gDQo+IENoZWVycywN
Cj4gDQo+IFJpY2hhcmQNCg0K
