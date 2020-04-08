Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web12.3398.1586308480928815136
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Apr 2020 18:14:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ecImZI5g;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: uy/tmBCYT5cX8yrx8dh11mIVz6XCMmXr78XQqhLPIFGiNtuP8d5zHF/rtgm+ZRGsgxTc0HRRCn
 5XRPfd9hUsrA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2020 18:14:40 -0700
IronPort-SDR: qLG4/hwN8Si8hyZIhoSXPhEW0pbbu8MPYvg1yOuG29xu+NgkAmqi93eVKI4vBF5nr190nAEAOz
 CCjlmtkTnKtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; 
   d="scan'208";a="451429355"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
  by fmsmga005.fm.intel.com with ESMTP; 07 Apr 2020 18:14:39 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 18:14:39 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 18:14:39 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 7 Apr 2020 18:14:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 18:14:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4n3q9TuN066SF7hHhLjr8hU/r4+tv3EGpulAlcdS32A8BVcHJoMdJ/JjUrYjbJxtSM80DkhhQBiQuD4XJMrbUeuzA5xSrPZuh75hxsrHqNzBdZPuxleoczhkK1pGqERWOylKuNfwz/sEXU9viiXDHRE8gVN3Mz8/Vxa6O3i6IIDQZgdMnQZ7u96fXSZZLquFpOvenL6zZBlYOJ6GD/MAxwu5BLuhcHvyE7Tkodg8YQB68WXlhsQbfFOyqmatx0Vs7JT/4aeJ9FeXOMiZF+qZoe8Ev0pL3QURBrEbEcWUKcyoBAqrGAnNsfl1QlvTpZf6UGFtcLTjUWWXogyWIc3dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H8NdT0NCzqh2oJivNs1AKELYDMxEvRpAohIjDeh+k5g=;
 b=jQ6r0ICz7YMDavHQvLYlO4rv59PCnCrGK2SIwzwJ72SgcXsqnU/22RnOZuWMYBIS4GTw0ZwNpac0ABCsZKqwvmqPuVrqQK/VNFrDz9pDNuvK/TzUgUAXXqzNrxG206XqWCyCGu0QZBJCYUyFLtkoCgIA0mu+qnRba/unQJ9pfUK/ttRjgS5IU3ICU7CjqxjsBQ9N5UxKO5//qL0iheSO6knj3neAm6Sos8t1PGfhR+Sb1WFLlg6jb0arE53vtIBHKcy0LoXuWHavA0cLOybfcS30uIuANw91+WXa5+UIl8L8UvbR80s0i82emWc/EX+Gfe+Hx3vlzZ2lO+5W4oBe2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H8NdT0NCzqh2oJivNs1AKELYDMxEvRpAohIjDeh+k5g=;
 b=ecImZI5gviyro0klA51jnz6T5K9caaYFXh8VwHg+Ha1H0j5ZSOLQ1bRqTt777soq45ERxbXl6/6hNtwbzRpywMCm1yHlTglZEjt7129jIX6AKT8Qh+utzr2ylZeStCKAM4Vl5ARY5zpOwjtbciTNEGBiIYhlG24jzWiPpMjH7iU=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (2603:10b6:903:11d::9)
 by CY4PR11MB1589.namprd11.prod.outlook.com (2603:10b6:910:e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Wed, 8 Apr
 2020 01:14:37 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb%9]) with mapi id 15.20.2878.021; Wed, 8 Apr 2020
 01:14:37 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Poky Build User
	<pokybuild@debian8.yocto.io>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1.rc1)
Thread-Index: AQHWDSBTtur66NPDfU+lZsAOa2zoHahuaunA
Date: Wed, 8 Apr 2020 01:14:37 +0000
Message-ID: <CY4PR11MB187933FF55C303A42F2E96D0E3C00@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200406225303.32E2A1A00A2@debian8-ty-1.yocto.io>
 <078e777465fcb1bcbcaba9f3290edeb0160b6e6e.camel@linuxfoundation.org>
In-Reply-To: <078e777465fcb1bcbcaba9f3290edeb0160b6e6e.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [42.189.136.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c331a0d-db65-4f2d-47d3-08d7db5a34a0
x-ms-traffictypediagnostic: CY4PR11MB1589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1589C5BEFDB4EE6986E77C42E3C00@CY4PR11MB1589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0367A50BB1
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR11MB1879.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(376002)(39850400004)(396003)(346002)(366004)(136003)(6506007)(64756008)(71200400001)(5660300002)(66946007)(66446008)(52536014)(53546011)(76116006)(81156014)(8936002)(7696005)(66556008)(66476007)(26005)(15650500001)(33656002)(55016002)(478600001)(8676002)(966005)(54906003)(86362001)(186003)(2906002)(81166006)(9686003)(316002)(4326008)(110136005);DIR:OUT;SFP:1102;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cSpKxG780LsqC/2cD6yBTJpfFARb8ZMoIZTDckLhekUpHilQWWNNqg+1bEHYkh8xcD4FtW8oiKszaJAcfANvps+ul8nvHAgh0/eZZhIAYCRLp9NRFu420xJGaCTp7O1ySqXYOE8T4KdI9ol4nOW988UhR/jDKf9L4KuCEsoWRt0Nr0vJbiZPiZ59+9wBOorKfZC03sDkYrxuaDJEUE1iPcE3sEvyYR8sqokNvCNqh/QNTnjMSCzWq/0ohra82Oesb0rQNoKPZEpbq2IS48sAD/tnKE+6YX02dcX5bYOEGUe4yZVlbkg5I4EAc4NnZAlbfOskK4cFEQaAd7yw8kG6EmT0PG3gZ/pAH1y/6dNSWZDLUr1PTcxb+ghCcwvCZpdxhf4uwGjt9v+zkH1/OXrXhiT2HRtJpR8GQMPsGNCu5FfCzLiYcmZ8GpRsIG9iWfD52Vc4z+cpAmwqhHPFRZh9BBau7KdZ43FJMfgew5PASuKFF0xGXS7C+HZMm+fyjioNi+2uRb5XNQufNz1I2ieA9g==
x-ms-exchange-antispam-messagedata: zbjpxjfUH4Z+Oc/wH48h0o4q9qNesmxxIXyJfWF3ZgFoar3T+fC8Akwg0hl8i4CoaQvheR6pJAOPUbmoa5YDDfJ2JFzOragbRxdRv+sTkvmZfJkHMto0pmYo+nvmyx4E5ogZAkOFrBgRqpIsJNojPA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c331a0d-db65-4f2d-47d3-08d7db5a34a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2020 01:14:37.1643
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3nanJEs1PAZeHCGVeJ/Iz3yx4rKjsjeqmiN8bKSg21acNsfv5434s3sEM3nZuJi9NjjX4H0bCjNQZWv6cre6Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1589
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KVGhhbmtzIGZvciB1cGRhdGUgb24gaHR0cHM6Ly9hdXRvYnVpbGRlci55
b2N0by5pby9wdWIvcmVsZWFzZXMveW9jdG8tMy4xLnJjMQ0KVW5mb3J0dW5hdGVseSwgSSBkaWRu
J3QgcmVjZWl2ZWQgYW55IG1haWwgZm9yIDMuMS5yYzEgb3IgcmMyIGJ1aWxkIG5vdGlmaWNhdGlv
bi4NCkxvb2tzIGxpa2UgYXV0b21hdGVkIG1haWwgaGFzIHNvbWUgaXNzdWVzLg0KDQpJIHdpbGwg
bm93IHN0YXJ0IHRoZSBRQSBvbiBodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxl
YXNlcy95b2N0by0zLjEucmMyLw0KDQpUaGFua3MsDQpTYW5nZWV0YQ0KDQoNCj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8
eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+IE9mIFJpY2hhcmQgUHVy
ZGllDQo+IFNlbnQ6IFdlZG5lc2RheSwgOCBBcHJpbCwgMjAyMCA1OjA1IEFNDQo+IFRvOiBQb2t5
IEJ1aWxkIFVzZXIgPHBva3lidWlsZEBkZWJpYW44LnlvY3RvLmlvPjsNCj4geW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KPiBDYzogb3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IHlpLnpoYW9A
d2luZHJpdmVyLmNvbTsgU2FuZ2FsLCBBcG9vcnYNCj4gPGFwb29ydi5zYW5nYWxAaW50ZWwuY29t
PjsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGludGVsLmNvbT47IENoYW4sDQo+IEFhcm9u
IENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47IGFrdXN0ZXI4MDhAZ21h
aWwuY29tOw0KPiBzam9sbGV5LnlwLnBtQGdtYWlsLmNvbTsgSmFpbiwgU2FuZ2VldGEgPHNhbmdl
ZXRhLmphaW5AaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBRQSBub3RpZmljYXRp
b24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZCAoeW9jdG8tDQo+IDMuMS5yYzEpDQo+
IA0KPiBPbiBNb24sIDIwMjAtMDQtMDYgYXQgMjI6NTMgKzAwMDAsIFBva3kgQnVpbGQgVXNlciB3
cm90ZToNCj4gPiBBIGJ1aWxkIGZsYWdnZWQgZm9yIFFBICh5b2N0by0zLjEucmMxKSB3YXMgY29t
cGxldGVkIG9uIHRoZQ0KPiA+IGF1dG9idWlsZGVyIGFuZCBpcyBhdmFpbGFibGUgYXQ6DQo+ID4N
Cj4gPg0KPiA+ICAgICBodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95
b2N0by0zLjEucmMxDQo+IA0KPiBJIGhhdmVuJ3Qgc2VlIGFueSAic3RhcnRlZCBRQSIgZW1haWwg
YWJvdXQgdGhpcyB5ZXQuDQo+IA0KPiBXZSBoYXZlIGhhZCBzb21lIGlzc3VlcyB3aXRoIHJjMSBy
ZXBvcnRlZCBieSBwZW9wbGUgc28gZ2l2ZW4gdGhhdCBhbmQgdGhlDQo+IGFib3ZlLCBJJ20gZ29p
bmcgdG8gYWJvcnQgcmMxIGFuZCBidWlsZCByYzIuDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBSaWNo
YXJkDQoNCg==
