Return-Path: <j.gueytat@cdssoft.studiel.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CE6BE00AB6; Wed,  3 Feb 2016 06:54:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [5.135.56.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.studiel.fr (mail.studiel.fr [5.135.56.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 091A8E00948
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 06:54:31 -0800 (PST)
Received: from server.exchange.local ([10.151.0.118]) by server.exchange.local
	([5.135.56.197]) with mapi id 14.02.0247.003;
	Wed, 3 Feb 2016 15:54:30 +0100
From: GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
To: 'Khem Raj' <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not
	properly set
Thread-Index: AdFd2fOG/fKCBVTvTAm3KRpMOdIaWQAZwMoAAAM3cAAACoKG8AAESrGAAAI8NaA=
Date: Wed, 3 Feb 2016 14:54:29 +0000
Message-ID: <EC7BC1CD2E085743BB2AE634252C39C1717AAD@server.exchange.local>
References: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
	<AC56FBE6-C8E7-47CF-971A-3E3F8C3F4422@gmail.com>
	<CAEyFGJGx-Cns4Sj3bru4L-e2cCmO+w0dPOy5TkYad9+n+0BuSQ@mail.gmail.com>
	<EC7BC1CD2E085743BB2AE634252C39C1717A39@server.exchange.local>
	<CAMKF1sr-qwCsThsB3PH1v1_7u_jNpZAg-Pg=vp0ZOTHvbevbDg@mail.gmail.com>
In-Reply-To: <CAMKF1sr-qwCsThsB3PH1v1_7u_jNpZAg-Pg=vp0ZOTHvbevbDg@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [46.218.87.184]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not properly set
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
X-List-Received-Date: Wed, 03 Feb 2016 14:54:38 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2V0dGluZyBwcm9wZXJseSB0aGUgdmFyaWFibGUgUEFDS0FHRUNPTkZJR19HTCB0byBnbGVzMiBk
b2VzIE5PVCB1cGRhdGUgcHJvcGVybHkgdGhlIHZhcmlhYmxlIFFNQUtFX0xJQlNfRUdMLg0KQnkg
ZGVmYXVsdCBRTUFLRV9MSUJTX0VHTCA9IC1sRUdMDQpBbmQgZGVwZW5kaW5nIG9uIGhhcmR3YXJl
Li4uIGl0IG1pZ2h0IGJlIHNvbWV0aGluZyBsaWtlIFFNQUtFX0xJQlNfRUdMID0gLWxFR0wgLWxH
TEVTdjIgZm9yIGluc3RhbmNlLg0KQW5kIHRoaXMgc3BlY2lmaWMgbGluZS4uLiAiLWxFR0wgLWxH
TEVTdjIiIGlzIG9ubHkga25vdyBpbiB0aGUgcHJvdmlkZXIgb2YgdmlydHVhbC9saWJnbGVzdjIg
Li4uIGluIHRoaXMgY2FzZSBtZXRhLXJhc3BiZXJyeS4NClRoZSBCU1AgbGF5ZXIgY291bGQgcHJv
dmlkZSBhIHBhY2thZ2UgY29uZmlnIGZpbGUgd2hpY2ggd2lsbCBiZSByZWFkIHRvIHNldCBRTUFL
RV9MSUJTX0VHTCBwcm9wZXJseS4NCg0KPT4gV2hpY2ggbWVhbnMgd2Ugd291bGQgbmVlZCBlYWNo
IHBhY2thZ2UgcHJvdmlkaW5nIHZpcnR1YWwvbGliZ2xlc3YyIC4uLiB0byBwcm92aWRlIGFsc28g
YSBwYWNrYWdlIGNvbmZpZyBmaWxlLg0KDQpJIGhvcGUgaXQncyBjbGVhciBub3cuIFRlbGwgbWUg
aWYgSSBtaXNzZWQgc29tZXRoaW5nLg0KDQotLS0tLU1lc3NhZ2UgZCdvcmlnaW5lLS0tLS0NCkRl
wqA6IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXSANCkVudm95w6nCoDogbWVy
Y3JlZGkgMyBmw6l2cmllciAyMDE2IDE1OjQ1DQrDgMKgOiBHVUVZVEFUIEp1bGllbg0KQ2PCoDog
WWFubmljayBLaWVrZW5zOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpPYmpldMKgOiBSZTogW3lv
Y3RvXSBbbWV0YS1xdDVdW21ldGEtcmFzcGJlcnJ5cGldOiBRTUFLRV9MSUJTX0VHTCBub3QgcHJv
cGVybHkgc2V0DQoNCk9uIFdlZCwgRmViIDMsIDIwMTYgYXQgMzo0NiBBTSwgR1VFWVRBVCBKdWxp
ZW4gPGouZ3VleXRhdEBjZHNzb2Z0LnN0dWRpZWwuZnI+IHdyb3RlOg0KPiBIaSBldmVyeW9uZSwN
Cj4NCj4NCj4NCj4gSSB1bmRlcnN0YW5kIHRoYXQgeW91IGFyZSBhbGwgcmV3cml0aW5nIHRoZSBx
dGJhc2UgcnVsZSB0byBpbmNsdWRlIGF0IA0KPiBsZWFzdCB0aGUgbW9kaWZpY2F0aW9uIHRvIHRo
ZSBRTUFLRV9MSUJTX0VHTCB2YXJpYWJsZS4NCj4NCj4gVGhlIHF1ZXN0aW9uIGlzOg0KPg0KPiBD
b3VsZCB3ZSBtYWtlIHNvbWVob3cgc29tZSB3b3JrIGluIG1ldGEtcXQ1IG9yIG1ldGEtcmFzcGJl
cnJ5cGkgdG8gbm90IA0KPiBoYXZlIHRvIG92ZXJ3cml0ZSB0aGUgcXRiYXNlIHJ1bGUuDQoNCg0K
SSBkb250IHVuZGVyc3RhbmQuIFBBS0NBR0VDT05GSUdTIGFyZSBzcGVjaWZpY2FsbHkgZGVzaW5l
ZCBmb3IgdGhpcyBraW5kIG9mIHNjZW5hcmlvIHdoYXQgcHJvYmxlbXMgYXJlIHlvdSBzZWVpbmcu
DQoNCj4NCj4gRm9yIGluc3RhbmNl4oCmIG1ldGEtcmFzcGJlcnJ5cGkgaXMgcHJvdmlkaW5nIGEg
cGFja2FnZSBjb25maWcgZmlsZSBmb3IgRUdMLg0KPiBNYXkgYmUgeW91IGNvdWxkIGhhdmUgbWV0
YS1xdDUgcmVhZCB0aGlzIHBhY2thZ2UgY29uZmlnLg0KPg0KPg0KPg0KPiBUaGF04oCZcyB0aGUg
cXVlc3Rpb24uIEnigJlkIGxpa2UgdG8ga25vdyB3aGF0IHRoZSBtYWludGFpbmVycyBvZiB0aG9z
ZSANCj4gdHdvIGxheWVycyB0aGluayBhYm91dCB0aGF0Lg0KPg0KPg0KPg0KPiBCZXN0IFJlZ2Fy
ZHMsDQo+DQo+DQo+DQo+IERlIDogWWFubmljayBLaWVrZW5zIFttYWlsdG86eWFubmlja2tpZWtl
bnNAZ21haWwuY29tXSBFbnZvecOpIDogDQo+IG1lcmNyZWRpIDMgZsOpdnJpZXIgMjAxNiAwODo0
MSDDgCA6IEtoZW0gUmFqIENjIDogR1VFWVRBVCBKdWxpZW47IA0KPiB5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnIE9iamV0IDogUmU6IFt5b2N0b10gDQo+IFttZXRhLXF0NV1bbWV0YS1yYXNwYmVycnlw
aV06IFFNQUtFX0xJQlNfRUdMIG5vdCBwcm9wZXJseSBzZXQNCj4NCj4NCj4NCj4gSGF2ZSBhIGxv
b2sgYXQgdGhpcyBnaXQgcmVwbzogDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9ZYW5uaWNrS2lla2Vu
cy9tZXRhLXF0NS1waQ0KPg0KPiBJIGhhdmUgYnVpbGQgYSBxdDUgZWdsZnMgd2l0aCByYXNwYmVy
cnkgcGkyIGJhY2tlbmQgb24gbWFzdGVyIGJyYW5jaCANCj4geWVzdGVyZGF5IGV2ZW5pbmcNCj4N
Cj4NCj4NCj4gT24gV2VkLCBGZWIgMywgMjAxNiBhdCA3OjA4IEFNLCBLaGVtIFJhaiA8cmFqLmto
ZW1AZ21haWwuY29tPiB3cm90ZToNCj4NCj4NCj4NCj4gT24gRmViIDIsIDIwMTYsIGF0IDg6NTAg
QU0sIEdVRVlUQVQgSnVsaWVuIA0KPiA8ai5ndWV5dGF0QGNkc3NvZnQuc3R1ZGllbC5mcj4NCj4g
d3JvdGU6DQo+DQo+DQo+DQo+IEhpLA0KPg0KPg0KPg0KPiBJdCBzZWVtcyB0aGF0IHRoZXJlIGFy
ZSBzb21lIHN0aWZmIG1pc3NpbmcgYmV0d2VlbiBtZXRhLXF0NSBvciANCj4gbWV0YS1yYXNwYmVy
cnlwaS4NCj4NCj4gV2hlbiB3ZSBzZXQgdGhlIG9wdGlvbiBnbGVz4oCmIHRvIHF0YmFzZSB3ZSBk
b27igJl0IGdldCB0aGUgUU1BS0VfTElCU19FR0wgDQo+IHNldCBwcm9wZXJseS4NCj4NCj4gV2Ug
Y2FuIGNvbXBhcmUgYSB3b3JraW5nIHNldCBvZiB2YXJpYWJsZXMgaW4gdGhlIHF0IG1rc3BlY3Mg
ZGlyZWN0b3J5IG9mIHF0Lg0KPg0KPiBUaGVyZSBpcyBvbmUgZGVkaWNhdGVkIGZpbGUgZm9yIHRo
ZSBSYXNwYmVycnlQaTIuIE1heSBiZSBvbmUgYWxzbyBmb3IgDQo+IFJhc3BiZXJyeVBpLg0KPg0K
PiBBbnl3YXkhDQo+DQo+IEhvdyBjb3VsZCB3ZSBzZXQgdGhvc2UgKl9FR0wgdmFyaWFibGVzIHBy
b3Blcmx5PyBBbmTigKYgSWYgdGhleSBhcmUgDQo+IHByb3Blcmx5IHNldCwgd2lsbCBxdGJhc2Ug
d2lsbCB0YWtlIHRoZW0gaW50byBhY2NvdW50Pw0KPg0KPg0KPg0KPiBJIHdpbGwgYmUgaGFwcHkg
dG8gcHJvcG9zZSBhIHBhdGNoIGJ1dCBJIG5lZWQgdG8gZ2V0IG1vcmUgcHJlY2lzaW9uIGZpcnN0
Lg0KPg0KPg0KPg0KPiBGaXJzdGx5IHNob3cgdGhlIERJU1RST19GRUFUVVJFUyBtYXkgYmUgeW91
IGFyZSBtaXNzaW5nIHNvbWUgaW1wb3J0YW50IA0KPiBrbm9icyBmb3IgRUdMDQo+DQo+IGxpa2Ug
b3BlbkdMIGFuZCBnbGVzMiBldGMuDQo+DQo+DQo+DQo+IFRoYW5rcyBpbiBhZHZhbmNlLA0KPg0K
Pg0KPg0KPg0KPg0KPg0KPg0KPiBKdWxpZW4gR1VFWVRBVA0KPg0KPiBJbmfDqW5pZXVyIEluZm9y
bWF0aXF1ZQ0KPg0KPiA8aW1hZ2UwMDEucG5nPg0KPg0KPiAxMDI3LCBhdmVudWUgZHUgRG9jdGV1
ciBKdWxpZW4gTGVmZWJyZSBCUDI3DQo+DQo+IDA2MjcxIFZpbGxlbmV1dmUtTG91YmV0IENlZGV4
DQo+DQo+IEZpeGUgOiAgKzMzICgwKSA0OTIgMDI0IDU0NQ0KPiBNb2IgOiAgKzMzKDApIDYxNyA5
ODAgMzgzDQo+IEZheCA6ICAgICszMygwKSA0OTIgMDI0IDU0Ng0KPiBFbWFpbCA6IGouZ3VleXRh
dEBjZHNzb2Z0LnN0dWRpZWwuZnINCj4NCj4gd3d3IDogd3d3LnN0dWRpZWwuZnINCj4NCj4gUCBQ
ZW5zZXogRW52aXJvbm5lbWVudCwgaW1wcmltZXogc2V1bGVtZW50IHNpIG7DqWNlc3NhaXJlDQo+
DQo+DQo+DQo+IC0tDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+
IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPg0KPg0KPg0K
Pg0KPiAtLQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRw
czovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4NCj4NCg==

