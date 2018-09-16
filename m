Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8C53E00B43; Sun, 16 Sep 2018 22:59:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10874 seconds by postgrey-1.32 at yocto-www;
	Sun, 16 Sep 2018 22:59:49 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0085.outbound.protection.outlook.com [104.47.32.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4635AE00AD8
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 22:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=PMz45KxRgl4L/2vG5gfIob6qGxmEeGgLfzkE/MUrPbo=;
	b=AQk9V1tC/U/oVmueB9J2IKojdFs1DhQtAN919QB9FMXFDnP5pBofO/yydfJ+YvylC+4TiubNE3rilPljLxmieIaxlUuEk71ZXaRdr5sl8g48aHymzQgNplQnX6p9MsWCBtm8VT6Si+iAVz8T/CueM0bYNnobtaD2U8vcYCjA9pU=
Received: from BYAPR02MB4583.namprd02.prod.outlook.com (52.135.239.210) by
	BYAPR02MB4741.namprd02.prod.outlook.com (52.135.232.30) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1143.13; Sun, 16 Sep 2018 22:25:17 +0000
Received: from BYAPR02MB4583.namprd02.prod.outlook.com
	([fe80::f8dc:4ac0:cd14:a940]) by
	BYAPR02MB4583.namprd02.prod.outlook.com
	([fe80::f8dc:4ac0:cd14:a940%3]) with mapi id 15.20.1143.014;
	Sun, 16 Sep 2018 22:25:17 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: Peter Bergin <peter@berginkonsult.se>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] liblzma: memory allocation failed
Thread-Index: AQHUTf3EAoI69k2pBUWD8+TIUnlNm6Tze+Tw
Date: Sun, 16 Sep 2018 22:25:17 +0000
Message-ID: <BYAPR02MB458330B7B39EBC615C139D0AB91F0@BYAPR02MB4583.namprd02.prod.outlook.com>
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
In-Reply-To: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BYAPR02MB4741;
	6:Vv7Dpw526uHiQPy68TUgmohC7HvFdgpSBMr4DGGjckOx8CnyPRIIlDcV5YR+RyhmFWMN/WYPlq8nKNRh0Bzg6MeTWktvqXXvBhHeqTwJtIL1RsfJ8l8r4gHLiOzTuJR/QbYG+gjk7AlL8wl8t1JuGpezG00tw+s2PXjmmya75gERO1QDCdpJIut2R6oOOjGc3t16HetE7UuyY8NyNxJFOon8aU0Wyy+OFHLDQmvDQ9eddHc8/4MuyHSbzpJipSTuMvahKtqLjVEq1ObbVh6Uiu1rp0qUZEPzxLF4I8JTDv9Db3CzMi4OPo+YSmypAOVIeVNVuwtiJVZUTPwK1b6huIq26F1aRCfGyfojO5F7bTjO1+R8iNXaBwVlgCELfcoA1WWaTT/elF2lsPd2dGmBWXvKtyDq7LL+rgLxVl8SZn7ZM4MFC+No/4+JdVCKIlr2Rlo7mHBDhbCwy+xqwda87g==;
	5:y2/c+lLwNkWJL4AXeIMbVhxg06p/vjqb9q0s7KAvRT4r2Zj53qZohScNh5n43Ktvhs5OpOuS2tAyIS8p/sZKsUrrwf9FVR5QB16E6L/d9OS83E5QeVf/DlBCsaTCl0jyElHoZHedlEenYQXUoag2v6v6Vl7xpf5+h409B0n3DM0=;
	7:/JnkrulxaGSqquCgel+OBq6YlR3U8pZndQg4UwDGI0bD6PPTQl8lBgIaXXnkxWtoOCaw6SJSvzhyrdHyJQ7KDMYcZHNmhaDu5DV8gAVTpNe2cxSSWJHXWxFoAA+ns1z9Qweeij9+aC24X2R95Ce0AUo7l1bmDv+w8aSrkTJOr7uPSSbtlRydAcW7S9JTinphOog7ZxRScLJdEh2ZOwIrUi6BvU16tL+bjklf7pr2b6so9DsDmQqr2uC4gA5w+Qs8
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: dd836052-b213-4b0a-e2c2-08d61c234806
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:BYAPR02MB4741; 
x-ms-traffictypediagnostic: BYAPR02MB4741:
x-microsoft-antispam-prvs: <BYAPR02MB4741A403A1CD349169E3FB7EB91F0@BYAPR02MB4741.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(264703809997249);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(3231355)(944501410)(52105095)(3002001)(10201501046)(6055026)(149027)(150027)(6041310)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699050);
	SRVR:BYAPR02MB4741; BCL:0; PCL:0; RULEID:; SRVR:BYAPR02MB4741; 
x-forefront-prvs: 079756C6B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39850400004)(366004)(396003)(346002)(376002)(136003)(189003)(199004)(13464003)(26005)(476003)(575784001)(6436002)(102836004)(9686003)(7696005)(316002)(68736007)(74316002)(486006)(5660300001)(6116002)(478600001)(3846002)(110136005)(106356001)(6306002)(966005)(33656002)(72206003)(97736004)(2906002)(53936002)(14454004)(7736002)(86362001)(55016002)(11346002)(305945005)(5250100002)(229853002)(6246003)(14444005)(99286004)(53546011)(105586002)(186003)(256004)(6506007)(446003)(81166006)(2501003)(2900100001)(66066001)(8936002)(81156014)(25786009)(8676002)(76176011);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4741;
	H:BYAPR02MB4583.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: L/e1LbE4jwSpZkrt8WB8Zqx27SemDKlgEbeWRFBs/eu97/sUOm8fnwWzVurEZcz1n4jJs5iAmy4BkjqC8Nkxtr8lM1Iwxik36uDLYCAJJPv7pCCFPkdxyVDmsURolKx267muCCFnAt6oSaI14sdwXf8hA43aCqh9/vEmftbbJB/OtZOjZNSzigtxXsaY2KDH9mDhQCxgrGKZ54SrQocdPzGrJxir2Z4NB+rK1Bre9XRfInc0ryj+on0Ji9PHH2LNr51Dsyyt5dbNN5S6Ozz9c1yHgJ/F8idYTBMezH/wIt/lQy2umuNtHMTFExU/7kspxd9U7mfUNFSN0rcAaHDdf5DNPc3k2sGBefcv2jLonX4=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd836052-b213-4b0a-e2c2-08d61c234806
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2018 22:25:17.6254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4741
Subject: Re: liblzma: memory allocation failed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Sep 2018 05:59:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUGV0ZXIsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG8t
Ym91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2pl
Y3Qub3JnXQ0KPiBPbiBCZWhhbGYgT2YgUGV0ZXIgQmVyZ2luDQo+IFNlbnQ6IFN1bmRheSwgU2Vw
dGVtYmVyIDE2LCAyMDE4IDE6NDEgUE0NCj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4g
U3ViamVjdDogW3lvY3RvXSBsaWJsem1hOiBtZW1vcnkgYWxsb2NhdGlvbiBmYWlsZWQNCj4gDQo+
IEhpLA0KPiANCj4gZHVyaW5nIHRoZSB0YXNrIGRvX3BhY2thZ2Vfd3JpdGVfcnBtIEkgZ2V0IHRo
ZSBlcnJvciAibGlibHptYTogTWVtb3J5DQo+IGFsbG9jYXRpb24gZmFpbGVkIi4gSXQgaGFwcGVu
cyBkdXJpbmcgcGFja2FnaW5nIG9mIGJpbmFyeSBSUE0gcGFja2FnZXMuDQo+IFRoZSByb290IGNh
dXNlIHNlZW1zIHRvIGJlIHRoZSBob3N0IGVudmlyb25tZW50IHRoYXQgaXMgdXNlZCBpbiBvdXIN
Cj4gcHJvamVjdC4gV2UgcnVuIG91ciBidWlsZHMgb24gYSBiaWcgc2VydmVyIHdpdGggMzIgY29y
ZXMgYW5kIDI1NkdCIG9mDQo+IHBoeXNpY2FsIFJBTSBidXQgZWFjaCB1c2VyIGhhcyBhIGxpbWl0
IG9mIHZpcnR1YWwgbWVtb3J5IHVzYWdlIHRvIDMyR0INCj4gKHVsaW1pdCAtdikuIFRoZSBwYWNr
YWdpbmcgaW4gcnBtLW5hdGl2ZSBoYXMgYmVlbiBwYXJhbGxlbGl6ZWQgaW4gdGhlDQo+IGNvbW1p
dA0KPiBodHRwOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9wb2t5L2NvbW1p
dC9tZXRhL3JlY2lwZXMtDQo+IGRldnRvb2xzL3JwbT9pZD04NGUwYmI4ZDkzNmYxYjkwOTRjOWQ1
YTkyODI1ZTlkMjJlMWJjN2UzLg0KPiBXaGF0IHNlZW1zIHRvIGhhcHBlbiBpcyB0aGF0IHJwbS1u
YXRpdmUgcHV0IHVwIDMyIHBhcmFsbGVsIHRhc2tzIHdpdGgNCj4gJyNwcmFnbWEgb21wJywgZWFj
aCB0YXNrIGlzIHVzaW5nIGxpYmx6bWEgdGhhdCBhbHNvIHB1dCB1cCAzMiB0YXNrcyBmb3INCj4g
dGhlIGNvbXByZXNzaW9uIHdvcmsuIFRoZSBtZW1vcnkgY2FsY3VsYXRpb25zIGluIGxpYmx6bWEg
aXMgYmFzZWQgb24gdGhlDQo+IGFtb3VudCBvZiBwaHlzaWNhbCBSQU0gYnV0IGFzIHRoZSB1c2Vy
IGlzIGxpbWl0ZWQgYnkgJ3VsaW1pdCAtdicgd2UgZ2V0DQo+IGludG8gYSBPT00gc2l0dWF0aW9u
IGluIGxpYmx6bWEuDQo+IA0KPiBIZXJlIGlzIHRoZSBjb2RlIHNuaXBwZXQgZnJvbSBycG0tbmF0
aXZlL2J1aWxkL3BhY2suYyB3aGVyZSBpdCBoYXBwZW5zOg0KPiANCj4gIMKgwqDCoCAjcHJhZ21h
IG9tcCBwYXJhbGxlbA0KPiAgwqDCoMKgICNwcmFnbWEgb21wIHNpbmdsZQ0KPiAgwqDCoMKgIC8v
IHJlLWRlY2xhcmluZyB0YXNrIHZhcmlhYmxlIGlzIG5lY2Vzc2FyeSwgb3Igb2xkZXIgZ2NjIHZl
cnNpb25zIHdpbGwgcHJvZHVjZSBjb2RlDQo+IHRoYXQgc2VnZmF1bHRzDQo+ICDCoMKgwqAgZm9y
IChzdHJ1Y3QgYmluYXJ5UGFja2FnZVRhc2tEYXRhICp0YXNrID0gdGFza3M7IHRhc2sgIT0gTlVM
TDsgdGFzayA9IHRhc2stPm5leHQpIHsNCj4gIMKgwqDCoMKgwqDCoMKgIGlmICh0YXNrICE9IHRh
c2tzKQ0KPiAgwqDCoMKgwqDCoMKgwqAgI3ByYWdtYSBvbXAgdGFzaw0KPiAgwqDCoMKgwqDCoMKg
wqAgew0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0YXNrLT5yZXN1bHQgPSBwYWNrYWdlQmlu
YXJ5KHNwZWMsIHRhc2stPnBrZywgY29va2llLCBjaGVhdGluZywgJih0YXNrLQ0KPiA+ZmlsZW5h
bWUpLCBidWlsZFRpbWUsIGJ1aWxkSG9zdCk7DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJw
bWxvZyhSUE1MT0dfTk9USUNFLCBfKCJGaW5pc2hlZCBiaW5hcnkgcGFja2FnZSBqb2IsIHJlc3Vs
dCAlZCwgZmlsZW5hbWUNCj4gJXNcbiIpLCB0YXNrLT5yZXN1bHQsIHRhc2stPmZpbGVuYW1lKTsN
Cj4gIMKgwqDCoMKgwqDCoMKgIH0NCj4gIMKgwqDCoCB9DQo+IA0KPiANCj4gU3RlcHMgdG8gcmVw
cm9kdWNlIGlzIHRvIHNldCAndWxpbWl0IC12JyBpbiB5b3VyIHNoZWxsIHRvLCBmb3IgZXhhbXBs
ZSwNCj4gMS84IG9mIHRoZSBhbW91bnQgb2YgcGh5c2ljYWwgUkFNIGFuZCB0aGVuIGJ1aWxkIGZv
ciBleGFtcGxlDQo+IGdsaWJjLWxvY2FsZS4gSSBoYXZlIHRlc3RlZCB0aGlzIHdpdGggcm9ja28u
IElmIHRoZSAnI3ByYWdtYSBvbXAnDQo+IHN0YXRlbWVudHMgaW4gY29kZSBzbmlwcGV0IGFib3Zl
IGlzIHJlbW92ZWQgdGhlIHByb2JsZW0gaXMgc29sdmVkLiBCdXQNCj4gdGhhdCBub3QgZ29vZCBh
cyB0aGUgcGFyYWxsZWwgcHJvY2Vzc2luZyBzcGVlZCB1cCB0aGUgcHJvY2Vzcy4NCj4gDQo+IElz
IHRoZSBob3N0IGVudmlyb25tZW50IHVzZWQgaGVyZSB3aXRoIHJlc3RyaWN0ZWQgdmlydHVhbCBt
ZW1vcnkNCj4gc3VwcG9ydGVkIGJ5IFlvY3RvPyBJZiBpdCBpcywgc29tZW9uZSB0aGF0IGhhdmUg
YW55IHN1Z2dlc3Rpb24gZm9yIGENCj4gc29sdXRpb24gb24gdGhpcyBpc3N1ZT8NCj4gDQoNCldl
IGhhZCBzZWVuIHRoaXMgaXNzdWUgYXMgd2VsbCBhbmQgY29uY2x1ZGVkIHRoYXQgc29tZSBzZXR0
aW5ncyBpbiB0aGUgc2VydmVyIHdhcyBjYXVzaW5nIHRoaXMuDQpTZWUgaHR0cDovL2xpc3RzLm9w
ZW5lbWJlZGRlZC5vcmcvcGlwZXJtYWlsL29wZW5lbWJlZGRlZC1jb3JlLzIwMTgtSmFudWFyeS8x
NDY3MDUuaHRtbA0KDQpUaGFua3MsDQpNYW5qdQ0K

