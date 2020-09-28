Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web12.38556.1601304782531122971
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 07:53:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Ah2i5G8i;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: cxMmL6wfHfRQJcjgpVHtE2G35ZkCC7rjSv1ezQcvFl0VuWcg9TwDhl697PQqXaTDNMoOEw/0eJ
 7j/V+os44Oxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9757"; a="223599128"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; 
   d="scan'208";a="223599128"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2020 07:53:01 -0700
IronPort-SDR: 9orlANriCmUvXR9aKSvmWpvXQtOBcLWeOxSwZEFWyqVU9Gy8qV3hkXk/AfmEGeTtYI60YknqLi
 qKliC0JEIbVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; 
   d="scan'208";a="384442009"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orsmga001.jf.intel.com with ESMTP; 28 Sep 2020 07:53:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 28 Sep 2020 07:53:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 28 Sep 2020 07:53:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 28 Sep 2020 07:52:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CUVN7Nbe0MlU6NekO5Rja86bs70fCd3WIWMZdSUXsSZNvnVzm1elBwGevEIYFhd0LTuJDJ7AR2XH4B4u8ABbZ9UhyHjVVV9tBz+kwkrNz/FTT+NGyPbW4qL3XuOwICYEJcOgr6EfoGZxlTs38VnllASqfRU27agE6HQ686P99sdon0iL9lYVgevwt6EVGeniPyloW8yoJXNVpWpH4BwbP2YPL7gcB8iTQczByZgIB12Itw+r3ydVfl32gp3wVI8+5upSvhX6EljgUNvGuATYBizFlAB44TEq4zXaIY9as8ScmRcWJ9WC1PCXvyQLj9ckHLHY7oIcaYLmdxSeu9d76w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I96mXoZh0Fn78dcb2UVG+lXj6nxjx0ALqL0TSjUqhNg=;
 b=DFnThWkYn0vxbUcuIzXIoc78psgKKuGZFcZ7vn+rn/sBV02+Va7I8Ff3Cw2+AIScyywc+6d5C4173r7v9VbeSGeB2Qeca/v/9EEcUjxY8GFlNUbdkknNxBk00jfVk/Ozvo78cGYy5O25eJgR/TAU8YnPYrTEiUrNGT6kv6/ilj4LdLhq6OLixbePuQv9Rgb76ymqiRyTvLsc0kFKwROV5F8MaHHUNOv/xfK05FgeL1OAmDy3MnH54tta8uaY+wTxrB1vZbRWLZLmF0qGxqJtc0gGPsuyENZKAeLpihwRPT2u6big5LYCchXT8RY1i83jTQ/MAH+y0x6EAwoknWDP5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I96mXoZh0Fn78dcb2UVG+lXj6nxjx0ALqL0TSjUqhNg=;
 b=Ah2i5G8iJcaYQNtds+NxrtNHOwT118KweFCloOFCpDQG5XihEgSd1m95Ut3HVlgOCgFN0kL1SE8bZ2c+6bNwE49L6Nhot2nVEcv5am4tZ7Zs7Q7Y1cZ7o59x434bS/D9lWfXhHOrM6sNIa+4kFFoe4UXtliOTyCi4Tsq8ET4A3Q=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BY5PR11MB4435.namprd11.prod.outlook.com (2603:10b6:a03:1ce::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20; Mon, 28 Sep
 2020 14:52:59 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::406e:4a1b:25b8:da3f]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::406e:4a1b:25b8:da3f%7]) with mapi id 15.20.3412.029; Mon, 28 Sep 2020
 14:52:59 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Yocto Project
	<yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
	Steve Sakoman <steve@sakoman.com>, "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.3.rc1)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.1.3.rc1)
Thread-Index: AQHWk0lI7KSPn8kdfkaK9GnZFRt7Kql+JceQ
Date: Mon, 28 Sep 2020 14:52:59 +0000
Message-ID: <BYAPR11MB362478819B6CB4E384648962E3350@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200924111808.4B9ED1A00A2@debian8-ty-1.yocto.io>
 <032da6fc700a4018bc7e8d86fd188ad6b40fce36.camel@linuxfoundation.org>
In-Reply-To: <032da6fc700a4018bc7e8d86fd188ad6b40fce36.camel@linuxfoundation.org>
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
x-ms-office365-filtering-correlation-id: 1828c0f1-1684-47f0-0b95-08d863be3122
x-ms-traffictypediagnostic: BY5PR11MB4435:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB44355B6FFA8B6CB5D0A74903E3350@BY5PR11MB4435.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BUAreL9GjDSNGOPAeazq3h8SxAitg+IdtadIVaCf/dGT1kWU0pcdKSiXx/QB9zvyiOa7dGu1L9+A1TsNzfz8rpi/oEH+TPnnVtC+OOJVjAspPupoYvo2P4dof4GM4C2/AxIV9fgn3HoYWqjj7d6WmiR89hqw02ug9oSzavNBw9QaMlYZ6XWSt1cfWj5W0Mkw5fjPlI38mKd4WJ2vKXDanNy8t56szlgHxF6NLv/2wXwyIBEIKTkG94HxdvQags6cQtKNHmY+cynBLb8ssWesZk5w6aS9/Ebw2QRvQzVA7jCeHIZb77c6Br3gRebb9UeXDb8OQ3PtRQpgcN7IpxX1zNrXKIAb2Zdx1o7Q005cedw99rGSowhrVNCOUhaR5/zAlMtJAYnfawXnHZfxBqmrbCcqWYcjRpuoUqt1DOWYllDA1fPv4P01GCDvdfjXqjP42Jk6Ipm8jQOhAa/LgAMLCQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(346002)(136003)(366004)(396003)(86362001)(83380400001)(33656002)(9686003)(15650500001)(52536014)(55016002)(186003)(8936002)(8676002)(64756008)(66446008)(54906003)(66476007)(66556008)(71200400001)(66946007)(76116006)(316002)(53546011)(6506007)(26005)(110136005)(2906002)(4326008)(478600001)(966005)(7696005)(5660300002)(107886003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: nkqVmkARKVnvZeDp+d6Q22s9gijFG7TR//F1iUSt0TGU1flJ6ZSca8ZkoIbdzHyKV3e8LvNxa5crum4lBb6G115FasCnZWKREhVHI+dn76wEc2ojGnAyYaCo0nd+9E/Sa888go8eR/Tc6zoJi24TNN7UAj93DD+6LuuHjT+TTLjT0cmvIMYhkVNKgudjx8T/MQZZf+7WQLYauwWHm+lqLR6gV7t4ZvzfByOLSucXxrXxwvlH/qqYxDVf9T5zPeyxxoxwS7UuuGx6+ns8ABDIBjReKoRrS9BmuUH9Cy9KYaI4ybcQPD+Bp3vRiQH3dEbcySkTrUAyt4lH+AJuBIx/4dTGay3whHsQSUeyQDmrwqh+xW529YwX8o892u0I4LhXdnl4lt14MviFvnJX1Tsgr3w6oXNgoHEdp5fyOh4Zelz/rqDdXUYUULXB1biDHE+G4u+pDkzMsfBOgwzXRi4nJwPxGot7M2NZf9vyPpOxYcpB1mYaw2HMEA3tUImfbBye/18uMCj9riUfa1oNMOdJlfjtLJHhbpaa0QUlWhP27eKwQzcKLED+MCbm5dj2LjrQJAIeGqG5qBxcLGXXisQ++mdHAcG5LNHB1I1MdfqsskIbyccTW1xYnD1+FpcDd8LhDUBTo+hAhtePVXG3FHXaWA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1828c0f1-1684-47f0-0b95-08d863be3122
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2020 14:52:59.0606
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nf8U+a1EHFXwouSLHMlr3i538tvc0/VJJuqYAZRZnU+QYOM8D8yk8WVajFUinhfKagV6cCKtNEIh5A2BhG6XqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4435
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgbm93IGRvaW5nIFFBIGV4ZWN1dGlvbiBm
b3IgWVAgYnVpbGQgeW9jdG8tMy4xLjMucmMxDQpXZSBhcmUgcGxhbm5pbmcgdG8gZXhlY3V0ZSBm
b2xsb3dpbmcgdGVzdHMgZm9yIHRoaXMgY3ljbGU6DQoNCk9FUUEtbWFudWFsIHRlc3RzIGZvciBm
b2xsb3dpbmcgbW9kdWxlOg0KMS4gT0UtQ29yZQ0KMi4gQlNQLWh3DQoNClJ1bnRpbWUgYXV0byB0
ZXN0IGZvciBmb2xsb3dpbmcgcGxhdGZvcm1zOg0KMS4gTWlubm93VHVyYm90IDMyLWJpdA0KMi4g
Q29mZmVlIExha2UNCjMuIE5VQyA3DQo0LiBOVUMgNg0KNS4gRWRnZXJvdXRlcg0KNi4gQmVhZ2xl
Ym9uZQ0KDQpFVEEgZm9yIGNvbXBsZXRpb24gaXMgbmV4dCBUaHVyc2RheSwgT2N0b2JlciAwMS4N
Cg0KVGhhbmtzLA0KU2FuZ2VldGENCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
IEZyb206IFJpY2hhcmQgUHVyZGllIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3Jn
Pg0KPiBTZW50OiBGcmlkYXksIDI1IFNlcHRlbWJlciwgMjAyMCAxMDozNiBQTQ0KPiBUbzogWW9j
dG8gUHJvamVjdCA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4NCj4gQ2M6IG90YXZpb0Bv
c3N5c3RlbXMuY29tLmJyOyB5aS56aGFvQHdpbmRyaXZlci5jb207IFNhbmdhbCwgQXBvb3J2DQo+
IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBp
bnRlbC5jb20+OyBDaGFuLA0KPiBBYXJvbiBDaHVuIFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBp
bnRlbC5jb20+Ow0KPiByaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnOyBha3VzdGVy
ODA4QGdtYWlsLmNvbTsNCj4gc2pvbGxleS55cC5wbUBnbWFpbC5jb207IEphaW4sIFNhbmdlZXRh
IDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47IFN0ZXZlDQo+IFNha29tYW4gPHN0ZXZlQHNha29t
YW4uY29tPg0KPiBTdWJqZWN0OiBGd2Q6IFFBIG5vdGlmaWNhdGlvbiBmb3IgY29tcGxldGVkIGF1
dG9idWlsZGVyIGJ1aWxkICh5b2N0by0zLjEuMy5yYzEpDQo+IA0KPiBbdGhlIG9yaWdpbmFsIGVt
YWlsIGJvdW5jZWQgZm9yIHNvbWUgcmVhc29uLCByZXNlbmRpbmcgdG8gdGhlIGxpc3RdDQo+IA0K
PiBBIGJ1aWxkIGZsYWdnZWQgZm9yIFFBICh5b2N0by0zLjEuMy5yYzEpIHdhcyBjb21wbGV0ZWQg
b24gdGhlIGF1dG9idWlsZGVyIGFuZCBpcw0KPiBhdmFpbGFibGUgYXQ6DQo+IA0KPiANCj4gICAg
IGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTMuMS4zLnJj
MQ0KPiANCj4gDQo+IEJ1aWxkIGhhc2ggaW5mb3JtYXRpb246DQo+IA0KPiBiaXRiYWtlOiAxOGUx
OTU3MzM3ZmQ5ZjA2YmM2NzNkMjhkZDRmODI3NzMyMWQwN2JjDQo+IG1ldGEtYXJtOiBjN2ExYTVm
OWZkNDE1ZTNhZTEwNzhjMmExZDZhZjljMjVlOWU2NDk4DQo+IG1ldGEtZ3BsdjI6IDYwYjI1MWMy
NWJhODdlOTQ2YTBjYTRjZGM4ZDE3YjFjYjA5MjkyYWMNCj4gbWV0YS1pbnRlbDogZDcxMzRlODY1
NzQxNzI3ODRmOTAxMTdjMDNhMDEyZTAwNDhkOGJjYg0KPiBtZXRhLWtlcm5lbDogY2I3ZjBkYzVi
YjFlYTA5OThjOGQ0ZmNiNDg2MTQ4ZDRjYWI1NzVmNA0KPiBtZXRhLW1pbmd3OiA1MjRkZTY4NjIw
NWI1ZDY3MzY2NjFkNDUzMmY1Zjk4ZmVlODU4OWI3DQo+IG9lY29yZTogYjM5YmRhNGNjNjJkYjEy
YzBlZGZiZTQ4OWQ1YTdmNTk4OGVkZTZhOQ0KPiBwb2t5OiAwMTJhZDEwYTg5YTg4OWMyMWU2N2My
N2RjMzdkMjI1MjAyMTI1NDhmDQo+IA0KPiANCj4gDQo+IFRoaXMgaXMgYW4gYXV0b21hdGVkIG1l
c3NhZ2UgZnJvbSB0aGUgWW9jdG8gUHJvamVjdCBBdXRvYnVpbGRlcg0KPiBHaXQ6IGdpdDovL2dp
dC55b2N0b3Byb2plY3Qub3JnL3lvY3RvLWF1dG9idWlsZGVyMg0KPiBFbWFpbDogcmljaGFyZC5w
dXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZw0KPiANCg0K
