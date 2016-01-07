Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7472E00CA0; Thu,  7 Jan 2016 01:50:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 98475E006F3
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2016 01:50:09 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0224.002; Thu, 7 Jan 2016 10:50:08 +0100
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "zavier.luo@gmail.com" <zavier.luo@gmail.com>
Thread-Topic: [yocto] [meta-cgl][PATCH] packagegroup-cgl-applications: unify
	the package name to fix the parse warnings
Thread-Index: AQHRSTDKl3PabpIWLUyi+RReAC+x3w==
Date: Thu, 7 Jan 2016 09:50:08 +0000
Message-ID: <1452160250.2993.28.camel@sestows129.enea.se>
References: <1451297181-342-1-git-send-email-zavier.luo@gmail.com>
In-Reply-To: <1451297181-342-1-git-send-email-zavier.luo@gmail.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.141.157]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] packagegroup-cgl-applications: unify the package name to fix the parse warnings
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
X-List-Received-Date: Thu, 07 Jan 2016 09:50:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B0E44BD6206CFA43AD0C7FAA59F0CA89@local>
Content-Transfer-Encoding: base64

aGkgWmF2aWVyLA0KDQpPbiBtw6VuLCAyMDE1LTEyLTI4IGF0IDE4OjA2ICswODAwLCBaYXZpZXIg
THVvIHdyb3RlOg0KPiBGaXggdGhlIGZvbGxvd2luZyBwYXJzZSB3YXJuaW5nOg0KPiAgICAgV0FS
TklORzogVmFyaWFibGUga2V5IFJERVBFTkRTXyR7UE59ICggJHtMVFROR1VTVH0pIHJlcGxhY2Vz
IG9yaWdpbmFsIGtleSBSREVQRU5EU19wYWNrYWdlZ3JvdXAtY2dsLWFwcGxpY2F0aW9ucyAoICAg
ICBsdm0yICAgICAke0xNX1NFTlNPUlN9ICAgICBiYyAgICAgZ2V0dGV4dCAgICAgZ2V0dGV4dC1y
dW50aW1lICAgICBiYWJlbHRyYWNlICAgICBnZGIgICAgIGdkYnNlcnZlciAgICAgcnN5bmMgICAg
IHN0cmFjZSAgICAgbGliZXZlbnQgICAgIG1kYWRtICAgICBxdW90YSAgICAgc21hcnRtb250b29s
cyAgICAgbW9uaXQgICAgIHN5c2xvZy1uZyAgICAgb2NmczItdG9vbHMgICAgIGxvZ2NoZWNrICAg
ICBzYW1oYWluLWNsaWVudCAgICAgc2FtaGFpbi1zZXJ2ZXIgICAgIGF1ZGl0ICAgICBjcmFzaCAg
ICAgcGFtLXBhc3N3ZHFjICAgICBsaWJwYW0gICAgIHJzeXNsb2cgICAgIG1ha2VkdW1wZmlsZSAg
ICAgKS4NCg0KSSBtZXJnZWQgdGhlIHBhdGNoIGFmdGVyIHJlLWZvcm1hdHRpbmcgdGhlIGRlc2Ny
aXB0aW9uLiBOZXh0IHRpbWUgcGxlYXNlDQp0cnkgdG8ga2VlcCBhIG1heCBsaW5lIGxlbmd0aCBv
ZiA4MCBjaGFyYWN0ZXJzIGluIHRoZSBjb21taXQgZm9yIGJldHRlcg0KZ2l0IGxvZyByZWFkYWJp
bGl0eS4NCg0KLS1BZHJpYW4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogWmF2aWVyIEx1byA8emF2
aWVyLmx1b0BnbWFpbC5jb20+DQo+IC0tLQ0KPiAgbWV0YS1jZ2wtY29tbW9uL3BhY2thZ2Vncm91
cHMvcGFja2FnZWdyb3VwLWNnbC1hcHBsaWNhdGlvbnMuYmIgfCA2ICsrKy0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9tZXRhLWNnbC1jb21tb24vcGFja2FnZWdyb3Vwcy9wYWNrYWdlZ3JvdXAtY2dsLWFwcGxp
Y2F0aW9ucy5iYiBiL21ldGEtY2dsLWNvbW1vbi9wYWNrYWdlZ3JvdXBzL3BhY2thZ2Vncm91cC1j
Z2wtYXBwbGljYXRpb25zLmJiDQo+IGluZGV4IGY4MjNlY2UuLjNlYmI3ZWQgMTAwNjQ0DQo+IC0t
LSBhL21ldGEtY2dsLWNvbW1vbi9wYWNrYWdlZ3JvdXBzL3BhY2thZ2Vncm91cC1jZ2wtYXBwbGlj
YXRpb25zLmJiDQo+ICsrKyBiL21ldGEtY2dsLWNvbW1vbi9wYWNrYWdlZ3JvdXBzL3BhY2thZ2Vn
cm91cC1jZ2wtYXBwbGljYXRpb25zLmJiDQo+IEBAIC04LDcgKzgsNyBAQCBpbmhlcml0IHBhY2th
Z2Vncm91cA0KPiAgaW5oZXJpdCBwa2djb25maWcNCj4gIA0KPiANCj4gLVBBQ0tBR0VTID0gInBh
Y2thZ2Vncm91cC1jZ2wtYXBwbGljYXRpb25zIg0KPiArUEFDS0FHRVMgPSAiJHtQTn0iDQo+ICAN
Cj4gIExNX1NFTlNPUlMgPSAiIFwNCj4gICAgICBsbXNlbnNvcnMtZmFuY29udHJvbCBcDQo+IEBA
IC0yNCw3ICsyNCw3IEBAIExNX1NFTlNPUlMgPSAiIFwNCj4gICAgICBsbXNlbnNvcnMtY29uZmln
LWZhbmNvbnRyb2wgXA0KPiAgICAgICINCj4gIA0KPiAtUkRFUEVORFNfcGFja2FnZWdyb3VwLWNn
bC1hcHBsaWNhdGlvbnMgPSAiIFwNCj4gK1JERVBFTkRTXyR7UE59ID0gIiBcDQo+ICAgICAgbHZt
MiBcDQo+ICAgICAgJHtMTV9TRU5TT1JTfSBcDQo+ICAgICAgYmMgXA0KPiBAQCAtNjQsNCArNjQs
NCBAQCBSREVQRU5EU18ke1BOfV9hcHBlbmRfcWVtdXBwYyA9ICIgJHtMVFROR1VTVH0iDQo+ICBS
REVQRU5EU18ke1BOfV9hcHBlbmRfcWVtdWFybSA9ICIgJHtMVFROR1VTVH0iDQo+ICBSREVQRU5E
U18ke1BOfV9hcHBlbmRfcG93ZXJwYyA9ICIgJHtMVFROR1VTVH0iDQo+ICANCj4gLVJSRUNPTU1F
TkRTX3BhY2thZ2Vncm91cC1jZ2wtYXBwbGljYXRpb25zID0gIiINCj4gK1JSRUNPTU1FTkRTXyR7
UE59ID0gIiINCj4gLS0gDQo+IDIuNC4zDQo+IA0KDQoNCg==

