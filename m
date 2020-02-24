Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web12.15638.1582510428342778470
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Feb 2020 18:13:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=oVcjKoUJ;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: sangeeta.jain@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2020 18:13:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,478,1574150400"; 
   d="scan'208";a="435761703"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
  by fmsmga005.fm.intel.com with ESMTP; 23 Feb 2020 18:13:47 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 23 Feb 2020 18:13:46 -0800
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 23 Feb 2020 18:13:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 23 Feb 2020 18:13:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJDFJNDSdPoDqDygzLOM7d5wRrZwqp1Zrekx4a5ytm32cFdqc5sN7IpRZP3IWakKYrWESn9s2BVhjN8CVQjzaM8RPZdMLDFIXvgW/a06Y7jB7RZvJ/1gJ+3Z1IGSmI3CNTUcErZYEXJfeNu0yg9cQrb3a4SGGp2pNLrMQwG6wvMblnrRIgWV26QeEkfcPyZy+4fddu814Bcf8BfbbHuNVnebEAHaKx2ijbrqvJres1/4LiePGHIWf8raS9ebj4dYC7jd1cfp30GtDKe3xIv0h61mx/1czzaHrp4cUlXNaR0m8N8w5hSHHwU/50yBMUqbAAbs9pR7kQsUQftWshVClQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wR+0TrALHty/v6MYQ5Y2cSNd2rDCOmKQ9oJi3TSMyDA=;
 b=ixrteLa5yFthngpMdwRom0PLNCO9alEsTuOzPPTMDL4HCUJN2AMyBXcb4Bki316iTfGmaCcEFF59IQDQnAzLo+MvQfA9pnDvWBpoRO2KCeFVWEaeNyp4QHwp7nrIBvUI8eo1mWFY98VO+kN4IP9z3719OPIcmSyb7rNo9yVgP1vYFE6GjWj78PZ2/eOj2Rj739FIRt68oK4jvsR6cGZbxbNgQmAyAT6gC9bI34jdlyVdW4BvScOCCzkbQ1xAwnA51Q4XMd9X9dFPw5kZnckGjTfHjc7QrIRIVzO5OZO4kK3ce7KdJBZ8DGKqw5VwOv95HU1syk6FId8yCFrB5v18vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wR+0TrALHty/v6MYQ5Y2cSNd2rDCOmKQ9oJi3TSMyDA=;
 b=oVcjKoUJJtCXp6qhz2lp9mFmnFagUzRNCcpTUJ6jPTWxrZ1+xi3sd4k19O2xbjwLG+0pBF8iOKJ9kylTaJHPLVOlwI+ThjcuswULzcmYPzDPzzWRDQS5xmK4zsHwQNSGGnwplddPcv4hUFrNDv3PysPsftsSNJ9cGnEO4XCDJAc=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (2603:10b6:903:11d::9)
 by CY4PR11MB1526.namprd11.prod.outlook.com (2603:10b6:910:7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Mon, 24 Feb
 2020 02:13:45 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b%9]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 02:13:45 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, "Mittal, Anuj" <anuj.mittal@intel.com>,
	akuster808 <akuster808@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Topic: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Index: AdXm9tQL7AlvpbmGSCSL3Ar4BNZE0QAftdaAAAAOmoAACjRTAAAF+YoAACIrywAAJzMJAAB25kMw
Date: Mon, 24 Feb 2020 02:13:45 +0000
Message-ID: <CY4PR11MB18795CDCD9E9A50985A15E46E3EC0@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
	 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
	 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
	 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
 <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
 <BYAPR11MB279025D63172F1E8F7E18D8288120@BYAPR11MB2790.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB279025D63172F1E8F7E18D8288120@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjE0ZDZlODYtZmNmZC00MzRlLWJlYTAtYjE1YjYwZGY3N2I1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVkdqQTZybFlzZHdjTm5SSHAwZ0RrTUJCNjVaVnZTeTI4XC9QcDhHQU5zcVwvZk9Kek96dWs1Y0ZhVUxBblBOZ1JuIn0=
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b136db54-a628-4de1-63cd-08d7b8cf2d3a
x-ms-traffictypediagnostic: CY4PR11MB1526:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB152618568301D757E69EF88DE3EC0@CY4PR11MB1526.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(376002)(39860400002)(136003)(366004)(396003)(189003)(199004)(53546011)(6506007)(9686003)(64756008)(66446008)(186003)(66556008)(4326008)(81166006)(7696005)(55016002)(26005)(8676002)(8936002)(81156014)(66476007)(86362001)(33656002)(52536014)(316002)(2906002)(5660300002)(54906003)(110136005)(71200400001)(76116006)(66946007)(478600001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1526;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZTaJy+KKhrM8j/MulHosnUN/ee8wVR0LMR+qysjkGkP7rDp9xOgXy9jfN0T7avc38WpHe7f3m7FHIB63sRAripmtkGgRzk5FLjisdUyNNVE7by/UiFo2Ie851oiOj+v32iPeKx9QXlnSWLO1FQ93f3VDUdKAGI5BtXVHLl/tVR/hoUKrtwmjNriN4I6UcJ2PIKPYDNV10ybHimzEwRUEfTqT/MaEbRGE1WF7n5SuzLddVOZAJwmFkeZdNl5PdNi+2BKmcB+kTvOUiAMs2wONVXAhfQOZyIoX3V/+7MteME0aY1aftdh2Q3VFXiLWBNXXMP5YazDDMxZCw8OlhfPQbaqmmUrT6IYNRdQ6c+CsNUNXfNiGfxJ24CwLKHp32/iSLCor/E5N7YzoTQN44Di6+ijn5QhXIjH3E1/UBjFu+rlz5SGRcwJOS6LnfoLxb8bd
x-ms-exchange-antispam-messagedata: qRSCPhr3Z2+51yO7vBylti1I2NHE60v5jsnzhwtly/kEfYsVUh6Puw1v+8fx3cEfgvW8/T151mOHMSagdG952TUAi0KDpBFpbCsrSBrCVcMNRRPv79i/WXXv3XBpmbmoVyAVYXox9+p1ha/EmWBCYg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b136db54-a628-4de1-63cd-08d7b8cf2d3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 02:13:45.1717
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AW1ikKxwdFRbzRn2aOQqkXkZuqNDI78flT42Y1iIBDQ/pYAppEY47H8iesvbwpRaqJcLcTSVOjsTcfZkw0/IIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1526
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVmluZWVsYSwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBUdW1t
YWxhcGFsbGksIFZpbmVlbGEgPHZpbmVlbGEudHVtbWFsYXBhbGxpQGludGVsLmNvbT4NCj4gU2Vu
dDogU2F0dXJkYXksIDIyIEZlYnJ1YXJ5LCAyMDIwIDE6MjcgQU0NCj4gVG86IFJpY2hhcmQgUHVy
ZGllIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPjsgSmFpbiwgU2FuZ2VldGEN
Cj4gPHNhbmdlZXRhLmphaW5AaW50ZWwuY29tPjsgTWl0dGFsLCBBbnVqIDxhbnVqLm1pdHRhbEBp
bnRlbC5jb20+OyBha3VzdGVyODA4DQo+IDxha3VzdGVyODA4QGdtYWlsLmNvbT47IHlvY3RvQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyB5aS56
aGFvQHdpbmRyaXZlci5jb207IFNhbmdhbCwgQXBvb3J2DQo+IDxhcG9vcnYuc2FuZ2FsQGludGVs
LmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBDaGFuLA0KPiBB
YXJvbiBDaHVuIFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBzam9sbGV5Lnlw
LnBtQGdtYWlsLmNvbQ0KPiBTdWJqZWN0OiBSRTogW3lvY3RvXSBRQSBDeWNsZSByZXBvcnQgZm9y
IGJ1aWxkICh5b2N0by0zLjAuMi5yYzIpDQo+IA0KPiBIZWxsbyBSaWNoYXJkLA0KPiANCj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+IE9mIFJpY2hh
cmQgUHVyZGllDQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAyMCwgMjAyMCAzOjQ0IFBNDQo+
IFRvOiBKYWluLCBTYW5nZWV0YSA8c2FuZ2VldGEuamFpbkBpbnRlbC5jb20+OyBNaXR0YWwsIEFu
dWoNCj4gPEFudWouTWl0dGFsQGludGVsLmNvbT47IGFrdXN0ZXI4MDggPGFrdXN0ZXI4MDhAZ21h
aWwuY29tPjsNCj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBDYzogb3RhdmlvQG9z
c3lzdGVtcy5jb20uYnI7IHlpLnpoYW9Ad2luZHJpdmVyLmNvbTsgU2FuZ2FsLCBBcG9vcnYNCj4g
PGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGlu
dGVsLmNvbT47IENoYW4sDQo+IEFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGlu
dGVsLmNvbT47IHNqb2xsZXkueXAucG1AZ21haWwuY29tOw0KPiBUdW1tYWxhcGFsbGksIFZpbmVl
bGEgPHZpbmVlbGEudHVtbWFsYXBhbGxpQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFt5b2N0
b10gUUEgQ3ljbGUgcmVwb3J0IGZvciBidWlsZCAoeW9jdG8tMy4wLjIucmMyKQ0KPiANCj4gSSBk
aXNjdXNzZWQgdGhpcyBxdWlja2x5IGluIGJ1ZyB0cmlhZ2UgdG9kYXkgd2l0aCBBcm1pbi4gV2Ug
YWdyZWVkDQo+IHRoYXQ6DQo+IA0KPiAqIFRoZSBvcGVuc3NoIGJ1ZyBpcyBtaW5vciBhbmQgZG9l
c24ndCBhZmZlY3QgcmVsZWFzZQ0KPiAqIEFudWogcmVzb2x2ZWQgb25lIG9mIHRoZSBidWdzIGFz
IGJlaW5nIGV4ZWN1dGlvbiBlcnJvciBzbyBhZ2FpbiBpdCBkb2Vzbid0DQo+IGFmZmVjdCByZWxl
YXNlDQo+ICogVGhlIGJhc2ggaXNzdWUgZG9lcyBhZmZlY3QgcmVsZWFzZQ0KPiANCj4gV2UncmUg
cHJvcG9zaW5nIHdlIGJ1aWxkIGFuZCByZWxlYXNlIGFuIHJjMyB3aXRoIHRoZSBiYXNoIENWRSBy
ZXZlcnRlZC4NCj4gVGhpcyB3b3VsZCBhbHNvIGluY2x1ZGUgdGhlIGJpdGJha2UgbWVtb3J5IG9w
dGltaXNhdGlvbiBkdXJpbmcgcGFyc2luZyB3aGljaA0KPiBtZXJnZWQuDQo+IA0KPiBXZSB3b3Vs
ZG4ndCByZXJ1biB0aGUgbWFudWFsIFFBIGZvciByYzMsIGp1c3QgY2hlY2sgdGhlIGF1dG9tYXRl
ZCB0ZXN0IHJlc3VsdHMuDQo+IA0KPiBEb2VzIGFueW9uZSBoYXZlIGFueSBvYmplY3Rpb24gdG8g
dGhhdD8gSWYgbm90LCBRQSBzaG91bGQgc2VlIGFuIHJjMyBlbWFpbCBidXQNCj4gd2UncmUganVz
dCBleHBlY3RpbmcgdG8gY2hlY2sgdGhlIHRlc3QgcmVzdWx0cyBpZiB0aGF0IHdvcmtzIGZvciBl
dmVyeW9uZT8NCj4gDQo+IFZpbmVlbGE6IE5vdCBzdXJlIGhvdyB0aGlzIGFmZmVjdHMgcmVsZWFz
ZSBwcm9jZXNzLCB3ZSdsbCBqdXN0IGhhdmUgdG8gZmlndXJlIHRoYXQNCj4gb3V0Lg0KPiANCj4g
W1ZpbmVlbGFdOiBTbyB3ZSB3aWxsIGhhdmUgMy4wLjIucmMzIGFzIHRoZSByZWxlYXNlIGNhbmRp
ZGF0ZSBhbmQgbm90IDMuMC4yLnJjMiBhcw0KPiB3ZSBzZWUgaXNzdWVzIHdpdGggdGhhdC4gQW0g
SSBjb3JyZWN0Pw0KPiBJZiBzbywgaW4gdGVybXMgb2YgcmVsZWFzZSBwcm9jZXNzIEkganVzdCBo
YXZlIHRvIHJlZG8gdGhlIHRoaW5ncyBsaWtlIHN0YWdpbmcNCj4gMy4wLjIucmMzIGFuZCBkbyB0
aGUgcmVsZWFzZSBub3RlcyBhbmQgdGVzdCByZXBvcnQgYW5kIGdldCBpdCByZXZpZXdlZCBvbmNl
IEkgZ2V0DQo+IHRoZSB0ZXN0IHJlc3VsdHMgZm9yIDMuMC4yLnJjMyBmcm9tIFFBIHRlYW0uDQoN
CkFzIGFncmVlZCBlYXJsaWVyLCBRQSB0ZWFtIHdpbGwgbm90IGJlIHJ1bm5pbmcgUUEgY3ljbGUg
Zm9yIDMuMC4yLnJjMy4NCllvdSBtYXkgcHJvY2VlZCBmb3IgcmVsZWFzZSBvbmNlIFJpY2hhcmQv
QXJtaW4gY29uZmlybSB2ZXJpZmljYXRpb24gb2YgYXV0b21hdGVkIHRlc3QgcmVzdWx0cy4NCg0K
VGhhbmtzLA0KU2FuZ2VldGENCg0KPiANCj4gVGhhbmtzLA0KPiBWaW5lZWxhDQo+IA0KPiBDaGVl
cnMsDQo+IA0KPiBSaWNoYXJkDQoNCg==
