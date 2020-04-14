Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.2463.1586900089048676209
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 14:34:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=tLNp/tuW;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: k32qC9VLK8+Gp3Qwg1eo55Yw/Z1a5aFQ4CkB79bQMqYT3AuL+QAPr6dqvnDKWx15PcJuGrRipi
 APkAHxYZjUCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2020 14:34:46 -0700
IronPort-SDR: l86HrnUAS0dQUpvblqjyBU64JYM6OLdnRoZMmoiQISHE1/XUbeqnPTWw4F3PkJ3tKQvSYLZOaE
 gnh2Bbse+3Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; 
   d="scan'208";a="277405570"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
  by fmsmga004.fm.intel.com with ESMTP; 14 Apr 2020 14:34:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 14:34:45 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Apr 2020 14:34:45 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 14 Apr 2020 14:34:45 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.58) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 14 Apr 2020 14:34:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cTZrR8Z5WxmhuTZz6bnwhs1IHu2hT+S3GB7zsd+JtD5OB56tpWT7ntdfvZTorMdNAzoaRgd83yco8C+ts6G4eKhmS1NzbQFDG3EHw/qlplQJWeyv1Vhb6P+9zFUHS3BW13htqr2Rus0cuPRs2uflm2gdBcvjCDMtvncvNyOnhS/GvPITfiPSjPJ+qmesrf/vQNHbz3LPrfg8LJnLuixZ3pHY6bsBgZa4vppS5LpPm5GvzQ48ZhWni7p+eCpbHEYN5OJoviZ9DftchyZe4zKqY7t6S+bTSd719Kc4fzP9y6u3FqWq5E3nLPNl9IRBnQhImhUnqZg6FVikCd/HBgTpew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1vKSJ7t+A7vwFf82hxZMtm8pQktmKSF8+oIpcTV84Uc=;
 b=mVLXORXgeyY9I90xbE/EdMK8hx2rxqAhwMt/Z/Q0UxVyvPpCLGuH0lv/Hdp9VFWgmSegkGGHpX7CrJxNJVQMchkJMovXrTFDwvSuHKJoagdKVo8PXTRLMMPe4S+Aeaig/rHneVu1xAeHIXElRaAj065TAwFRBolN6Z+ZgFCrhr1SQ0HCEjxnEBa9JhDL0JV+xLsM7hGKC2nuUIprhJmOpDb4BRKX+BN1gN0BNAZqcc4Y5SNlKmRBTbEPqHEeKADjUcl0AB0weAvfHL67tHtHZtmZVeduqw16MFag021FxN4HgzczsfPcTQDTvQDJERw2dVKn6tdhEZTuTLRYt4xOFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1vKSJ7t+A7vwFf82hxZMtm8pQktmKSF8+oIpcTV84Uc=;
 b=tLNp/tuWHIjLs4eNgrYD78zslQIzxe+NeEtkRnsM6Gk+bRWWSVmUjM/W1/4fGhzlINUgb37rVRh6Wb9WGFASzEHgrnUZu/Xk38P93oSSxQI1XdawvSYGyL5OPMvszuPLtDcFGS9FPP1odE4o1qy8tyb0fH6mPOptfzqRF/CGETw=
Received: from SN6PR11MB2797.namprd11.prod.outlook.com (2603:10b6:805:5a::32)
 by SN6PR11MB2541.namprd11.prod.outlook.com (2603:10b6:805:57::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Tue, 14 Apr
 2020 21:34:40 +0000
Received: from SN6PR11MB2797.namprd11.prod.outlook.com
 ([fe80::a43b:df14:4aef:9a26]) by SN6PR11MB2797.namprd11.prod.outlook.com
 ([fe80::a43b:df14:4aef:9a26%5]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 21:34:40 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Jain, Sangeeta"
	<sangeeta.jain@intel.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, Paul Eggleton
	<bluelightning@bluelightning.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.rc2)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1.rc2)
Thread-Index: AQHWEqFifn1UrJKTtEOom9rdtWZJ2Kh5HiZg
Date: Tue, 14 Apr 2020 21:34:40 +0000
Message-ID: <SN6PR11MB279783ED5D18450811B1189988DA0@SN6PR11MB2797.namprd11.prod.outlook.com>
References: <20200408040108.BA881414AB8@localhost>
	 <4d89830f1cdc32700b6aa62cb1d92e7f460f2f16.camel@linuxfoundation.org>
	 <CY4PR11MB1879762D12519AEC68852879E3DF0@CY4PR11MB1879.namprd11.prod.outlook.com>
 <c64c8afa26ab7f89e46dce8c8fd8e794499947fc.camel@linuxfoundation.org>
In-Reply-To: <c64c8afa26ab7f89e46dce8c8fd8e794499947fc.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [134.134.136.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25174629-c035-491d-c9d6-08d7e0bba3d8
x-ms-traffictypediagnostic: SN6PR11MB2541:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2541AF5AA674C1F59702DAA688DA0@SN6PR11MB2541.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(376002)(366004)(136003)(396003)(39860400002)(346002)(33656002)(8936002)(81156014)(76116006)(4326008)(9686003)(8676002)(52536014)(478600001)(2906002)(86362001)(71200400001)(966005)(5660300002)(7696005)(15650500001)(55016002)(110136005)(66446008)(186003)(26005)(316002)(66556008)(64756008)(66946007)(6506007)(66476007)(53546011)(54906003);DIR:OUT;SFP:1102;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CnuMZQPW0BsbPPvu3q/Fj5Oon6g9qK/UkeJAzops18uN102wPuMqRl0szR+/Odq+sGcuG0jMIBhSbpdMxX5WGjpPUGOz6BJplYAxrA0MNOoVYZbAcisTnXFwAxtVYQtOofWfmBwE8MiXD7oJ6wXullDjlpbAPO3p1BXNqrl4SAt0rgI+FAvTC4b7eBmfGLzYmuGZROa7B6OTqdMJSDyhLMHdO21g9uSR/TX9HaT1EMeewS0XupnfWC5wdo2B9dj6tMIV12lSSPcYSHZb8Oo6Jz6KL6DnNol3JJW6sh2pfEZzlE4pxrRQl10XsZJScEabwT6A6LEGyoO3ExE8ND7k/tmv4dml0KPp1t50dSVcsg+ZYalgdrzws0RWXx4Sll24D3XKDAGb60+IxGKxYctYJnhak69CrZsOBquMtie629txgxGXxt6q6ePLKrwd3EMLaEKQToQPw15fezmW2u6PFR0FAJkZqCYqsFvXAG0fFOCBaJAskWvvm93AiY/2V4GqS7fxZQe7PRbgGToY2+Icsw==
x-ms-exchange-antispam-messagedata: FyhmMmfEvloggmt6p8kiyZiEJzZikgTfVc0rLuTNkzqmF8yKRCLNyNmNhWWyP5aA3+a7zWogog5XTWGS9hzWRBUDKyYKsE4H9g13eiiCM5s7mpQ+9IHADhjurtubOoTfBfDrF9Q8XxuP1D9fp4WBZQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 25174629-c035-491d-c9d6-08d7e0bba3d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 21:34:40.7544
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ddJaC+z1r1G5k4CGZKxD3B9XxkkTJUVlyZWSyjEJBtkQCdlah3Tu9T4uOlHgLB2sF+XmC+4pTgmP06JtqYcm59gfBIsA95YkgNMkb+lG7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2541
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gUmljaGFyZCwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3Rv
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9u
IEJlaGFsZiBPZiBSaWNoYXJkIFB1cmRpZQ0KU2VudDogVHVlc2RheSwgQXByaWwgMTQsIDIwMjAg
MjoxMiBQTQ0KVG86IEphaW4sIFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47IHlv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IFR1bW1hbGFwYWxsaSwgVmluZWVsYSA8dmluZWVs
YS50dW1tYWxhcGFsbGlAaW50ZWwuY29tPjsgUGF1bCBFZ2dsZXRvbiA8Ymx1ZWxpZ2h0bmluZ0Bi
bHVlbGlnaHRuaW5nLm9yZz4NCkNjOiBvdGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgeWkuemhhb0B3
aW5kcml2ZXIuY29tOyBTYW5nYWwsIEFwb29ydiA8YXBvb3J2LnNhbmdhbEBpbnRlbC5jb20+OyBZ
ZW9oLCBFZSBQZW5nIDxlZS5wZW5nLnllb2hAaW50ZWwuY29tPjsgQ2hhbiwgQWFyb24gQ2h1biBZ
ZXcgPGFhcm9uLmNodW4ueWV3LmNoYW5AaW50ZWwuY29tPjsgYWt1c3RlcjgwOEBnbWFpbC5jb207
IHNqb2xsZXkueXAucG1AZ21haWwuY29tDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBRQSBub3RpZmlj
YXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZCAoeW9jdG8tMy4xLnJjMikNCg0K
SGkgU2FuZ2VldGEvVmluZWVsYSwNCg0KT24gU2F0LCAyMDIwLTA0LTExIGF0IDA3OjI2ICswMDAw
LCBKYWluLCBTYW5nZWV0YSB3cm90ZToNCj4gVGhpcyBpcyB0aGUgZnVsbCByZXBvcnQgZm9yIHlv
Y3RvLTMuMS5yYzI6ICANCj4gaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQu
Y2dpL3lvY3RvLXRlc3RyZXN1bHRzLWNvbnRyaWIvdA0KPiByZWUvP2g9aW50ZWwteW9jdG8tdGVz
dHJlc3VsdHMNCj4gDQo+ID09PT09PT0gU3VtbWFyeSA9PT09PT09PQ0KPiBObyBoaWdoIG1pbGVz
dG9uZSBkZWZlY3RzLiAgDQo+IE5vIG5ldyBkZWZlY3RzIGFyZSBmb3VuZCBpbiB0aGlzIGN5Y2xl
Lg0KPiANCj4gTm90ZTogRmV3IGZhaWx1cmVzIGFyZSBvYnNlcnZlZC4gVGhlc2UgYXJlIHNldHVw
IGlzc3VlIHNpbmNlIHJ1bm5pbmcgDQo+IHRlc3RzIHJlbW90ZWx5LCBub3QgcmVhbCB5b2N0byBp
c3N1ZS4NCg0KVGhhbmtzIGZvciB0aGUgUUEgcnVuIQ0KDQpUaGUgVFNDIG1ldCB0b2RheSBhbmQg
dGhpcyB3YXMgb25lIG9mIHRoZSB0b3BpY3MgZGlzY3Vzc2VkLiBXZSB3b3VsZCBoYXZlIHRpbWUg
Zm9yIGFub3RoZXIgYnVpbGQgYW5kIFFBIHJ1biBidXQgbm9uZSBvZiB0aGUgcXVldWVkIGNoYW5n
ZXMgb3Igb3BlbiBidWdzIGFwcGVhciB0byBiZSBzaWduaWZpY2FudCBlbm91Z2ggdG8gd2FycmFu
dCB0aGF0Lg0KDQpXZSdkIHRoZXJlZm9yZSBsaWtlIHRvIHByb2NlZWQgdG8gcmVsZWFzZSByYzIg
d2hpY2ggd2lsbCBiZSBzbGlnaHRseSBhaGVhZCBvZiBzY2hlZHVsZSBhbmQgYWltIHRvIGhhdmUg
YSBwcm9tcHQgcG9pbnQgcmVsZWFzZSB0aGVyZWFmdGVyIHdpdGggdGhlIGluZXZpdGFibGUgZml4
ZXMgYXMgcGVvcGxlIHN0YXJ0IHVzaW5nIGl0Lg0KDQpQYXVsIChjYydkKSBpcyB3b3JraW5nIG9u
IHRoZSByZWxlYXNlIG5vdGVzIHdoaWNoIGlzIGEgdG9uIG9mIHdvcmsgYW5kIG11Y2ggYXBwcmVj
aWF0ZWQsIHRoYW5rcyBQYXVsLg0KDQpWaW5lZWxhOiBDb3VsZCB5b3UgcHJlcGFyZSB0aGUgcmVs
ZWFzZSBzbyB3ZSdyZSByZWFkeSB3aGVuIHdlIGhhdmUgdGhlIHJlbGVhc2Ugbm90ZXMgcGxlYXNl
Pw0KW1ZpbmVlbGFdOiBUaGFuayB5b3UgZm9yIHRoZSB1cGRhdGUuIFllcyBJJ20gcHJlcGFyaW5n
IHRoZSByZWxlYXNlLiBBZnRlciB3ZSBnZXQgcmVsZWFzZSBub3RlcywgSSBoYXZlIHRvIGdldCB0
aGUgdGVzdHJlcG9ydCBhbmQgcmVsZWFzZSBub3RlcyByZXZpZXdlZCBhbmQgYXBwcm92ZWQgYnkg
VFNDLiBPbmNlIHJldmlld2VkIGFuZCBhcHByb3ZlZCwgd2lsbCBnZXQgdGhlIHRhZ2dpbmcgZG9u
ZSBhbmQgd2lsbCBiZSByZWFkeSBmb3IgdGhlIHJlbGVhc2UgYW5ub3VuY2VtZW50Lg0KLS0tDQpX
ZSdyZSBhbHNvIHBsZWFzZWQgdG8gc2F5IHdlIGRvIGhhdmUgYW4gTFRTIG1haW50YWluZXIgbGlu
ZWQgdXAgYW5kIHRoYXQgc2hvdWxkIGJlIGFubm91bmNlZCBzb29uLg0KDQpDaGVlcnMsDQoNClJp
Y2hhcmQNCg0K
