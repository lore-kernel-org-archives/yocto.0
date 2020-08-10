Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web10.39374.1597038580202081782
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Aug 2020 22:49:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=hvtG6y8/;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: HxSoK6aKkdJR04FOKHwTN5OxM1bAIA7VVqcT9i09lmxFFs5/hOWgsF/fxqNEKtn11mL/l8yKht
 0/loKSvznrAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="152696653"
X-IronPort-AV: E=Sophos;i="5.75,456,1589266800"; 
   d="scan'208";a="152696653"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Aug 2020 22:49:39 -0700
IronPort-SDR: 99vHhsVwoASUMc5DmMKicE/Qf4lYUDy7FRbNTp9CH2DgA1+4n8Mtq59w1oE2gIM4lgh5/7eEDU
 SJskqijsm1Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,456,1589266800"; 
   d="scan'208";a="332113943"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by FMSMGA003.fm.intel.com with ESMTP; 09 Aug 2020 22:49:39 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 9 Aug 2020 22:49:38 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 9 Aug 2020 22:49:38 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.50) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Sun, 9 Aug 2020 22:49:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NscLB32ZhAjYKwuGsV2QLpLnc705srSZ5oHeJCrLIPwL4ZeRoRBYpJZwAttgh3PH8VD5RkHnY/7SQMpwCF7FsDBoEgFCzrIKzGRe6NYmqcsLtaW0TuxcnHRnKl8w1v+sB3pu9PVm+R6sQECt3w3wGcPXpHJ5m0Bvon/feLU0Ow2Mf2CtwQzSpjU9kNWJ5PljabqpDDTBIGjUskHoBTbf93f0tud/LYn8TmfX3J40KijF43SOU4RxputijMcLUc7gjyRPytj139CWegjlmioI8FmzOZI7eenB6rLyfFXzSmAkUGfbgJWkeTASqHyJk4Gcy1l4285O8sI4cKKA+lKDqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=48BjSJqIpqOeL4ebD+cNN5nJh4kbqPC53B7zBO8QSVs=;
 b=mozZ9bXIO3diXJDby8DK1YAxLg8T3uS4IgTMw+I9HQC42CMI0ERkuV41n42N8YEG7dJqAwDThkq07xs1zDHuFTlh1ijT2nofT7v6VF/JqmtsyAe9dv/bqwz4kDB8cuwPNSkPlFA8yL8v9oqWzdqtyKzscFkEr534uLdBtXMNA7MRItaK6sZpMm4mnD46AMANkzR3bH2lUjpyyt7wDSdOEx2D5HMLis6MU6zFXGVnq1HoCOGGVPmtTkfQwKE2l6c9pgSgv37e84DTEp7HwIh0QHl3sc/8F4MtBTKS4g0i2/snXg4vCKrT+CCSek7Gf9k8Q2uqUz4LxHSKpIA0iZMk4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=48BjSJqIpqOeL4ebD+cNN5nJh4kbqPC53B7zBO8QSVs=;
 b=hvtG6y8/YaiA3AfOcscFY+gxFd0lKcmSf61UYcmAY2TPFORhiDd127HPtOfS6+VCHYUhwQYQvFedReismlzjzpE5eTNS8soyMxwrCShZIxYFYJABdl2FHrfn7jXwu3mQ6RQKwNUBWwnX3fZFuK79Xz8jk5nmfATdwku5Few4HiQ=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BY5PR11MB3910.namprd11.prod.outlook.com (2603:10b6:a03:185::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.15; Mon, 10 Aug
 2020 05:49:36 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614%7]) with mapi id 15.20.3261.023; Mon, 10 Aug 2020
 05:49:36 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
CC: "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, Stephen Jolley <sjolley.yp.pm@gmail.com>, "Teoh, Jay
 Shen" <jay.shen.teoh@intel.com>, "Tummalapalli, Vineela"
	<vineela.tummalapalli@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.2_M2.rc1)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.2_M2.rc1)
Thread-Index: AQHWawPbQu8iEZUmlkqgX0dG5Wf78Kkw3WOQ
Date: Mon, 10 Aug 2020 05:49:36 +0000
Message-ID: <BYAPR11MB362457510454DDFB05CD1280E3440@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200729193401.B6E595AAD78@debian9-ty-2.yocto.io>
 <BYAPR11MB36240B14E6F914C2ABCC6935E34B0@BYAPR11MB3624.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB36240B14E6F914C2ABCC6935E34B0@BYAPR11MB3624.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [42.189.136.88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb8c5ab5-dc10-4ab1-a8a0-08d83cf12a65
x-ms-traffictypediagnostic: BY5PR11MB3910:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB39105176482108CA5D82E501E3440@BY5PR11MB3910.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8H2ZNJvMQsSOEYuR6dkTjHMzBw+/1b1sWzNi5C7/ceiWlUN9CBpIa6zghE+ytk0xoIC0jJY94ukR4vIRSI2tV85DW4jYYRAvMuBOGMUveeal6FLab2z+fusnFsUyDGC2dbKjsprIeCpm/W2KbaLRBBD0vbuvIMv+OTdbqS9LaD+Mk3T8zWB1I1Xam0qCl+wd6k7GitLxVbc1M6KbTsK0Er5mJ4l4iosnM1haxNHnTH5t/MbL0U8KWsq/+y9wSthpsqXFZTm+yspn5ypyBVtOP//xmnvXl26MqNM4+6hbeI6LZoyXFyu38t0yj+KWYXIbbyhAYAVw4dNf29vZXSFXM0wKa67QU3mNgk1IO3ZX6ai79GuhGPqjS6MRE57CO45zbaYucelDab6WG7IdK4ue8w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(136003)(346002)(376002)(366004)(396003)(39860400002)(54906003)(478600001)(2906002)(7696005)(55016002)(9686003)(15650500001)(107886003)(316002)(110136005)(71200400001)(86362001)(83380400001)(76116006)(66946007)(33656002)(4326008)(8936002)(966005)(66446008)(53546011)(52536014)(6506007)(66476007)(66556008)(64756008)(186003)(26005)(5660300002)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: BWeY+VCiB5L3sVhVKlzjkkqoCmx+wkgHGi7pfPA39F9Kk8m04lMCmE7WcHkiOvCfFsSIrqucbUPXR5/vo6t4anz5MYbs43KnCpRlAURuKYixSMNySFHsm8ypkt9woGdfMHmyYHdhgDS8I/bL5kTmAPW8DDHSNqCNC4c6rZb1BibyOcYx7uE9GpcgjlSsDmp8MhaLaL8IR5ftuYN6GF+lX1HUcaXHPac/dSLibKsQEzoPc7EW94BaMaLyWFAoqKXm9ZDsbTGRp+B75VAZHc/u8LRG009yIFjJjO90DyMczqYoeiw5ZLWzhdugBwBBh/Pr8Ibp/WMXVcJu0HAiGNQ2UJyiehk8tS3sVl1XnitwinuqBPvrod+MIFaVM3xIqa8a8BqQCPPUMyWAuLhfe9WQdlk4ntISE2pylLgdgy2iUd1HqsBiPIYJhse72+t4afBBNMYNN87qAPCkvT0Or8SydBPEvjRGd/Rvp+eka3i9mnC78sJoXlbnfP+gShqh7XtYAoHkM1N349evdNB6lViAumsPcLYep5VID4r0igyafOv4h4zB0YIKWjIgjvZpzCWGdmg9856yDh5/wIubed+TKA2c6fXNBH8Nj+AontZNb8wRTo1W5KvXTxohEk26KKDtOrO3tyJ1E0tYYt2g9sfUyw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb8c5ab5-dc10-4ab1-a8a0-08d83cf12a65
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2020 05:49:36.7556
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KT/czJV8tOR1LNicySDaaMnJjTYbn9DRmnFXJ0IpplEiTGbiwCVByGaxHRVdz/5Im46PwPaVcTu4CnSbka1yQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3910
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpUaGlzIGlzIHRoZSBmdWxsIHJlcG9ydCBmb3IgeW9jdG8tMy4yX00yLnJjMTog
IA0KaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL3lvY3RvLXRlc3Ry
ZXN1bHRzLWNvbnRyaWIvdHJlZS8/aD1pbnRlbC15b2N0by10ZXN0cmVzdWx0cw0KDQo9PT09PT09
IFN1bW1hcnkgPT09PT09PT0NCk5vIGhpZ2ggbWlsZXN0b25lIGRlZmVjdHMuICANCk5vIG5ldyBk
ZWZlY3RzIGFyZSBmb3VuZCBpbiB0aGlzIGN5Y2xlLg0KDQpsaWJpbnB1dCBwdGVzdCBmYWlsZWQg
KEJVRyBpZDoxMzk5NykNCg0KPT09PT09PSBCdWdzID09PT09PT09DQpodHRwczovL2J1Z3ppbGxh
LnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzOTk3DQoNClRoYW5rcywNClNhbmdl
ZXRhDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUG9reSBCdWlsZCBV
c2VyIDxwb2t5YnVpbGRAZGViaWFuLTktdHkyLnlvY3RvLmlvPg0KPiBTZW50OiBUaHVyc2RheSwg
MzAgSnVseSwgMjAyMCAzOjM0IEFNDQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
DQo+IENjOiBvdGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgeWkuemhhb0B3aW5kcml2ZXIuY29tOyBT
YW5nYWwsIEFwb29ydg0KPiA8YXBvb3J2LnNhbmdhbEBpbnRlbC5jb20+OyBZZW9oLCBFZSBQZW5n
IDxlZS5wZW5nLnllb2hAaW50ZWwuY29tPjsgQ2hhbiwNCj4gQWFyb24gQ2h1biBZZXcgPGFhcm9u
LmNodW4ueWV3LmNoYW5AaW50ZWwuY29tPjsNCj4gcmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZzsgYWt1c3RlcjgwOEBnbWFpbC5jb207DQo+IHNqb2xsZXkueXAucG1AZ21haWwuY29t
OyBKYWluLCBTYW5nZWV0YSA8c2FuZ2VldGEuamFpbkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFFB
IG5vdGlmaWNhdGlvbiBmb3IgY29tcGxldGVkIGF1dG9idWlsZGVyIGJ1aWxkICh5b2N0by0zLjJf
TTIucmMxKQ0KPiANCj4gDQo+IEEgYnVpbGQgZmxhZ2dlZCBmb3IgUUEgKHlvY3RvLTMuMl9NMi5y
YzEpIHdhcyBjb21wbGV0ZWQgb24gdGhlIGF1dG9idWlsZGVyDQo+IGFuZCBpcyBhdmFpbGFibGUg
YXQ6DQo+IA0KPiANCj4gICAgIGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL3JlbGVh
c2VzL3lvY3RvLTMuMl9NMi5yYzENCj4gDQo+IA0KPiBCdWlsZCBoYXNoIGluZm9ybWF0aW9uOg0K
PiANCj4gYml0YmFrZTogOTFiODA5YTA5MDJmZmQ0MmJlNGVkZjdmMGE3ZDI1ZTZkMzU0ZDgyMg0K
PiBtZXRhLWFybTogNWNlYjE0MGYzNzE5NWMxODM3YjM3NzgyOGQxM2RlM2Y5YTM1MWZmZA0KPiBt
ZXRhLWdwbHYyOiBhOGRhOGViMTI3YTU2NTYxYmY2MzNhYjUzYmVjNTdmYjVkYmJhNTM3DQo+IG1l
dGEtaW50ZWw6IDMxODQwYmM2Y2Y2ZTFkODZlZjkxMWVhMjE0ZGEyMTY5YTNjODg1Y2ENCj4gbWV0
YS1rZXJuZWw6IDU4YTU4OWM1YWFkNTQxN2FiZDA5OWE5NjFlM2MxYTViMDgzY2RiOTANCj4gbWV0
YS1taW5ndzogYzhhMGQxM2E1NTI1ZmI0YWNjNmRhOTc5M2FkMTAyYjRmYzVjMTQxYg0KPiBvZWNv
cmU6IGNkYmQ0N2RkN2UxNjU3YjkxYjY1YTA5NDBiN2NiZjExOTc2NDI0MGYNCj4gcG9reTogMjBl
OWRmNTcyMTdjNWYzNzgxNzY1M2QyYzNkNDkyZjJkNGQzNzYyMw0KPiANCj4gDQo+IA0KPiBUaGlz
IGlzIGFuIGF1dG9tYXRlZCBtZXNzYWdlIGZyb20gdGhlIFlvY3RvIFByb2plY3QgQXV0b2J1aWxk
ZXINCj4gR2l0OiBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy95b2N0by1hdXRvYnVpbGRlcjIN
Cj4gRW1haWw6IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcNCj4gDQo+IA0KPiAN
Cg0K
