Return-Path: <Javier.Viguera@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3F65E009A0; Mon, 20 Feb 2017 07:41:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.11 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7F34E00867
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 07:41:35 -0800 (PST)
Received: from [216.82.249.147] by server-11.bemta-12.messagelabs.com id
	C1/2E-26094-D2E0BA85; Mon, 20 Feb 2017 15:41:33 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDKsWRWlGSWpSXmKPExsXi5LtOQFeXb3W
	Ewe/DvBb3j61kt5j0cg2bA5PHzll32T3aT/SxBTBFsWbmJeVXJLBmNDS3MBfc5aw4cruwgfEM
	ZxcjF4eQwGpGiafnTjJDOGsYJaZNnsUO4SxhlFh1ejtbFyMnB5uAocSET5/AbBEBTYmJ2+4xg
	djMAqYSk2e0MIPYwgL2EvtuL2SCqHGQuNO7gBnCtpJ48GELO4jNIqAq8e3BbUYQm1fAV2JVyx
	2ozZMZJf6u2A3WzCkQKHHqy3uwZYwCshJfGlczQywTl7j1ZD5YjYSAgMSSPeeZIWxRiZeP/7F
	C2PISUz5cZISwDSVWTTvAAmFLS7zpWQc0kwNojqbE+l36ECMVJaZ0P2SHuEdQ4uTMJ2DlQgIq
	Ehtu/GaawCgxC8nmWQjds5B0z0LSvYCRZRWjRnFqUVlqka6RpV5SUWZ6RkluYmaOrqGhkV5ua
	nFxYnpqTmJSsV5yfu4mRmAs1jMwMO5g/PfF9xCjJAeTkijvnSWrIoT4kvJTKjMSizPii0pzUo
	sPMcpwcChJ8Gbzro4QEixKTU+tSMvMASYFmLQEB4+SCG8lD1Cat7ggMbc4Mx0idYpRUUqcVxi
	kTwAkkVGaB9cGS0SXGGWlhHkZGRgYhHgKUotyM0tQ5V8xinMwKgnzZoFM4cnMK4Gb/gpoMRPQ
	4pseK0EWlyQipKQaGKvlLvNfevRqznZp45+qixRv/tT8dCzz5bQFHB/f/WhfZmpnOjHh2wMm/
	R8r4rrXLalrDvlZ+MS8tIHTY96P4o8P/NUs///5tuZArWFc2uzKa0fTGZTWNCj7mb8ui3r+Jo
	WjR+Dwd80eCbsCZrlLFQ4JXy+8vjG5K6a7XS/ZJ45TY9lldw/dWCWW4oxEQy3mouJEAIS5uWM
	/AwAA
X-Env-Sender: Javier.Viguera@digi.com
X-Msg-Ref: server-14.tower-29.messagelabs.com!1487605292!51942681!2
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.2.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 2029 invoked from network); 20 Feb 2017 15:41:33 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-14.tower-29.messagelabs.com with SMTP;
	20 Feb 2017 15:41:33 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Mon, 20 Feb 2017 09:41:30 -0600
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH03.digi.com
	(10.10.8.197) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Mon, 20 Feb 2017 09:41:30 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0319.002;
	Mon, 20 Feb 2017 16:41:27 +0100
From: "Viguera, Javier" <Javier.Viguera@digi.com>
To: Andrea Adami <andrea.adami@gmail.com>
Thread-Topic: [yocto] Dependence from image type to image recipe
Thread-Index: AdKLdoT08Tiv+BbnRNSVaNRRCilUawACQ6cAAAOU9YA=
Date: Mon, 20 Feb 2017 15:41:26 +0000
Message-ID: <DA8287CC96892A4EB4FCF4FB3FBDA1AB01438ABE@dor-sms-xch01.digi.com>
References: <DA8287CC96892A4EB4FCF4FB3FBDA1AB014389D8@dor-sms-xch01.digi.com>
	<CAAQYJAv+Sj-f7KhTnMPUmvObkw91piX+FUGtFL4Qvt-byzO3Fg@mail.gmail.com>
In-Reply-To: <CAAQYJAv+Sj-f7KhTnMPUmvObkw91piX+FUGtFL4Qvt-byzO3Fg@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.55]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dependence from image type to image recipe
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
X-List-Received-Date: Mon, 20 Feb 2017 15:41:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQW5kcmVhLA0KDQpPbiAyMC8wMi8xNyAxNTo0NSwgQW5kcmVhIEFkYW1pIHdyb3RlOg0K
PiANCj4gSGVsbG8sDQo+IEkgdGhpbmsgeW91IGhhdmUganVzdCB0byBhZGFwdCB0byB0aGUgY2hh
bmdlcyBpbiBvZS1jb3JlIFsxXQ0KPiANCj4gICAgICAtcmVjb3ZlcnktaW5pdHJhbWZzOmRvX3Jv
b3RmcyBcDQo+ICAgICAgK3JlY292ZXJ5LWluaXRyYW1mczpkb19pbWFnZV9jb21wbGV0ZSBcDQo+
IA0KPiBDaGVlcnMNCj4gQW5kcmVhDQo+IA0KPiANCj4gWzFdIGh0dHA6Ly9jZ2l0Lm9wZW5lbWJl
ZGRlZC5vcmcvb3BlbmVtYmVkZGVkLWNvcmUvY29tbWl0Lz9pZD01OWE1ZjU5NmNhMjliMWViODI4
MzcwNmUzYzYwZmJiMzlmOWMyYzIzDQoNClRoYXQgd2FzIGluZGVlZCBuZWVkZWQsIGJ1dCBub3Qg
ZW5vdWdoIGluIG15IGNhc2UuIEJ1dCBub3cgSSBrbm93IHdoeS4NCg0KU2VlbXMgdGhhdCB0aGUg
bmV3IGNvZGUgdG8gZ2VuZXJhdGUgaW1hZ2VzLCBkb2VzIHNwbGl0IElNQUdFX0ZTVFlQRVMgaW4g
YSBiYXNldHlwZSBhbmQgdGhlbiBjb3ZlcnNpb25zLg0KDQpTbyBmb3IgZGVwZW5kZW5jZXMgdGhl
IGNvZGUgaXMgbG9va2luZyBmb3IgSU1BR0VfREVQRU5EU19yZWNvdmVyeSAod2l0aG91dCBcLnVi
aWZzKSwgYmVjYXVzZSBpdCB0aGlua3MgdGhlIGJhc2V0eXBlIGlzICdyZWNvdmVyeScgd2hpbGUg
SSB3YXMgY29kaW5nIHRoZSBkZXBlbmRlbmNlcyBpbiBJTUFHRV9ERVBFTkRTX3JlY292ZXJ5LnVi
aWZzLg0KDQpSZW5hbWluZyBteSBpbWFnZSB0eXBlIHRvIHJlY292ZXJ5X3ViaWZzIGFuZCBjaGFu
Z2luZyB0aGUgZGVwZW5kZW5jZSB0byAnZG9faW1hZ2VfY29tcGxldGUnIGFzIHlvdSBzdWdnZXN0
ZWQgZml4ZXMgdGhlIHByb2JsZW0uDQoNClRoYW5rcyBmb3IgeW91ciBoZWxwLg0KDQpKYXZpZXIg
VmlndWVyYQ0K

