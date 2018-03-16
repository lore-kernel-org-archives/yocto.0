Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7B78E00848; Fri, 16 Mar 2018 14:58:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A521DE00848
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 14:58:31 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx2.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Fri, 16 Mar 2018 21:58:26 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 16 Mar 2018 14:58:23 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 16 Mar 2018 14:58:23 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to get mysqy/mariadb to start on powerup.
Thread-Index: AQHTvJmRjybrgAvccUyN6MZA1cayV6PSO8aA//+OKnaAATjiEIAAqgeA//+fN1CAAIfyAP//i2ZgAA/SS4AADn9GwA==
Date: Fri, 16 Mar 2018 21:58:23 +0000
Message-ID: <5539c02c22f9476d884ae94dea20eb73@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
	<CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
	<937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
	<e323d1d04c544a93a562c54ebdf23fde@sakuraus.com>
	<CAMKF1sqA+1acjxDK235N2NARXYs=FF-DEQpO8ZnpaCqzjCs=iA@mail.gmail.com>
	<27471f70f26541d8add86faeec8509c1@sakuraus.com>
	<CAMKF1sothqiEPDCow7K+8sqFCEgMrhdEyXuJqEBNToyrMOqeBQ@mail.gmail.com>
	<12270a1aeed348d7bdabbbeca64fb6ef@sakuraus.com>
	<CAMKF1spQj+MOCbe0fxLax3rBQY_cbnuNyUsESSpegbzSX5HB_w@mail.gmail.com>
In-Reply-To: <CAMKF1spQj+MOCbe0fxLax3rBQY_cbnuNyUsESSpegbzSX5HB_w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1521237504-298553-18396-26974-1
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
X-List-Received-Date: Fri, 16 Mar 2018 21:58:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEtoZW0gUmFqIFttYWlsdG86
cmFqLmtoZW1AZ21haWwuY29tXQ0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDE2LCAyMDE4IDAyOjUx
IFBNDQo+IFRvOiBHcmVnIFdpbHNvbi1MaW5kYmVyZyA8R1dpbHNvbkBzYWt1cmF1cy5jb20+DQo+
IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIEhvdyB0
byBnZXQgbXlzcXkvbWFyaWFkYiB0byBzdGFydCBvbiBwb3dlcnVwLg0KPiANCj4gT24gRnJpLCBN
YXIgMTYsIDIwMTggYXQgMjoyMiBQTSwgR3JlZyBXaWxzb24tTGluZGJlcmcgPEdXaWxzb25Ac2Fr
dXJhdXMuY29tPg0KPiB3cm90ZToNCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
Pj4gRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5jb21dDQo+ID4+IFNlbnQ6
IEZyaWRheSwgTWFyY2ggMTYsIDIwMTggMDI6MTYgUE0NCj4gPj4gVG86IEdyZWcgV2lsc29uLUxp
bmRiZXJnIDxHV2lsc29uQHNha3VyYXVzLmNvbT4NCj4gPj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNCj4gPj4gU3ViamVjdDogUmU6IFt5b2N0b10gSG93IHRvIGdldCBteXNxeS9tYXJpYWRi
IHRvIHN0YXJ0IG9uIHBvd2VydXAuDQo+ID4+DQo+ID4+IE9uIEZyaSwgTWFyIDE2LCAyMDE4IGF0
IDI6MTAgUE0sIEdyZWcgV2lsc29uLUxpbmRiZXJnDQo+ID4+IDxHV2lsc29uQHNha3VyYXVzLmNv
bT4NCj4gPj4gd3JvdGU6DQo+ID4+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+
ID4+IEZyb206IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXQ0KPiA+PiA+PiBT
ZW50OiBGcmlkYXksIE1hcmNoIDE2LCAyMDE4IDExOjU1IEFNDQo+ID4+ID4+IFRvOiBHcmVnIFdp
bHNvbi1MaW5kYmVyZyA8R1dpbHNvbkBzYWt1cmF1cy5jb20+DQo+ID4+ID4+IENjOiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQo+ID4+ID4+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIEhvdyB0byBnZXQg
bXlzcXkvbWFyaWFkYiB0byBzdGFydCBvbiBwb3dlcnVwLg0KPiA+PiA+Pg0KPiA+IC4uLi4NCj4g
PiAuLi4uDQo+ID4gLi4uLg0KPiA+PiA+DQo+ID4+ID4gSSd2ZSBydW4gam91cm5hbGN0bCBvbiBi
b3RoIGluc3RhbGxfZGIuc2VydmljZSAmIG15c3FsZC5zZXJ2aWNlLg0KPiA+PiA+IG15c3FsZCBj
b21lcw0KPiA+PiBiYWNrIHdpdGggbm8gZW50cmllcy4gaW5zdGFsbF9kYiBjb21lcyBiYWNrIHdp
dGggYSBsaW5lIGVhY2ggZm9yDQo+ID4+IFN0YXJ0aW5nIGFuZCBTdGFydGVkIEluc3RhbGwgTXlT
UUwgQ29tbXVuaXR5IFNlcnZlciBEYXRhYmFzZS4NCj4gPj4gPg0KPiA+PiA+IHN5c3RlbWN0bCBz
dGF0dXMgcmV0dXJucyBleGl0ZWQgc3VjY2VzcyBmb3IgaW5zdGFsbF9kYiwgZm9yIG15c3FsZCBp
dCByZXBvcnRzDQo+IEFjdGl2ZToNCj4gPj4gaW5hY3RpdmUgKGRlYWQpLg0KPiA+PiA+DQo+ID4+
ID4gc3lzdGVtY3RsIGxpc3QtdW5pdC1maWxlcyBzaG93cyBpbnN0YWxsX2RiIGFzIGVuYWJsZWQg
YW5kIG15c3FsZCBhcyBkaXNhYmxlZC4NCj4gPj4gPg0KPiA+PiA+IEkgd2FzIGFibGUgdG8gc3Rh
cnQgbXlzcWxkIHdpdGggc3lzdGVtY3RsIHN0YXJ0IGFuZCBpdCBzaG93ZWQNCj4gPj4gPiBydW5u
aW5nIHdpdGgNCj4gPj4gc3lzdGVtY3RsIHN0YXR1cyAmIHBzLiBCdXQgaXQgZGlkIG5vdCByZXN0
YXJ0IGFmdGVyIGEgcmVib290Lg0KPiA+Pg0KPiA+PiBjYW4geW91IHRyeQ0KPiA+Pg0KPiA+PiBz
eXN0ZW1jdGwgZW5hYmxlIG15c3FsZA0KPiA+Pg0KPiA+PiB0aGlzIHNob3VsZCBlbmFibGUgaXQg
dG8gc3RhcnQgb24gYm9vdC4NCj4gPg0KPiA+IFRoYXQgZGlkIGNyZWF0ZSBhIGxpbmsgYW5kIGl0
IHN0YXJ0ZWQgb24gcmVib290Lg0KPiA+DQo+IA0KPiBPSyB0aGF0cyBleHBlY3RlZCBzZWUgLi9t
ZXRhLW9lL3JlY2lwZXMtZGJzL215c3FsL21hcmlhZGIuaW5jDQo+IA0KPiBTWVNURU1EX1BBQ0tB
R0VTID0gIiR7UE59LXNlcnZlciAke1BOfS1zZXR1cGRiIg0KPiBTWVNURU1EX1NFUlZJQ0VfJHtQ
Tn0tc2VydmVyID0gIm15c3FsZC5zZXJ2aWNlIg0KPiBTWVNURU1EX0FVVE9fRU5BQkxFXyR7UE59
LXNlcnZlciA/PSAiZGlzYWJsZSINCj4gDQo+IGl0cyBkaXNhYmxlZCBvbiBpbnN0YWxsLiB5b3Ug
Y2FuIHNldCBpdCB0byBiZSBlbmFibGVkIHZpYSBhIGJiYXBwZW5kIGluIHlvdXIgbGF5ZXINCg0K
U28gaXQgc2VlbXMgdGhhdCBJIHNob3VsZCBkbyBhIC5iYmFwcGVuZCB3aXRoIGl0IGVuYWJsZWQg
dGhlbi4NClRoYW5rcywNCkdyZWcNCg0KDQo+IA0KPiA+IEkgdGFrZSBpdCB0aGF0IHNvbWV0aGlu
ZyBpcyBoYXBwZW5pbmcgaW4gaW5zdGFsbF9kYiBhbmQgYW1vbmcgb3RoZXIgdGhpbmdzIHRoYXQg
bGluaw0KPiBpcyBub3QgZ2V0dGluZyBjcmVhdGVkPw0KPiANCj4gaXRzIGNhbGxpbmcNCj4gDQo+
IG15c3FsLXN5c3RlbWQtc3RhcnQgcHJlDQo+IA0KPiBidXQgaXQgZGVwZW5kcyBvbiBteXNxbGQu
c2VydmljZSBzbyBJIHdvbmRlciBpZiBpdCB3YXMgbm90IHdvcmtpbmcgYmVjYXVzZQ0KPiBteXNx
bGQuc2VydmljZSB3YXMgZGlzYWJsZWQgc28gbWF5IGJlIG5vdyBpdCB3b3Jrcw0K

