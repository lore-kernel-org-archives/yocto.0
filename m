Return-Path: <kzertsekel@mrv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 893BEE00BB7; Sun, 31 Jan 2016 06:47:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0111.outbound.protection.outlook.com [157.56.112.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66E7CE0082E
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 06:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mrvil.onmicrosoft.com; 
	s=selector1-mrv-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=0yjrW+Q0uWQhaAR3F6C8pUhzgAvjbg3eQl+1uhC5sBo=;
	b=S99uTFxVHVNaqJhdVlLgq7QnovSTQoAKh7OOGGSG8crLoRLSjUL9QPVAglgs78M+NXhnJ0wfREj/1c2zJHFQEs2OI8SmhILoox3AxF+1HvtvQRqsaAsKV3YnPZl63WS25kFmR8TG3u5KdaohwMU3JeOrFCwzTtq2P5K1iEisHec=
Received: from VI1PR03MB1567.eurprd03.prod.outlook.com (10.165.233.25) by
	VI1PR03MB1565.eurprd03.prod.outlook.com (10.165.233.23) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Sun, 31 Jan 2016 14:47:28 +0000
Received: from VI1PR03MB1567.eurprd03.prod.outlook.com ([10.165.233.25]) by
	VI1PR03MB1567.eurprd03.prod.outlook.com ([10.165.233.25]) with mapi id
	15.01.0390.019; Sun, 31 Jan 2016 14:47:28 +0000
From: "Kosta  Zertsekel" <kzertsekel@mrv.com>
To: Charles Werther <cwerther3@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Image SDK Generation With QT5
Thread-Index: AQHRXDVw82wcJ+ITM0iVQ3mqf/A0dJ8Vs5+0
Date: Sun, 31 Jan 2016 14:47:28 +0000
Message-ID: <VI1PR03MB156755D77FD254E53BF8E423DADD0@VI1PR03MB1567.eurprd03.prod.outlook.com>
References: <CB3ACCA3-85C3-4B05-B11D-929B9E737A0A@gmail.com>
In-Reply-To: <CB3ACCA3-85C3-4B05-B11D-929B9E737A0A@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=none action=none header.from=mrv.com;
x-originating-ip: [194.90.138.234]
x-microsoft-exchange-diagnostics: 1; VI1PR03MB1565;
	5:WatsINvKiEPub0vnVJ1xBx8d1CEuDB1EV4oerDzeAgFNLqMNoC53yyauQjrbjHxX1WyMr2NatXmuJNV4qjgm+o4E64BPmavwg/9XD+LF5/N/3eIWUafLfryW0Duvgd5oKPcbZwIb21ygysmpDxwHbg==;
	24:NCmFJZ7f3x6549sgxM3LrxRhXzXgLzZ76Q4+jWeHcXc//CeDm9AEJsuMLhPq/yqf6jwXAQaN2QFgErIrtI9sIwJatxnsJQcGG1TlImqMUa4=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR03MB1565;
x-ms-office365-filtering-correlation-id: 631bacf8-f254-483c-91ac-08d32a4d710a
x-microsoft-antispam-prvs: <VI1PR03MB1565AFD590EB9AFD1CB62538DADD0@VI1PR03MB1565.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:VI1PR03MB1565; BCL:0; PCL:0; RULEID:; SRVR:VI1PR03MB1565; 
x-forefront-prvs: 08381C729B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(57704003)(377454003)(54356999)(76176999)(1220700001)(107886002)(1096002)(189998001)(33656002)(2906002)(11100500001)(50986999)(66066001)(92566002)(5890100001)(5002640100001)(102836003)(5001960100002)(122556002)(3846002)(6116002)(40100003)(106116001)(5004730100002)(5003600100002)(2501003)(5008740100001)(586003)(19580395003)(76576001)(19580405001)(3280700002)(77096005)(15975445007)(10400500002)(2900100001)(2950100001)(87936001)(3470700001)(86362001)(3660700001)(74316001)(5001770100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR03MB1565;
	H:VI1PR03MB1567.eurprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: mrv.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2016 14:47:28.5957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3324ef19-dd38-46a1-8379-2a2bdaace805
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB1565
Subject: Re: Image SDK Generation With QT5
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
X-List-Received-Date: Sun, 31 Jan 2016 14:47:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hhcmxlcywNCg0KPj4gSSd2ZSBjcmVhdGVkIGFuIGltYWdlIGZvciB0aGUgUmFzcGJlcnJ5
IFBpIDIgd2hpY2ggaW5jbHVkZXMgUXQ1IGFuZA0KPj4gdGhlIFdpcmluZ1BpIGxpYnJhcnkgYW5k
IGl0IHJ1bnMgZ3JlYXQgb24gdGhlIGRldmljZS4gSG93ZXZlciwgd2hlbg0KPj4gSSBydW4gdGhl
IGNvbW1hbmQgJ2JpdGJha2UgbXlRdEltYWdlIC1jIHBvcHVsYXRlX3NkaycgSSBnZXQgdGhlDQo+
PiBQaSBzeXNyb290IHdpdGggZXZlcnl0aGluZyBpbiBpdCBidXQgSSBkb24ndCBnZXQgdGhlIHg4
Ni02NCBxbWFrZQ0KPj4gSSBuZWVkIHRvIGNyb3NzIGNvbXBpbGUgb24gbXkgZGVza3RvcC4gV2hl
biBJIHJ1biBtZXRhLXRvb2xjaGFpbi1xdDUNCj4+IEkgZ2V0IHRoZSB4ODYtNjQgcW1ha2UgSSB3
YW50IGJ1dCB0aGUgd2lyaW5nUGkgbGlicmFyeSBpc24ndCBpbmNsdWRlZA0KPj4gaW4gdGhlIFBp
IHN5c3Jvb3QuICBXaGF0IGRvIEkgbmVlZCB0byBkbyB0byBnZW5lcmF0ZSBhbiBTREsgdGhhdA0K
Pj4gaW5jbHVkZXMgYm90aCB0aGUgd2lyaW5nUGkgbGlicmFyeSBpbiB0aGUgUGkgc3lzcm9vdCBh
bmQgdGhlIHg4Ni02NCBxbWFrZT8NCg0KUGxlYXNlIHByb3ZpZGUgeW91ciBnaXQgbGluayBmb3Ig
cGVvcGxlIHRvIGNsb25lIGFuZCByZXZpZXcuDQoNClRoYW5rcywNCi0tLSBLb3N0YVoNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogeW9jdG8tYm91bmNl
c0B5b2N0b3Byb2plY3Qub3JnIDx5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmc+IG9uIGJl
aGFsZiBvZiBDaGFybGVzIFdlcnRoZXIgPGN3ZXJ0aGVyM0BnbWFpbC5jb20+DQpTZW50OiBTdW5k
YXksIEphbnVhcnkgMzEsIDIwMTYgNDo0MCBQTQ0KVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
ClN1YmplY3Q6IFt5b2N0b10gSW1hZ2UgU0RLIEdlbmVyYXRpb24gV2l0aCBRVDUNCg0KQWxsLA0K
DQpJJ3ZlIGNyZWF0ZWQgYW4gaW1hZ2UgZm9yIHRoZSBSYXNwYmVycnkgUGkgMiB3aGljaCBpbmNs
dWRlcyBRdDUgYW5kIHRoZSBXaXJpbmdQaSBsaWJyYXJ5IGFuZCBpdCBydW5zIGdyZWF0IG9uIHRo
ZSBkZXZpY2UuIEhvd2V2ZXIsIHdoZW4gSSBydW4gdGhlIGNvbW1hbmQgJ2JpdGJha2UgbXlRdElt
YWdlIC1jIHBvcHVsYXRlX3NkaycgSSBnZXQgdGhlIFBpIHN5c3Jvb3Qgd2l0aCBldmVyeXRoaW5n
IGluIGl0IGJ1dCBJIGRvbid0IGdldCB0aGUgeDg2LTY0IHFtYWtlIEkgbmVlZCB0byBjcm9zcyBj
b21waWxlIG9uIG15IGRlc2t0b3AuIFdoZW4gSSBydW4gbWV0YS10b29sY2hhaW4tcXQ1IEkgZ2V0
IHRoZSB4ODYtNjQgcW1ha2UgSSB3YW50IGJ1dCB0aGUgd2lyaW5nUGkgbGlicmFyeSBpc24ndCBp
bmNsdWRlZCBpbiB0aGUgUGkgc3lzcm9vdC4gIFdoYXQgZG8gSSBuZWVkIHRvIGRvIHRvIGdlbmVy
YXRlIGFuIFNESyB0aGF0IGluY2x1ZGVzIGJvdGggdGhlIHdpcmluZ1BpIGxpYnJhcnkgaW4gdGhl
IFBpIHN5c3Jvb3QgYW5kIHRoZSB4ODYtNjQgcW1ha2U/DQoNClRoYW5rcywNCkNoYXJsZXMNCi0t
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9jdG8g
bWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpodHRwczovL2xpc3RzLnlvY3Rv
cHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCltFLUJhbm5lcl08aHR0cDovL3d3dy5tcnYuY29t
L2Jsb2c+DQoNCg0KTVJWIENvbW11bmljYXRpb25zIGlzIGEgZ2xvYmFsIHN1cHBsaWVyIG9mIHBh
Y2tldCBhbmQgb3B0aWNhbCBzb2x1dGlvbnMgdGhhdCBwb3dlciB0aGUgd29ybGTigJlzIGxhcmdl
c3QgbmV0d29ya3MuIE91ciBwcm9kdWN0cyBjb21iaW5lIGlubm92YXRpdmUgaGFyZHdhcmUgd2l0
aCBpbnRlbGxpZ2VudCBzb2Z0d2FyZSB0byBtYWtlIG5ldHdvcmtzIHNtYXJ0ZXIsIGZhc3RlciBh
bmQgbW9yZSBlZmZpY2llbnQuDQoNCg0KVGhlIGNvbnRlbnRzIG9mIHRoaXMgbWVzc2FnZSwgdG9n
ZXRoZXIgd2l0aCBhbnkgYXR0YWNobWVudHMsIGFyZSBpbnRlbmRlZCBvbmx5IGZvciB0aGUgdXNl
IG9mIHRoZSBwZXJzb24ocykgdG8gd2hvbSB0aGV5IGFyZSBhZGRyZXNzZWQgYW5kIG1heSBjb250
YWluIGNvbmZpZGVudGlhbCBhbmQvb3IgcHJpdmlsZWdlZCBpbmZvcm1hdGlvbi4gSWYgeW91IGFy
ZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgaW1tZWRpYXRlbHkgYWR2aXNlIHRoZSBzZW5k
ZXIsIGRlbGV0ZSB0aGlzIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2htZW50cyBhbmQgbm90ZSB0aGF0
IGFueSBkaXN0cmlidXRpb24sIG9yIGNvcHlpbmcgb2YgdGhpcyBtZXNzYWdlLCBvciBhbnkgYXR0
YWNobWVudCwgaXMgcHJvaGliaXRlZC4NCg==

