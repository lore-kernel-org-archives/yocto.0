Return-Path: <stephan.roslen@hibento.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58DC3E00EA9; Fri, 20 May 2016 00:56:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.129 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8187 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 May 2016 00:56:21 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0129.outbound.protection.outlook.com [157.55.234.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACBECE00ABE
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 00:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=hibento.onmicrosoft.com; s=selector1-hibento-de;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/X19Ns9ZxTt1ZPRLzXeQbMNPgKoTBZzSrrwlkJe2ym8=;
	b=QFUxf0gV0I1PQ1zLu3WINmF+zD1IbWPcKkGWw1I9ul/9CUPEA74MvT/l4TXMl973rrN4CjxnAFEJ7+hVKVAQ2qs6KyeY8HrXaFgSLerd3XpnFJGWe9E8O9KOCa2y2onNvxQ/eluGGMPxe6E9ROJgmzL6tbdEGj6QD1G4vq9AQT0=
Received: from AM4PR03MB1329.eurprd03.prod.outlook.com (10.164.77.23) by
	AM4PR03MB1329.eurprd03.prod.outlook.com (10.164.77.23) with Microsoft
	SMTP Server (TLS) id 15.1.497.12; Fri, 20 May 2016 05:25:00 +0000
Received: from AM4PR03MB1329.eurprd03.prod.outlook.com ([10.164.77.23]) by
	AM4PR03MB1329.eurprd03.prod.outlook.com ([10.164.77.23]) with mapi id
	15.01.0497.019; Fri, 20 May 2016 05:25:00 +0000
From: Stephan Roslen <stephan.roslen@hibento.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Newbie Question regarding custom layer and
	populate_rootfs
Thread-Index: AQHRslK49Hev5dEmhEKTT1YunXhwB5/BS0MA
Date: Fri, 20 May 2016 05:25:00 +0000
Message-ID: <1463721900.2210.11.camel@hibento.de>
References: <05bb0eaa-71c1-f850-e7e4-f028bbe8b715@ind.rwth-aachen.de>
In-Reply-To: <05bb0eaa-71c1-f850-e7e4-f028bbe8b715@ind.rwth-aachen.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hibento.de;
x-originating-ip: [213.168.84.195]
x-ms-office365-filtering-correlation-id: 6936ec09-a7fe-47bc-4f4c-08d3806f173f
x-microsoft-exchange-diagnostics: 1; AM4PR03MB1329;
	5:A/ud6Woku5VyuVB3gQIZnMUjX8nUanqYECwBlpMb+och+Nhaqd7jxUgbklHo815Lh1CsRHpbmPOhq1M2wxzyOrQFUSZwOAVbzfdF4znoWlcfNsBHRfoLPtnpSIZPSf0PettSzN7gADbUs2nI0VNDqA==;
	24:OzfIExgREfhBChHqAQqMP3fT0jcvSrYlgznNgTbv1vaQOEg39QPQ2rrVb9iCy1/ykkNwgkEr6EIbJDvi9OeupOS4MR5YuZIZ6K2FumxyUgo=;
	7:RiTMujPI8oIUouQTuJtSuNCR55Q1h+fBzdaAix6fkdGhcDn9H8BUnkfuNrrNJ1iW6ud8w87MPGX16sFhnPTyLJLjkO2RHT5crDqu7vGz5qTj2BN22pgymwiM5u5YRRAgB6xLrnkq7/wG9fxtVyEzk41vvtMLMAnA3PiPFHgbx1egr7lLs26cDuIwtpI2lefW;
	20:xJMGdT/U38Jw6MC+kD/tXZjxQkAApvaczCGrn/aIB9ei9LtKyjl9tnVQXSCJeGIYl6uvHySfWTpu5F/soYK9O+KN0xODe3d/f8/VsXUOZSoPLK+8Tf5seqcgk8SuC3DhdTRLquISaohRw7Z74y+Imr1uV7x7cHWet53BM+wZJbU=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM4PR03MB1329;
x-microsoft-antispam-prvs: <AM4PR03MB1329416A93E9FE57EE8F9AECF44B0@AM4PR03MB1329.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040130)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041072)(6043046);
	SRVR:AM4PR03MB1329; BCL:0; PCL:0; RULEID:; SRVR:AM4PR03MB1329; 
x-forefront-prvs: 09480768F8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(24454002)(53754006)(377424004)(110136002)(107886002)(2900100001)(189998001)(5002640100001)(75402003)(76176999)(92566002)(2950100001)(54356999)(5640700001)(3280700002)(77096005)(1730700003)(8676002)(2906002)(3660700001)(11100500001)(50986999)(86362001)(33646002)(81166006)(87936001)(6116002)(122556002)(5004730100002)(450100001)(8936002)(586003)(36756003)(103116003)(19580395003)(19580405001)(3846002)(102836003)(10400500002)(5008740100001)(74482002)(66066001)(1220700001)(15975445007)(2351001)(106116001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM4PR03MB1329;
	H:AM4PR03MB1329.eurprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hibento.de
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2016 05:25:00.7559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 74a86ca2-f2d7-4646-b81b-6cfcfbf4fcc2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR03MB1329
Subject: Re: Newbie Question regarding custom layer and populate_rootfs
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
X-List-Received-Date: Fri, 20 May 2016 07:56:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <9493DC0464202B479B511FF8C685E2B2@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gRnIsIDIwMTYtMDUtMjAgYXQgMDg6NDQgKzAyMDAsIHB1YmxpYy1oa0Bpa3Mucnd0aC1hYWNo
ZW4uZGUgd3JvdGU6DQo+IEhpIGFsbCwNCkhpIEhhdWtlLA0KDQpuaWNlIHRvIG1lZXQgc29tZWJv
ZHkgZmFtaWxpYXIgaGVyZS4gOikNCg0KPiBTbyBoZXJlIGFyZSB0aGUgcXVlc3Rpb25zOg0KPiAx
KSBXaHkgbXkgdmVyc2lvbiBvZiB0aGUgcHNwbGFzaCBleGVjdXRhYmxlIC0gZXZlbiB0aG91Z2gg
aXQgd2FzIGJ1aWx0IC0NCj4gaXMgbm90IGluc3RhbGxlZCBpbiB0aGUgcm9vdCBmcz8NCg0KRGlk
IHlvdSBtYW51YWxseSBidWlsZCB5b3VyIHNwbGFzaCByZWNpcGUgKGJpdGJha2UgcHNwbGFzaC1t
eXByb2plY3QpPw0KVGhpcyBkb2VzIG5vdCBpbmNsdWRlIGl0IGluIGFuIGltYWdlIHlldC4gSXQg
bXVzdCBiZSBhZGRlZCB0byBpbWFnZQ0KZmVhdHVyZXMgZWl0aGVyIG1hbnVhbGx5IG9yIHRocm91
Z2ggYSBkZXBlbmRlbmN5LiANClRoZSBwc3BsYXNoLXJhc3BiZXJyeSBwYWNrYWdlIHNlZW1zIHRv
IGJlIGluY2x1ZGVkIGluIHRoZSBkZXBlbmRlbmNpZXMNCmhlcmUNCmh0dHBzOi8vZ2l0LnlvY3Rv
cHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9tZXRhLXJhc3BiZXJyeXBpL3RyZWUvY29uZi9tYWNo
aW5lL2luY2x1ZGUvcnBpLWJhc2UuaW5jI241MSAtIG1heWJlIHRoZXJlIGlzIGEgY2hhbmNlIHRv
IG92ZXJyaWRlIHRoaXMgaW4geW91ciBsb2NhbC5jb25mDQpUaGUgY2xlYW5lc3Qgd2F5IG1pZ2h0
IGJlIHRvIGluY2x1ZGUgdGhpcyBpbiBhbiBvd24gbWFjaGluZSBkZWZpbml0aW9uDQphbmQgb3Zl
cnJpZGUgaXQgYWZ0ZXJ3YXJkcy4NCg0KPiAyKSBJIGhhdmUgYmVlbiBhYmxlIHRvIHJldmlldyB0
aGUgbG9ncyBmcm9tIGJ1aWxkIHN0ZXBzIGFuZCBhbG1vc3QNCj4gZXZlcnl0aGluZyByZWxhdGVk
IHRvIHRoZSBwYWNrYWdlIGNyZWF0aW9uIGluIHRtcC93b3JrIHN1YmZvbGRlciBvZiBteQ0KPiBi
dWlsZCBwcm9qZWN0LiBCdXQgaG93IGNhbiBJIHNlZSB3aGljaCBwYWNrYWdlcyBhcmUgaW5zdGFs
bGVkIGR1cmluZyB0aGUNCj4gcG9wdWxhdGVfcm9vdGZzIHN0ZXA/IFRoZXJlIHNlZW1zIHRvIGJl
IG5vIGRlZGljYXRlZCBsb2cgZmlsZS4NCg0KVGhlcmUgaXMgYSByYXRoZXIgY29tcGxleCBjb25n
bG9tZXJhdGUgb2YgcGlwZWQgY29tbWFuZHMgaGVyZSwgd2hpY2gNCmRvZXMgdGhpczogaHR0cHM6
Ly9jb21tdW5pdHkuZnJlZXNjYWxlLmNvbS9kb2NzL0RPQy05NDk1MyANCg0KUmVnYXJkcywNClN0
ZXBoYW4NCg==

