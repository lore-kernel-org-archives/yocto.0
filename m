Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.11307.1600933545700212656
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Sep 2020 00:45:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=m5SHbBEN;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: 9kbfWJ51DTxQO59ofBdDK3I5JO2C63z9lQKo2GB6U7t3k+okKJz+ByFn7hOK1qAv0vA1X2asBM
 uuDnTrwNtOyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="225268948"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; 
   d="scan'208";a="225268948"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Sep 2020 00:45:44 -0700
IronPort-SDR: jLeyV8YrBGvi5J+ZYe5RNmdd/i81hfJ7swYc7o7wNWYKblswnbiabuEGBWRpj8PEfcOvP22A5K
 ACR6hkCTxbGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; 
   d="scan'208";a="322878255"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga002.jf.intel.com with ESMTP; 24 Sep 2020 00:45:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 00:45:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 24 Sep 2020 00:45:43 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.55) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 24 Sep 2020 00:45:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dXR9iPpv3Q8WEQhU4uWkAuElDoenDC0LEEsDeTzi7evtRL+38H36K2+B2M4A2TP2Nb2ywhtonJUAtnie6WTCzLN5kiQc60kjeptv5u3+8ouwZ078k1sGSVHr2sC+Tlvt/xDGWOHxW3VP4SZwfsgaTTU7Ar6hUDatgXS8Q+86xrC4L9+wkCNcfiZH6uEsSQe8vn3iA/IV8C8K7bG7LJtWh1NpZtxXd4ZE2Q7CnyJ0y/eC5+e1s6NcrJldE6+aj69dbxwMmhnYy9EbIKH8DepvDhCRWuNPxX0M7PvMZrubhmuw0hsy+lrnyIZvXEBlkaWT07o86dSq18vALd4uvU9f0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JCKlwiUlR7z0gVKlz43wCUJXaz5wWp4Fl0rPtxHioC8=;
 b=aa8+eagdrN7eAbfZQmKomzA9sVVHAXqW0nz72e6INomtqm0xmpRh4smXj+vhCcvh+J2LSVu1ZIuBEH7DZCi5fyG0hh8NdnRNFlbJecck91kPROogeMxU7j65f9cwvDccpGMDjHbAfRqNrdA9ZAKeaIOB9HkWRsi+9n+MBYJr6gzb8Xt6qEhqLpKwZKAshASYKcmNceGiPuENOtUiseLJ7RYMrtvACBfeDtYBy5DCUySlS/LPkP0hwmHfndiOGsnLA8vu2c8Uld5zdsfXiMhf92Iute7r2vhO+P1vgj8D31s6IQtw9ABacaEFtH4wipfiBoeFDU3h5kd+Pm641e6pgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JCKlwiUlR7z0gVKlz43wCUJXaz5wWp4Fl0rPtxHioC8=;
 b=m5SHbBEN2lnL6ohMTf6ewm3y6P3VNR6Ed0G+4sHToGdJCt6IvHtgWz0OabS3rsj9l+dJi+tQGDAz6ngCTsUXKXxTj7Ci0tK3vPNuOimzFyequ/TvVEScnmaa6G0ziRjYNAmm5oS4ovm6diCgvGEVROK+kNKhJFxHOoz48khuvaM=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB3669.namprd11.prod.outlook.com (2603:10b6:a03:f7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.19; Thu, 24 Sep
 2020 07:45:41 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::86c:9bbb:7b9f:c30d]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::86c:9bbb:7b9f:c30d%7]) with mapi id 15.20.3391.027; Thu, 24 Sep 2020
 07:45:41 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Saul Wold
	<Saul.Wold@windriver.com>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.2_M3.rc2)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.2_M3.rc2)
Thread-Index: AQHWkiIAbRWWDKEoxUSfO6Qk6vClN6l3ZdoAgAACg2A=
Date: Thu, 24 Sep 2020 07:45:40 +0000
Message-ID: <BYAPR11MB3624E4EBCCAC515D7D249F8EE3390@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200924032241.1A6EF3A07BF@ubuntu2004-ty-2.yocto.io>
 <d9cb0cfcecf697299a862f18bd2cbb3e406dc8fc.camel@linuxfoundation.org>
In-Reply-To: <d9cb0cfcecf697299a862f18bd2cbb3e406dc8fc.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [115.133.103.117]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58481082-136e-498b-e755-08d8605dd616
x-ms-traffictypediagnostic: BYAPR11MB3669:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3669E0D7FD59CF59908AB10FE3390@BYAPR11MB3669.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x8IVviNNHWZCjDR+fy1+hajNKspNHRBiBcwZwpD9lZxYyjYMBI8Uh718/EZY2DKSraxuAPV99QDJuVi68hV0CdUtQGwVcs1qULh0pu0Gw9aLaJe6cPjd/WuEiGvmGvwEFWClx0lg8dYGJGbWNr2RfBKe6ZsApvRqAfsJ48OiipU+g+OuSWsrTFaB7R7+w+i6EECc5sFD/lA7C9h770ttL8OO2eqFgBR1B0DXOZUf5HK+9MAxsZurMh7CGFrF6voeRfIJ/rZxId3YZ3DPVxgQ/+7Z8hkfjVpQwYdL+UJ3aSA/2xDPAm8rjt/oh1494aoSGzkUktjTYZAfws+UipZxXIxyZ2dEeRBbR0Vpol7gn/7TdCWvcBZOr2HMiIXXohAESjFZ3BC7om/4Gh/+Mq2nTcWwCbzhwNeKYR2xmXFbwLj8btqRie5FeBT2yEBhv0QDwF+V+2rT1Um5KBcspckelw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(346002)(366004)(396003)(39860400002)(76116006)(83380400001)(54906003)(33656002)(66556008)(66446008)(64756008)(4326008)(71200400001)(66476007)(66946007)(186003)(110136005)(316002)(9686003)(5660300002)(6506007)(52536014)(7696005)(478600001)(55016002)(15650500001)(966005)(53546011)(8936002)(8676002)(2906002)(26005)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: /puhdj6PBwFxKJTOZ5C+j/lkm60lURjfkz75O+s4vYVjlzBY15FzkOpZ38VICVJu+1E7plY0BmfoSKIdtwPJJ50g7tb0O4KyxvD8HaetVEPUnmLJekkZK0SeXRq/jKfSLw1gsFgDHvqeYqlKI+d10AbtRCLp+C0QyCtRNs8hHlU9YdB99z7FYK2J3qrZSj6DJtkm4EXNCw88sUVjT+hWrMOAXjg2Yv7R0ZoOO6JX3oyvsOLiPY7j2NnD7MJyQdwAUSfXMwAWnxjoly4Q+ffrdbnr0jGqpAJWMRwN7uxpf67qpimEjqU5+Ss5R4SAuGCBoC1k7B+C0CGZDlfg1z9Naivh/2MPuER4lsPzVi8SM4fmvBiF2CGzkvgH1bNwVJ0iW/5F6vJKg1MAElph7xaz+L/hwFo/qS92gBYZhZ4NgenGB4N1K7injxA9kbufaT9K6obatcIG/Lam44xMO0FUSnR92vjS2ze1ufAB2U0c4z4CQ9IKcAvRB7EiNlxqrTMMEZ6Y3NbsNQBJwLEv21KL91xVmpf3InUSCf5BX9isGQFBq0jfCOeZcZhRP3hhjvbQtpmhlFgrnWkrz1jlTCvRZ/2au+JltHjpAtKhm019N25nptMfDxlJAZC8y1wRT0095fNtffGc+LNDFOsj3NDn6g==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58481082-136e-498b-e755-08d8605dd616
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2020 07:45:41.0247
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b4XpM4TPwWGjGZIzIygZbmbwWTlVF3KJ+34V14xy7j4icTFlkc1dm7lPYaA8HvWtoCAb8TcQBRpXSHJ/UTmUiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3669
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUmljaGFyZCBQdXJkaWUg
PHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+IFNlbnQ6IFRodXJzZGF5LCAy
NCBTZXB0ZW1iZXIsIDIwMjAgMzozNCBQTQ0KPiBUbzogUG9reWJ1aWxkIFVzZXIgPHBva3lidWls
ZEB1YnVudHUyMDA0LXR5LTIueW9jdG8uaW8+Ow0KPiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnOyBTYXVsIFdvbGQgPFNhdWwuV29sZEB3aW5kcml2ZXIuY29tPg0KPiBDYzogb3RhdmlvQG9z
c3lzdGVtcy5jb20uYnI7IHlpLnpoYW9Ad2luZHJpdmVyLmNvbTsgU2FuZ2FsLCBBcG9vcnYNCj4g
PGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGlu
dGVsLmNvbT47IENoYW4sDQo+IEFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGlu
dGVsLmNvbT47IGFrdXN0ZXI4MDhAZ21haWwuY29tOw0KPiBzam9sbGV5LnlwLnBtQGdtYWlsLmNv
bTsgSmFpbiwgU2FuZ2VldGEgPHNhbmdlZXRhLmphaW5AaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
ZTogW3lvY3RvXSBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWls
ZCAoeW9jdG8tDQo+IDMuMl9NMy5yYzIpDQo+IA0KPiBPbiBUaHUsIDIwMjAtMDktMjQgYXQgMDM6
MjIgKzAwMDAsIFBva3lidWlsZCBVc2VyIHdyb3RlOg0KPiA+IEEgYnVpbGQgZmxhZ2dlZCBmb3Ig
UUEgKHlvY3RvLTMuMl9NMy5yYzIpIHdhcyBjb21wbGV0ZWQgb24gdGhlDQo+ID4gYXV0b2J1aWxk
ZXIgYW5kIGlzIGF2YWlsYWJsZSBhdDoNCj4gPg0KPiA+DQo+ID4gICAgIGh0dHBzOi8vYXV0b2J1
aWxkZXIueW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTMuMl9NMy5yYzINCj4gPg0KPiA+DQo+
ID4gQnVpbGQgaGFzaCBpbmZvcm1hdGlvbjoNCj4gPg0KPiA+IGJpdGJha2U6IDI3YjUzMTg2ZmE2
N2QyODFkMjliMmY4ZTE1YmNmZjhkYzI1NTdiOGENCj4gPiBtZXRhLWFybTogYzdhMWE1ZjlmZDQx
NWUzYWUxMDc4YzJhMWQ2YWY5YzI1ZTllNjQ5OA0KPiA+IG1ldGEtZ3BsdjI6IGE4ZGE4ZWIxMjdh
NTY1NjFiZjYzM2FiNTNiZWM1N2ZiNWRiYmE1MzcNCj4gPiBtZXRhLWludGVsOiAyNTRlM2E3OWIz
YTM3MDQ1ZjgyOTg0OGUwYTVlMDQ4MDFiZWMxNDM5DQo+ID4gbWV0YS1rZXJuZWw6IGNiN2YwZGM1
YmIxZWEwOTk4YzhkNGZjYjQ4NjE0OGQ0Y2FiNTc1ZjQNCj4gPiBtZXRhLW1pbmd3OiBmMWUxZDVh
ODAzYTQ4ZWQ3MGYyYjBlYWYwZWYxNWFkZTcwNDc5ZmNlDQo+ID4gb2Vjb3JlOiBlNjhkZjkyM2Ux
YmY5ZTgyNjYyZWUyNjE5YWM5ZTJmMjM5ZThmN2JlDQo+ID4gcG9reTogMGEyNDNjZDIxMjYzZjQ5
OGI2ZWNhN2MwYjE2OGU2NTVkZDgyM2UyMg0KPiA+DQo+ID4NCj4gPg0KPiA+IFRoaXMgaXMgYW4g
YXV0b21hdGVkIG1lc3NhZ2UgZnJvbSB0aGUgWW9jdG8gUHJvamVjdCBBdXRvYnVpbGRlcg0KPiA+
IEdpdDogZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8tYXV0b2J1aWxkZXIyDQo+ID4g
RW1haWw6IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcNCj4gDQo+IFRoZXJlIHdl
cmUgdHdvIGZhaWx1cmVzIGluIHRoaXMgYnVpbGQuIE9uZSB3YXMgYSBzaW5nbGUgc2VsZnRlc3Qg
ZmFpbHVyZSB3aGljaCBJJ2xsDQo+IGxvb2sgaW50by4gVGhlIG90aGVyIHdhcyBhIHFlbXVtaXBz
IGFsdGNmZyBpbWFnZSBsb3NzIG9mIG5ldHdvcmtpbmcuIEkga25vdw0KPiBTYXVsIGlzIHdvcmtp
bmcgb24gYmV0dGVyIGRlYnVnIGZvciB0aGF0IGFuZCB3ZSBoYXZlIG9wZW4gYnVncyBmb3IgaXQu
DQo+IA0KPiBJIGRvbid0IGJlbGlldmUgZWl0aGVyIHNob3VsZCBzdG9wIFFBLg0KPiANCj4gVGhl
IDMuMS4zIGJ1aWxkIHNob3VsZCBhbHNvIGJlIGFycml2aW5nIHNob3J0bHkuIFNvcnJ5IGFib3V0
IHRoZSAncXVldWUnLA0KPiBldmVyeXRoaW5nIHdhcyBmaW5hbGx5IHJlYWR5IGZvciB0aGF0IHJl
bGVhc2Ugc28gSSB0aG91Z2h0IHdlIHNob3VsZCBnZXQgaXQgYnVpbHQuDQo+IFdlIHNob3VsZCBo
YW5kbGUgMy4yIE0zIGZpcnN0LCB0aGVuIDMuMS4zLg0KDQpUaGFua3MgZm9yIHNoYXJpbmcgdGhp
cy4NClFBIGhhcyBiZWVuIHN0YXJ0ZWQgZm9yIDMuMiBNMyBSQzIuIFdpbGwgc3RhciBRQSBmb3Ig
My4xLjMgYWZ0ZXIgdGhpcyBvbmUgaXMgY29tcGxldGUuDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBS
aWNoYXJkDQoNClRoYW5rcywNClNhbmdlZXRhDQoNCg==
