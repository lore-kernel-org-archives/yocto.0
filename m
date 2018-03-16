Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50F4CE00D0E; Fri, 16 Mar 2018 14:10:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97AE8E0073D
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 14:10:16 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Fri, 16 Mar 2018 21:10:14 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 16 Mar 2018 14:10:06 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 16 Mar 2018 14:10:06 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to get mysqy/mariadb to start on powerup.
Thread-Index: AQHTvJmRjybrgAvccUyN6MZA1cayV6PSO8aA//+OKnaAATjiEIAAqgeA//+fN1A=
Date: Fri, 16 Mar 2018 21:10:06 +0000
Message-ID: <27471f70f26541d8add86faeec8509c1@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
	<CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
	<937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
	<e323d1d04c544a93a562c54ebdf23fde@sakuraus.com>
	<CAMKF1sqA+1acjxDK235N2NARXYs=FF-DEQpO8ZnpaCqzjCs=iA@mail.gmail.com>
In-Reply-To: <CAMKF1sqA+1acjxDK235N2NARXYs=FF-DEQpO8ZnpaCqzjCs=iA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1521234566-321457-24606-3122-5
X-BESS-VER: 2018.3-r1803090017
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191128
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get mysqy/mariadb to start on powerup.
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
X-List-Received-Date: Fri, 16 Mar 2018 21:10:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJh
ai5raGVtQGdtYWlsLmNvbV0NCj4gU2VudDogRnJpZGF5LCBNYXJjaCAxNiwgMjAxOCAxMTo1NSBB
TQ0KPiBUbzogR3JlZyBXaWxzb24tTGluZGJlcmcgPEdXaWxzb25Ac2FrdXJhdXMuY29tPg0KPiBD
YzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBIb3cgdG8g
Z2V0IG15c3F5L21hcmlhZGIgdG8gc3RhcnQgb24gcG93ZXJ1cC4NCj4gDQo+IE9uIEZyaSwgTWFy
IDE2LCAyMDE4IGF0IDg6NTggQU0sIEdyZWcgV2lsc29uLUxpbmRiZXJnIDxHV2lsc29uQHNha3Vy
YXVzLmNvbT4NCj4gd3JvdGU6DQo+ID4+IEZyb206IEdyZWcgV2lsc29uLUxpbmRiZXJnDQo+ID4+
IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAxNSwgMjAxOCAwMjoxNiBQTQ0KPiA+PiBUbzogS2hlbSBS
YWogPHJhai5raGVtQGdtYWlsLmNvbT4NCj4gPj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
Cj4gPj4gU3ViamVjdDogUmU6IFt5b2N0b10gSG93IHRvIGdldCBteXNxeS9tYXJpYWRiIHRvIHN0
YXJ0IG9uIHBvd2VydXAuDQo+ID4NCj4gPj4NCj4gPg0KPiA+PiA+IEZyb206IEtoZW0gUmFqIDxy
YWoua2hlbUBnbWFpbC5jb20+DQo+ID4NCj4gPj4gPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMTUs
IDIwMTggMTo1NCBQTQ0KPiA+PiA+IFRvOiBHcmVnIFdpbHNvbi1MaW5kYmVyZw0KPiA+PiA+IENj
OiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4+ID4gU3ViamVjdDogUmU6IFt5b2N0b10gSG93
IHRvIGdldCBteXNxeS9tYXJpYWRiIHRvIHN0YXJ0IG9uIHBvd2VydXAuDQo+ID4NCj4gPj4gPg0K
PiA+DQo+ID4+ID4gPiBPbiBUaHUsIE1hciAxNSwgMjAxOCBhdCAxOjM4IFBNLCBHcmVnIFdpbHNv
bi1MaW5kYmVyZw0KPiA+PiA+IDxHV2lsc29uQHNha3VyYXVzLmNvbT4gd3JvdGU6DQo+ID4+ID4g
PiBJJ20gYnVpbGRpbmcgYW4gUlBpMyBzeXN0ZW0gdGhhdCBpcyBnb2luZyB0byB1c2UgbXlzcWwv
bWFyaWFkYi4NCj4gPj4gPiA+IEkndmUgZ290IGV2ZXJ5dGhpbmcgaW5zdGFsbGVkLCBidXQgbXlz
cWxkIGlzIG5vdCBzdGFydGluZy4NCj4gPj4gPiA+IGluc3RhbGxfZGIuc2VydmljZSBkb2VzIHJ1
biBvbiBzdGFydHVwLCBidXQgdGhlIG15c3FsZC5zZXJ2aWNlDQo+ID4+ID4gPiBmaWxlIG5ldmVy
IGdldHMgdHJpZ2dlcmVkLg0KPiA+PiA+ID4NCj4gPj4gPiA+DQo+ID4+ID4gPiBJcyB0aGVyZSBz
b21ldGhpbmcgdGhhdCBJJ20gbWlzc2luZyB0byBnZXQgaXQgdG8gcnVuPyBJJ3ZlIHNlYXJjaA0K
PiA+PiA+ID4gb25saW5lLCBidXQgY2FuJ3QgZmluZCBhbnl0aGluZyB0aGF0IHBlcnRhaW5zIHRv
IHlvY3RvLg0KPiA+PiA+ID4NCj4gPj4gPg0KPiA+PiA+IHBva2Ugb24gdGhlIHN5c3RlbSB3aXRo
IHN5c3RlbWN0bC9qb3VybmFsY3RsIHRvIHNlZSB3aGF0cyBnb2luZyBvbg0KPiA+DQo+ID4+DQo+
ID4NCj4gPj4gam91cm5hbGN0bCAtdSBteXNxbGQuc2VydmljZSBzYXlzIG5vIGVudHJpZXMNCj4g
Pg0KPiA+PiBzeXN0ZW1jdGwgc3RhdHVzIG15c3FsZC5zZXJ2aWNlIHNob3dzOg0KPiA+DQo+ID4+
ICAgIExvYWRlZDogbG9hZGVkICgvbGliL3N5c3RlbWQvc3lzdGVtL215c3FsZC5zZXJ2aWNlOyBk
aXNhYmxlZDsNCj4gPj4gdmVuZG9yDQo+ID4+IHByZXNldDogZW5hYmxlZCkNCj4gPg0KPiA+PiAg
ICBBY3RpdmU6IGluYWN0aXZlIChkZWFkKQ0KPiA+DQo+ID4+DQo+ID4NCj4gPj4gSSd2ZSByZWJv
b3RlZCB0aGUgc3lzdGVtIGEgY291cGxlIG9mIHRpbWVzIHRvIHNlZSBpZiBpbnN0YWxsX2RiDQo+
ID4+IG5lZWRlZCB0byBiZSBydW4gYmVmb3JlIG15c3FsIHdvdWxkIHJ1biwgbm8gbHVjay4NCj4g
Pg0KPiA+Pg0KPiA+DQo+ID4gSXQncyBzZWVtcyB0aGF0IG1heWJlIEkgbmVlZCB0byBhZGQgYSBi
aXQgYWJvdXQgbXkgdW5kZXJzdGFuZGluZyBvZg0KPiA+IHRoZSB5b2N0byBzeXN0ZW0uIEkgd2Fz
IGFzc3VtaW5nIHRoYXQgaWYgSSBpbmNsdWRlZCBteXNxbCBpbiB0aGUNCj4gPiBidWlsZCwgdGhh
dCBpdCB3b3VsZCBiZSBzdGFydGVkIHdoZW4gdGhlIHN5c3RlbSBwb3dlcmVkIHVwLiBJZiBteXNx
bA0KPiA+IGlzIG5vdCBub3JtYWxseSBzdGFydGVkIGF1dG9tYXRpY2FsbHkgdGhhdCBJIGNhbiBk
byB3aGF0IGlzIG5lY2Vzc2FyeQ0KPiA+IHRvIHN0YXJ0IGl0LCBJIGp1c3QgdGhvdWdodCB0aGF0
IEkgc2hvdWxkbid0IG5lZWQgdG8gZG8gYW55dGhpbmcuDQo+IA0KPiBZZXMgeW91IGFyZSByaWdo
dC4gV2UgdHJ5IHRvIGRvIHJ1bnRpbWUgdGVzdGluZyBhcyBtdWNoIGFzIHBvc3NpYmxlIGFuZCB5
b3Ugd2lsbCBzZWUNCj4gbW9yZSBhbmQgbW9yZSBmb2N1cyBvbiBydW50aW1lIHRlc3RpbmcgaW4g
Y29taW5nIGRheXMgYW5kIG1vbnRocy4gU28gZmFyIHdlDQo+IGhhdmUgaGFkIGxvdCBvZiBidWls
ZCByZWxhdGVkIGZlYXR1cmVzIGFuZCBzdGFiaWxpdHkgcHJvYmxlbXMgdG8gd29yayBvbiBzbyBj
aGFuY2VzDQo+IG9mIHJ1bnRpbWUgYnVncyBhcmUgc3RpbGwgYSBiaXQgaGlnaGVyLiBZb3UgY2Fu
IGhlbHAgaW4gZml4aW5nIHRoaXMgaXNzdWUgaWYgeW91IGNhbiByb290DQo+IGNhdXNlIGl0LiBl
Zy4gY2hlY2sgaW4gc3lzdGVtIGxvZ3MgdXNpbmcgam91cm5hbGN0bCBmb3IgcG9zc2libGUgY2F1
c2VzIG9mIHRoaXMgc2VydmljZQ0KPiBub3Qgc3RhcnRpbmcgdXAuIE9mdGVuIHRpbWVzIHlvdSB3
aWxsIGdldCBhIGRlY2VudCBoaW50IGFuZCB3ZSBjYW4gaGVscCBhcyB3ZWxsIG9uDQo+IHRoYXQg
aW5mb3JtYXRpb24NCg0KSSd2ZSBydW4gam91cm5hbGN0bCBvbiBib3RoIGluc3RhbGxfZGIuc2Vy
dmljZSAmIG15c3FsZC5zZXJ2aWNlLiBteXNxbGQgY29tZXMgYmFjayB3aXRoIG5vIGVudHJpZXMu
IGluc3RhbGxfZGIgY29tZXMgYmFjayB3aXRoIGEgbGluZSBlYWNoIGZvciBTdGFydGluZyBhbmQg
U3RhcnRlZCBJbnN0YWxsIE15U1FMIENvbW11bml0eSBTZXJ2ZXIgRGF0YWJhc2UuDQoNCnN5c3Rl
bWN0bCBzdGF0dXMgcmV0dXJucyBleGl0ZWQgc3VjY2VzcyBmb3IgaW5zdGFsbF9kYiwgZm9yIG15
c3FsZCBpdCByZXBvcnRzIEFjdGl2ZTogaW5hY3RpdmUgKGRlYWQpLg0KDQpzeXN0ZW1jdGwgbGlz
dC11bml0LWZpbGVzIHNob3dzIGluc3RhbGxfZGIgYXMgZW5hYmxlZCBhbmQgbXlzcWxkIGFzIGRp
c2FibGVkLg0KDQpJIHdhcyBhYmxlIHRvIHN0YXJ0IG15c3FsZCB3aXRoIHN5c3RlbWN0bCBzdGFy
dCBhbmQgaXQgc2hvd2VkIHJ1bm5pbmcgd2l0aCBzeXN0ZW1jdGwgc3RhdHVzICYgcHMuIEJ1dCBp
dCBkaWQgbm90IHJlc3RhcnQgYWZ0ZXIgYSByZWJvb3QuDQoNCklmIHRoZXJlIGlzIGFueXRoaW5n
IGVsc2UgdGhhdCBJIGNhbiBkbyB0byBoZWxwIHVuZGVyc3RhbmQgd2hhdCBpcyBnb2luZyBvbiBw
bGVhc2UgbGV0IG1lIGtub3cuDQoNCkdyZWcNCg==

