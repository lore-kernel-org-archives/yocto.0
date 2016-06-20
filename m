Return-Path: <Monica.Rajasekaran@us.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3C68E0049B; Mon, 20 Jun 2016 09:12:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [168.127.0.57 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from fncnmp04.fnc.fujitsu.com (fncnmp04.fnc.fujitsu.com
	[168.127.0.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D70B9E0045E
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 09:12:23 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,499,1459832400"; d="scan'208";a="80264294"
Received: from rchexhcp1.fnc.net.local ([168.127.134.75])
	by fncnmp02.fnc.fujitsu.com with ESMTP/TLS/AES256-SHA;
	20 Jun 2016 11:12:18 -0500
Received: from RCHEXMBP1.fnc.net.local ([169.254.2.106]) by
	RCHEXHCP1.fnc.net.local ([168.127.134.75]) with mapi id 14.03.0294.000;
	Mon, 20 Jun 2016 11:12:17 -0500
From: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] autoreconf
Thread-Index: AdHHQradspqdggSsRDmRJnaYuJFirQAKyDOAAAovToD//7NpgIAAUspg//+u/AD/+hJIoIAMTtaA//8wAlA=
Date: Mon, 20 Jun 2016 16:12:17 +0000
Message-ID: <111ACD726EC3464BAED310F5EA7BEBDA600703@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6005D6@RCHEXMBP1.fnc.net.local>
	<19818178.f818cBogRg@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <19818178.f818cBogRg@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [168.127.136.253]
x-tm-as-product-ver: SMEX-10.2.0.3176-8.000.1202-22404.000
x-tm-as-result: No--57.556600-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autoreconf
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
X-List-Received-Date: Mon, 20 Jun 2016 16:12:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIFBhdWwgYW5kIEtoZW0sIHRoYXQgd29ya2VkIQ0KDQpJIGFsc28gdHJpZWQgYWRkaW5n
IGxpYmNhcC1uZyBidXQgaXQgZ2l2ZXMgbWUgdGhlIGZvbGxvd2luZyBlcnJvcjoNCg0KRVJST1I6
IE5vdGhpbmcgUlBST1ZJREVTICdsaWJjYXAtbmcnIChidXQgL2RhdGEvdXNlcnMvbXJhamFzZS9s
MTAwX2xhYmVsX2Jhc2VkX3IxMDBwb2MvcmVwby9wb2t5L21ldGEtZnNzLXByb2R1Y3QvcmVjaXBl
cy1jb3JlL2ltYWdlcy9mc3MtaW1hZ2UtZnVsbC5iYiBSREVQRU5EUyBvbiBvciBvdGhlcndpc2Ug
cmVxdWlyZXMgaXQpDQoNCkJ1dCwgSSBzZWUgaXQgcHJlc2VudCBhdCBodHRwOi8vZ2l0LnlvY3Rv
cHJvamVjdC5vcmcvY2dpdC5jZ2kvcG9reS9wbGFpbi9tZXRhL3JlY2lwZXMtc3VwcG9ydC9saWJj
YXAtbmcvLi4uLi4/Pw0KDQpUaGFua3MsDQpNb25pY2EgDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBQYXVsIEVnZ2xldG9uIFttYWlsdG86cGF1bC5lZ2dsZXRvbkBsaW51eC5p
bnRlbC5jb21dIA0KU2VudDogU3VuZGF5LCBKdW5lIDE5LCAyMDE2IDU6MTQgUE0NClRvOiBSYWph
c2VrYXJhbiwgTW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5jb20+DQpDYzog
S2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1
YmplY3Q6IFJlOiBbeW9jdG9dIGF1dG9yZWNvbmYNCg0KSGkgTW9uaWNhLA0KDQpBcyBzaG93biBp
biBLaGVtJ3Mgb3JpZ2luYWwgZXhhbXBsZSB5b3UgbmVlZCB0byBhZGQgdGhpcyB0aHJvdWdoIEVY
VFJBX0lNQUdFX0ZFQVRVUkVTLCBub3QgSU1BR0VfSU5TVEFMTCAoc2luY2UgdG9vbHMtc2RrIGlz
IGEgZmVhdHVyZSBuYW1lLCBub3QgYSBwYWNrYWdlIG5hbWUpLg0KDQpDaGVlcnMsDQpQYXVsDQoN
Ck9uIFN1biwgMTkgSnVuIDIwMTYgMjA6MjM6NTMgUmFqYXNla2FyYW4sIE1vbmljYSB3cm90ZToN
Cj4gSSBhZGRlZCB0aGUgZm9sbG93aW5nIGxpbmUgdG8gbXkgcmVjaXBlIGZpbGUsDQo+IA0KPiBJ
TUFHRV9JTlNUQUxMICs9ICJ0b29scy1zZGsiDQo+IA0KPiBCdXQgdGhlcmUgd2FzIHRoZSBmb2xs
b3dpbmcgZXJyb3Igd2l0aCB0aGUgYnVpbGQ6DQo+IA0KPiBFUlJPUjogTm90aGluZyBSUFJPVklE
RVMgJ3Rvb2xzLXNkaycgKGJ1dCANCj4gL2RhdGEvdXNlcnMvbXJhamFzZS9sMTAwX2xhYmVsX2Jh
c2VkX3IxMDBwb2MvcmVwby9wb2t5L21ldGEtZnNzLXByb2R1Yw0KPiB0L3JlYyBpcGVzLWNvcmUv
aW1hZ2VzL2Zzcy1pbWFnZS1mdWxsLmJiIFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSANCj4gcmVx
dWlyZXMgaXQpDQo+IE5PVEU6IFJ1bnRpbWUgdGFyZ2V0ICd0b29scy1zZGsnIGlzIHVuYnVpbGRh
YmxlLCByZW1vdmluZy4uLg0KPiBNaXNzaW5nIG9yIHVuYnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hh
aW4gd2FzOiBbJ3Rvb2xzLXNkayddDQo+IEVSUk9SOiBSZXF1aXJlZCBidWlsZCB0YXJnZXQgJ2Zz
cy1pbWFnZS1mdWxsJyBoYXMgbm8gYnVpbGRhYmxlIHByb3ZpZGVycy4NCj4gTWlzc2luZyBvciB1
bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWydmc3MtaW1hZ2UtZnVsbCcsIA0KPiAn
dG9vbHMtc2RrJ10NCiANCj4gQW55IGlkZWEgb24gdGhpcz8NCj4gDQo+IFRoYW5rcywNCj4gTW9u
aWNhDQo+IA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLaGVtIFJhaiBb
bWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0NCj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDE1LCAy
MDE2IDM6NDggUE0NCj4gVG86IFJhamFzZWthcmFuLCBNb25pY2EgPE1vbmljYS5SYWphc2VrYXJh
bkB1cy5mdWppdHN1LmNvbT4NCj4gQ2M6IFBhdWwgRWdnbGV0b24gPHBhdWwuZWdnbGV0b25AbGlu
dXguaW50ZWwuY29tPjsgDQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6
IFt5b2N0b10gYXV0b3JlY29uZg0KPiANCj4gVGhhdCBtaWdodCB3b3JrLCBob3dldmVyIHlvdSBt
aWdodCBuZWVkIG1vcmUgcGFja2FnZXMsIHNvIGFkZGluZyANCj4gdG9vbHMtc2RrIHdpbGwgY292
ZXIgYWxsIG9mIHRoZW0gaW4gb25lIGdvDQogDQo+IA0KPiA+IE9uIEp1biAxNSwgMjAxNiwgYXQg
MTo0NyBQTSwgUmFqYXNla2FyYW4sIE1vbmljYSANCj4gPiA8TW9uaWNhLlJhamFzZWthcmFuQHVz
LmZ1aml0c3UuY29tPiB3cm90ZToNCiANCj4gPiBIaSBSYWosDQo+ID4gDQo+ID4gV2lsbCBhZGRp
bmcgYSBsaW5lIGluIHRoZSBpbWFnZSdzIHJlY2lwZSBmaWxlIGxpa2UgdGhpcyB3b3JrID8NCj4g
PiANCj4gPiBJTUFHRV9JTlNUQUxMID0g4oCdYXV0b2NvbmbigJ0NCj4gPiANCj4gPiBJIGluc3Rh
bGxlZCAiZ2l0IiBhbmQgInJlc29sdmNvbmYiIGluIHRoZSBzYW1lIHdheS4gSnVzdCBub3Qgc3Vy
ZSANCj4gPiBhYm91dCB0aGUgcGFja2FnZSBuYW1lIHRoaXMgdGltZS4NCiANCj4gPiBUaGFua3Ms
DQo+ID4gTW9uaWNhDQo+ID4gDQo+ID4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0NCj4gPiBTZW50
OiBXZWRuZXNkYXksIEp1bmUgMTUsIDIwMTYgMzo0MiBQTQ0KPiA+IFRvOiBSYWphc2VrYXJhbiwg
TW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5jb20+DQo+ID4gQ2M6IFBhdWwg
RWdnbGV0b24gPHBhdWwuZWdnbGV0b25AbGludXguaW50ZWwuY29tPjsgDQo+ID4geW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZw0KPiA+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGF1dG9yZWNvbmYNCj4gPiAN
Cj4gPiBZb3UgbmVlZCB0byBhZGQgYXV0b2NvbmYgdG8geW91ciB0YXJnZXQgaW1hZ2UsIGlmIHlv
dSBkbyBub3QgdXNlIA0KPiA+IE9ubGluZSBwYWNrYWdlIG1hbmFnZW1lbnQNCiANCj4gPiBFWFRS
QV9JTUFHRV9GRUFUVVJFU19hcHBlbmQgPSDigJwgdG9vbHMtc2Rr4oCdDQo+ID4gDQo+ID4gaW4g
bG9jYWwuY29uZiBtaWdodCBoZWxwDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4+IE9uIEp1biAxNSwg
MjAxNiwgYXQgMTozNSBQTSwgUmFqYXNla2FyYW4sIE1vbmljYSANCj4gPj4gPE1vbmljYS5SYWph
c2VrYXJhbkB1cy5mdWppdHN1LmNvbT4gd3JvdGU6DQogDQo+ID4+IEhpIFBhdWwsDQo+ID4+IA0K
PiA+PiBUaGFuayB5b3UuIFRoaXMgaXMgaW4gdGhlIHRhcmdldC4NCj4gPj4gDQo+ID4+IFRoYW5r
cywNCj4gPj4gTW9uaWNhDQo+ID4+IA0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiA+PiBGcm9tOiBQYXVsIEVnZ2xldG9uIFttYWlsdG86cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRl
bC5jb21dDQo+ID4+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxNSwgMjAxNiAzOjI1IFBNDQo+ID4+
IFRvOiBSYWphc2VrYXJhbiwgTW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5j
b20+DQo+ID4+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4+IFN1YmplY3Q6IFJlOiBb
eW9jdG9dIGF1dG9yZWNvbmYNCj4gPj4gDQo+ID4+IEhpIE1vbmljYSwNCj4gPj4gDQo+ID4+IE9u
IFdlZCwgMTUgSnVuIDIwMTYgMjA6MTc6MTYgUmFqYXNla2FyYW4sIE1vbmljYSB3cm90ZToNCj4g
Pj4gDQo+ID4+PiBXaGF0IGlzIHRoZSBwYWNrYWdlIHRvIGluc3RhbGwgYXV0b3JlY29uZiA/IChV
YnVudHUgZXF1aXZhbGVudDoNCj4gPj4+IGFwdC1nZXQgaW5zdGFsbCBkaC1hdXRvcmVjb25mICkN
Cj4gPj4+IA0KPiA+Pj4gSSBhbSBnZXR0aW5nIHRoZSBmb2xsb3dpbmcgZXJyb3IgZm9yIG9uZSBv
ZiBteSBhcHBsaWNhdGlvbnM6DQo+ID4+PiAiYXV0b3JlY29uZjogY29tbWFuZCBub3QgZm91bmQi
DQo+ID4+IA0KPiA+PiANCj4gPj4gYXV0b3JlY29uZiBpcyBwYXJ0IG9mIGF1dG9jb25mLg0KPiA+
PiANCj4gPj4gV2hlcmUgaXMgdGhpcz8gT24gdGhlIHRhcmdldCBvciB3aXRoaW4gdGhlIGJ1aWxk
IHN5c3RlbT8NCj4gPj4gDQo+ID4+IENoZWVycywNCj4gPj4gUGF1bA0KPiA+PiANCj4gPj4gLS0N
Cj4gPj4gDQo+ID4+IFBhdWwgRWdnbGV0b24NCj4gPj4gSW50ZWwgT3BlbiBTb3VyY2UgVGVjaG5v
bG9neSBDZW50cmUNCj4gPj4gLS0NCj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gPj4geW9jdG8gbWFpbGluZyBsaXN0DQo+ID4+IHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmcNCj4gPj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3Rp
bmZvL3lvY3RvDQo+ID4gDQo+ID4gDQo+IA0KPiANCg0KLS0gDQoNClBhdWwgRWdnbGV0b24NCklu
dGVsIE9wZW4gU291cmNlIFRlY2hub2xvZ3kgQ2VudHJlDQo=

