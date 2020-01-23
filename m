Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2042.1579809274457034570
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:54:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F016DE015F8; Thu, 23 Jan 2020 11:54:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [209.222.82.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from outbound-ip23b.ess.barracuda.com (outbound-ip23b.ess.barracuda.com [209.222.82.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B43BE003DB
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2020 11:54:31 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx4.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256 bits=256 verify=NO); Thu, 23 Jan 2020 19:54:28 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 23
 Jan 2020 11:54:25 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Thu, 23 Jan 2020 11:54:25 -0800
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Mark Asselstine <mark.asselstine@windriver.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Khem Raj <raj.khem@gmail.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Subject: Re: [yocto] generate initramfs for raspberry pi
Thread-Topic: [yocto] generate initramfs for raspberry pi
Thread-Index: AdXSGhPvXo6b8fM0Tbq1um18IL8inQAR704AABA378D//4YugIAAA2aAgACCsOA=
Date: Thu, 23 Jan 2020 19:54:25 +0000
Message-ID: <713ac40429144f7187508a60732ee66f@sakuraus.com>
References: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com>
 <9158a978900f45dd8c3f7b14e0e56544@sakuraus.com>
 <CAMKF1sr-QJFwyZPAHd=MMes1D7kMLrhsazzkt+N4VoW0SN2DfQ@mail.gmail.com>
 <2320945.ZELG96XCOn@yow-masselst-lx1>
In-Reply-To: <2320945.ZELG96XCOn@yow-masselst-lx1>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.142]
MIME-Version: 1.0
X-BESS-ID: 1579809268-893007-1053-48967-1
X-BESS-VER: 2019.1_20200122.0617
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.221859 [from 
	cloudscan18-158.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyaywgYW5kIGFsc28gS2hlbSAoc29ycnkgZm9yIHRoZSBtaXNzLXNwZWxsaW5nIG9mIHlv
dXIgbmFtZSksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9A
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24N
Cj4gQmVoYWxmIE9mIE1hcmsgQXNzZWxzdGluZQ0KPiBTZW50OiBUaHVyc2RheSwgSmFudWFyeSAy
MywgMjAyMCAxMTozNyBBTQ0KPiBUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzsgR3Jl
ZyBXaWxzb24tTGluZGJlcmcNCj4gPEdXaWxzb25Ac2FrdXJhdXMuY29tPg0KPiBDYzogS2hlbSBS
YWogPHJhai5raGVtQGdtYWlsLmNvbT47IFlvY3RvIGxpc3QgZGlzY3Vzc2lvbg0KPiA8eW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZz4NCj4gU3ViamVjdDogUmU6IFt5b2N0b10gZ2VuZXJhdGUgaW5pdHJh
bWZzIGZvciByYXNwYmVycnkgcGkNCj4gDQo+IE9uIFRodXJzZGF5LCBKYW51YXJ5IDIzLCAyMDIw
IDI6MjQ6MjcgUC5NLiBFU1QgS2hlbSBSYWogd3JvdGU6DQo+ID4gT24gVGh1LCBKYW4gMjMsIDIw
MjAgYXQgMTE6MTYgQU0gR3JlZyBXaWxzb24tTGluZGJlcmcNCj4gPg0KPiA+IDxHV2lsc29uQHNh
a3VyYXVzLmNvbT4gd3JvdGU6DQo+ID4gPiBIaSBLZW0sDQo+ID4gPiBJIGhhZCBmaWd1cmVkIG91
dCB5b3VyIHN1Z2dlc3Rpb25zLCBteSBwcm9ibGVtIGlzIGhvdyBkbyBJIGdlbmVyYXRlDQo+ID4g
PiB0aGUgIjx5b3VyLWltYWdlPiIgaW1hZ2UgaW46DQo+ID4gPg0KPiA+ID4gSU5JVFJBTUZTX0lN
QUdFX3JwaSA9ICI8eW91ci1pbWFnZT4iDQo+ID4gPg0KPiA+ID4gSSBuZWVkIGEgcmVjaXBlIGZv
ciB0aGUgaW1hZ2UgYW5kIGEgd2F5IHRvIGdldCBZb2N0byB0byBidWlsZCBpdA0KPiA+ID4gd2hl
biBJIGJ1aWxkIHRoZSByZXN0IG9mIG15IGltYWdlLiBNYXliZSBzcGVjaWZ5aW5nIHRoZSBuYW1l
IHdpbGwNCj4gPiA+IGJ1aWxkIGl0LCBidXQgSSBzdGlsbCBuZWVkIGEgcmVjaXBlIGZvciB0aGUg
aW1hZ2UuDQo+ID4gRGVwZW5kcyB3aGF0IHlvdXIgbmVlZHMgYXJlLCBpdHMgbm90IGNsZWFyIHdo
YXQgeW91IHdhbnQgZnJvbSB0aGlzDQo+ID4gaW5pdHJhbWZzIGltYWdlLg0KPiA+IGlzIGl0IHNv
bWV0aGluZyB5b3Ugd2FudCB0byBkbyBzb21lIHByZWJvb3Qgc3R1ZmYgYW5kIHBpdm90IGludG8g
ZmluYWwNCj4gPiBpbWFnZSBkdXJpbmcgYm9vdCBvciBkbyB5b3Ugd2FudCB5b3VyIGZ1bGwgdXNl
cnNwYWNlIHRvIGJlIHJ1bm5pbmcgaW4NCj4gPiBpdCBmb3Igc2Vjb25kIGNhc2UgSnVzdCB1c2Ug
eW91ciBpbWFnZSBpZiB5b3Ugd2FudCB0aGF0IHRvIGJlIGJ1bmRsZWQNCj4gPiBpbiBhbmQgYnVp
bGQgYml0YmFrZSB2aXJ0dWFsL2tlcm5lbCBpdCB3aWxsIGdldCB5b3Ugc2luZ2xlIGtlcm5lbA0K
PiA+IGltYWdlIHdpdGggZXZlcnl0aGluZyBpbiBpdC4NCj4gPg0KPiA+IGZvciBmaXJzdCBjYXNl
LiBkZWZpbmUgYSBuZXcgaW1hZ2UgcGVyaGFwcyBhIGRlcml2YXRpdmUgb2YNCj4gPiBjb3JlLWlt
YWdlLW1pbmltYWwgYW5kIHVzZSB0aGF0DQo+IA0KPiBUaGVyZSBhcmUgdHdvIHVzZWZ1bCBzdGFy
dGluZyBwb2ludHMsDQo+IG9wZW5lbWJlZGRlZC1jb3JlL21ldGEvcmVjaXBlcy1jb3JlL2ltYWdl
cy9jb3JlLWltYWdlLW1pbmltYWwtDQo+IGluaXRyYW1mcy5iYg0KPiBvcGVuZW1iZWRkZWQtY29y
ZS9tZXRhL3JlY2lwZXMtY29yZS9pbWFnZXMvY29yZS1pbWFnZS10aW55LQ0KPiBpbml0cmFtZnMu
YmINCj4gDQo+IEJvdGggZG8gbm90IGhhdmUNCj4gQ09NUEFUSUJMRV9IT1NUID0gIihpLjg2fHg4
Nl82NCkuKi1saW51eCINCj4gDQo+IEluIHRoZSBlbmQgeW91IHdpbGwgbW9zdCBsaWtlbHkgd2Fu
dCB0byBjdXN0b21pemUgeW91ciBpbWFnZSBhcyBLaGVtIHNheXMsDQo+IHNvIGp1c3Qgc3RhcnQg
YnkgY29weWluZyBvbmUgb2YgdGhlc2UgYW5kIHN0YXJ0IG1ha2luZyBhZGp1c3RtZW50cy4NCj4g
QWx0ZXJuYXRpdmVseSB5b3UgY2FuIGRvIHNvbWV0aGluZyBsaWtlIHRoZSBmb2xsb3dpbmcgaW4g
eW91ciBsb2NhbC5jb25mIHRvDQo+IG92ZXJjb21lIHRoaXM6DQo+IENPTVBBVElCTEVfSE9TVF9w
bi1jb3JlLWltYWdlLXRpbnktaW5pdHJhbWZzID0gImFhcmNoNjQtcG9reS1saW51eCINCg0KSSBq
dXN0IG5lZWQgc29tZXRoaW5nIHRvIGJvb3QgaW50byBvbiB0aGUgd2F5IHRvIHRoZSBmdWxsIGlt
YWdlLiBJIGFtIGRvaW5nIHRoaXMgYXMgYSBzdGVwIHRvIGJyaW5naW5nIHVwIE9TdHJlZS4gU28g
bWF5YmUgc2V0dGluZyB0aGUgJ0NPTVBBVElCTEVfSE9TVCcgYW5kIHVzaW5nIGNvcmUtaW1hZ2Ut
dGlueS1pbml0cmFtZnMgd2lsbCB3b3JrLg0KDQpUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9ucy4g
SSBoYWQgdGhvdWdodCB0aGF0IHRoZXJlIG11c3QgYmUgYW4gaW5pdHJhbWZzIGZvciB0aGUgUmFz
cGJlcnJ5IFBpIHdpdGggYWxsIG9mIHRoZSB0aHJlYWRzIGFib3V0IHVzaW5nIGFuIGluaXRyYW1m
cyBvbiB0aGUgUGksIGJ1dCBJIGd1ZXNzIHRoYXQgdGhlcmUgaXNuJ3QgYSBzZXBhcmF0ZSBvbmUu
DQoNCkJlc3QgUmVnYXJkcywNCkdyZWcNCg0KPiANCj4gWW91IHdpbGwgd2FudCB0byBkZXRlcm1p
bmUgaWYgdGhpcyBpbml0cmFtZnMgaXMgZ29pbmcgdG8gcGl2b3QgdG8gdGhlICdpbml0Jw0KPiBm
b3VuZCBpbiB0aGUgbWFpbiByb290ZnMsIG9yIGlmIHlvdSB3YW50IHRvIHNpbXBseSBib290IGlu
dG8gdGhlICdpbml0JyBpbiB0aGUNCj4gaW5pdHJhbWZzIGFuZCByZW1haW4gdGhlcmUuDQo+IA0K
PiBMYXN0bHkgeW91IGNhbiBlaXRoZXIga2VlcCB0aGUgaW5pdHJhbWZzIHN0YW5kYWxvbmUgb3Ig
aGF2ZSB0aGUga2VybmVsDQo+IGJ1bmRsZSB0aGUgaW5pdHJhbWZzLiBUaGUgbGF0dGVyIGlzIHVz
ZWZ1bCBpZiB5b3Ugd2FudC9uZWVkIHRvIGluY2x1ZGUNCj4gc29mdHdhcmUgaW4gdGhlIGluaXRy
YW1mcyB0aGF0IGlzIG5lZWRlZCB0byBnZXQgdGhlIGRpc2tzIHVwIGFuZCBydW5uaW5nIHRvDQo+
IHRoZW4gZ2V0IGFjY2VzcyB0byB0aGUgcm9vdGZzLg0KPiANCj4gVGFrZSBhIGxvb2sgYXQNCj4g
aHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzIuNi9yZWYtbWFudWFsL3JlZi1tYW51
YWwuaHRtbCN2YXItDQo+IElOSVRSQU1GU19GU1RZUEVTDQo+IGh0dHBzOi8vd3d3LnlvY3RvcHJv
amVjdC5vcmcvZG9jcy8yLjYvcmVmLW1hbnVhbC9yZWYtbWFudWFsLmh0bWwjdmFyLQ0KPiBJTklU
UkFNRlNfSU1BR0UNCj4gaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzIuNi9yZWYt
bWFudWFsL3JlZi1tYW51YWwuaHRtbCN2YXItDQo+IElOSVRSQU1GU19JTUFHRV9CVU5ETEUNCj4g
DQo+IE1hcmtBDQo+IA0KPiANCj4gPg0KPiA+ID4gUmVnYXJkcywNCj4gPiA+IEdyZWcNCj4gPiA+
DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogS2hlbSBSYWog
PHJhai5raGVtQGdtYWlsLmNvbT4NCj4gPiA+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDIzLCAy
MDIwIDEwOjU2IEFNDQo+ID4gPiBUbzogR3JlZyBXaWxzb24tTGluZGJlcmcgPEdXaWxzb25Ac2Fr
dXJhdXMuY29tPg0KPiA+ID4gQ2M6IFlvY3RvIGxpc3QgZGlzY3Vzc2lvbiA8eW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZz4NCj4gPiA+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGdlbmVyYXRlIGluaXRyYW1m
cyBmb3IgcmFzcGJlcnJ5IHBpDQo+ID4gPg0KPiA+ID4gT24gVGh1LCBKYW4gMjMsIDIwMjAgYXQg
MTA6NDQgQU0gR3JlZyBXaWxzb24tTGluZGJlcmcNCj4gPGd3aWxzb25Ac2FrdXJhdXMuY29tPiB3
cm90ZToNCj4gPiA+ID4gSGVsbG8gTGlzdCwNCj4gPiA+ID4NCj4gPiA+ID4gSSBoYXZlIG5vdCBi
ZWVuIGFibGUgdG8gZmlndXJlIG91dCBob3cgdG8gZ2VuZXJhdGUgYW4gaW5pdHJhbWZzDQo+ID4g
PiA+IGltYWdlIGZvciBhIHJhc3BiZXJyeSBwaSBidWlsZCBvZiB5b2N0by4gSeKAmXZlIHNlYXJj
aGVkIGl0IHdlYiBhbmQNCj4gPiA+ID4gaGF2ZSBub3QgZm91bmQgYW55dGhpbmcgdGhhdCBtZW50
aW9ucyBnZW5lcmF0aW5nIHRoZSBhY3R1YWwgaW1hZ2UsDQo+ID4gPiA+IGxvdHMgb2YgaGl0cyBv
biBob3cgdG8gY29uZmlndXJlIHVzaW5nIHRoZSBpbml0cmFtZnMsIGJ1dCBub3Qgb24NCj4gPiA+
ID4gZ2VuZXJhdGluZyBpdC4gSXMgdGhlcmUgYSBzdGFuZGFyZCByZWNpcGUgZm9yIGEgcmFzcGJl
cnJ5IHBpDQo+ID4gPiA+IGluaXRyYW1mcyBhbmQgaG93IHdvdWxkIEkgZW5hYmxlIGl0cyBnZW5l
cmF0aW9uLCBvciBtYXliZSBJ4oCZbSBqdXN0DQo+IGJlaW5nIGNsdWVsZXNzLg0KPiA+ID4gPg0K
PiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiBJ4oCZbSBydW5uaW5nIG9uIGEgYm9vdDJxdCBidWls
ZCBvZiB5b2N0byBiYXNlZCBvbiBRdCB2NS4xNC4wIHRoYXQNCj4gPiA+ID4gdXNlcyB3YXJyaW9y
IGFuZCBJ4oCZbSB0YXJnZXRpbmcgYW4gUlBpIDQgdXNpbmcgdS1ib290Lg0KPiA+ID4gPg0KPiA+
ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiBBbnkgaGVscCB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lh
dGVkLg0KPiA+ID4NCj4gPiA+IHRyeSBzb21ldGhpbmcgbGlrZSBiZWxvdyBpbiBsb2NhbC5jb25m
DQo+ID4gPg0KPiA+ID4gSU5JVFJBTUZTX0lNQUdFX0JVTkRMRV9ycGkgPSAiMSINCj4gPiA+IElO
SVRSQU1GU19JTUFHRV9ycGkgPSAiPHlvdXItaW1hZ2U+Ig0KPiA+ID4gIyBFbmxhcmdlIGJvb3Qg
cGFydGl0aW9uIHRvIDFHaUINCj4gPiA+IEJPT1RfU1BBQ0UgPSAiMTA3Mzc0MSINCj4gPiA+IElO
SVRSQU1GU19NQVhTSVpFID0gIjMxNTQwMCINCj4gPiA+IElNQUdFX0ZTVFlQRVNfcG4tJHtJTklU
UkFNRlNfSU1BR0V9ID0gIiR7SU5JVFJBTUZTX0ZTVFlQRVN9Ig0KPiA+ID4NCj4gPiA+ID4gQmVz
dCByZWdhcmRzLA0KPiA+ID4gPg0KPiA+ID4gPiBHcmVnIFdpbHNvbi1MaW5kYmVyZw0KPiANCj4g
DQo+IA0KDQo=
