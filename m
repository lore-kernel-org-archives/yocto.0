Return-Path: <Michael.Schwarcz@arm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5F1AE00A0C; Sat, 11 Mar 2017 00:37:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0086.outbound.protection.outlook.com [104.47.2.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 284E7E00A08
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 00:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
	s=selector1-arm-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=uBR5OVthr7/ZFspxWKgkw1ihjDh39StQaIlqiScqaMY=;
	b=nqaRXSn6jg3yvFZffhpDGqJ0Go2eDykjadwMzfUCvC/CVU5JsVtYCdvGAqWSNz/jBD03yhUaJHxa9qpSzUoJMRqmAwdCt5rgF4B69LjR6ZmXw/tlpJwmhVyUyGivG47S0z/VrDrp2OPOLaDuLTcThnSe8TJkMLUA/shRQkahX1g=
Received: from VI1PR0801MB1757.eurprd08.prod.outlook.com (10.168.67.23) by
	VI1PR0801MB1758.eurprd08.prod.outlook.com (10.168.67.135) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Sat, 11 Mar 2017 08:03:03 +0000
Received: from VI1PR0801MB1757.eurprd08.prod.outlook.com ([10.168.67.23]) by
	VI1PR0801MB1757.eurprd08.prod.outlook.com ([10.168.67.23]) with mapi id
	15.01.0947.020; Sat, 11 Mar 2017 08:03:03 +0000
From: Michael Schwarcz <Michael.Schwarcz@arm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Compiling with armcc for yocto
Thread-Index: AQHSmj3o/FTgzmHpzEiWXgw7g7etUg==
Date: Sat, 11 Mar 2017 08:03:03 +0000
Message-ID: <aba32a00-2694-404d-8101-5997b6ec3ed8@email.android.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.57.70.86]
x-ms-office365-filtering-correlation-id: ee837387-5b8c-4312-b123-08d468550b4a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(48565401081);
	SRVR:VI1PR0801MB1758; 
x-microsoft-exchange-diagnostics: 1; VI1PR0801MB1758;
	7:3j3Vnbcsle8DJPDduiM5T5sKf6cNV9K9PkcsT7r0QqXuXEmbMNOOoxYGEHso9kVN3d+MRgGWjv2pJW5WntMvjw08za6tsFm7HHJ+WRw2ZYlF/9O0mHuT4SrobZft3gU4ecjGAtqzCQAqC4HJQt1503rRMxFqD+38oKUoPTrFGtcTeb/KlRLZb8zKEoOLzafdgQ7N81sY6DbXBg/PD2KM/M9HxSwtopgQIsZbq+5WfeUJNrVzuQFLG9IUHUeO6Q9aONb7BA5T4UR6v3xajxOFe1xPjNjBkU0Y+/Et5LQosZpHID1AssEN/X1ThhUvuae9RM/a/dTFSeV3T6Lsh2wqtQ==
x-microsoft-antispam-prvs: <VI1PR0801MB1758B5C46265F67D03CC000E87230@VI1PR0801MB1758.eurprd08.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026)(6041248)(20161123558025)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(6072148);
	SRVR:VI1PR0801MB1758; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0801MB1758; 
x-forefront-prvs: 0243E5FD68
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39840400002)(39410400002)(39450400003)(33646002)(106116001)(2351001)(66066001)(2900100001)(3280700002)(2906002)(6116002)(8936002)(54896002)(99286003)(3660700001)(3846002)(102836003)(81166006)(8676002)(31686004)(1730700003)(2501003)(6506006)(6916009)(25786008)(5890100001)(5660300001)(9686003)(31696002)(6512007)(77096006)(122556002)(7736002)(587384001)(50986999)(86362001)(6486002)(6436002)(53936002)(38730400002)(110136004)(54356999)(5640700003)(189998001)(554374003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1758;
	H:VI1PR0801MB1757.eurprd08.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2017 08:03:03.2752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1758
Subject: Compiling with armcc for yocto
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
X-List-Received-Date: Sat, 11 Mar 2017 08:37:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_aba32a002694404d81015997b6ec3ed8emailandroidcom_"

--_000_aba32a002694404d81015997b6ec3ed8emailandroidcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkkgaGF2ZSBhbiBhcHBsaWNhdGlvbiB3aGljaCBJIGJ1aWx0IHVzaW5nIHRoZSBwb2t5
IHRvb2xjaGFpbiBmb3IgeW9jdG8gb24gYSBCZWFnbGVib25lQmxhY2sgZGV2aWNlLg0KSSB3b3Vs
ZCBsaWtlIHRvIGJ1aWxkIG15IGFwcGxpY2F0aW9uIHdpdGggYXJtY2MuDQpJIHJlYWQgdGhhdCB5
b3UgY2FuIGJ1aWxkIHdpdGggYXJtY2MgYSBsaW51eCBhcHBsaWNhdGlvbiwgaXMgaXQgcG9zc2li
bGUgdG8gZG8gaXQgZm9yIHlvY3RvIGFzIHdlbGw/DQoNClRoYW5rcywNCk1pY2hhZWwNCklNUE9S
VEFOVCBOT1RJQ0U6IFRoZSBjb250ZW50cyBvZiB0aGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVu
dHMgYXJlIGNvbmZpZGVudGlhbCBhbmQgbWF5IGFsc28gYmUgcHJpdmlsZWdlZC4gSWYgeW91IGFy
ZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGlt
bWVkaWF0ZWx5IGFuZCBkbyBub3QgZGlzY2xvc2UgdGhlIGNvbnRlbnRzIHRvIGFueSBvdGhlciBw
ZXJzb24sIHVzZSBpdCBmb3IgYW55IHB1cnBvc2UsIG9yIHN0b3JlIG9yIGNvcHkgdGhlIGluZm9y
bWF0aW9uIGluIGFueSBtZWRpdW0uIFRoYW5rIHlvdS4NCg==

--_000_aba32a002694404d81015997b6ec3ed8emailandroidcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <4F682B8C743A5944AE59F61F2DAC1238@arm.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBkaXI9ImF1
dG8iPkhpLA0KPGRpdiBkaXI9ImF1dG8iPjxicj4NCjwvZGl2Pg0KPGRpdiBkaXI9ImF1dG8iPkkg
aGF2ZSBhbiBhcHBsaWNhdGlvbiB3aGljaCBJIGJ1aWx0IHVzaW5nIHRoZSBwb2t5IHRvb2xjaGFp
biBmb3IgeW9jdG8gb24gYSBCZWFnbGVib25lQmxhY2sgZGV2aWNlLjwvZGl2Pg0KPGRpdiBkaXI9
ImF1dG8iPkkgd291bGQgbGlrZSB0byBidWlsZCBteSBhcHBsaWNhdGlvbiB3aXRoIGFybWNjLjwv
ZGl2Pg0KPGRpdiBkaXI9ImF1dG8iPkkgcmVhZCB0aGF0IHlvdSBjYW4gYnVpbGQgd2l0aCBhcm1j
YyBhIGxpbnV4IGFwcGxpY2F0aW9uLCBpcyBpdCBwb3NzaWJsZSB0byBkbyBpdCBmb3IgeW9jdG8g
YXMgd2VsbD88L2Rpdj4NCjxkaXYgZGlyPSJhdXRvIj48YnI+DQo8L2Rpdj4NCjxkaXYgZGlyPSJh
dXRvIj5UaGFua3MsPC9kaXY+DQo8ZGl2IGRpcj0iYXV0byI+TWljaGFlbDwvZGl2Pg0KPC9kaXY+
DQpJTVBPUlRBTlQgTk9USUNFOiBUaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0
dGFjaG1lbnRzIGFyZSBjb25maWRlbnRpYWwgYW5kIG1heSBhbHNvIGJlIHByaXZpbGVnZWQuIElm
IHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgdGhlIHNl
bmRlciBpbW1lZGlhdGVseSBhbmQgZG8gbm90IGRpc2Nsb3NlIHRoZSBjb250ZW50cyB0byBhbnkg
b3RoZXIgcGVyc29uLCB1c2UgaXQgZm9yIGFueSBwdXJwb3NlLA0KIG9yIHN0b3JlIG9yIGNvcHkg
dGhlIGluZm9ybWF0aW9uIGluIGFueSBtZWRpdW0uIFRoYW5rIHlvdS4NCjwvYm9keT4NCjwvaHRt
bD4NCg==

--_000_aba32a002694404d81015997b6ec3ed8emailandroidcom_--
