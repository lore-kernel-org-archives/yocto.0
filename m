Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39784E00A9C; Mon,  2 Oct 2017 08:23:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 724C5E006CA
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 08:23:23 -0700 (PDT)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1293.2;
	Mon, 2 Oct 2017 09:23:22 -0600
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1293.2;
	Mon, 2 Oct 2017 09:23:22 -0600
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1293.002;
	Mon, 2 Oct 2017 09:23:22 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "bruce.ashfield@windriver.com" <bruce.ashfield@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Configuration fragments not making it into kernel
	configuration
Thread-Index: AQHTOmSVeZY8pvkFA0SrnPsL+1+tr6LRDGiAgAADJoCAAAUAgA==
Date: Mon, 2 Oct 2017 15:23:21 +0000
Message-ID: <1506957801.2816.10.camel@sdl.usu.edu>
References: <1506828179.7624.9.camel@sdl.usu.edu>
	<3fd40621-6c3e-d7e2-69c0-baa1aa4dab86@windriver.com>
	<1506956727.2816.5.camel@sdl.usu.edu>
In-Reply-To: <1506956727.2816.5.camel@sdl.usu.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.22.119]
MIME-Version: 1.0
Cc: Jack Kiefer <Jack.Kiefer@sdl.usu.edu>
Subject: Re: Configuration fragments not making it into kernel configuration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Oct 2017 15:23:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <BC6EA52923FE4A4C8DD854832859E4A9@sdl.usu.edu>
Content-Transfer-Encoding: base64

PiA+ID4gSSBrbm93IEkgY2FuIGZpeCB0aGlzIGJ5IHNpbXBseSBkb2luZyBhIG1lbnVjb25maWcs
IGJ1dCB0aGF0DQo+ID4gPiBpc24ndA0KPiA+ID4gdGhlDQo+ID4gPiBwcm9wZXIgd2F5IHRvIGRv
IGl0IC0gSSBoYXZlIG11bHRpcGxlIEJTUCBsYXllcnMgdGhhdCBkbyB0aGUgc2FtZQ0KPiA+ID4g
dGhpbmcNCj4gPiA+IGFuZCB0aGV5IGFsbCBiZWhhdmUgaW4gdGhlIHNhbWUgd2F5Lg0KPiA+ID4g
DQo+ID4gPiBXaGF0IGFtIEkgZG9pbmcgd3Jvbmc/wqDCoEkndmUgYXR0YWNoZWQgbXkgbGF5ZXIg
dGhhdCBjb250YWlucyB0aGUNCj4gPiA+IHJlY2lwZS7CoMKgSWYgdGhlIGZyYWdtZW50cyBhcmUg
Z2V0dGluZyBpbnN0YWxsZWQgSSB0aGluayB0aGUNCj4gPiA+IHJlY2lwZQ0KPiA+ID4gaXMNCj4g
PiA+IHdvcmtpbmcgcmlnaHQgLSBidXQgaXMgdGhlcmUgc29tZXRoaW5nIGluIHRoZSBsb3dlci1s
ZXZlbCBjbGFzcw0KPiA+ID4gdGhhdA0KPiA+ID4gaXNuJ3Qgd29ya2luZyBvciBkbyBJIGhhdmUg
YSBjb25maWd1cmF0aW9uIHRoYXQgaXMgYnJlYWtpbmcgaXQ/DQo+ID4gSSBkaWQgYSBidWlsZCB3
aXRoIG1vcnR5IGFuZCB5b3VyIEJTUCwgYW5kIEknbSBub3Qgc2VlaW5nDQo+ID4gdGhlIHNhbWUg
cmVzdWx0cy4NCj4gPiANCj4gPiBPbmUgbm90YWJsZSBkaWZmZXJlbmNlIGlzIHRoYXQgaWYgeW91
IGFyZSB1c2luZyB0aGUgdGlwIG9mDQo+ID4gdGhlIG1vcnR5IGJyYW5jaGVzLCB5b3Ugc2hvdWxk
IGdldCA0LjguMTcsIG5vdCA0LjguMy4NCj4gPiANCj4gPiBJIGRpZCB6ZXJvIGV4dHJhIGNvbmZp
Z3VyYXRpb24sIGp1c3QgYWRkZWQgeW91ciBsYXllciwgbWV0YS1pbnRlbA0KPiA+IGFuZCB0aGVu
IGJpdGJha2VkIGxpbnV4LXlvY3RvLXJ0Lg0KPiBJIGp1c3Qgbm90aWNlZCB0aGF0IG15IG1ldGEt
aW50ZWwgbGF5ZXIgd2FzIGEgZmV3IGNvbW1pdHMgYmVoaW5kLCBhDQo+IGxpa2VseSBjdWxwcml0
IGZvciB3aGF0IEknbSBzZWVpbmcuIMKgSSdtIHJlYnVpbGRpbmcgdG8gc2VlIHdoYXQgSQ0KPiBn
ZXQuDQo+IEknbGwgcmVwb3J0IGJhY2sgd2hlbiBJIGhhdmUgc29tZXRoaW5nLg0KPiANCj4gSWYg
dGhpcyBkb2Vzbid0IHNvbHZlIG15IGlzc3VlLCB3b3VsZCB5b3UgcmVjb21tZW5kIHdpcGluZyBt
eSBzc3RhdGU/DQo+IEkndmUgYWxyZWFkeSB3aXBlZCBvdXQgdG1wIHdpdGhvdXQgc3VjY2Vzcy4N
Cg0KSXNzdWUgcmVzb2x2ZWQuIMKgRnJhZ21lbnRzIG5vdyBtYWtpbmcgaXQgaW50byB0aGUga2Vy
bmVsIGNvbmZpZ3VyYXRpb24NCmNvcnJlY3RseS4gwqBUaGFua3MsIEJydWNlIQ0KDQo+ID4gDQo+
ID4gTWF5YmUgSSdtIG1pc3VuZGVyc3RhbmRpbmcgd2hhdCBJIHNlZSBpbiB0aGUgQlNQIGxheWVy
LCBidXQgSQ0KPiA+IGRpZCBnZXQgSUdCIGRpc2FibGVkOg0KPiA+IA0KPiA+IDp+L3Bva3kvYnVp
bGQvdG1wL3dvcmsvY29yZWk3LTY0LWludGVsLWNvbW1vbi1wb2t5LWxpbnV4L2xpbnV4LQ0KPiA+
IHlvY3RvLQ0KPiA+IHJ0LzQuOC4xNytnaXRBVVRPSU5DK2JiNjk4NGY0NmJfOWM0ZjUyY2IyYi1y
MC9saW51eC1jb3JlaTctNjQtDQo+ID4gaW50ZWwtDQo+ID4gY29tbW9uLXByZWVtcHQtcnQtYnVp
bGQkwqANCj4gPiBncmVwIENPTkZJR19JR0IgLmNvbmZpZw0KPiA+ICMgQ09ORklHX0lHQiBpcyBu
b3Qgc2V0DQo+ID4gQ09ORklHX0lHQlZGPW0NCj4gPiANCj4gPiBBbmQgSSBkaWQgZ2V0IGEgd2Fy
bmluZyBkdXJpbmcgdGhlIGJ1aWxkOg0KPiA+IA0KPiA+IC0tLS0tLS0tLS0gQ09ORklHX0lHQl9E
Q0EgLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiBDb25maWc6IENPTkZJR19JR0JfRENBDQo+ID4gRnJv
bTrCoA0KPiA+IC9ob21lL2JydWNlL3Bva3kvYnVpbGQvdG1wL3dvcmstc2hhcmVkL3hwZWRpdGU3
NTcwL2tlcm5lbC0NCj4gPiBzb3VyY2UvLmtlcm5lbC1tZXRhL2NvbmZpZ3Mvc3RhbmRhcmQvcHJl
ZW1wdC0NCj4gPiBydC9pbnRlbC9mZWF0dXJlcy9kY2EvZGNhLmNmZw0KPiA+IFJlcXVlc3RlZCB2
YWx1ZTrCoMKgQ09ORklHX0lHQl9EQ0E9eQ0KPiA+IEFjdHVhbCB2YWx1ZToNCj4gPiANCj4gPiBD
b25maWcgJ0lHQl9EQ0EnIGhhcyB0aGUgZm9sbG93aW5nIGNvbmRpdGlvbmFsczoNCj4gPiDCoMKg
wqBJR0IgJiYgRENBICYmICEoSUdCID0geSAmJiBEQ0EgPSBtKSAodmFsdWU6ICJuIikNCj4gPiBJ
R0IgJiYgRENBICYmICEoSUdCID0geSAmJiBEQ0EgPSBtKSAodmFsdWU6ICJuIikNCj4gPiBEZXBl
bmRlbmN5IHZhbHVlcyBhcmU6DQo+ID4gwqDCoMKgeSBbeV0gbSBbbV0gSUdCIFtuXSBEQ0EgW3ld
DQo+ID4gDQo+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiANCj4gPiBXaGljaCBleHBsYWlu
cyB3aHkgQ09ORklHX0lHQl9EQ0EgZGlkbid0IG1ha2UgaXQgaW50byB0aGUgZmluYWwNCj4gPiAu
Y29uZmlnDQo+ID4gDQo+ID4gQ2FuIHlvdSBjbGFyaWZ5IHdoYXQgeW91IHdlcmUgbG9va2luZyB0
byBnZXQgZm9yIGZpbmFsDQo+ID4gY29uZmlndXJhdGlvbg0KPiA+IHNldHRpbmdzID8NCj4gVGhl
IHRocmVlIGZyYWdtZW50cyBzaG91bGQgZGlzYWJsZSB0aGUgSW50ZWwgSUdCIGRyaXZlciAoQ09O
RklHX0lHQg0KPiBub3QNCj4gc2V0KSwgZW5hYmxlIHNvbWUgR1BJTyBJMkMgZHJpdmVycywgYW5k
IGVuYWJsZSBkaXJlY3QgY2FjaGUgYWNjZXNzLg0KPiANCj4gSSdtIGd1ZXNzaW5nIENPTkZJR19J
R0JfRENBIHdhcyBzZXQgaW4gdGhlIG9yaWdpbmFsIGNvbmZpZyBhbmQNCj4gQ09ORklHX0lHQiBp
cyBub3QgYmVpbmcgc2V0LCBzbyBJR0JfRENBIGlzIGdldHRpbmcgdW5zZXQgY2F1c2luZyB0aGUN
Cj4gd2FybmluZy4gwqBJJ2xsIGFkanVzdCBteSBJR0IgZnJhZ21lbnQgdG8gZXhwbGljaXR5IGRp
c2FibGUNCj4gQ09ORklHX0lHQl9EQ0EgYXMgd2VsbC4NCg0KSSBnZXQgdGhlIHNhbWUgd2Fybmlu
ZywgYW5kIEkgYmVsaWV2ZSBpdCBpcyBiZWNhdXNlIHRoYXQgc2V0dGluZyBpcw0Kb25seSBhdmFp
bGFibGUgaWYgQ09ORklHX0lHQiBpcyAneScgb3IgJ20nLiDCoFNpbmNlIEknbSByZW1vdmluZw0K
Q09ORklHX0lHQiwgQ09ORklHX0lHQl9EQ0EgaXNuJ3QgZXZlbiBhbiBvcHRpb24uIMKgSWYgSSBh
ZGQgIiMNCkNPTkZJR19JR0JfRENBIGlzIG5vdCBzZXQiIHRvIG15IGZyYWdtZW50LCBJIGdldCB0
aGUgZm9sbG93aW5nIHdhcm5pbmc6DQotLS0tLS0tLS0tIENPTkZJR19JR0JfRENBIC0tLS0tLS0t
LS0tLS0tLS0tDQpDb25maWc6IENPTkZJR19JR0JfRENBDQpGcm9tOiAvb3B0L3lvY3RvL3Bva3kv
YnVpbGQtdGVpc2l0L3RtcC93b3JrLXNoYXJlZC94cGVkaXRlNzU3MC9rZXJuZWwtDQpzb3VyY2Uv
Lmtlcm5lbC1tZXRhL2NvbmZpZ3Mvc3RhbmRhcmQvcHJlZW1wdC0NCnJ0L2ludGVsL2ZlYXR1cmVz
L2RjYS9kY2EuY2ZnIC9vcHQveW9jdG8vcG9reS9idWlsZC10ZWlzaXQvdG1wL3dvcmstDQpzaGFy
ZWQveHBlZGl0ZTc1NzAva2VybmVsLXNvdXJjZS8ua2VybmVsLW1ldGEvY29uZmlncy9zdGFuZGFy
ZC9wcmVlbXB0LQ0KcnQvaW50ZWwvUmVtb3ZlX0ludGVsX0lHQl9kcml2ZXIuY2ZnDQpSZXF1ZXN0
ZWQgdmFsdWU6wqDCoCMgQ09ORklHX0lHQl9EQ0EgaXMgbm90IHNldA0KQWN0dWFsIHZhbHVlOsKg
wqDCoMKgwqANCg0KQ29uZmlnICdJR0JfRENBJyBoYXMgdGhlIGZvbGxvd2luZyBjb25kaXRpb25h
bHM6wqANCsKgIElHQiAmJiBEQ0EgJiYgIShJR0IgPSB5ICYmIERDQSA9IG0pICh2YWx1ZTogIm4i
KQ0KSUdCICYmIERDQSAmJiAhKElHQiA9IHkgJiYgRENBID0gbSkgKHZhbHVlOiAibiIpDQpEZXBl
bmRlbmN5IHZhbHVlcyBhcmU6wqANCsKgIHkgW3ldIG0gW21dIElHQiBbbl0gRENBIFt5XQ0KDQpX
aGF0IGlzIHRoZSBiZXN0IHdheSB0byBjbGVhbiB1cCB0aGlzIHR5cGUgb2Ygd2FybmluZyAtIG9u
ZSB3aGVyZSB0aGUNCnNldHRpbmcgaXMgYSBjb25kaXRpb25hbCBvcHRpb24gYW5kIGlzIGVuYWJs
ZWQgaW4gdGhlIGRlZmF1bHQNCmNvbmZpZ3VyYXRpb24gYnV0IGEgZnJhZ21lbnQgcmVtb3ZlcyB0
aGUgcGFyZW50IG9wdGlvbj8=

