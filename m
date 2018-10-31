Return-Path: <erik.hoogeveen@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8606E00BC8; Thu,  1 Nov 2018 04:32:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.hoogeveen[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.70.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 32452 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Nov 2018 04:32:54 PDT
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092070051.outbound.protection.outlook.com [40.92.70.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62290E00B23
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 04:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=NEIa40tTFxHM6jzNG1M/CKYAkV2fmEUtgfobWnqOZZc=;
	b=SNYaTmiITZrCaqdAJMB1725sAI/W9aqc1tIWkGRRR5MfwmXjpCtNKGquVonC6ggggfi++D9rzYX5JgZsU/KIHvhqPBsEeCmZXTBO6wbNDsdHGH6V01EXSkbPg/IYlLZ/ZbH/R4k8k+m2nbrn+kyEldMEHyFeDTYF3QEcv8XWSKnxheT6klO7gAhfmHCjIpFz9mAL5QInO7eBRgKqobYf//Fx53hEKrZSLhUA2y0zor12vKqn7HYtZAdgj2MyHEnBM9ybgtZFRjIYrk/PscxdXGh9d1Q7YPmGWToUlz66vwcmeVrjPkK9ilg427NUNdDagiHVkQkc1yRcSKbn0vrbpw==
Received: from DB5EUR03FT044.eop-EUR03.prod.protection.outlook.com
	(10.152.20.56) by DB5EUR03HT157.eop-EUR03.prod.protection.outlook.com
	(10.152.21.103) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1294.14;
	Wed, 31 Oct 2018 12:55:27 +0000
Received: from DB6PR0901MB1589.eurprd09.prod.outlook.com (10.152.20.57) by
	DB5EUR03FT044.mail.protection.outlook.com (10.152.21.167) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1294.14 via Frontend Transport; Wed, 31 Oct 2018 12:55:27 +0000
Received: from DB6PR0901MB1589.eurprd09.prod.outlook.com
	([fe80::b46a:24a6:f158:34d]) by
	DB6PR0901MB1589.eurprd09.prod.outlook.com
	([fe80::b46a:24a6:f158:34d%9]) with mapi id 15.20.1273.027;
	Wed, 31 Oct 2018 12:55:27 +0000
From: Erik Hoogeveen <erik.hoogeveen@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Where to look when literally nothing happens?
Thread-Index: AQHUcRj+YROynvwsG0eoeWFjc2I/WA==
Date: Wed, 31 Oct 2018 12:55:26 +0000
Message-ID: <E4920534-5A63-4F4D-A2AD-FD31D32139CC@outlook.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:87E5D0D54BBE35BB13BA4C2B45AF40F6BE20B18D442486230C69A9632D0A8691;
	UpperCasedChecksum:F40C5B61B1D5645391E00176DD8586DADE9A1A504B08A61F35CD75C073268537;
	SizeAsReceived:6834; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [uBLOSMe6+uyPQF1IB+Eppc98unDnFCug]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT157;
	6:HeUaCsXjVKBgEdRVdAXIIcwP8HYuQw6vqkfxNcfm6HOdvjLJa1cxhIUfDvGx81UXU6PhzThtSWAdhlZAY9BDX9to97+PTilZv+8lCAIHUZbQd3XiHk1J2w3w4cqz3MNoScTpAleFnPlWfCWmlVmhRZDkQ7vlNNqdVJvfFk+cLE4vYu8kD2vtncz2d7TWoDJXN0tM2lyg/lGUFbVOTTtjjtYkGKPS0Z/kXuIlqyREcPQ3XGDNpCBkcpYgHvk5g/EsoETHY01sM2JDiLPOeO/jHvLFYwmDXWTHH2e/K/+BkywK9P2eFwUw7UaMH60S4oafSJ3bXbfhafLaQCuhCHiFa1OHIN2SGfJVgNjDgTJkGj/I/dw9quNfsfa3zuSG8Y6js9e4whGRVlZyM2gRaC9cp4UecB284oDRW5OAIk+UxkU5WijO1maotLHBp24lQseyubTzLqOoghjuHBYugtkrCA==;
	5:d6QyxfUpEnqgbizt2LJlAQ+CnALuHmRVuV87SaGlZCq8kTuUMVPhaurcpo5Y+V5R3gE4KzqvlMuT8jOdsR1GKOS6/uTu5SxLUJ+wC9p4dEWGZzrZxRVN4+M7m3rORSNMjz5qbp8o+W0DslIzyjp4FS5xsKrri+fdMTdJmuqqjEg=;
	7:0fTkA6XWWUy8ti7c879g/C8T+keCjLLnuq+FJmQrvsamVZl9dEvS5hUpAUcrsgY2O4nM3VRnwbur+nnB1ERl4NkutCZ6eiF8+/ik8gO1xrhnR2U4NUjFKpH7DkpM4tFSu7urn+8bdNkqVXtOwX62PQ==
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:DB5EUR03HT157; 
x-ms-traffictypediagnostic: DB5EUR03HT157:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:DB5EUR03HT157; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT157; 
x-microsoft-antispam-message-info: /c8FxzIeI5Dm13TEjaxITf+F6adbj4OdOLOrHyU6NtOBMn5VQWA9jAlA73Ef8GHx
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-Network-Message-Id: 56df91f9-6344-4131-5c58-08d63f302163
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2018 12:55:26.9843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT157
Subject: Where to look when literally nothing happens?
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
X-List-Received-Date: Thu, 01 Nov 2018 11:32:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A1436C9395625546A209C7196B2C32EF@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCknigJltIHJhdGhlciBuZXcgdG8gZW1iZWRkZWQgc29mdHdhcmUgYW5kIFlvY3Rv
LiBJIGhvcGUgdGhpcyBpcyB0aGUgcmlnaHQgcGxhY2UgdG8gYXNrLiBJZiBub3QgSeKAmWQgYXBw
cmVjaWF0ZSBpdCBpZiBzb21lb25lIGNvdWxkIHBvaW50IG1lIHRoZSByaWdodCB3YXkgdG8gZG8g
c28uDQoNCknigJltIHRyeWluZyB0byBtYWtlIGEgWW9jdG8gYnVpbGQgZm9yIGEgcmFzcGJlcnJ5
IHBpIDMuIEnigJl2ZSBnb3QgaXQgYm9vdGluZyBhbmQgZG9pbmcgdGhpbmdzIG9uIGEgcmVndWxh
ciBwbGFpbiB2YW5pbGxhIFJhc3BiZXJyeSBwaSAzIGJvYXJkLiBJdCBib290cyBhbmQgb3ZlciBz
ZXJpYWwgY29uc29sZSBJIGNhbiBsb2cgaW4gYW5kIGRvIHRoaW5ncy4NCkJ1dCB0aGUgdWx0aW1h
dGUgdGFyZ2V0IGlzIHRvIHJ1biB0aGlzIGltYWdlIG9uIG15IG93biBib2FyZCB3aGljaCBpcyBi
dWlsdCBhcm91bmQgYSBSYXNwYmVycnkgUGkgQ29tcHV0ZSBNb2R1bGUgMyBMaXRlLiBTaW5jZSBy
ZWd1bGFyIFJhc3BiaWFuICh3aGF04oCZIEnigJl2ZSB1c2VkIHNvIGZhcikgd29ya3MgZmluZSBv
biBib3RoIGJvYXJkcyB3aXRob3V0IG1vZGlmaWNhdGlvbiBJIGFzc3VtZWQgdGhhdCB0aGlzIHdv
dWxkIGJlIHRoZSBjYXNlIGFzIHdlbGwgd2l0aCB0aGlzIGltYWdlIEkgbWFkZSBteXNlbGYuIEJ1
dCBpdCB0dXJucyBvdXQgSSB3YXMgd3JvbmcuDQoNCldoZW4gSSB0YWtlIHRoZSBpbWFnZSBmcm9t
IHRoZSBidWlsZCBhbmQgc3RpY2sgaXQgaW4gbXkgY29tcHV0ZSBtb2R1bGUgYm9hcmQsIGxpdGVy
YWxseSBub3RoaW5nIGhhcHBlbnMuIFRoZSBib290IHNlcXVlbmNlIGRvZXNu4oCZdCBzZWVtIHRv
IGV2ZW4gYmVnaW4sIEkgZ2V0IG5vdGhpbmcgb24gdGhlIHNlcmlhbCBjb25zb2xlLCBhbmQgbm9u
ZSBvZiB0aGUgcGVyaXBoZXJhbHMgbGlrZSB0aGUgZXRoZXJuZXQgZXZlciBjb21lIHRvIGxpZmUg
ZWl0aGVyLg0KDQpBbmQgc2luY2Ugbm90aGluZyBoYXBwZW5zIEkgcmVhbGx5IGhhdmUgbm8gaWRl
YSB3aGVyZSB0byBsb29rIGZvciBhIHNvbHV0aW9uLiBJ4oCZbSBndWVzc2luZyB0aGlzIGlzIGEg
Yml0IG9mIGEgbm9vYiBpc3N1ZT8gSXQgd291bGQgYmUgZ3JlYXQgaWYgc29tZW9uZSBjb3VsZCBw
b2ludCBtZSBpbiBhIGRpcmVjdGlvbiB0byBsb29rIGF0Lg0KDQpLaW5kIHJlZ2FyZHMsDQpFcmlr
IEhvb2dldmVlbi4=

