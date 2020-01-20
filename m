Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.10308.1579526638144149748
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 05:23:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector2 header.b=OMyG9h1M;
 spf=fail (domain: nxp.com, ip: 140.211.169.56, mailfrom: heinz.wrobel@nxp.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A52E5E0142F; Mon, 20 Jan 2020 05:23:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.13.50 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.7 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130050.outbound.protection.outlook.com [40.107.13.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3D8E00CAE
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 05:23:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jrZ6+L5FWjgCz4bJ8BqMyohGAI+vQRExaDL+mqlysr86rXnaz+gfdC1DAzy0t7cM/O0/ibDWDunMtDtonJUw4mtm2hUZ/iCAJOlAHH6kpvE8i/KDQWURhPauHcHWkTY2UiviZfAajawetx0ATP4RLw8ra2a1Y081RAG7pVmuZvn9YTbco6EUaogDhtwRQ6DH6AbFkOfo+VnMKeDm/WK2/QUu1H/Dme2xIniEN66Ly9bs3qql1KAS1sycwSf1vQ5hbccPWWUSl3taml045Vj/RTkjuB+m3YIiN2MhPvbameJsrT4nXDI/7sz3BnMjpCPP/IcBCU5j7ys4/oyyNOuDZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UXvfz2zZOx/aNIXVadWl7s+lQrySVTF4bXqbS8H3M2A=;
 b=mIXa89rOZiCOfAtB1hcmPrzY6Pd9+wYqdRNbIDx3TJdNl/3jyalLj4JfXJnhrQ34IHx7xioLyMfbbi3z9kPUMpUJlD+aCsZ7D7kuJBef24U2HOICo530RXVgae/yJptDn8LOgp9EoZApb05QL5JNzNgaAj13miyqtI/UWYjc3dJn5jxEz+M9y/B4Bz7eDkMPIahE9pPC1EEPRjX68SC4/FYDxKQVglAJwPqjdEFtGHa+z0xSru6bwM/uHW2CzdVcWlk6NCassF3Clc+iAKjCXtvtMzxExjH7SapqBB1FeJpQHXZfhYfJmc1UEP4E6QfPPyDpWnLPzxOYnlPuL3xAMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UXvfz2zZOx/aNIXVadWl7s+lQrySVTF4bXqbS8H3M2A=;
 b=OMyG9h1MgFlrXxF1D/YUGY5VnRucNKj4wcFfmENojK3S7EbkGaPE925F3wslXDfGbFEt94kgtxIy2aoFNLDXeFeJVhIZSTHEcG4V4qw7Xet2NnvvSVWRAAGLgimBCNKDmhTBnAgMFR2GSmlVN6PApGmLkvPm7QqMsOU+o7ffOik=
Received: from DB6PR0401MB2534.eurprd04.prod.outlook.com (10.169.227.146) by
 DB6PR0401MB2645.eurprd04.prod.outlook.com (10.169.227.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Mon, 20 Jan 2020 13:23:51 +0000
Received: from DB6PR0401MB2534.eurprd04.prod.outlook.com
 ([fe80::e189:1a3c:23b0:2382]) by DB6PR0401MB2534.eurprd04.prod.outlook.com
 ([fe80::e189:1a3c:23b0:2382%3]) with mapi id 15.20.2644.026; Mon, 20 Jan 2020
 13:23:51 +0000
From: "Heinz Wrobel" <Heinz.Wrobel@nxp.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Subject: Re: [EXT] Re: [yocto] Image specific package selection?
Thread-Topic: [EXT] Re: [yocto] Image specific package selection?
Thread-Index: AdXNDQaxhHuAzOwXQEWTwNQ/yNCvXgABJ1+AAADrn/A=
Date: Mon, 20 Jan 2020 13:23:51 +0000
Message-ID: 
 <DB6PR0401MB25349C504F1AB1E98B1B7D8A8C320@DB6PR0401MB2534.eurprd04.prod.outlook.com>
References: 
 <DB6PR0401MB2534EBA50C8851167D8FE1B88C310@DB6PR0401MB2534.eurprd04.prod.outlook.com>
 <20200117083933.lj5nmwosk5epdpwr@jholzmayr.localdomain>
In-Reply-To: <20200117083933.lj5nmwosk5epdpwr@jholzmayr.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=heinz.wrobel@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e4a1dbb8-ef31-4dfc-79c6-08d79dabfd94
x-ms-traffictypediagnostic: DB6PR0401MB2645:
x-microsoft-antispam-prvs: 
 <DB6PR0401MB264505C5D9366A79BB3343FB8C320@DB6PR0401MB2645.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(189003)(199004)(8936002)(76116006)(7696005)(66946007)(8676002)(81156014)(81166006)(64756008)(66476007)(66556008)(66446008)(44832011)(2906002)(6506007)(33656002)(66574012)(52536014)(26005)(5660300002)(186003)(53546011)(9686003)(55016002)(45080400002)(478600001)(316002)(110136005)(966005)(71200400001)(86362001);DIR:OUT;SFP:1101;SCL:1;SRVR:DB6PR0401MB2645;H:DB6PR0401MB2534.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vrJMEGXvHmK4JYzs5CD4oDfvKPX8bdVNqcfX4NGFQLuWmZ0t2UVANxzdvkOdADH1l5WZ4aY9O/uxFz4FDd0l1K2I5Upsr1/mvYetNvvcdKWoj4w6lwDDLMvOZkLZ6wiZkxjooeTjMQi+/85p+M7wRGzrmVQfrJJWrW4i2AXr0BWOLopNdZB7wG//ntETFll52NsHSmnG51vcHhIMdcDEjqtcJtYGaGzL4rq5w/EYmR3cOu905N2Eb6S+8fN4qsrP8sEUHkuKrHq8yfKOaBYr0CeLxG6jxJFWMGPs5V5VX142faR1ydr1dTWSBRVsS5BSTzSpwciKmLxgrtfOp0J8q+eo8KvXR8pRBNg4+qNbSIRLokwbAvnR7RSFhBWDWmeE25w5wHapGgaPm4QhpHVNVmRgwRt3qYpziSDmNEuF76iWYZ8vydLNQyEO1lqBOjYni5Gzr3++Pyvzvp46+9qipHhP0CYzKVoFWaJT4Uta9YUfue3WbT/VCzw7FGlKzUsRwplZwO4qncWHRUQ8eRlLZQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4a1dbb8-ef31-4dfc-79c6-08d79dabfd94
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 13:23:51.4139
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yyNDvn3A5cDy8S/mOzv/6o4QqPS/lIE/vsoKPzBr9SZoybl0JB/L4Ml3wt2AuNeARNDBjGjbdGUhLzGMUtmC3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2645
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Sm9zZWYsDQoNClRoaXMgaXMgcmF0aGVyIGludGVyZXN0aW5nIGFuZCBzZWVtcyB0byB0YXJnZXQg
d2hhdCBJIG5lZWQuDQpUaGUgZG9jcyBhcmUgYSBiaXQgYnJpZWYgaG93ZXZlciBhbmQgSSBhbSBu
b3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhlICJwcm9wZXIiIG1ldGhvZCBvbiB1c2luZyB0aGUgcmVz
dWx0aW5nIGFydGlmYWN0cyBhZnRlciBwbGF5aW5nIHdpdGggdGhlIHRvcGljIGZvciBhIHdoaWxl
LiBDYW4geW91IGhlbHAgYSBiaXQgbW9yZT8NCg0KSXQgYXBwZWFycyB0aGF0IEJCTVVMVElDT05G
SUcgZGVmaW5lcyB3aGljaCBhZGRpdGlvbmFsIG1hY2hpbmVzIHNob3VsZCBiZSBhdmFpbGFibGUg
YmV5b25kIHRoZSAiZGVmYXVsdCIgbWFjaGluZSwgc28gSSBjYW4sIGUuZy4sIHRyZWF0IG15IGRl
ZmF1bHQgY29uZmlnIGFzIG1haW4gY29uZmlndXJhdGlvbiBhbmQgdXNlICJzdWItbWFjaGluZXMi
IHRoYXQgSSBzaWxlbnRseSBkZXBlbmQgb24uDQpJIGFsc28gZ2V0IGhvdyBbbWNkZXBlbmRzXSBw
ZXJtaXRzIHlvdSB0byBoYXZlIHNvbWV3aGF0IGFic3RyYWN0IHRhc2sgYmFzZWQgZGVwZW5kZW5j
aWVzIGJldHdlZW4gc3VjaCBtdWx0aWNvbmZpZyBtYWNoaW5lcywgZS5nLiwgIm1jOmRlZmF1bHQ6
YmV0YW1hY2hpbmU6ZG9faW1hZ2UiIHNpbWlsYXIgdG8gdGhlIFlvY3RvIGRvY3MuIFtTaG91bGRu
J3QgdGhpcyByZWZlciB0byBkb19pbWFnZV9jb21wbGV0ZT8hXQ0KDQpXaGF0IEkgY291bGQgbm90
IGZpZ3VyZSBvdXQgaG93ZXZlciBpcyBob3cgdG8gcHJvcGVybHkgcmVmZXJlbmNlIHRoZSBmaW5h
bCBhcnRpZmFjdHMgdGhhdCBJIGRlcGVuZCBvbiB3aXRob3V0IGhhcmRjb2RpbmcgcGF0aHMuDQpU
aGUgbWNkZXBlbmRzIHN0YXRlcyB3aGF0IGFydGlmYWN0IG5lZWRzIHRvIGdldCBidWlsdCBpbiBh
bm90aGVyIG1hY2hpbmUgYW5kIHRoYXQgd29ya3Mgc3VycHJpc2luZ2x5IHdlbGwsIGJ1dCB0aGF0
IGFydGlmYWN0IGdldHMgcGxhY2VkIGluIHRoZSBvdGhlciBtYWNoaW5lJ3MgVE1QRElSLg0KSG93
IHdvdWxkIEkgdGhlbiBiZSBhYmxlIHRvIHJlZmVyZW5jZSB0aGUgb3RoZXIgdG1wIGRpciB0byBn
ZXQgdG8gdGhhdCBmaWxlIChvciBwYWNrYWdlPykgaW50byBteSBjdXJyZW50IGltYWdlPw0KSWYg
SSBzYXkgIklNQUdFX0lOU1RBTEwgKz0iIGl0IHJlZmVycyB0byBwYWNrYWdlcyBpbiBteSBjdXJy
ZW50IHRtcGRpciwgbm90IHRoZSBvdGhlciBvbmUuICBTYW1lIHRoaW5ncyBmb3IgZG9fZGVwbG95
OiBJZiBJIGhhdmUgZnVuY3Rpb25zIHRoYXQgZGlyZWN0bHkgY29weS9hZGQgdGhlIGZpbGVzIGlu
dG8gbXkgaW1hZ2UsIEkgd291bGQgc3RpbGwgbmVlZCB0byBoYXZlIHRoZSBnZW5lcmljIHBhdGgg
dG8gdGhlIG90aGVyIG1hY2hpbmUncyBkZXBsb3kgZGlyLg0KDQpJIGNhbid0IGJlbGlldmUgdGhh
dCBJIGhhdmUgdG8gc2Vjb25kIGd1ZXNzIGFuZCBoYXJkY29kZSB0aGUgZmlsZSByZWZlcmVuY2Ug
YWNyb3NzIG11bHRpY29uZmlncyBiYXNlZCBvbiBhIHByaW9yaSBrbm93bGVkZ2UgYWJvdXQgdG1w
IGRpciBuYW1lcyBpbiBjb25mL211bHRpY29uZmlnLg0KSWYgIEkgaGFkIHRvIHNoYXJlIGFsbCB0
bXAgZGlycyBmb3IgbXVsdGljb25maWdzIHRvIGJlIGFibGUgdG8gY3Jvc3MtdXNlIHRoZSBmaWxl
cyB0aGVuLCBpdCB3b3VsZCBzb21ld2hhdCBpbnZhbGlkYXRlIHRoZSBnZW5lcmljIG11bHRpY29u
ZmlnIGNvbmNlcHQgYW5kIGxpa2VseSBjYXVzZSBjb25mbGljdHMuDQoNClNvIEkgbXVzdCBiZSBt
aXNzaW5nIHNvbWV0aGluZyBmdW5kYW1lbnRhbCBpbiB0aGUgZG9jcyBvciBiaXRiYWtlIHNvdXJj
ZXMgc29tZXdoZXJlIGV4cGxhaW5pbmcgaG93IHRvIGdldCB0byBhcnRpZmFjdHMgZnJvbSBhbm90
aGVyIG11bHRpY29uZmlnLg0KDQpDYW4geW91IGdpdmUgb3IgcG9pbnQgdG8gYSBzcGVjaWZpYyB3
b3JraW5nIGV4YW1wbGUgaG93IHRvIGNyYWZ0IHN1Y2ggYSBjcm9zcy1tdWx0aWNvbmZpZyBmaWxl
IHBhdGggb3IgcGFja2FnZSByZWZlcmVuY2UgcHJvcGVybHkgaW4gYSByZWNpcGUsIHdpdGhvdXQg
aGFyZGNvZGluZyB0aGluZ3MgdG8gZGVhdGg/DQoNClRoYW5rcywNCg0KSGVpbnoNCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEpvc2VmIEhvbHptYXlyIDxob2x6bWF5ckByc2kt
ZWxla3Ryb3RlY2huaWsuZGU+IA0KU2VudDogRnJpZGF5LCBKYW51YXJ5IDE3LCAyMDIwIDA5OjQw
DQpUbzogSGVpbnogV3JvYmVsIDxoZWluei53cm9iZWxAbnhwLmNvbT4NCkNjOiB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBbRVhUXSBSZTogW3lvY3RvXSBJbWFnZSBzcGVjaWZpYyBw
YWNrYWdlIHNlbGVjdGlvbj8NCg0KQ2F1dGlvbjogRVhUIEVtYWlsDQoNCkhvd2R5IQ0KDQpPbiBG
cmksIEphbiAxNywgMjAyMCBhdCAwODozMjoyNUFNICswMDAwLCBIZWlueiBXcm9iZWwgd3JvdGU6
DQo+IEhpLA0KPg0KPiBJIGhhdmUgYW4gaW1hZ2UgJ2FscGhhJyB3aGljaCBkZXBlbmRzIG9uIGFu
ZCBpbiB0aGUgZW5kIGNvbnRhaW5zIHRoZSByZXN1bHQgb2YgYW4gaW1hZ2UgJ2JldGEnIGFzIGVt
YmVkZGVkIGFyY2hpdmUsIGkuZS4sIEkgbmVlZCB0byBuZXN0IGltYWdlcy4NCj4gQXMgYW4gZXhh
bXBsZSwgdGhpbmsgdGhhdCBhbHBoYSBpcyBhIG1hbnVmYWN0dXJpbmcgaW1hZ2Ugd2hpY2ggaXMg
dXNlZCB0byBpbnN0YWxsIGJldGEgb24gdGhlIHRhcmdldCBtYWNoaW5lcyBwZXJtYW5lbnRseS4N
Cg0KSW1hZ2UtaW5zaWRlLWltYWdlIGlzIGFib3V0IHRoZSBjbGFzc2lzIHVzZWNhc2UgZm9yIG11
bHRpY29uZmlnIGJ1aWxkcy4NCg0KPiBUaGUgcHJvYmxlbSBpcyB0aGF0IGFscGhhIGFuZCBiZXRh
IGRvIHRoaW5ncyBpbiBzdWJzdGFudGlhbGx5IGRpZmZlcmVudCB3YXlzIGFuZCBtdXN0IHVzZSBk
aWZmZXJlbnQgcGFja2FnZXMgZm9yIHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHkgY29taW5nIGZyb20g
ZGlmZmVyZW50IHJlY2lwZXMuIFNvIEkgbXVzdCBidWlsZCBkaWZmZXJlbnQgcmVjaXBlcyByZXN1
bHRpbmcgaW4gbXV0dWFsbHkgZXhjbHVzaXZlIHBhY2thZ2VzIGFuZCBuZWVkIHRvIHBpY2sgcGVy
IGltYWdlIHdoaWNoIHBhY2thZ2UgdG8gdXNlLg0KDQpFaXRoZXIgdGhhdCwgb3IgbWFrZSB0aGlu
Z3MgRElTVFJPX0ZFQVRVUkUgZGVwZW5kZW50LCBldGMuIFdpdGhpbiBtdWx0aWNvbmZpZyBidWls
ZHMgeW91IGNhbiBlc3NlbnRpYWxseSBjcmVhdGUgdHdvIGNvbXBsZXRlbHkgc2VwYXJhdGUgdGhp
bmdzIGFuZCB0aGVuIGdsdWUgdGhlbSB0b2dldGhlci4NCg0KPiBQUkVGRVJSRURfUFJPVklERVIg
aXMgYSBtYWNoaW5lIGdsb2JhbCBmdW5jdGlvbmFsaXR5IHRvIGRlZmluZSB3aGljaCByZWNpcGVz
IGdldCBidWlsdCBpbnRvIHBhY2thZ2VzLiBBcyBJIHVuZGVyc3RhbmQgaXQgY2Fubm90IGJlIHVz
ZWQgaW4gaW1hZ2UgcmVjaXBlcyBhbmQgaXQgY2Fubm90IGluZmx1ZW5jZSB3aGljaCBwYWNrYWdl
cyBhcmUgdXNlZCB0byBidWlsZCBhbiBpbWFnZS4NCj4gU28gSSBjYW4gY29udHJvbCB3aGljaCBw
YWNrYWdlcyBhcmUgYmVpbmcgYnVpbHQsIGJ1dCBvbmNlIEkgaGF2ZSBtdWx0aXBsZSBwYWNrYWdl
cyBidWlsdCBmb3IgYSBzaW5nbGUgZnVuY3Rpb25hbGl0eSwgSSBjYW4ndCBzZWVtIHRvIHBpY2sg
d2hpY2ggb25lcyB0byB1c2UgaW4gYSBkb19pbWFnZS4NCj4NCj4gSSB0aGluayBJIGFtIGxvb2tp
bmcgZm9yIGFuIGltYWdlIHNwZWNpZmljIHdheSB0byBmaWx0ZXIgcGFja2FnZXMgZHVyaW5nIHRo
ZSBpbWFnZSBidWlsZCwgZS5nLiwgYW4gSU1BR0VfSU5TVEFMTF9QUkVGRVJSRUQgb3IgSU1BR0Vf
IElOU1RBTExfSUdOT1JFIHZhcmlhYmxlIHRoYXQgSSBjYW4gc2V0IGluIGVhY2ggaW1hZ2UgcmVj
aXBlLiBPciBhIHdheSB0byBzcGVjaWZ5IGluIGFuIGltYWdlIHJlY2lwZXMgd2hpY2ggb3RoZXIg
cmVjaXBlcyBvciB0aGVpciBwYWNrYWdlcyBub3QgdG8gZXZlciBjb25zaWRlciBmb3IgYnVpbGRp
bmcgdGhhdCBpbWFnZS4NCj4gVGhhdCB3YXkgYWxwaGEgd291bGQgZ2V0IHRoZSBhbHBoYSBwYWNr
YWdlcyBhbmQgYmV0YSB3b3VsZCBnZXQgdGhlIGJldGEgcGFja2FnZXMgd2l0aGluIHRoZSBzYW1l
IG1hY2hpbmUgYW5kIHRoZSBwcm92aWRlciBjb25mbGljdCBtYXkgcmVzdWx0IGluIGEgd2Fybmlu
ZyBidXQgaXQgd291bGQgbm90IGJlIHJlbGV2YW50Lg0KPg0KPiBPciBpcyB0aGVyZSBhIHdheSB0
byBkbyBzb21ldGhpbmcgbGlrZSBSREVQRU5EUywgdGFraW5nIHByaW9yaXR5IGluIGEgd2F5IHRo
YXQgaXQgZGV0ZXJtaW5pc3RpY2FsbHkgZm9yY2VzIHRoZSBpbWFnZSBidWlsZCB0byBwaWNrIHRo
ZSBzcGVjaWZpZWQgcGFja2FnZSByYXRoZXIgdGhhbiBhbm90aGVyIG9uZSB0aGF0IGNvdWxkIGlu
IHRoZW9yeSBwcm92aWRlIHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHk/DQo+DQo+IFdoaWxlIGl0IHdv
dWxkIGJlIGVhc2llc3QgdG8gYnVpbGQgYWxwaGEgaW4gYSBtYWNoaW5lYWxwaGEsIGFuZCBiZXRh
IGluIGEgbWFjaGluZWJldGEsIEkgaGF2ZSB0aGUgcHJvYmxlbSB0aGVuIHRoYXQgSSBjYW4ndCBo
YXZlIGFuIGF1dG9tYXRlZCAic2luZ2xlIGJpdGJha2UiIGJ1aWxkIGJlY2F1c2UgdGhlcmUgaXMg
bm8gZGVwZW5kZW5jeSBoYW5kbGluZyBhY3Jvc3MgbWFjaGluZXMuDQoNCnMvTUFDSElORS9ESVNU
Uk8vZyBwcm9iYWJseSwgYnV0IHRoZW4geW91J3JlIHJpZ2h0LiBBZ2FpbiwgdGhpcyBpcyBleGFj
dGx5IHdoYXQgbXVsdGljb25maWcgYnVsZHMgZG8uDQoNCj4gTXkgZ29hbCBpcyB0byBoYXZlIGEg
ImJpdGJha2UgYWxwaGEiIGluIGEgbWFjaGluZSBzb2x2aW5nIHRoZSBuZXN0aW5nIGluIGEgd2F5
IHRoYXQgaXMgdHJhbnNwYXJlbnQgdG8gdGhlIHVzZXIuDQo+DQo+IEFueSBpZGVhIGhvdyB0aGF0
IGNhbiBiZSBhY2NvbXBsaXNoZWQ/Lg0KDQpZZXMuIFNlZSBhYm92ZSA6KQ0KDQpHcmVldHoNCg0K
LS0NCuKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlA0KSm9zZWYg
SG9sem1heXINClNvZnR3YXJlIERldmVsb3BlciBFbWJlZGRlZCBTeXN0ZW1zDQoNClRlbDogKzQ5
IDg0NDQgOTIwNC00OA0KRmF4OiArNDkgODQ0NCA5MjA0LTUwDQoNClItUy1JIEVsZWt0cm90ZWNo
bmlrIEdtYkggJiBDby4gS0cNCldvZWxrZXN0cmFzc2UgMTENCkQtODUzMDEgU2Nod2VpdGVua2ly
Y2hlbg0KaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJs
PXd3dy5yc2ktZWxla3Ryb3RlY2huaWsuZGUmYW1wO2RhdGE9MDIlN0MwMSU3Q0hlaW56Lldyb2Jl
bCU0MG54cC5jb20lN0NlYzU2NTM3NDJjNjE0YjNiYWJjYzA4ZDc5YjI4YzliOCU3QzY4NmVhMWQz
YmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzcxNDg0NzE3OTMxMDQzMjUmYW1w
O3NkYXRhPUJvS1Z0cWkydW5XSlcyOGJMU2I5NjRTSUVoN05tOUZpMVk0JTJCWnh2clZmdyUzRCZh
bXA7cmVzZXJ2ZWQ9MA0K4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCUDQpBbXRzZ2VyaWNodCBJbmdvbHN0YWR0IOKAkyBHbWJIOiBIUkIgMTkxMzI4IOKAkyBLRzog
SFJBIDE3MDM5Mw0KR2VzY2jDpGZ0c2bDvGhyZXI6IERyLi1JbmcuIE1pY2hhZWwgU29yZywgRGlw
bC4tSW5nLiBGcmFueiBTb3JnDQpVc3QtSWROcjogREUgMTI4NTkyNTQ4DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCkFtdHNn
ZXJpY2h0IEluZ29sc3RhZHQgLSBHbWJIOiBIUkIgMTkxMzI4IC0gS0c6IEhSQSAxNzAzNjMNCkdl
c2Now6RmdHNmw7xocmVyOiBEci4tSW5nLiBNaWNoYWVsIFNvcmcsIERpcGwuLUluZy4gRnJhbnog
U29yZw0KVVN0LUlkTnIuOiBERSAxMjg1OTI1NDgNCg0K
