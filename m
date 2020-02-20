Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web11.2020.1582180088347715200
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 22:28:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=DmYN6k3k;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: sangeeta.jain@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2020 22:28:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,463,1574150400"; 
   d="scan'208";a="283323722"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
  by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2020 22:28:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Feb 2020 22:28:06 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Feb 2020 22:28:06 -0800
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 19 Feb 2020 22:28:06 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Feb 2020 22:28:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lc14ghXGikxOp4AxuIBOcDePa7kq3yM4h1oIanT/y8w6ThyzZTBjieTlCTuG4gjjFGBUp2BOyS9rwVkcnYtpDiEIpYejAdbZikvgIZTutgYq9Fn/JUUQlu0BmTBzOdN6NZGqzutLQEgrwo18p8BUFPKjscglwfdbw6InQChTWsFkyOWe9CDwxYpues/13v35L3kZd4E2of9OwbQMS8Z3pg8rVLjb5KsRk29y0h8ZLpDMG09PNy36FRZl/Y3bdR1UqHYb9Kp1wuucjRa6X0K4jKJvKoIGhPQo8sSsSgQK0PMWVb7wrSd+S9NKg6JOu65DFX+O76c50gp0Yfk/nncxEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eP1UpuMzlKlwpFeiGCtIemzYSgZFx3b3bfjCLqJumv4=;
 b=AdaZHAYpBeaZL2Vq2aWuUamdrb6NMkvOAWwO3NSsACOb8ilQXZ7guwTl+LmwZ4nCK7ZVPQ2Mobi2m7sxxCXeVMjRmykRPfX0AUbXKxH54tf4Lu6SI94Oyni42T9Ezx4h2HWW3K9iJLS7MGxThbqB3Achdy8Ydz7MBKlBAFYUy01aoQTNjtHK4rmot1fJIv/4hz3Fl6Yptv8fFDZ3kcjMBcseTQV31J7K/na+aj9fhjXq7Gu/zEzSv3f3EOspaLpWuoViu9hBo60Nr5slsvV6SvGWa4/1pJoHynm7cQC7FZeBvL5fy70HaI/iQePuVvWD/RoQ3t9/8ZKx4iSkDBIKCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eP1UpuMzlKlwpFeiGCtIemzYSgZFx3b3bfjCLqJumv4=;
 b=DmYN6k3kAkTnIb5ucmV36fmfsYKk24mqUkM+zzPwPIxa0Gmmyy8epdWpy/7M+Fb4X0yHtil4hIvbI8t3HDrtLJJ6u9ka4+aDH+JzaZZqcQHeBwEQxc31zMLXZSF1yoEiUJzsL1cPsvgt6SV+P9HFufUbFPYC/Nz/eL+AgAi5U0I=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB1766.namprd11.prod.outlook.com (10.175.59.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Thu, 20 Feb 2020 06:28:04 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b%9]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 06:28:04 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, akuster808 <akuster808@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, "Tummalapalli, Vineela"
	<vineela.tummalapalli@intel.com>
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Topic: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Index: AdXm9tQL7AlvpbmGSCSL3Ar4BNZE0QAftdaAAAAOmoAACjRTAAAF+YoA
Date: Thu, 20 Feb 2020 06:28:03 +0000
Message-ID: <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
In-Reply-To: <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjg3OWQ0YzAtNjkyNy00MmE4LWFiYmYtZjYxMzY1OThiZGY1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic0tNdjJCbVVtZnFvSFFucVZESzZTUGFBNmFmNFlxZXdqa0tTZlFoNk1vVWpMcnRTUlhpcXplb3ZvdUtOWHQ0byJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.217]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dccfbad1-6530-4cac-4b6c-08d7b5ce0a8d
x-ms-traffictypediagnostic: CY4PR11MB1766:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB17661467FEA7C80EBCA6E389E3130@CY4PR11MB1766.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(346002)(376002)(39860400002)(366004)(396003)(189003)(199004)(76116006)(966005)(8936002)(107886003)(55016002)(66476007)(66446008)(86362001)(66556008)(64756008)(33656002)(316002)(9686003)(110136005)(54906003)(478600001)(66946007)(4326008)(186003)(26005)(52536014)(5660300002)(6506007)(53546011)(81156014)(7696005)(71200400001)(2906002)(8676002)(81166006);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1766;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LMKSEW6MnqSomeaK9hUoykA4kmzWjcxq8Np9jyJUhp5dkhgWJQloslgBStZoI9o2/IaJFvgqQxPRrc87VsewVmRByPa8iwhm+SiQrPkTMb5UOogoLCZgXQZG5tCFbvP4f30y55by4N/xtcmqtzEhsTcoVbV10U3BqsPS1y6w4zEHsPvyMqBgjgB09nNKXAVWs8KmAKpp4ZjIBV8mrKuke0S9UyfmSSyoF6eDds402x5wKCFk5mX6uM9R4ajkNUqmibo4BWql0lqL+NhI9cWBu3nmLPTtm4qadJ9eApQOLCvyejedDr5bnGN/eaHFSWnoAY98fu09rLrE+tNluv2kyKol+69zxkNh1FhNBKHu1x2CiFKrJSPosvmBM8nmERfBoxdkasskZrQJzBPIHCxvCIExrfUWbeQUJQa7JJYCTnb6ywFd0S3XvlLafShNb/s4zrY8ibrle3eEHWkEZY3dlp6/VHW7Tfy+ie2/8EeZePi4cHklLiXeFy+pzaFeMMllo9d2VSUmxrBPUTx2XB9qwA==
x-ms-exchange-antispam-messagedata: 2nB7I0Yzt73w3sQjLp3wfNy66kSdrUrcCzO3SLlGU0okeIkbST734sglLN2XN9Kq0oTHMObZ9JdGhlqIs7EaElWj5g/lVloWTZNXkR+3r6dFYSrTt+cilhcJVaeHpuGZImcaCRBZGQICVABUiyLbuA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dccfbad1-6530-4cac-4b6c-08d7b5ce0a8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 06:28:03.6669
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5xL1TcZ29K5LRAvUyEqtKzlGvrlCeYmFFkezIKAHAmSjKCktrf3ayB8SCXfXeL+dFVlE2EUSQ764/7kUa7r6uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1766
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWl0dGFsLCBBbnVqIDxh
bnVqLm1pdHRhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAyMCBGZWJydWFyeSwgMjAy
MCAxMTozNSBBTQ0KPiBUbzogUmljaGFyZCBQdXJkaWUgPHJpY2hhcmQucHVyZGllQGxpbnV4Zm91
bmRhdGlvbi5vcmc+OyBha3VzdGVyODA4DQo+IDxha3VzdGVyODA4QGdtYWlsLmNvbT47IEphaW4s
IFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47DQo+IHlvY3RvQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcNCj4gQ2M6IG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyB5aS56aGFvQHdpbmRy
aXZlci5jb207IFNhbmdhbCwgQXBvb3J2DQo+IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47IFll
b2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBDaGFuLA0KPiBBYXJvbiBDaHVu
IFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBzam9sbGV5LnlwLnBtQGdtYWls
LmNvbTsNCj4gVHVtbWFsYXBhbGxpLCBWaW5lZWxhIDx2aW5lZWxhLnR1bW1hbGFwYWxsaUBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbeW9jdG9dIFFBIEN5Y2xlIHJlcG9ydCBmb3IgYnVpbGQg
KHlvY3RvLTMuMC4yLnJjMikNCj4gDQo+ID4gT24gV2VkLCAyMDIwLTAyLTE5IGF0IDE0OjQxIC0w
ODAwLCBha3VzdGVyODA4IHdyb3RlOg0KPiA+ID4NCj4gPiA+IE9uIDIvMTgvMjAgMTE6MzMgUE0s
IEphaW4sIFNhbmdlZXRhIHdyb3RlOg0KPiA+ID4gPiBIaSBBbGwsDQo+ID4gPiA+DQo+ID4gPiA+
IFRoaXMgaXMgdGhlIGZ1bGwgcmVwb3J0IGZvciB5b2N0by0zLjAuMi5yYzI6DQo+ID4gPiA+IGh0
dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS95b2N0by10ZXN0cmVzdWx0
cy1jb250cg0KPiA+ID4gPiBpYg0KPiA+ID4gPiAvdHJlZS8/aD1pbnRlbC15b2N0by10ZXN0cmVz
dWx0cw0KPiA+ID4gPg0KPiA+ID4gPiA9PT09PT09IFN1bW1hcnkgPT09PT09PT0NCj4gPiA+ID4g
Tm8gaGlnaCBtaWxlc3RvbmUgZGVmZWN0cy4NCj4gPiA+ID4gb25lIG5ldyBkZWZlY3RzIGFyZSBm
b3VuZCBpbiB0aGlzIGN5Y2xlIC0gb2VxYS9ydW50aW1lIHRlc3QNCj4gPiA+ID4gJ3Rlc3RfZG5m
X2V4Y2x1ZGUnIGZhaWxlZCAoQnVnaWQ6MTM3OTcpIG9wZW5zc2ggcHRlc3QgZmFpbGVkIChCVUcN
Cj4gPiA+ID4gaWQ6MTM3OTYpIGJhc2ggcHRlc3QgZmFpbGVkIChCVUcgaWQ6MTM3OTUpDQo+ID4g
PiA+DQo+ID4gPiA+ID09PT09PT0gQnVncyA9PT09PT09PQ0KPiA+ID4gPiBodHRwczovL2J1Z3pp
bGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzNzk3DQo+IA0KPiBGcm9tIHRo
ZSBlcnJvciBsb2csIGl0IGxvb2tzIGxpa2Ugd2UgYXJlIHRyeWluZyB0byBpbnN0YWxsIDcuNjcg
d2hpbGUgemV1cyBoYXMgNy42Ng0KPiBzbyBpdCBlcnJvcnMgb3V0LiBJIGFtIGd1ZXNzaW5nIHRo
YXQgY3VybCB3YXNuJ3QgYnVpbHQgaW4gYSBjbGVhbiBidWlsZCBkaXJlY3Rvcnkgc28NCj4gdGhl
IGNvcnJlY3QgdmVyc2lvbiBvZiBjdXJsIGlzIGRlcGxveWVkLiBDYW4gdGhpcyB0ZXN0IGJlIHJl
LXJ1biBwbGVhc2U/DQpSZS1ydW4gdGhlIHRlc3QgaW4gbmV3IGJ1aWxkIGRpcmVjdG9yeSBhbmQg
YWZ0ZXIgaGF2aW5nICdiaXRiYWtlIGN1cmwnLg0KSXQgaXMgcGFzc2luZyBub3cuIFVwZGF0aW5n
IGJ1ZyBpbiBCdWd6aWxhLg0KDQo+IA0KPiA+ID4gPiBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJv
amVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzNzk2DQo+IA0KPiBUaGlzIG5lZWRzOg0KPiANCj4g
aHR0cHM6Ly9naXRodWIuY29tL29wZW5zc2gvb3BlbnNzaC0NCj4gcG9ydGFibGUvY29tbWl0L2Zm
MzFmMTU3NzNlZTE3MzUwMmVlYzRkNzg2MWVjNTZmMjZiYmEzODENCj4gDQo+ID4gPiA+IGh0dHBz
Oi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTM3OTUNCj4gDQo+
IFdhcyBiZWNhdXNlIG9mIHRoZSBiYXNoIENWRSBwYXRjaC4NCj4gDQo+ID4gPg0KPiA+ID4gVGhh
bmsgeW91IGZvciBsb2dnaW5nIHRoZSBkZWZlY3RzLg0KPiA+ID4NCj4gPiA+IEkgc3VzcGVjdCB0
aGlzIGluIG5vdyBpbiB0aGUgaGFuZHMgb2YgdGhlIFlQIFRTQy4NCj4gPg0KPiA+IFdoYXQgaXMg
dGhlIHN0YWJsZSBtYWludGFpbmVyJ3MgdGhvdWdodHMgb24gdGhpcz8NCj4gPg0KPiA+IEluIHBh
cnRpY3VsYXIgSSdtIHdvcnJpZWQgYWJvdXQgdGhlIGJhc2ggcGF0Y2ggYW5kIHdoZXRoZXIgdGhl
IHB0ZXN0DQo+ID4gcmVncmVzc2lvbiBhYm92ZSBpcyByZWxhdGVkIHRvIHRoYXQgb3Igbm90PyBB
bnkgcmVjb21tZW5kYXRpb24/DQo+IA0KPiBMb29rcyBsaWtlIGl0J3MgcmVsYXRlZCBidXQgSSBk
b24ndCB0aGluayB0aGUgaW1wYWN0IGlzIG11Y2guIFRoZSB0ZXN0IGlzIGZhaWxpbmcNCj4gYmVj
YXVzZSB0aGUgbGluZSBudW1iZXIgdGhhdCBpcyBleHBlY3RlZCB0byBmYWlsIGNoYW5nZWQgKGJl
Y2F1c2Ugb2YgdGhlIGxpbmVzDQo+IGJlaW5nIGFkZGVkIGluIHRoZSB0ZXN0KS4gU28gd2Ugc2hv
dWxkIGJlIG9rYXkgaW4gbXkgb3Bpbmlvbi4NCj4gDQo+IFRoYW5rcywNCj4gDQo+IEFudWoNCg0K
