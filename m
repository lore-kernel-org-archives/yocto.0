Return-Path: <Monica.Rajasekaran@us.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13080E00474; Mon, 20 Jun 2016 09:22:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39AC8E003D9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 09:22:42 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,499,1459832400"; d="scan'208";a="80264747"
Received: from rchexhcp2.fnc.net.local ([168.127.134.76])
	by fncnmp02.fnc.fujitsu.com with ESMTP/TLS/AES256-SHA;
	20 Jun 2016 11:22:38 -0500
Received: from RCHEXMBP1.fnc.net.local ([169.254.2.106]) by
	RCHEXHCP2.fnc.net.local ([168.127.134.76]) with mapi id 14.03.0294.000;
	Mon, 20 Jun 2016 11:22:37 -0500
From: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>, Khem Raj
	<raj.khem@gmail.com>
Thread-Topic: [yocto] autoreconf
Thread-Index: AdHHQradspqdggSsRDmRJnaYuJFirQAKyDOAAAovToD//7NpgIAAUspg//+u/AD/+hJIoIAMTtaA//8wAlAAP8OlgAAKV+QwABSdB7A=
Date: Mon, 20 Jun 2016 16:22:36 +0000
Message-ID: <111ACD726EC3464BAED310F5EA7BEBDA600730@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6005D6@RCHEXMBP1.fnc.net.local>
	<19818178.f818cBogRg@peggleto-mobl.ger.corp.intel.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600703@RCHEXMBP1.fnc.net.local>
	<CAMKF1sr5ej_Ot0XN8VgZMAGeexCMoEpeYi7+z2SqzffbzYu0oA@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA60071C@RCHEXMBP1.fnc.net.local>
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA60071C@RCHEXMBP1.fnc.net.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [168.127.136.253]
x-tm-as-product-ver: SMEX-10.2.0.3176-8.000.1202-22404.000
x-tm-as-result: No--51.751400-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 20 Jun 2016 16:22:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgd29ya2VkIGJ5IHJlcGxhY2luZyBsaWJjYXAtbmcgd2l0aCBqdXN0ICJsaWJjYXAiLg0KDQpU
aGFua3MsDQpNb25pY2EgDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlv
Y3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9w
cm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIFJhamFzZWthcmFuLCBNb25pY2ENClNlbnQ6IE1vbmRh
eSwgSnVuZSAyMCwgMjAxNiAxMToxOSBBTQ0KVG86IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5j
b20+DQpDYzogUGF1bCBFZ2dsZXRvbiA8cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb20+OyB5
b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBhdXRvcmVjb25mDQoN
ClllcywgSSBkaWQgdGhlIHNhbWUuIA0KDQpUaGFua3MsDQpNb25pY2ENCg0KDQotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5j
b21dDQpTZW50OiBNb25kYXksIEp1bmUgMjAsIDIwMTYgMTE6MTUgQU0NClRvOiBSYWphc2VrYXJh
biwgTW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5jb20+DQpDYzogUGF1bCBF
Z2dsZXRvbiA8cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb20+OyB5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBhdXRvcmVjb25mDQoNCk9uIE1vbiwgSnVuIDIw
LCAyMDE2IGF0IDk6MTIgQU0sIFJhamFzZWthcmFuLCBNb25pY2EgPE1vbmljYS5SYWphc2VrYXJh
bkB1cy5mdWppdHN1LmNvbT4gd3JvdGU6DQo+IFRoYW5rcyBQYXVsIGFuZCBLaGVtLCB0aGF0IHdv
cmtlZCENCj4NCj4gSSBhbHNvIHRyaWVkIGFkZGluZyBsaWJjYXAtbmcgYnV0IGl0IGdpdmVzIG1l
IHRoZSBmb2xsb3dpbmcgZXJyb3I6DQoNCndoZXJlIGRpZCB5b3UgYWRkIGl0IHRvID8gaXQgaXMg
YSBwYWNrYWdlIHNvIHlvdSBoYXZlIHRvIGFkZCBpdCB0byBJTUFHRV9JTlNUQUxMDQoNCj4NCj4g
RVJST1I6IE5vdGhpbmcgUlBST1ZJREVTICdsaWJjYXAtbmcnIChidXQgDQo+IC9kYXRhL3VzZXJz
L21yYWphc2UvbDEwMF9sYWJlbF9iYXNlZF9yMTAwcG9jL3JlcG8vcG9reS9tZXRhLWZzcy1wcm9k
dWMNCj4gdC9yZWNpcGVzLWNvcmUvaW1hZ2VzL2Zzcy1pbWFnZS1mdWxsLmJiIFJERVBFTkRTIG9u
IG9yIG90aGVyd2lzZSANCj4gcmVxdWlyZXMgaXQpDQo+DQo+IEJ1dCwgSSBzZWUgaXQgcHJlc2Vu
dCBhdCBodHRwOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC5jZ2kvcG9reS9wbGFpbi9tZXRh
L3JlY2lwZXMtc3VwcG9ydC9saWJjYXAtbmcvLi4uLi4/Pw0KPg0KPiBUaGFua3MsDQo+IE1vbmlj
YQ0KPg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIEVnZ2xldG9u
IFttYWlsdG86cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb21dDQo+IFNlbnQ6IFN1bmRheSwg
SnVuZSAxOSwgMjAxNiA1OjE0IFBNDQo+IFRvOiBSYWphc2VrYXJhbiwgTW9uaWNhIDxNb25pY2Eu
UmFqYXNla2FyYW5AdXMuZnVqaXRzdS5jb20+DQo+IENjOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21h
aWwuY29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBh
dXRvcmVjb25mDQo+DQo+IEhpIE1vbmljYSwNCj4NCj4gQXMgc2hvd24gaW4gS2hlbSdzIG9yaWdp
bmFsIGV4YW1wbGUgeW91IG5lZWQgdG8gYWRkIHRoaXMgdGhyb3VnaCBFWFRSQV9JTUFHRV9GRUFU
VVJFUywgbm90IElNQUdFX0lOU1RBTEwgKHNpbmNlIHRvb2xzLXNkayBpcyBhIGZlYXR1cmUgbmFt
ZSwgbm90IGEgcGFja2FnZSBuYW1lKS4NCj4NCj4gQ2hlZXJzLA0KPiBQYXVsDQo+DQo+IE9uIFN1
biwgMTkgSnVuIDIwMTYgMjA6MjM6NTMgUmFqYXNla2FyYW4sIE1vbmljYSB3cm90ZToNCj4+IEkg
YWRkZWQgdGhlIGZvbGxvd2luZyBsaW5lIHRvIG15IHJlY2lwZSBmaWxlLA0KPj4NCj4+IElNQUdF
X0lOU1RBTEwgKz0gInRvb2xzLXNkayINCj4+DQo+PiBCdXQgdGhlcmUgd2FzIHRoZSBmb2xsb3dp
bmcgZXJyb3Igd2l0aCB0aGUgYnVpbGQ6DQo+Pg0KPj4gRVJST1I6IE5vdGhpbmcgUlBST1ZJREVT
ICd0b29scy1zZGsnIChidXQgDQo+PiAvZGF0YS91c2Vycy9tcmFqYXNlL2wxMDBfbGFiZWxfYmFz
ZWRfcjEwMHBvYy9yZXBvL3Bva3kvbWV0YS1mc3MtcHJvZHUNCj4+IGMgdC9yZWMgaXBlcy1jb3Jl
L2ltYWdlcy9mc3MtaW1hZ2UtZnVsbC5iYiBSREVQRU5EUyBvbiBvciBvdGhlcndpc2UgDQo+PiBy
ZXF1aXJlcyBpdCkNCj4+IE5PVEU6IFJ1bnRpbWUgdGFyZ2V0ICd0b29scy1zZGsnIGlzIHVuYnVp
bGRhYmxlLCByZW1vdmluZy4uLg0KPj4gTWlzc2luZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5
IGNoYWluIHdhczogWyd0b29scy1zZGsnXQ0KPj4gRVJST1I6IFJlcXVpcmVkIGJ1aWxkIHRhcmdl
dCAnZnNzLWltYWdlLWZ1bGwnIGhhcyBubyBidWlsZGFibGUgcHJvdmlkZXJzLg0KPj4gTWlzc2lu
ZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWydmc3MtaW1hZ2UtZnVsbCcs
IA0KPj4gJ3Rvb2xzLXNkayddDQo+DQo+PiBBbnkgaWRlYSBvbiB0aGlzPw0KPj4NCj4+IFRoYW5r
cywNCj4+IE1vbmljYQ0KPj4NCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+PiBGcm9t
OiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0NCj4+IFNlbnQ6IFdlZG5lc2Rh
eSwgSnVuZSAxNSwgMjAxNiAzOjQ4IFBNDQo+PiBUbzogUmFqYXNla2FyYW4sIE1vbmljYSA8TW9u
aWNhLlJhamFzZWthcmFuQHVzLmZ1aml0c3UuY29tPg0KPj4gQ2M6IFBhdWwgRWdnbGV0b24gPHBh
dWwuZWdnbGV0b25AbGludXguaW50ZWwuY29tPjsgDQo+PiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQo+PiBTdWJqZWN0OiBSZTogW3lvY3RvXSBhdXRvcmVjb25mDQo+Pg0KPj4gVGhhdCBtaWdodCB3
b3JrLCBob3dldmVyIHlvdSBtaWdodCBuZWVkIG1vcmUgcGFja2FnZXMsIHNvIGFkZGluZyANCj4+
IHRvb2xzLXNkayB3aWxsIGNvdmVyIGFsbCBvZiB0aGVtIGluIG9uZSBnbw0KPg0KPj4NCj4+ID4g
T24gSnVuIDE1LCAyMDE2LCBhdCAxOjQ3IFBNLCBSYWphc2VrYXJhbiwgTW9uaWNhIA0KPj4gPiA8
TW9uaWNhLlJhamFzZWthcmFuQHVzLmZ1aml0c3UuY29tPiB3cm90ZToNCj4NCj4+ID4gSGkgUmFq
LA0KPj4gPg0KPj4gPiBXaWxsIGFkZGluZyBhIGxpbmUgaW4gdGhlIGltYWdlJ3MgcmVjaXBlIGZp
bGUgbGlrZSB0aGlzIHdvcmsgPw0KPj4gPg0KPj4gPiBJTUFHRV9JTlNUQUxMID0g4oCdYXV0b2Nv
bmbigJ0NCj4+ID4NCj4+ID4gSSBpbnN0YWxsZWQgImdpdCIgYW5kICJyZXNvbHZjb25mIiBpbiB0
aGUgc2FtZSB3YXkuIEp1c3Qgbm90IHN1cmUgDQo+PiA+IGFib3V0IHRoZSBwYWNrYWdlIG5hbWUg
dGhpcyB0aW1lLg0KPg0KPj4gPiBUaGFua3MsDQo+PiA+IE1vbmljYQ0KPj4gPg0KPj4gPg0KPj4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4gPiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRv
OnJhai5raGVtQGdtYWlsLmNvbV0NCj4+ID4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDE1LCAyMDE2
IDM6NDIgUE0NCj4+ID4gVG86IFJhamFzZWthcmFuLCBNb25pY2EgPE1vbmljYS5SYWphc2VrYXJh
bkB1cy5mdWppdHN1LmNvbT4NCj4+ID4gQ2M6IFBhdWwgRWdnbGV0b24gPHBhdWwuZWdnbGV0b25A
bGludXguaW50ZWwuY29tPjsgDQo+PiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4+ID4gU3Vi
amVjdDogUmU6IFt5b2N0b10gYXV0b3JlY29uZg0KPj4gPg0KPj4gPiBZb3UgbmVlZCB0byBhZGQg
YXV0b2NvbmYgdG8geW91ciB0YXJnZXQgaW1hZ2UsIGlmIHlvdSBkbyBub3QgdXNlIA0KPj4gPiBP
bmxpbmUgcGFja2FnZSBtYW5hZ2VtZW50DQo+DQo+PiA+IEVYVFJBX0lNQUdFX0ZFQVRVUkVTX2Fw
cGVuZCA9IOKAnCB0b29scy1zZGvigJ0NCj4+ID4NCj4+ID4gaW4gbG9jYWwuY29uZiBtaWdodCBo
ZWxwDQo+PiA+DQo+PiA+DQo+PiA+DQo+PiA+PiBPbiBKdW4gMTUsIDIwMTYsIGF0IDE6MzUgUE0s
IFJhamFzZWthcmFuLCBNb25pY2EgDQo+PiA+PiA8TW9uaWNhLlJhamFzZWthcmFuQHVzLmZ1aml0
c3UuY29tPiB3cm90ZToNCj4NCj4+ID4+IEhpIFBhdWwsDQo+PiA+Pg0KPj4gPj4gVGhhbmsgeW91
LiBUaGlzIGlzIGluIHRoZSB0YXJnZXQuDQo+PiA+Pg0KPj4gPj4gVGhhbmtzLA0KPj4gPj4gTW9u
aWNhDQo+PiA+Pg0KPj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+ID4+IEZyb206
IFBhdWwgRWdnbGV0b24gW21haWx0bzpwYXVsLmVnZ2xldG9uQGxpbnV4LmludGVsLmNvbV0NCj4+
ID4+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxNSwgMjAxNiAzOjI1IFBNDQo+PiA+PiBUbzogUmFq
YXNla2FyYW4sIE1vbmljYSA8TW9uaWNhLlJhamFzZWthcmFuQHVzLmZ1aml0c3UuY29tPg0KPj4g
Pj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4+ID4+IFN1YmplY3Q6IFJlOiBbeW9jdG9d
IGF1dG9yZWNvbmYNCj4+ID4+DQo+PiA+PiBIaSBNb25pY2EsDQo+PiA+Pg0KPj4gPj4gT24gV2Vk
LCAxNSBKdW4gMjAxNiAyMDoxNzoxNiBSYWphc2VrYXJhbiwgTW9uaWNhIHdyb3RlOg0KPj4gPj4N
Cj4+ID4+PiBXaGF0IGlzIHRoZSBwYWNrYWdlIHRvIGluc3RhbGwgYXV0b3JlY29uZiA/IChVYnVu
dHUgZXF1aXZhbGVudDoNCj4+ID4+PiBhcHQtZ2V0IGluc3RhbGwgZGgtYXV0b3JlY29uZiApDQo+
PiA+Pj4NCj4+ID4+PiBJIGFtIGdldHRpbmcgdGhlIGZvbGxvd2luZyBlcnJvciBmb3Igb25lIG9m
IG15IGFwcGxpY2F0aW9uczoNCj4+ID4+PiAiYXV0b3JlY29uZjogY29tbWFuZCBub3QgZm91bmQi
DQo+PiA+Pg0KPj4gPj4NCj4+ID4+IGF1dG9yZWNvbmYgaXMgcGFydCBvZiBhdXRvY29uZi4NCj4+
ID4+DQo+PiA+PiBXaGVyZSBpcyB0aGlzPyBPbiB0aGUgdGFyZ2V0IG9yIHdpdGhpbiB0aGUgYnVp
bGQgc3lzdGVtPw0KPj4gPj4NCj4+ID4+IENoZWVycywNCj4+ID4+IFBhdWwNCj4+ID4+DQo+PiA+
PiAtLQ0KPj4gPj4NCj4+ID4+IFBhdWwgRWdnbGV0b24NCj4+ID4+IEludGVsIE9wZW4gU291cmNl
IFRlY2hub2xvZ3kgQ2VudHJlDQo+PiA+PiAtLQ0KPj4gPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+ID4+IHlvY3RvIG1haWxpbmcgbGlzdA0KPj4g
Pj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPj4gPj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2pl
Y3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo+PiA+DQo+PiA+DQo+Pg0KPj4NCj4NCj4gLS0NCj4NCj4g
UGF1bCBFZ2dsZXRvbg0KPiBJbnRlbCBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRyZQ0KLS0N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp5b2N0byBt
YWlsaW5nIGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0K

