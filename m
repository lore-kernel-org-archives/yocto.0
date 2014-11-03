Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33264E008D0; Mon,  3 Nov 2014 14:39:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 68 seconds by postgrey-1.32 at yocto-www;
	Mon, 03 Nov 2014 14:39:13 PST
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95F05E00874
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 14:39:13 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-2.us.mimecast.lan; Mon, 03 Nov 2014 17:38:03 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 3 Nov 2014 14:38:02 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Mon, 3 Nov 2014 14:38:01 -0800
Thread-Topic: [yocto] Help me understand Openembedded variable expansion
Thread-Index: Ac/0SKq/v+3gNLyZQXqNW+RT51IMVADbHAHA
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD886DD2C@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87F98A8@MSXBEBVT12.planar.net>
	<1414677103.7649.59.camel@ted>
In-Reply-To: <1414677103.7649.59.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: puY7B4jAT8aG3iMnXYOOcw-1
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Help me understand Openembedded variable expansion
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
X-List-Received-Date: Mon, 03 Nov 2014 22:39:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUmljaGFyZCBQdXJkaWUg
W21haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnXQ0KPiBTZW50OiBUaHVy
c2RheSwgT2N0b2JlciAzMCwgMjAxNCA2OjUyIEFNDQo+IFRvOiBNYXR0IFNjaHVja21hbm4NCj4g
Q2M6IFlvY3RvIFByb2plY3QNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gSGVscCBtZSB1bmRlcnN0
YW5kIE9wZW5lbWJlZGRlZCB2YXJpYWJsZSBleHBhbnNpb24NCj4gDQo+IE9uIFR1ZSwgMjAxNC0x
MC0yOCBhdCAxMDoxMSAtMDcwMCwgTWF0dCBTY2h1Y2ttYW5uIHdyb3RlOg0KPiA+IFNvIHRoZXJl
IGlzIHNvbWV0aGluZyBJIGp1c3QgZG9uJ3QgZ2V0IGFib3V0IGhvdyB2YXJpYWJsZXMgZ2V0DQo+
ID4gY3JlYXRlZCwgZXhwYW5kZWQsIGludGVycHJldGVkLCBldGMgaW4gQml0YmFrZQ0KPiA+DQo+
ID4gRm9yIGV4YW1wbGUgSSdtIHRyeWluZyB0byBjb3B5IHNvbWUgb2YgdGhlIHRlY2huaXF1ZXMg
aW4gdGhlIFBva3kNCj4gVGlueQ0KPiA+IGRpc3RyaWJ1dGlvbiB0byByZWR1Y2UgbXkgaW1hZ2Ug
c2l6ZSBhbmQgYnVpbGQgdGltZS4NCj4gPiBPbmUgb2YgdGhlIGZyYWdtZW50cyBpcyB0aGlzIG9u
ZS4NCj4gPg0KPiA+ICMgVGhlIG10cmFjZSBzY3JpcHQgaW5jbHVkZWQgYnkgZWdsaWJjIGlzIGEg
cGVybCBzY3JpcHQuIFRoaXMgbWVhbnMNCj4gPiB0aGUgc3lzdGVtICMgd2lsbCBidWlsZCBwZXJs
IGluIGNhc2UgdGhpcyBwYWNrYWdlIGlzIGluc3RhbGxlZC4gU2luY2UNCj4gPiB3ZSBkb24ndCBj
YXJlIGFib3V0ICMgdGhpcyBzY3JpcHQsIHJlbW92ZSB0aGUgZGVwZW5kZW5jeSBmcm9tIGhlcmUu
DQo+ID4gUkRFUEVORFNfJHtQTn0tbXRyYWNlX3BuLWVnbGliYyA9ICIiDQo+ID4NCj4gPiBJIHB1
dCB0aGlzIGluIG15IGRpc3RyaWJ1dGlvbiAuY29uZiBmaWxlIGFuZCBJIGRvZXNuJ3Qgc2VlbSB0
byBkbw0KPiA+IGFueXRoaW5nIHBlcmwgaXMgc3RpbGwgZ2V0dGluZyBidWlsdC4NCj4gPiBPZiBj
b3Vyc2UgaXQgZG9lc24ndCBoZWxwIHRoYXQgSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgZG9lcywN
Cj4gPiBlc3BlY2lhbGx5IGluIHRoZSBjb250ZXh0IG9mIHRoZSBkaXN0cmlidXRpb24gLmNvbmYg
ZmlsZS4NCj4gPg0KPiA+IEkgYWxzbyBzZWUgaGludHMgaW4gdGhlIGNvZGUgaW4gZGVidWcgb3V0
cHV0IHRoYXQgdGhlIG1hY2hpbmUsIGltYWdlLA0KPiA+IG9yIGRpc3RyaWJ1dGlvbiBuYW1lcyBj
YW4gYXV0b21hdGljYWxseSBnZXQgYXBwZW5kZWQgdG8gcGF0aHMsIG9yDQo+ID4gdmFyaWFibGVz
IGJ1dCBJIGRvbid0IHJlYWxseSB1bmRlcnN0YW5kIGhvdyB0aGF0IHdvcmtzLg0KPiA+DQo+ID4g
SSdtIG5vdCBldmVuIHN1cmUgaG93IHRvIHBocmFzZSBhIHF1ZXN0aW9uIGFyb3VuZCB0aGlzLCBp
bW1lZGlhdGVseQ0KPiA+IEknZCBsaWtlIHRvIGZpZ3VyZSBvdXQgd2h5IFBlcmwgaXMgc3RpbGwg
Z2V0dGluZyBidWlsdCBidXQgdWx0aW1hdGVseQ0KPiA+IEknZCBsaWtlIHRvIHVuZGVyc3RhbmQg
dGhlIHZhcmlhYmxlIHJ1bGVzIGJldHRlciBzbyBJIHRoYXQgSSBjYW4NCj4gPiBiZXR0ZXIgdGFr
ZSBhZHZhbnRhZ2Ugb2YgdGhpcyBwb3dlciB0b29sLg0KPiANCj4gUGVyaGFwcyBoYXZlIGEgbG9v
ayBhdCAib3ZlcnJpZGVzIiBpbiB0aGUgYml0YmFrZSBtYW51YWwuDQo+IA0KPiBZb3UgY2FuIHNw
bGl0IFJERVBFTkRTXyR7UE59LW10cmFjZV9wbi1lZ2xpYmMgaW50byBjb21wb25lbnRzLiBTdGFy
dGluZw0KPiBvbiB0aGUgUkhTLCAiX3BuLWVnbGliYyIgaXMgYW4gb3ZlcnJpZGUgdGhhdCBhcHBs
aWVzIHRvIHJlY2lwZXMgd2hlcmUNCj4gUE4gPSAiZWdsaWJjIi4gSW4gdGhvc2UgcmVjaXBlcywg
dGhlIHZhcmlhYmxlIGJlY29tZXM6DQo+IA0KPiBSREVQRU5EU18ke1BOfS1tdHJhY2UgPSAiIg0K
PiANCj4gYW5kIGlzIGJhc2ljYWxseSBvdmVycmlkaW5nIGEgZGVwZW5kZW5jeSBvbiBwZXJsIHRo
YXQgd291bGQgb3RoZXIgYmUNCj4gdGhlcmUsIHNvbWV0aGluZyBsaWtlOg0KPiANCj4gUkRFUEVO
RFNfJHtQTn0tbXRyYWNlID0gInBlcmwiLg0KPiANCj4gRG9lcyB0aGF0IGhlbHA/DQo+IA0KPiBD
aGVlcnMsDQo+IA0KPiBSaWNoYXJkDQoNClRoYW5rIHlvdSB0byBib3RoIFBldGVyIEJlcmdpbiBh
bmQgUmljaGFyZCBQdXJkaWUsIA0KDQpJJ20gInNsaWdodGx5IiBtb3JlIGtub3dsZWRnZWFibGUg
bm93LCBQZXRlcidzIHN1Z2dlc3Rpb24gb2YgdXNpbmcgYml0YmFrZSAtZyAtdSBkZXBleHAge2lt
YWdlfSBhbmQgbG9va2luZyBhdCB0aGUgcmV2ZXJzZSBkZXBlbmRzIGZvciBwZXJsIGxlYWQgbWUg
dG8gc2VlIHRoYXQgaXQgd2FzIHRoZSBleHRlcm5hbC1saW5hcm8tdG9vbGNoYWluIHJlY2lwZSBm
cm9tIHRoZSBBcmFnbyBsYXllciB0aGF0IHdhcyBicmluZ2luZyBpbiBwZXJsLiANCkRvaW5nIHNv
bWUgZGlnZ2luZyBhcm91bmQgSSBjb3VsZCBzZWUgdGhhdCBtZXRhLWFyYWdvLWV4dHJhcy9yZWNp
cGVzLWNvcmUvbWV0YS9leHRlcm5hbC1hcmFnby10b29sY2hhaW4uYmIgaXMgaW5jbHVkaW5nIHJl
Y2lwZXMtY29yZS9lZ2xpYmMvZWdsaWJjLXBhY2thZ2UuaW5jIHdoaWNoIGhhcyB0aGUgUkRFUEVO
RFMgbGluZSBwZXJsIG9uIG10cmFjZS4gDQoNClJpY2hhcmRzIGV4cGxhbmF0aW9uIG9mIHRoZSBk
ZXBlbmRlbmN5IG92ZXJyaWRlIGxlYWQgbWUgdG8gdGhlIGZvbGxvd2luZyBsaW5lIGluIG15IG93
biBkaXN0cmlidXRpb24uY29uZiBmaWxlLiANClJERVBFTkRTXyR7UE59LW10cmFjZV9wbi1leHRl
cm5hbC1saW5hcm8tdG9vbGNoYWluID0gIiINCg0KTm93IHdoZW4gSSBydW4gYml0YmFrZSAtZyAt
dSBkZXBleHAge2ltYWdlfSBJIG5vIGxvbmdlciBzZWUgcGVybCBpbiB0aGUgbGlzdCBvZiBwYWNr
YWdlcy4gDQoNCkknbSBzdGlsbCBub3Qgc3VyZSB3aHkgaXQncyAicG4tZXh0ZXJuYWwtbGluYXJv
LXRvb2xjaGFpbiIgc2luY2UgdGhlIHJlY2lwZSBmaWxlIHRoYXQgaW5jbHVkZXMgZWdsaWJjLXBh
Y2thZ2UuaW5jIGlzIGNhbGxlZCBleHRlcm5hbC1hcmFnby10b29sY2hhaW4uYmIuIA0KDQpJIGFs
c28gdHJpZWQgdG8gdGFrZSBhIGxvb2sgaW4gdGhlIG1hbnVhbCBmb3IgYSBkZXNjcmlwdGlvbiBv
ZiBvdmVycmlkZXMgb2YgdGhpcyBmb3JtIGFuZCBJIGRpZG4ndCBpbW1lZGlhdGVseSBzZWUgYW55
dGhpbmcgdGhhdCBjb3ZlcmVkIHRoaXMgX3BuLWZvby1iYXIgc3ludGF4LiBJIGRpZCBmaW5kIHRo
aXMgc2VjdGlvbiBidXQgaXQgaXMgYSBiaXQgbGlnaHQgYW5kIGRvZXNuJ3Qgc2VlbSB0byBjb3Zl
ciB0aGlzIGNhc2UNCmh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzEuNi9iaXRiYWtl
LXVzZXItbWFudWFsL2JpdGJha2UtdXNlci1tYW51YWwuaHRtbCNjb25kaXRpb25hbC1zeW50YXgt
b3ZlcnJpZGVzDQoNCkFtIEkgbWlzc2luZyBzb21ldGhpbmc/IA0KDQpUaGFua3MsIA0KTWF0dCBT
LiANCg0KDQo=


