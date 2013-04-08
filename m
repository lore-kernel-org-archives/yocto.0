Return-Path: <Gianpaolo_Macario@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F123DE014B9
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 13:52:17 -0700 (PDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1UPJ33-0006k3-Bu from Gianpaolo_Macario@mentor.com ;
	Mon, 08 Apr 2013 13:52:17 -0700
Received: from SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Mon, 8 Apr 2013 13:52:17 -0700
Received: from EU-MBX-02.mgc.mentorg.com ([169.254.3.230]) by
	SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) with mapi id
	14.01.0289.001; Mon, 8 Apr 2013 21:52:15 +0100
From: "Macario, Gianpaolo" <Gianpaolo_Macario@mentor.com>
To: "Behrens, Holger" <Holger.Behrens@windriver.com>
Thread-Topic: [meta-ivi][PATCH] README.md: Fix poky SHA
Thread-Index: Ac40mtgre1QcySnrQ8SGTTiqvAdRbQ==
Date: Mon, 8 Apr 2013 20:52:15 +0000
Message-ID: <0CCD6BBA210ECA418BCD82271FCFD94C544BF7FF@EU-MBX-02.mgc.mentorg.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
X-OriginalArrivalTime: 08 Apr 2013 20:52:17.0199 (UTC)
	FILETIME=[F48073F0:01CE349A]
Cc: "Sarbu, Florin-Ionut \(Florin\)" <Florin.Sarbu@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-ivi][PATCH] README.md: Fix poky SHA
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
X-List-Received-Date: Mon, 08 Apr 2013 20:52:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSG9sZ2VyLA0KDQpVc2luZyBtYXN0ZXIgKGFuZCBub3QgdGhlIFNIQSBhZHZlcnRpc2VkIGlu
IFJFQURNRS5tZCkgdGhlIGJ1aWxkIHdhcyBhY3R1YWxseSBzdWNjZXNzZnVsLg0KDQpBdHRhY2hp
bmcgcGF0Y2guDQoNClNpZ25lZC1vZmYtYnk6IEdpYW5wYW9sbyBNYWNhcmlvIDxnaWFucGFvbG9f
bWFjYXJpb0BtZW50b3IuY29tPg0KLS0tDQogUkVBRE1FLm1kIHwgICAgMiArLQ0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvUkVB
RE1FLm1kIGIvUkVBRE1FLm1kDQppbmRleCBiMmM4NGY5Li5mMTdhNjA2IDEwMDY0NA0KLS0tIGEv
UkVBRE1FLm1kDQorKysgYi9SRUFETUUubWQNCkBAIC0xNiw3ICsxNiw3IEBAIExheWVyIERlcGVu
ZGVuY2llcw0KDQogVVJJOiBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9wb2t5DQogYnJhbmNo
OiBtYXN0ZXINCi1yZXZpc2lvbjogZDgyMzc1OWI0NTk0MTQzZDUyMmVhZTBiMmEyNDk4NDM2YTZk
Y2IxZQ0KK3JldmlzaW9uOiBhNjUwMjA4MWI3YzdhY2M0OTE4N2FhN2M2OGFkMTllMDc1MWVlMDMw
DQoNCiBVc2luZyB0aGUgYWJvdmUgZ2l0IHNoYSdzIGFuZCBtYXN0ZXIgbWV0YS1pdmksIGJpdGJh
a2luZyBmb3Rvbi1pbWFnZSBpcw0KIGtub3duIHRvIHdvcmsgKHRoZSBmb3Rvbi1pbWFnZSBidWls
ZCBzaG91bGQgYmUgR0VOSVZJIDQuMCBjb21wbGlhbnQpLg0KLS0NCjEuNy45LjUNCg0KQ29yZGlh
bGkgU2FsdXRpIC8gQmVzdCBSZWdhcmRzDQoNCi0tDQpHaWFucGFvbG8gTWFjYXJpbw0KU2VuaW9y
IE1lbWJlciBUZWNobmljYWwgU3RhZmYNCk1lbnRvciBHcmFwaGljcyAtIExpbnV4IFRyYW5zcG9y
dGF0aW9uIFNvbHV0aW9ucw0KZW1haWw6IGdpYW5wYW9sb19tYWNhcmlvQG1lbnRvci5jb20NCmh0
dHA6Ly93d3cubWVudG9yLmNvbS9pdmkNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiBGcm9tOiBCZWhyZW5zLCBIb2xnZXIgW21haWx0bzpIb2xnZXIuQmVocmVuc0B3aW5kcml2ZXIu
Y29tXQ0KPiBTZW50OiBNb25kYXksIEFwcmlsIDA4LCAyMDEzIDU6MzQgUE0NCj4gVG86IE1hY2Fy
aW8sIEdpYW5wYW9sbw0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgU2FyYnUsIEZsb3Jp
bi1Jb251dCAoRmxvcmluKQ0KPiBTdWJqZWN0OiBSRTogW3lvY3RvXSBbbWV0YS1pdmldIE5vIHJl
Y2lwZXMgYXZhaWxhYmxlIGZvcjogbWV0YS1pdmkvcmVjaXBlcy0NCj4gZ3JhcGhpY3MveG9yZy14
c2VydmVyL3hzZXJ2ZXIteG9yZ18xLjE0LjAuYmJhcHBlbmQNCj4gDQo+IEhlbGxvIEdpYW5wYW9s
bywNCj4gDQo+ID4gSGVsbG8NCj4gPg0KPiA+IEkgYW0gYWZyYWlkIEkgZGlzY292ZXJlZCBhIGJ1
ZyBhZ2FpbnN0IHRoZSBHRU5JVkkgRm90b24tMC4xIFlvY3RvIEJhc2VsaW5lLg0KPiA+IEkgZm9s
bG93ZWQgdGhlIGluc3RydWN0aW9ucyBhdA0KPiA+IGh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9y
Zy9jZ2l0L2NnaXQuY2dpL21ldGEtDQo+ID4gaXZpL3RyZWUvUkVBRE1FLm1kP2g9NC4wDQo+ID4N
Cj4gPiBJIHN1c3BlY3Qgc29tZSBtaXNhbGlnbm1lbnQgYmV0d2VlbiBtZXRhLWl2aSBhbmQgcG9r
eSBTSEEgLSBob3dldmVyIEkNCj4gPiBiZWxpZXZlIEkgZm9sbG93ZWQgd2hhdCB0aGUgUkVBRE1F
Lm1lIHNheXMuDQo+ID4NCj4gPiBUaGFuayB5b3UgaW4gYWR2YW5jZSBmb3IgYW55IGhlbHAgb3Ig
c3VnZ2VzdGlvbnMhDQo+IA0KPiBZb3UgbWF5IGJlIHJpZ2h0LCB0cnkgdGhlIHBva3kgbWFzdGVy
Lg0KPiBBbmQgaW4gY2FzZSB0aGF0IHdvcmtzIGZvciB5b3UsIHBsZWFzZSBzZW50IGEgcGF0Y2gu
DQo+IA0KPiBSZWdhcmRzLA0KPiBIb2xnZXINCg==

