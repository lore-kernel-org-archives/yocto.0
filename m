Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4533CE00790; Fri,  3 Oct 2014 05:47:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.145 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0145.outbound.protection.outlook.com [157.56.110.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A1CBE00749
	for <yocto@yoctoproject.org>; Fri,  3 Oct 2014 05:47:47 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB039.namprd05.prod.outlook.com (10.255.210.148) with Microsoft
	SMTP Server (TLS) id 15.0.1039.15; Fri, 3 Oct 2014 12:47:45 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.214]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.214]) with mapi id
	15.00.1044.008; Fri, 3 Oct 2014 12:47:45 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Martin Jansa <martin.jansa@gmail.com>, Chris Tapp
	<opensource@keylevel.com>, "Oliver.Novakovic@alpine.de"
	<Oliver.Novakovic@alpine.de>
Thread-Topic: [yocto] Recommended Hardware for building
Thread-Index: AQHP3iS0oOarbon/0EO8nrbWgfLtiZwclEmAgABxpoCAACZ2AIABIBxA
Date: Fri, 3 Oct 2014 12:47:44 +0000
Message-ID: <6d6311d2a08c4a04a1c9aac20f3f49a2@BLUPR05MB037.namprd05.prod.outlook.com>
References: <OF2C69ED33.175EBBCF-ONC1257D65.0034C92B@alpine.de>
	<CAJTo0LaHLETQJxzVpm_B9y+GX9RNBiCY1UF7kBhuWBEeMcs+Uw@mail.gmail.com>
	<3235B79C-5FB8-46CD-82AD-96E2A6BBB159@keylevel.com>
	<20141002190908.GJ25706@jama>
In-Reply-To: <20141002190908.GJ25706@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 028B8208008358028B8355
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB039;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(377454003)(199003)(13464003)(24454002)(2501002)(92566001)(99286002)(101416001)(19580395003)(19580405001)(66066001)(85852003)(2656002)(97736003)(15974865002)(87936001)(64706001)(20776003)(33646002)(77096002)(105586002)(4396001)(95666004)(86362001)(107046002)(106116001)(108616004)(106356001)(76176999)(54356999)(50986999)(99396003)(76576001)(120916001)(21056001)(10300001)(122386001)(31966008)(93886004)(80022003)(46102003)(85306004)(74316001)(15975445006)(76482002)(40100001)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB039;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recommended Hardware for building
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
X-List-Received-Date: Fri, 03 Oct 2014 12:47:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T2xpdmVyLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvLWJv
dW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLQ0KPiBib3VuY2VzQHlvY3RvcHJv
amVjdC5vcmddIE9uIEJlaGFsZiBPZiBNYXJ0aW4gSmFuc2ENCj4gU2VudDogVGh1cnNkYXksIE9j
dG9iZXIgMDIsIDIwMTQgMzowOSBQTQ0KPiBUbzogQ2hyaXMgVGFwcA0KPiBDYzogeW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBSZWNvbW1lbmRlZCBIYXJkd2Fy
ZSBmb3IgYnVpbGRpbmcNCj4gDQo+IE9uIFRodSwgT2N0IDAyLCAyMDE0IGF0IDA1OjUxOjI5UE0g
KzAxMDAsIENocmlzIFRhcHAgd3JvdGU6DQo+ID4NCj4gPiBPbiAyIE9jdCAyMDE0LCBhdCAxMTow
NCwgQnVydG9uLCBSb3NzIDxyb3NzLmJ1cnRvbkBpbnRlbC5jb20+IHdyb3RlOg0KPiA+DQo+ID4g
PiBPbiAyIE9jdG9iZXIgMjAxNCAxMDozNiwgT2xpdmVyIE5vdmFrb3ZpYyA8T2xpdmVyLk5vdmFr
b3ZpY0BhbHBpbmUuZGU+DQo+IHdyb3RlOg0KPiA+ID4+IENhbiBhbnlvbmUgcmVjb21tZW5kIGEg
cmVhc29uYWJsZSBwZXJmb3JtYW50IGhhcmR3YXJlIHNldHVwIHRvDQo+IHVzZSA/DQo+ID4gPj4N
Cj4gPiA+PiBXaGF0IHNob3VsZCBiZSBjb25zaWRlcmVkID8gQXJlIHRoZXJlIGFueSBwaXRmYWxs
cyA/IFdoYXQgYWJvdXQNCj4gPiA+PiBib3R0bGVuZWNrcyBpbiB0aGUgYnVpbGQgc3lzdGVtID8N
Cj4gDQo+IHlvdSBzaG91bGQgc3RhcnQgYnkgc2F5aW5nIHdoYXQgeW91J3JlIGdvaW5nIHRvIGJ1
aWxkLCBteSBleHBlcmllbmNlIGlzIHF1aXRlDQo+IGRpZmZlcmVudCB3aGVuIGJ1aWxkaW5nICJz
bWFsbCIgaW1hZ2VzIGxpa2UgY29uc29sZS1pbWFnZSBvciBldmVuIHgxMS1pbWFnZQ0KPiBhbmQg
ImJpZyIgaW1hZ2VzL2ZlZWRzIHdoaWNoIGNvbnRhaW4gd2hvbGUgcXQ1IHN0YWNrLCAzIHdlYmtp
dHMgYW5kDQo+IDIgY2hyb21pdW0gYnVpbGRzLg0KDQpBZ3JlZWQsIHdoYXQgeW91IGFyZSBidWls
ZGluZyBhbmQgd2hhdCB5b3VyIGdvYWxzIGFyZSBtYWtlcyBhIGRpZmZlcmVuY2UgaW4gd2hhdCB5
b3UgbmVlZC4gIEkgaGF2ZSBhIGJ1aWxkIG1hY2hpbmUgc2V0dXAgdGhhdCBpcyBtYWlubHkgdXNl
ZCB0byB2ZXJpZnkgZXZlcnl0aGluZyBidWlsZHMgY29ycmVjdGx5IGFmdGVyIGNvbW1pdHRpbmcg
Y2hhbmdlcy4gIEl0J3MgYW4gSW50ZWwgaTMtMzIyMCB3aXRoIDhHQiBSQU0uICBUaGUgYXV0b2J1
aWxkZXIgaXMgc2V0dXAgb24gYSBMaW51eCBWTSB3aGljaCBpcyBnaXZlbiA0R0IgUkFNIGFuZCBk
b2VzIG5vdCByZWNvZ25pemUgdGhlIGV4dHJhIEh5cGVyLXRocmVhZGVkIGNvcmVzLCBtZWFuaW5n
IGl0IGFjdHMgYXMgYSBkdWFsIGNvcmUgbWFjaGluZS4gIFJlYnVpbGQgb2YgbXkgY29uc29sZSBp
bWFnZSB0eXBpY2FsbHkgdGFrZXMgdW5kZXIgMjAgbWludXRlcywgYW5kIG1vc3Qgb2YgdGhhdCB0
aW1lIGlzIHBhY2thZ2luZy9pbnN0YWxsLiAgQWZ0ZXIgdGhlIGluaXRpYWwgYnVpbGQsIHRoZXJl
IHJlYWxseSBpc24ndCBtdWNoIGZvciBteSBzeXN0ZW0gdGhhdCBuZWVkcyB0byBnZXQgcmVidWls
dCBiZXR3ZWVuIGNvbW1pdHMuDQoNClNvIGlmIHlvdSBhcmUgbG9va2luZyBmb3IgYSBidWlsZCBt
YWNoaW5lIHRoYXQgaXMgb3V0c2lkZSB5b3VyIG5vcm1hbCB3b3JrZmxvdywgYSAkNDAwIFBDIG1h
eSBiZSBlbm91Z2ggZm9yIHlvdS4gIElmIHRoaXMgbWFjaGluZSBpcyBmb3IgeW91ciBkZXZlbG9w
bWVudCBidWlsZCBhbmQgeW91IGhhdmUgYSBoYXZlIGEgbG90IG9mIGdyYXBoaWMgYXBwbGljYXRp
b25zIHRoYXQgeW91IG5lZWQgdG8gYnVpbGQsIHlvdSBtYXkgd2FudCBzb21ldGhpbmcgbW9yZSBp
biBsaW5lIHdpdGggd2hhdCBvdGhlciBwZW9wbGUgYXJlIHN1Z2dlc3RpbmcuDQoNClJlZ2FyZHMs
DQpCcnlhbg0KDQo+IA0KPiBJbiBnZW5lcmFsOiBiaXRiYWtlIHdpbGwgYmV0dGVyIHV0aWxpemUg
YWxsIGF2YWlsYWJsZSBwZXJmb3JtYW5jZSB3aXRoIGJpZ2dlcg0KPiBpbWFnZSAoZS5nLiBidWls
ZCB0aW1lIGZvciBjb25zb2xlIGltYWdlIHdvbid0IGNoYW5nZSBzbyBtdWNoIGlmIHlvdSBnbyBm
cm9tDQo+IDggY29yZXMgdG8gMjQsIGJ1dCBidWlsZGluZyBlLmcuIGp1c3Qgd2Via2l0IGFsb25l
IHdpbGwgYmUgbW9yZSB0aGFuIHR3aWNlDQo+IGZhc3RlciBvbiAyNCBjb3JlcykuDQo+IA0KPiBS
ZWdhcmRzLA0KPiANCj4gPiA+PiBTcGVjaWZpY2FsbHk6DQo+ID4gPj4NCj4gPiA+PiBIb3cgbWFu
eSBjb3JlcyBhcmUgcmVjb21tZW5kZWQgPyBBbmQgaG93IG11Y2ggY2FjaGUgaXMgbmVjZXNzYXJ5
DQo+ID8NCj4gPiA+PiBIb3cgbXVjaCBvZiB0aGUgbWFpbiBtZW1vcnkgZG9lcyBZb2N0byByZWFs
bHkgdXNlID8gSXMgMzIgR0INCj4gPiA+PiBzdWZmaWNpZW50IG9yIHNob3VsZCBJIGdvIGZvciA2
NCA/DQo+ID4gPj4NCj4gPiA+PiBEb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gdXNlIHR3byBTU0RzIGFz
IFJhaWQwICB0byBnZXQgYnVpbGRzIGZhc3RlciA/DQo+ID4gPg0KPiA+ID4gQXMgbXVjaCBvZiBl
dmVyeXRoaW5nIGFzIHlvdSBjYW4gYWZmb3JkLiAgOikgIFRoZSBidWlsZCBpc24ndCBoZWF2eQ0K
PiA+ID4gaW4gYW55IHBhcnRpY3VsYXIgbWV0cmljLCBzbyBkb24ndCBzYWNyaWZpY2UgUkFNIGZv
ciBTU0RzIGZvciBleGFtcGxlLg0KPiA+ID4NCj4gPiA+IFJBSUQgMCBvdmVyIFNTRCB3b3VsZCBi
ZSBuaWNlIGFuZCBmYXN0LCBidXQgSSBwcmVmZXIgaGF2aW5nIGEgZ29vZA0KPiA+ID4gYW1vdW50
IG9mIFJBTSBhbmQgYSB0dW5lZCBleHQ0IChubyBqb3VybmFsLCBsb25nIGNvbW1pdCBkZWxheSkg
c28NCj4gPiA+IGRhdGEgZG9lc24ndCBhY3R1YWxseSBoaXQgdGhlIGRpc2sgYXMgZnJlcXVlbnRs
eS4gS2VlcGluZyB0aGUgYWN0dWFsDQo+ID4gPiBidWlsZCBkaXJlY3RvcmllcyBvbiBhIHNlcGFy
YXRlIGRpc2sgaXMgZ29vZCBmb3IgcGVyZm9ybWFuY2UgYW5kIG5vdA0KPiA+ID4gY2F1c2luZyBk
YXRhIGxvc3Mgd2hlbiB5b3UgbG9zZSBhIGRpc2suDQo+ID4gPg0KPiA+ID4gVGhlcmUgYXJlIHBl
b3BsZSB0aGF0IGhhdmUgNjRHQiBpbiBtYWNoaW5lcyBhbmQgdGhlbiBzZXQgVE1QRElSIHRvIGEN
Cj4gPiA+IHRtcGZzLiAgU3VycHJpc2luZ2x5IHRoaXMgaXNuJ3QgdGhhdCBtdWNoIGZhc3RlciAo
NSUgb3Igc28pLCBidXQNCj4gPiA+IGl0J3MgYSBsb3QgZWFzaWVyIG9uIHRoZSBoYXJkd2FyZSBh
bmQgcG93ZXIgY29uc3VtcHRpb24uDQo+ID4NCj4gPiBNeSBleHBlcmllbmNlOg0KPiA+DQo+ID4g
SSd2ZSBnb3QgYSBxdWFkIGNvcmUgd2l0aCBoeXBlci10aHJlYWRpbmcgKHNvIDggdXNhYmxlIGNv
cmVzKSBydW5uaW5nIGF0DQo+IGFib3V0IDMuOCBHSHosIDE2R0Igb2YgUkFNIGFuZCB1c2UgbXVs
dGlwbGUgU1NEcyAtIG9uZSB0byBob2xkIHRoZSBtZXRhDQo+IGRhdGEsIGRvd25sb2FkcyBhbmQg
dG9wIGxldmVsIGJ1aWxkIGFyZWFzIChsb2NhbC5jb25mLCBldGMpIGFuZCBoYXZlIHRoZQ0KPiBU
TVBESVIgb24gYSBzZWNvbmQgU1NEIChzbywgYXMgUm9zcyBzYXlzLCBJIGRvbid0IGdldCBhIHN1
cnByaXNlIHdoZW4gaXQNCj4gd2VhcnMgb3V0ISkuDQo+ID4NCj4gPiBJIGNhbiBidWlsZCBteSBp
bWFnZXMgKGJhc2ljYWxseSBhbiB4MTEgaW1hZ2UpIGluIGp1c3QgdW5kZXIgNjAgbWludXRlcw0K
PiAob25jZSBhbGwgdGhlIGZpbGVzIGhhdmUgYmVlbiBmZXRjaGVkKS4gSSBydW4gd2l0aCBCQl9O
VU1CRVJfVEhSRUFEUyBhbmQNCj4gUEFSQUxMRUxfTUFLRSBib3RoIHNldCB0byAxNiB0byBtYWtl
IHN1cmUgdGhlIGNvcmVzIGFyZSBmdWxseSBsb2FkZWQgYXMNCj4gbXVjaCBhcyBwb3NzaWJsZSAo
b3RoZXIgc2F5cyB0aGF0IHNob3VsZCBiZSA4IGFuZCA4IHRvIHJlZHVjZSBzY2hlZHVsaW5nDQo+
IG92ZXJoZWFkKS4NCj4gPg0KPiA+IER1cmluZyB0aGUgYnVpbGQgdGhlIHN5c3RlbSBpcyBDUFUg
Ym91bmQgcXVpdGUgYSBiaXQgb2YgdGhlIHRpbWUgKHNvIG1vcmUNCj4gY29yZXMgc2hvdWxkIGhl
bHApLCBidXQgdGhlcmUgYXJlIHNpZ25pZmljYW50IHBlcmlvZHMgd2hlcmUgdGhlIGJ1aWxkDQo+
IGRlcGVuZGVuY3kgY2hhaW4gbWVhbnMgdGhpcyBpc24ndCB0aGUgY2FzZSBhbmQgb25seSB0d28g
b3IgdGhyZWUgY29yZXMgYXJlDQo+IGFjdGl2ZS4gUHJldmlvdXNseSBJIHJlY2FsbCBjb21wYXJp
bmcgcmVzdWx0cyB3aXRoIHNvbWVvbmUgZWxzZSBhbmQgZmluZGluZw0KPiB0aGF0IGhhdmluZyBs
b3RzIG1vcmUgY29yZXMgKDI0LCBJIHRoaW5rKSBkaWRuJ3QgZ2l2ZSBhIHNpZ25pZmljYW50IGlt
cHJvdmVtZW50DQo+IGluIGJ1aWxkIHRpbWUgKGNlcnRhaW5seSBub3QgZm9yIHRoZSAzeCBzeXN0
ZW0gYnVpbGQgY29zdCkuDQo+ID4NCj4gPiBJJ3ZlIG5ldmVyIHNlZW4gcGVhayBtZW1vcnkgdXNh
Z2UgZ28gbXVjaCBhYm92ZSA5IEdCIGR1cmluZyBhIGJ1aWxkLA0KPiBhbmQgdGhlIHBlYWtzIGdl
bmVyYWxseSBjb2luY2lkZSB3aXRoIGxpbmtpbmcgYWN0aXZpdGllcyBmb3IgImJpZyIgaXRlbXMg
KGdjYywNCj4gZWdsaWJjKS4gVGhpcyBpcyBsaWtlbHkgdG8gZ28gaGlnaGVyIHdpdGggbW9yZSBh
Y3RpdmUgdGhyZWFkcy4NCj4gPg0KPiA+IEkgc3RhcnRlZCBvdXQgd2l0aCBhIFJBSUQtMCBTU0Qg
YnVpbGQgYXJyYXksIGJ1dCBJIGRpZG4ndCByZWFsbHkgc2VlIGFueQ0KPiBkaWZmZXJlbmNlIG92
ZXIgYSBzaW5nbGUgaGlnaC1zcGVjIChjb25zdW1lcikgU1NELiBBcyBSb3NzIHNhaWQsIHJ1bm5p
bmcgYQ0KPiBmYXN0IGZpbGUgc3lzdGVtIG9uIHRoZSBkaXNrIGlzIGEgZ29vZCBpZGVhLg0KPiA+
DQo+ID4gLS0NCj4gPg0KPiA+IENocmlzIFRhcHANCj4gPiBvcGVuc291cmNlQGtleWxldmVsLmNv
bQ0KPiA+IHd3dy5rZXlsZXZlbC5jb20NCj4gPg0KPiA+IC0tLS0NCj4gPiBZb3UgY2FuIHRlbGwg
eW91J3JlIGdldHRpbmcgb2xkZXIgd2hlbiB5b3VyIGNhciBpbnN1cmFuY2UgZ2V0cyByZWFsIGNo
ZWFwIQ0KPiA+DQo+ID4gLS0NCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiA+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiA+IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmcNCj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9j
dG8NCj4gDQo+IC0tDQo+IE1hcnRpbiAnSmFNYScgSmFuc2EgICAgIGphYmJlcjogTWFydGluLkph
bnNhQGdtYWlsLmNvbQ0K

