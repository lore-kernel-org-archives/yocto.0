Return-Path: <zhenlw@msn.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49F94E00D03; Mon, 13 Nov 2017 03:19:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.92.255.102 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zhenlw[at]msn.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 25317 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Nov 2017 03:19:06 PST
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-oln040092255102.outbound.protection.outlook.com
	[40.92.255.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1355E00AF9
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 03:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=9dTWSMXnC/ZHnSGONimJD0MWAIOiCLNDrnBIWzEEmwo=;
	b=SPWNRH1oCwyoktDbiomJaZbKE33euNIiMtpVsHzTFwZLwLzMnpUGCqpcDNECkQbGZoPXScj/aIb0KrN/SYCPs0gKM4jq/2VA/QD0tReTkEnpFIilIoSDuyeUU+ZDsOp/0xzmO9v5ZGrmsfdwmmpsgnKtLST44ZjfXfaiEiJv0Nf/tGbOkKECd91sNMAe47YHc6CIyH5Yv3ZfdOzScmu1KhrvWtiWvzd61LSO+Ge0ib0xv9EGM1TZoVB23GHA9wK+Lt9VxXV+GQTgn4jlJpcJ24YR//d3gJj/QRW9FW5zAAd8rlUcB0sevb8NGWlclh4bwhonoQOihQqZK+Ysggfw2g==
Received: from SG2APC01FT025.eop-APC01.prod.protection.outlook.com
	(10.152.250.53) by SG2APC01HT056.eop-APC01.prod.protection.outlook.com
	(10.152.251.220) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.178.5;
	Mon, 13 Nov 2017 01:44:10 +0000
Received: from KL1PR04MB0982.apcprd04.prod.outlook.com (10.152.250.57) by
	SG2APC01FT025.mail.protection.outlook.com (10.152.250.187) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.178.5 via
	Frontend Transport; Mon, 13 Nov 2017 01:44:10 +0000
Received: from KL1PR04MB0982.apcprd04.prod.outlook.com
	([fe80::e8d2:3d4d:2df4:4b4b]) by
	KL1PR04MB0982.apcprd04.prod.outlook.com
	([fe80::e8d2:3d4d:2df4:4b4b%13]) with mapi id 15.20.0218.015;
	Mon, 13 Nov 2017 01:44:10 +0000
From: Zhen LiWei <zhenlw@msn.com>
To: ChenQi <Qi.Chen@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] use native (cross) toolchain instead of a populated
	nativesdk (cross-canadian) toolchain
Thread-Index: AQHTV9pnzH17ANxPqUOFgosuPP1aOqMLWsuAgAYyzvs=
Date: Mon, 13 Nov 2017 01:44:09 +0000
Message-ID: <KL1PR04MB0982E76D636525E2692A7AF2C72B0@KL1PR04MB0982.apcprd04.prod.outlook.com>
References: <PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB1001.apcprd04.prod.outlook.com>,
	<69b58a42-f0dd-e6a0-d13a-0ae5fc3ee6ab@windriver.com>
In-Reply-To: <69b58a42-f0dd-e6a0-d13a-0ae5fc3ee6ab@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: windriver.com; dkim=none (message not signed)
	header.d=none; windriver.com; dmarc=none action=none header.from=msn.com;
x-incomingtopheadermarker: OriginalChecksum:8B90357BC32464E6AB734231BEA982A12DB292097B734F54DF78A8D44E0A504A;
	UpperCasedChecksum:3EB5DFD0D0FF254C5618FF7FDBCF638EC128D0F3AD79306CC3CC7DF3D3D4BAB9;
	SizeAsReceived:7309; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [eMnqfRqqkOqjtIB8SLaOQJy3TdZtkR9C]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SG2APC01HT056;
	6:8qtInu0ZR+BLLhXdxaCKAp5po5AfWe7h7jHUH+kr2r125dyUBNFwZuJ1GjWdCs2fnHWFdPAJpxkVfg1F++aWdTwiyBhDqxujblG8UAArDdhIh0SgWg1KxJj9pzNwNX20y1o7zXcN5AEJHpM8+sy5jcX9vJRvR5f0QadK4MAX5gCzEXUqepUglD2lIPjvlzv4Ww/B9CgHwomF4/TJVKhJZY0f8N7XVlB91XwhSqccpSBZk6Ll+SSKaki0lYcamulSEiJDcb05gUlhypGZcYDxnUCEsKajCidghR8yzpAlf4huqxX3IPhBfeJiuS6c4EKD946TNLN+u8SPYk4URO+ElAqZe/AR9D2Ss90j+gpY+S0=;
	5:XH16DisFlFQTkJjuvo+Q8vasLrT8LSB0DrfKqfQ09s0vKXy2vpNFNxo+5Z0DK4iAX58PdE5INyXX3UGt95vnHtdAATzcN26lO34BMQAilVf6ui5Af1qR2mdfZ6FYGw2cuY16N+Yd085sTkC3Dz3Ccmr+UYhYr7bxJEaHsnssdtM=;
	24:rL2zt2AXlOnNslrDtvY9WIdxkfOkdicob7QCVmV+FJRQTyUptqwgRQhfIGNE6Z/xwWSqq0uHcWomY4ZPltrTQxedUUmJCi054azXVpwGTBg=;
	7:LC+tvBmPuSt8VrOXT61RE9Pwam/BLUMBUMEksH/JhohO0epyOgAOOGKJPMssxffAGa5NpeivDSpZT3iscbJb6YQSDiDJ3UviM+8+qEwa3jJs+NyOxF14+wccWk9HvMxI9yl4cdiy+htpMcd5xc3Oj4yageMWozYSUnxUssn26lVhaYGwJYha1Y3cdes8hM6Hq46KYl6hyHnh/Re1l5qZLOg2sBE75cy93MOxRn//UNBxb6wjNV9Sh+z8WegMj73Z
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 94413fa8-5db9-4637-c812-08d52a380923
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:SG2APC01HT056; 
x-ms-traffictypediagnostic: SG2APC01HT056:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:SG2APC01HT056; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:SG2APC01HT056; 
x-forefront-prvs: 0490BBA1F0
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:SG2APC01HT056;
	H:KL1PR04MB0982.apcprd04.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94413fa8-5db9-4637-c812-08d52a380923
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2017 01:44:09.9855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT056
Subject: =?UTF-8?B?562U5aSNOiB1c2UgbmF0aXZlIChjcm9zcykgdG9vbGNoYWluIGluc3RlYWQgb2YgYSBwb3B1bGF0ZWQgbmF0aXZlc2RrIChjcm9zcy1jYW5hZGlhbikgdG9vbGNoYWlu?=
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
X-List-Received-Date: Mon, 13 Nov 2017 11:19:09 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_KL1PR04MB0982E76D636525E2692A7AF2C72B0KL1PR04MB0982apcp_"

--_000_KL1PR04MB0982E76D636525E2692A7AF2C72B0KL1PR04MB0982apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

VGhhbmsgeW91LiBUaGUgU0RLIGluc3RhbGxpbmcgaG9zdCBiZWluZyBkaWZmZXJlbnQgaXMgYWN0
dWFsbHkgbm90IG91ciBjb25jZXJuOiB3ZSBoYXZlIHNvbWUgc3RyaWN0IGRlZmluaXRpb24gb2Yg
d2hhdCBob3N0IGRpc3RybyB3ZSBzaG91bGQgdXNlIHdoZW4gdXNpbmcgdGhlIFNESy4NCg0KQW5k
IGJhc2ljYWxseSB0aGUgbmF0aXZlIHRvb2xjaGFpbiB3b3JrcyByYXRoZXIgZmluZS4gQW5kIEkg
Y2FuIChJIHRoaW5rKSB1c2UgaXQgd2l0aCBzb21lIGNvbmZpZGVuY2UuDQoNClRoZSBvdGhlciBn
b2FsIG9mIG1pbmUtLS11c2luZyB0aGUgeDg2XzY0X2xpbnV4IHN5c3Jvb3QgdG8gZGV2ZWxvcCB4
ODYgbmF0aXZlIHByb2dyYW1zLS0taG93ZXZlciwgaXMgZGlmZmljdWx0LiBGb3IgMSkgUXVpdGUg
c29tZSBwYXRjaGVzIG5lZWRlZCBmb3IgYXV0b3Rvb2xzLCBwa2ctY29uZmlnLCBldGOhrS4gMikg
YmFzaWMgbGlicmFyaWVzIGxpa2Ugb3BlbnNzbCBuZWVkIHRvIGNvLWV4aXN0IHdpdGggdGhlIGhv
c3QtZGlzdHJvLW5hdGl2ZSBvbmVzLCBzbyB3aGVuIGJ1aWxkaW5nIGJpbmFyaWVzIHVwb24gdGhl
bSBJIG5lZWQgdG8gYmUgdmVyeSBjYXJlZnVsIChseSBtYW5pcHVsYXRpbmcgdGhlIHBrZy1jb25m
aWcsIHh4eC1jb25maWcsIGFuZCBycGF0aGVzKS4gMykgdmFyaW91cyBpbi1ob3VzZSBhbmQgM3Jk
cGFydHkgYmluYXJpZXMgbmVlZCB0byBiZSBidWlsdCBvbiB0aGlzIGNvbXBsZXggc2V0dXAsIHdo
aWNoIHVzZSBkaWZmZXJlbnQgY29uZmlnL2J1aWxkIGluZnJhc3RydWN0dXJlcy4NCg0KU28gYmFz
aWNhbGx5IHRoaXMgaXMgbm90IGhvdyB0aGUgbmF0aXZlIHN5c3Jvb3QgaXMgaW50ZW5kZWQgdG8g
YmUgdXNlZCAoYnV0IGluIHRoZSBCQiBlbnYgaXQgaXMgY29udHJvbGVkIHZlcnkgd2VsbDogZXZl
cnkgbmF0aXZlIHBhY2thZ2UgY2FuIGJlIGJ1aWx0IGluIGl0KS4gU28gSSBuZWVkIHRvIGNvbnRp
bnVlIHRvIGltcHJvdmUgbXkgcHJvY2VkdXJlLCBvciBqdXN0IGdpdmUgaXQgdXAgYW5kIHVzZSBh
IHFlbXUgaW1hZ2UgaW5zdGVhZC4NCg0KTGl3ZWkNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCreivP7IyzogQ2hlblFpIDxRaS5DaGVuQHdpbmRyaXZlci5jb20+DQq3osvNyrG8
5DogVGh1cnNkYXksIE5vdmVtYmVyIDksIDIwMTcgMTA6NDg6NDEgQU0NCsrVvP7IyzogWmhlbiBM
aVdlaTsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K1vfM4jogUmU6IFt5b2N0b10gdXNlIG5hdGl2
ZSAoY3Jvc3MpIHRvb2xjaGFpbiBpbnN0ZWFkIG9mIGEgcG9wdWxhdGVkIG5hdGl2ZXNkayAoY3Jv
c3MtY2FuYWRpYW4pIHRvb2xjaGFpbg0KDQpJZiBJIHVuZGVyc3RhbmQgaXQgY29ycmVjdGx5LCB5
b3UgYXJlIHRhbGtpbmcgYWJvdXQgdXNpbmcgbmF0aXZlIGNvbXBvbmVudHMgZGlyZWN0bHkgZm9y
IFNESy4NCklmIHlvdSBhcmUgdXNpbmcgYWxsIHRoZSBzYW1lIG1hY2hpbmUgd2l0aCB0aGUgc2Ft
ZSBPUywgeW91IGNvdWxkIHVzZSBuYXRpdmUgY29tcG9uZW50cyBkaXJlY3RseSwgbWF5YmUgd2l0
aCBhIGxpdHRsZSBtb2RpZmljYXRpb24uDQpCdXQgaW4gZmFjdCwgdGhlIGhvc3Qgd2hlcmUgU0RL
IGlzIGluc3RhbGxlZCBtaWdodCBiZSBkaWZmZXJlbnQgZnJvbSB0aGUgaG9zdCB3aGVyZSBTREsg
aXMgYnVpbHQuDQpDaGVjayB0aGUgU0RLTUFDSElORSB2YXJpYWJsZS4NCg0KQmVzdCBSZWdhcmRz
LA0KQ2hlbiBRaQ0KDQpPbiAxMS8wNy8yMDE3IDExOjA5IFBNLCBaaGVuIExpV2VpIHdyb3RlOg0K
DQpIaSwgSSBhbSB3b3JraW5nIG9uIGEgeW9jdG8gMi4wIGJhc2VkIGRpc3RybyBhbmQgd2UgdXN1
YWxseSBwb3B1bGF0ZV9zZGsgYW5kIHVzZSB0aGUgdG9vbGNoYWluIGluY2x1ZGVkIGluIFNESy4N
Cg0KDQoNCkJ1dCB3ZSBhbHNvIGxpa2UgdG8gY2hlY2sgdGhlIFNESyBpbnRvIGEgU1ZOIHJlcG8s
IGFuZCBjaGVja291dCBpdCBhbnl3aGVyZSwgYW5kIHVzZSBpdCBhd2F5IHJpZ2h0IHdoZXJlIGl0
IGlzIGNoZWNrZWQgb3V0LiBBbmQgc2luY2UgdGhlIG5hdGl2ZXNkayBiaW5hcmllcyBhcmUgYmFz
ZWQgb24gYSBkaWZmZXJlbnQgZ2xpYmMgdGhhbiBuYXRpdmUsIGFuZCBoYXZlIHRoZSChsGR5bmFt
aWMgbG9hZGVyobEgcGF0aCBoYXJkY29kZWQgaW4gdGhlbSwgSSBoYXZlIHRvIHBhdGNoIHRoZSB0
b29sY2hhaW4gYmluYXJpZXOhryAuaW50ZXJwIHNlY2lvbiB0byBwb2ludCB0byBhIGNvbW1vbiBw
bGFjZSwgYW5kIHVwZGF0ZSB0aGUgbG9hZGVyIGludG8gdGhhdCBjb21tb24gcGxhY2UgYXV0b21h
dGljYWxseSBpbiBzb21lIHdheS4gT3RoZXIgdGhhbiB0aGlzLCB0aGluZ3Mgd29yayB2ZXJ5IGdv
b2QgZm9yIHVzLg0KDQoNCg0KVGhlbiBJIHdhcyB0aGlua2luZzogaXMgaXQgYSBnb29kIHByYWN0
aWNlLCB0byB1c2UgdGhlIG5hdGl2ZS9jcm9zcyB0b29sY2hhaW4gZGlyZWN0bHkgZnJvbSB0aGUg
dG1wL3N5c3Jvb3RzL3g4Nl82NC1uYXRpdmUgZm9sZGVyLiBJIHRyaWVkIGFuZCBzdWNjZWVkZWQs
IGJ5IGp1c3QgbW92aW5nIHRoZSBzeXNyb290IHRvIHdoZXJlIHRoZSBjaGVja2VkLW91dCBuYXRp
dmVzZGsgdG9vbGNoYWluIHdhcy4NCg0KDQoNCkFuIGV4dHJhIGJvbnVzIGFib3V0IHRoaXMgaXMg
dGhhdCB3ZSBnb3QgYSBtb3JlIHBvcHVsYXRlZCBzeXNyb290IGZvciBuYXRpdmUgcGxhdGZvcm0g
dG9vLCBmb3IgZXhhbXBsZSBhIG9wZW5zc2wgZGV2IHBhY2thZ2UgYXQgdGhlIHNhbWUgdmVyc2lv
biBhcyB0aGF0IG9uIHRhcmdldCwgdGhhdCB3ZSBjYW4gYWN0dWFsbHkgdXNlIHRvIG1ha2UgdGhl
IG5hdGl2ZSBwbGF0Zm9ybSBhIGNsb3Nlci10by10YXJnZXQgZGV2IGVudiBmb3Igc29tZSChsHdv
cmtiZW5jaKGxIGJ1aWxkLg0KDQoNCg0KSG93ZXZlciBJoa9tIHN0aWxsIHdvbmRlcmluZzogaXMg
dGhlcmUgYW55IHRoaW5nIG5lZ2F0aXZlIGFib3V0IHRoaXMgc3R5bGU/IE9uZSB0aGluZyBrbm93
biBpcyB0aGF0IHRoZSBTREstdXNpbmcgaG9zdCBuZWVkIHRvIGJlIHNpbWlsYXIgdG8gdGhlIFNE
Sy1idWlsZGluZyBob3N0LCBidXQgdGhhdCBpcyBub3QgYW4gaXNzdWUgZm9yIHVzLiBCdXQgYW55
dGhpbmcgZWxzZSwgZ3V5cz8NCg0KDQoNCg==

--_000_KL1PR04MB0982E76D636525E2692A7AF2C72B0KL1PR04MB0982apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
</head>
<body bgcolor=3D"#FFFFFF" text=3D"#000000">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;
	color:windowtext;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you. The SDK installing h=
ost being different is actually not our concern: we have some strict defini=
tion of what host distro we should use when using the SDK.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And basically the native toolch=
ain works rather fine. And I can (I think) use it with some confidence.</sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The other goal of mine---using =
the x86_64_linux sysroot to develop x86 native programs---however, is diffi=
cult. For 1) Quite some patches needed for autotools, pkg-config, etc=A1=AD=
. 2) basic libraries like openssl need to
 co-exist with the host-distro-native ones, so when building binaries upon =
them I need to be very careful (ly manipulating the pkg-config, xxx-config,=
 and rpathes). 3) various in-house and 3rdparty binaries need to be built o=
n this complex setup, which use
 different config/build infrastructures.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So basically this is not how th=
e native sysroot is intended to be used (but in the BB env it is controled =
very well: every native package can be built in it). So I need to continue =
to improve my procedure, or just give
 it up and use a qemu image instead.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Liwei</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:SimSun"><o:p>&nbsp;</o:p></span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> ChenQi =
&lt;Qi.Chen@windriver.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> Thursday, November 9, 2017 10:48:41 AM<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Zhen LiWei; yocto@yoctoproject.org<br>
<b>=D6=F7=CC=E2:</b> Re: [yocto] use native (cross) toolchain instead of a =
populated nativesdk (cross-canadian) toolchain</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">If I understand it correctly, you are talkin=
g about using native components directly for SDK.<br>
If you are using all the same machine with the same OS, you could use nativ=
e components directly, maybe with a little modification.<br>
But in fact, the host where SDK is installed might be different from the ho=
st where SDK is built.<br>
Check the SDKMACHINE variable.<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
On 11/07/2017 11:09 PM, Zhen LiWei wrote:<br>
</div>
<blockquote cite=3D"mid:PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB100=
1.apcprd04.prod.outlook.com" type=3D"cite">
<div dir=3D"auto">
<div class=3D"gmail_extra" dir=3D"auto">
<div class=3D"gmail_quote">
<p style=3D"font-family: sans-serif; font-size: 18.048px;">Hi, I am working=
 on a yocto 2.0 based distro and we usually populate_sdk and use the toolch=
ain included in SDK.</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">&nbsp;</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">But we also like=
 to check the SDK into a SVN repo, and checkout it anywhere, and use it awa=
y right where it is checked out. And since the nativesdk binaries are based=
 on a different glibc than native,
 and have the =A1=B0dynamic loader=A1=B1 path hardcoded in them, I have to =
patch the toolchain binaries=A1=AF .interp secion to point to a common plac=
e, and update the loader into that common place automatically in some way. =
Other than this, things work very good for us.</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">&nbsp;</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">Then I was think=
ing: is it a good practice, to use the native/cross toolchain directly from=
 the tmp/sysroots/x86_64-native folder. I tried and succeeded, by just movi=
ng the sysroot to where the checked-out
 nativesdk toolchain was.</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">&nbsp;</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">An extra bonus a=
bout this is that we got a more populated sysroot for native platform too, =
for example a openssl dev package at the same version as that on target, th=
at we can actually use to make the
 native platform a closer-to-target dev env for some =A1=B0workbench=A1=B1 =
build.<span style=3D"font-size:12pt"></span></p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">&nbsp;</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">However I=A1=AFm=
 still wondering: is there any thing negative about this style? One thing k=
nown is that the SDK-using host need to be similar to the SDK-building host=
, but that is not an issue for us. But
 anything else, guys?</p>
</div>
</div>
</div>
<br>
<fieldset class=3D"mimeAttachmentHeader"></fieldset> <br>
</blockquote>
<p><br>
</p>
</div>
</body>
</html>

--_000_KL1PR04MB0982E76D636525E2692A7AF2C72B0KL1PR04MB0982apcp_--
