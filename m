Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4A8CE00C20; Thu, 25 May 2017 09:05:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.140.78 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 10304 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 May 2017 09:05:03 PDT
Received: from g4t3425.houston.hpe.com (g4t3425.houston.hpe.com
	[15.241.140.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9CC4E00AA2
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 09:05:03 -0700 (PDT)
Received: from G1W8108.americas.hpqcorp.net (g1w8108.austin.hp.com
	[16.193.72.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3425.houston.hpe.com (Postfix) with ESMTPS id ADFA39D;
	Thu, 25 May 2017 16:05:02 +0000 (UTC)
Received: from G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) by
	G1W8108.americas.hpqcorp.net (2002:10c1:483c::10c1:483c) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Thu, 25 May 2017 16:04:54 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.241.52.10) by
	G2W6309.americas.hpqcorp.net (16.197.64.51) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Thu, 25 May 2017 16:04:54 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0303.NAMPRD84.PROD.OUTLOOK.COM (10.162.186.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1101.14; Thu, 25 May 2017 16:04:52 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1101.022; Thu, 25 May 2017 16:04:52 +0000
From: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
To: "Magallon, Marcelo" <marcelo.magallon@hpe.com>
Thread-Topic: [yocto] Can Yocto treat layers like an external package?
Thread-Index: AdLUmnD972ngOwSuSRSKs1N8pfbtWwAAng8AABwHgQAAAwiAgAAPj1KAAANWMYAAAoxOUA==
Date: Thu, 25 May 2017 16:04:52 +0000
Message-ID: <TU4PR84MB0176FDFE3EF004412A28517BEDFF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01764490D3BCFABC79D8BAC8EDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
	<277e529e-2b7f-2aa7-0784-4689ea84c690@mlbassoc.com>
	<CAHUNapQ=Axu8GV4XDBBhOc94u4D+kcw4tZH_gPGrC1Wm=X0nVA@mail.gmail.com>
	<CAC+thW3Wo2zBbEB-nwU8QmYz8Fvw1twkoMSC3hm_dyJnavu=Ug@mail.gmail.com>
	<TU4PR84MB0176C9C56A48F5689036F976EDFF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
	<20170525143941.7vhq3tr5snnvdhky@nyx.americas.hpqcorp.net>
In-Reply-To: <20170525143941.7vhq3tr5snnvdhky@nyx.americas.hpqcorp.net>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: hpe.com; dkim=none (message not signed)
	header.d=none;hpe.com; dmarc=none action=none header.from=hpe.com;
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0303;
	7:CWTdJHIdYEvty4biX1DcXK1itOsswIz3lbOuuOZqZ5PrPcC1+1CuPeTq0CrmBJ2Xm/P8oxff/KLC451sCcNw/Lut5aHnc8aBa0Y5XBmq+Gcs/CLRFtXnRIrbQkvC24eieHMAnyBFyJ8AWv2g7w7JAlopdHzgcHzQZTJy375J/JzprHvLhyXrth/LxL/IZ+yUD5HIyIY4+e/DcekhruHzIkHqcmmoaH6xRMnxi+01Rg5MdLYYcnMdhdMslj67fG6nRPAoeNhC/jQxXWF1R9pgnLk9zGDEOdXP0qeKkggX5T71gglDPAWtDQvPkYmJGKMtazPB16Oi7waf4E6uY7oetw==
x-forefront-antispam-report: SFV:SKI; SCL:-1SFV:NSPM;
	SFS:(10019020)(6009001)(39850400002)(39400400002)(39410400002)(39450400003)(39860400002)(39840400002)(13464003)(24454002)(377454003)(3280700002)(6246003)(93886004)(110136004)(38730400002)(66066001)(6636002)(8936002)(7696004)(2950100002)(2906002)(33656002)(5660300001)(74316002)(7736002)(3660700001)(305945005)(8676002)(478600001)(76176999)(81166006)(50986999)(54356999)(6862004)(189998001)(39060400002)(122556002)(6506006)(53546009)(6116002)(9686003)(77096006)(4326008)(25786009)(55016002)(6436002)(86362001)(53936002)(229853002)(2900100001)(3846002)(54906002)(102836003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0303;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
x-ms-traffictypediagnostic: TU4PR84MB0303:
x-ms-office365-filtering-correlation-id: bf8db71e-3d35-477a-630c-08d4a387c722
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081);
	SRVR:TU4PR84MB0303; 
x-microsoft-antispam-prvs: <TU4PR84MB03032BB7F6B99FC26E07578FEDFF0@TU4PR84MB0303.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(166708455590820)(35073007944872); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(6055026)(6041248)(20161123560025)(20161123562025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123564025)(6072148);
	SRVR:TU4PR84MB0303; BCL:0; PCL:0; RULEID:; SRVR:TU4PR84MB0303; 
x-forefront-prvs: 0318501FAE
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2017 16:04:52.1793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0303
X-OriginatorOrg: hpe.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can Yocto treat layers like an external package?
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
X-List-Received-Date: Thu, 25 May 2017 16:05:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyY2VsbG8sDQoNCk5vdCBzdXJlIGlmIEkgdW5kZXJzdG9vZCB3aGF0IHlvdSBtZWFudCBi
dXQsIEkgYW0gdXNpbmcgYSBzaW5nbGUgcmVwbyB3aXRoIHN1Ym1vZHVsZSBmb3IgdmVuZG9yIGxh
eWVycywgYXMgc3VjaCwgc3VibW9kdWxlIGtpbmQgb2Ygc29sdmUgdGhlICJ0ZW1wdGF0aW9uIiBm
b3Igb3VyIGRldmVsb3BlciB0ZWFtIHRvIGdvIHBsYXkgaW4gdGhlcmUsIHNpbmNlIHBsYXlpbmcg
dGhlcmUgaXMgYSBtaW5lZmllbGRzIHRoYW5rcyB0byB0aGUgY29tcGxpY2F0ZWQgc3VibW9kdWxl
IHByb2Nlc3MuICBCdXQsIEkgZG8gbm90IHdhbnQgdG8gcmVseSBvbiB0aGUgZGlmZmljdWx0eSBv
ZiBzdWJtb2R1bGVzIHRvIHRlbGwgbXkgZGV2IG5vdCB0byBnbyBjaGFuZ2UgdGhlIHZlbmRvciBs
YXllciwgd2hpY2ggaXMgd2F5IEkgZG8gbm90IHdhbnQgdGhlbSBpbiBteSByZXBvIGF0IGFsbC4N
Cg0KTm90ZSB0aGF0IHByaXZhdGUgaXNzdWVzIGlzIGEgZGlmZmVyZW50IG1hdHRlciBhbmQgSSBh
bSBub3QgYWRkcmVzc2luZyBpdCBoZXJlIGFuZCB0aGVyZSBhcmUgbXVsdGlwbGUgc29sdXRpb24g
c3VjaCBhcyBzdWJ0cmVlLCByZXBvLCBzdWJtb2R1bGVzLCB1cGNvbWluZyBHVkZTLCBldGMuLi4N
Cg0KPkl0IGRvZXNuJ3Qgc291bmQgdG9vIGZhciBmZXRjaGVkLCB0aG91Z2guIGJpdGJha2UgYWxy
ZWFkeSBjb250YWlucyBtb3N0DQo+KGFsbD8pIG9mIHRoZSBjb2RlIHRvIG1ha2UgdGhpcyB3b3Jr
LiBJIHRoaW5rIHlvdSB3b3VsZCBqdXN0IG5lZWQgdG8gY29tZSB1cCB3aXRoIGEgcmVhc29uYWJs
ZSBVSSB0byBpbnRlcmFjdCB3aXRoIHRoYXQuDQoNClRoaXMgaXMgbXkgb3BpbmlvbiwgSSB0aGlu
ayB3ZSBjb3VsZCBhbHRlciBiaXRiYWtlIHRvIHJldHJpZXZlIHRoZSBTUkNfVVJJIGFuZCBTIGlu
Zm9ybWF0aW9uIGZyb20gdGhlIGJibGF5ZXJzLmNvbmYgKGluc3RlYWQgb2YgaGF2aW5nIHJlY2lw
ZXMgbGlrZSBmb3IgcGFja2FnZSkuIA0KDQogICAgc2FtcGxlIA0KICAgICMgTEFZRVJfQ09ORl9W
RVJTSU9OIGlzIGluY3JlYXNlZCBlYWNoIHRpbWUgYnVpbGQvY29uZi9iYmxheWVycy5jb25mDQog
ICAgIyBjaGFuZ2VzIGluY29tcGF0aWJseQ0KICAgIExDT05GX1ZFUlNJT04gPSAiNiINCg0KICAg
IEJCUEFUSCA9ICIke1RPUERJUn0iDQogICAgQkJGSUxFUyA/PSAiIg0KDQogICAgQkJMQVlFUlMg
Pz0gIiBcDQogICAgICAjI09FUk9PVCMjL21ldGEgXA0KICAgICAgIyNPRVJPT1QjIy9tZXRhLXlv
Y3RvIFwNCiAgICAgICMjT0VST09UIyMvbWV0YS15b2N0by1ic3AgXA0KICAgICAgIyNPRVJPT1Qj
Iy9tZXRhLW9wZW5lbWJlZGRlZDtTUkNfVVJJPSJnaXQ6Ly9naXRAZ2l0aHViLmNvbS9vcGVuZW1i
ZWRkZWQvbWV0YS1vcGVuZW1iZWRkZWQ7cHJvdG9jb2w9c3NoO2JyYW5jaD1tYXN0ZXIiO1NSQ1JF
Vj0iJHtBVVRPUkVWfSIgXA0KICAgICAgIg0KICAgIEJCTEFZRVJTX05PTl9SRU1PVkFCTEUgPz0g
IiBcDQogICAgICAjI09FUk9PVCMjL21ldGEgXA0KICAgICAgIyNPRVJPT1QjIy9tZXRhLXlvY3Rv
IFwNCiAgICAgICINCg0KQml0YmFrZSBjb3VsZCB0aGVuIGZldGNoL3VwZGF0ZSB0aGUgbGF5ZXIg
ZnJvbSB0aGUgU1JDX1VSSSBpbnRvIHRoZSBsb2NhdGlvbiBnaXZlbiAiIyNPRVJPT1QjIy9tZXRh
LW9wZW5lbWJlZGRlZCIgcHJpb3IgdG8gcGFyc2luZy4NCg0KLS0NCllhbm5pY2sgS29laGxlcg0K
DQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTWFnYWxsb24sIE1hcmNlbG8gDQpT
ZW50OiBUaHVyc2RheSwgTWF5IDI1LCAyMDE3IDEwOjQwIEFNDQpUbzogS29laGxlciwgWWFubmlj
ayAoSFBOIEFydWJhKSA8eWFubmljay5rb2VobGVyQGhwZS5jb20+DQpDYzogQW5kcmVhIEdhbGJ1
c2VyYSA8Z2l6ZXJvQGdtYWlsLmNvbT47IFRyZXZvciBXb2VybmVyIDx0d29lcm5lckBnbWFpbC5j
b20+OyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBDYW4gWW9j
dG8gdHJlYXQgbGF5ZXJzIGxpa2UgYW4gZXh0ZXJuYWwgcGFja2FnZT8NCg0KT24gVGh1LCBNYXkg
MjUsIDIwMTcgYXQgMDE6MTM6MDNQTSArMDAwMCwgS29laGxlciwgWWFubmljayAoSFBOIEFydWJh
KSB3cm90ZToNCg0KPiBUaGUgY2FzZSBJIGFtIG1vc3RseSBpbnRlcmVzdGVkIGFib3V0IGlzIHRo
ZSBWZW5kb3IgbGF5ZXJzLCBpZiBJIHB1bGwgDQo+IGluIG1ldGEtb3BlbmVtYmVkZGVkIG9yIG1l
dGEtZnJlZXNjYWxlIGluIG15IHlvY3RvIGRpc3RybywgSSB3aWxsIA0KPiBuZXZlciB0b3VjaCB0
aG9zZSBsYXllciBhdCB0aGUgZ2l0IGxldmVsLCBpbnN0ZWFkIHdoYXRldmVyIGNoYW5nZSBJIA0K
PiB3YW50IHdpbGwgYmUgZG9uZSBpbiBteSBwcml2YXRlIGxheWVyIHdoaWNoIGlzIHRoZSBtYWlu
IHJlYXNvbiBmb3IgDQo+IGxheWVyIGFzIEkgdW5kZXJzdGFuZCBpdCAoYmVpbmcgYWJsZSB0byBj
aGFuZ2Ugb3RoZXLigJlzIHZlbmRvciBsYXllciANCj4gd2l0aG91dCBjaGFuZ2luZyB0aGVtKS4N
Cg0KQSAic29sdXRpb24iIHRoYXQgd2UgdXNlIGlzIGhhdmUgYSBzaW5nbGUgcmVwbyB3aXRoIGFs
bCB0aGUgbGF5ZXJzLCBhbmQgbWFuYWdlIHRoYXQgdXNpbmcgZ2l0IHN1YnRyZWVzLg0KDQpJIHdv
dWxkIHN0cm9uZ2x5IGRpc2NvdXJhZ2Ugb3RoZXIgcGVvcGxlIGZyb20gaW1wbGVtZW50aW5nIHN1
Y2ggYSBzb2x1dGlvbiwgYXMgaXQgc29sdmVkIG9uZSBwcm9ibGVtIChjcmVhdGluZyBhbmQgdXBk
YXRpbmcgYSB3b3Jrc3BhY2Ugd2l0aCB0aGUgY29ycmVjdCBsYXllcnMgaXMgdHJpdmlhbCksIGJ1
dCBpdCBoYXMgY3JlYXRlZCBtYW55IG90aGVycy4gVGhlIGJpZ2dlc3Qgb25lIGluIG15IHZpZXcg
aXMgdGhhdCBwZW9wbGUgZmVlbCBlbmNvdXJhZ2VkIHRvIG1ha2UgbW9kaWZpY2F0aW9ucyB0byB0
aGUgdmVuZG9yIGxheWVycywgd2hpY2ggbWFrZXMgdXBkYXRpbmcgaGFyZGVyIHRoYW4gaXQgc2hv
dWxkLiBIYXZpbmcgYSBzaW5nbGUgcmVwbyB3aXRoIGxheWVycyB3aXRoaW4gZGlyZWN0b3JpZXMg
YWxzbyBtYWtlcyBpdCBjdW1iZXJzb21lIHRvIGltcGxlbWVudCBhY2Nlc3MgY29udHJvbHMgKGJh
c2ljYWxseSAieW91IGNhbiBjb21taXQgdG8gZGlyZWN0b3JpZXMgQSwgQiBhbmQgQywgYnV0IG5v
dCBYLCBZIG9yIFoiKS4gSXQgYWxzbyBlbmNvdXJhZ2VzIGEga2luZCBvZiBjb3VwbGluZyB0aGF0
IG1ha2VzIHRoaW5ncyBtb3JlIGNvbXBsaWNhdGVkIGluIHRoZSBsb25nIHJ1bi4NCg0KPiBJIGZh
aWwgdG8gc2VlIHdoeSBwZW9wbGUgd291bGQgc2VlayBhIG5vbi1iaXRiYWtlIHNvbHV0aW9uIHN1
Y2ggYXMgDQo+IHJlcG8sIHN1Ym1vZHVsZXMgb3Igb3RoZXJzIGlmIGJpdGJha2Ugd2FzIGFibGUg
dG8gZG8gdGhhdCBhc3BlY3QuICBJZiANCj4gdGhlcmUgaXMgYSBwcm9qZWN0IGFscmVhZHkgZm9y
IGRvaW5nIHRoaXMsIEkgd291bGQgYmUgaW50ZXJlc3RlZCBpbiANCj4gcGFydGljaXBhdGluZyB0
byBpdHMgZGV2ZWxvcG1lbnQgYW5kIEkgbWF5IGhhdmUgb25lIG9yIHR3byBoZWxwZXIgaW4gDQo+
IG15IHRlYW0gdG8gaGVscCBvdXQgb24gdGhpcy4NCg0KTXkgZ3Vlc3MgaXMgdGhhdCdzIGJlY2F1
c2UgYml0YmFrZSB3b3VsZCBoYXZlIHRvIHJlYWQgYSBmaWxlIHdpdGggdGhlIGxheWVyIG1ldGFk
YXRhLCBmZXRjaCB0aGUgbGF5ZXJzIHRoYXQgeW91IHdhbnQsIGFuZCB0aGVuIHJlYWQgdGhlIHJl
Y2lwZXMuIElmIHRoZSBsYXllcnMgYXJlIGhhbmRsZWQganVzdCBsaWtlIHJlY2lwZXMsICh3aXRo
IFNSQ19VUkksIFNSQ1JFViwgUywgZXRjKSwgYml0YmFrZSBuZWVkcyB0byBiZSBhYmxlIHRvIHJl
YWQgdHdvIGRpZmZlcmVudCBzZXRzIG9mIHJlY2lwZXMuIFRoYXQgbWlnaHQgd29yayBieSBjaGFu
Z2luZyBCQkZJTEVTIG9yIEJCUEFUSC4gQXQgdGhhdCBwb2ludCBpdCB0aGUgVUkgYmVjb21lcyBh
IGJpdCBhd2t3YXJkLCBJIHRoaW5rLg0KDQpJdCBkb2Vzbid0IHNvdW5kIHRvbyBmYXIgZmV0Y2hl
ZCwgdGhvdWdoLiBiaXRiYWtlIGFscmVhZHkgY29udGFpbnMgbW9zdA0KKGFsbD8pIG9mIHRoZSBj
b2RlIHRvIG1ha2UgdGhpcyB3b3JrLiBJIHRoaW5rIHlvdSB3b3VsZCBqdXN0IG5lZWQgdG8gY29t
ZSB1cCB3aXRoIGEgcmVhc29uYWJsZSBVSSB0byBpbnRlcmFjdCB3aXRoIHRoYXQuDQoNCldpdGgg
b3VyIHNvbHV0aW9uLCBnZXR0aW5nIHVwZGF0ZWQgbGF5ZXJzIChub24tdmVuZG9yKSBpdCdzIGp1
c3QgYSBtYXR0ZXIgb2YgImdpdCBwdWxsIi4gU29sdXRpb25zIGJ1aWx0IGFyb3VuZCByZXBvIGFy
ZSBlcXVhbGx5IHNpbXBsZS4NCg0KPiBGb3IgcHJpdmF0ZSBsYXllcnMsIEkgZG8gdW5kZXJzdGFu
ZCBhbmQgc2VlIHdoeSBhbiBleHRlcm5hbCBzb2x1dGlvbiANCj4gdG8gYml0YmFrZSB3b3VsZCBi
ZSBiZXR0ZXIsIHNpbmNlIGJpdGJha2Ugd2lsbCBub3Qgb2ZmZXIgc3VwcG9ydCBmb3IgDQo+IGJy
YW5jaCBhbmQgY2hhbmdlIG1hbmFnZW1lbnQgd2hpY2ggaXMgbm9ybWFsIGFzIGJpdGJha2UgaXMg
b25seSBhIA0KPiBidWlsZCB0b29sLCBub3QgYSBkZXZlbG9wZXIgdG9vbC4NCg0KV2VsbCwgaWYg
eW91IG9idGFpbiBsYXllcnMgdXNpbmcgcmVjaXBlcyAob3Igc29tZXRoaW5nIHZlcnkgY2xvc2Ug
dG8gdGhhdCksIHlvdSBjb3VsZCBpbmNsdWRlIGJyYW5jaCBpbmZvcm1hdGlvbiBpbiBTUkNfVVJJ
LCBhcyB1c3VhbC4NCg0KTWFyY2Vsbw0K

