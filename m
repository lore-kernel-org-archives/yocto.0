Return-Path: <Monica.Rajasekaran@us.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9212E0049B; Mon, 20 Jun 2016 09:44:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE768E003D9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 09:44:09 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,499,1459832400"; d="scan'208";a="80265529"
Received: from rchexhcp2.fnc.net.local ([168.127.134.76])
	by fncnmp02.fnc.fujitsu.com with ESMTP/TLS/AES256-SHA;
	20 Jun 2016 11:44:08 -0500
Received: from RCHEXMBP1.fnc.net.local ([169.254.2.106]) by
	RCHEXHCP2.fnc.net.local ([168.127.134.76]) with mapi id 14.03.0294.000;
	Mon, 20 Jun 2016 11:44:07 -0500
From: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] autoreconf
Thread-Index: AdHHQradspqdggSsRDmRJnaYuJFirQAKyDOAAAovToD//7NpgIAAUspg//+u/AD/+hJIoIAMTtaA//8wAlAAP8OlgAAKV+QwAAoNFoAAHeVIMA==
Date: Mon, 20 Jun 2016 16:44:06 +0000
Message-ID: <111ACD726EC3464BAED310F5EA7BEBDA600770@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6005D6@RCHEXMBP1.fnc.net.local>
	<19818178.f818cBogRg@peggleto-mobl.ger.corp.intel.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600703@RCHEXMBP1.fnc.net.local>
	<CAMKF1sr5ej_Ot0XN8VgZMAGeexCMoEpeYi7+z2SqzffbzYu0oA@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA60071C@RCHEXMBP1.fnc.net.local>
	<CAMKF1sq2+aFJrjHtM1XbJKXYVne+d1GY9sdSESYYNK1p6kozPA@mail.gmail.com>
In-Reply-To: <CAMKF1sq2+aFJrjHtM1XbJKXYVne+d1GY9sdSESYYNK1p6kozPA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [168.127.136.253]
x-tm-as-product-ver: SMEX-10.2.0.3176-8.000.1202-22404.000
x-tm-as-result: No--57.591100-0.000000-31
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
X-List-Received-Date: Mon, 20 Jun 2016 16:44:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgYW5zd2VyLiBCdXQgdGhhdCB0aHJldyB0aGUgZm9sbG93aW5nIGVycm9y
czoNCg0KRVJST1I6IE5vdGhpbmcgUFJPVklERVMgJ2xpYmNhcC1uZycuIENsb3NlIG1hdGNoZXM6
DQogIGxpYnBuZw0KICBsaWJjYXANCiAgbGlicGNhcA0KDQpUaGFua3MsDQpNb25pY2EgDQoNCg0K
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEtoZW0gUmFqIFttYWlsdG86cmFqLmto
ZW1AZ21haWwuY29tXSANClNlbnQ6IE1vbmRheSwgSnVuZSAyMCwgMjAxNiAxMToyMyBBTQ0KVG86
IFJhamFzZWthcmFuLCBNb25pY2EgPE1vbmljYS5SYWphc2VrYXJhbkB1cy5mdWppdHN1LmNvbT4N
CkNjOiBQYXVsIEVnZ2xldG9uIDxwYXVsLmVnZ2xldG9uQGxpbnV4LmludGVsLmNvbT47IHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIGF1dG9yZWNvbmYNCg0KT0sg
aXRzIGEgbGlicmFyeSBzbyBkZWJpYW4gcmVuYW1pbmcgbWlnaHQgYmUgdHJpY2tpbmcgeW91IGhl
cmUuDQpJTUFHRV9JTlNUQUxMIGV4cGVjdHMgdGhlIG91dHB1dCBwYWNrYWdlIG5hbWVzICAoIG5v
dCByZWNpcGUgbmFtZSkgc29tZXRpbWVzIHRoZXJlIGlzIGEgcGFja2FnZSB3aXRoIHNhbWUgbmFt
ZSBhcyByZWNpcGUgbmFtZSBnZW5lcmF0ZWQgc28gaXQgbWF5IHNlZW0gbGlrZSB5b3UgY2FuIHVz
ZSBwYWNrYWdlIG5hbWUgb3IgcmVjaXBlIG5hbWUgYnV0IHRoYXRzIG5vdCBob3cgaXQgd29ya3Mu
IFNvIHBsZWFzZSBkbyB0aGlzDQoNCmJpdGJha2UgbGliY2FwLW5nDQoNCnRoZW4gc2VlIHdoYXRz
IHRoZSBlbWl0dGVkIGlwayBvciBycG0gaW4gZGVsb3kvIGFyZWEuIEFkZCB0aGF0IG5hbWUgdG8g
SU1BR0VfSU5TVEFMTA0KDQpPbiBNb24sIEp1biAyMCwgMjAxNiBhdCA5OjE4IEFNLCBSYWphc2Vr
YXJhbiwgTW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5jb20+IHdyb3RlOg0K
PiBZZXMsIEkgZGlkIHRoZSBzYW1lLg0KPg0KPiBUaGFua3MsDQo+IE1vbmljYQ0KPg0KPg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5r
aGVtQGdtYWlsLmNvbV0NCj4gU2VudDogTW9uZGF5LCBKdW5lIDIwLCAyMDE2IDExOjE1IEFNDQo+
IFRvOiBSYWphc2VrYXJhbiwgTW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5j
b20+DQo+IENjOiBQYXVsIEVnZ2xldG9uIDxwYXVsLmVnZ2xldG9uQGxpbnV4LmludGVsLmNvbT47
IA0KPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGF1dG9y
ZWNvbmYNCj4NCj4gT24gTW9uLCBKdW4gMjAsIDIwMTYgYXQgOToxMiBBTSwgUmFqYXNla2FyYW4s
IE1vbmljYSA8TW9uaWNhLlJhamFzZWthcmFuQHVzLmZ1aml0c3UuY29tPiB3cm90ZToNCj4+IFRo
YW5rcyBQYXVsIGFuZCBLaGVtLCB0aGF0IHdvcmtlZCENCj4+DQo+PiBJIGFsc28gdHJpZWQgYWRk
aW5nIGxpYmNhcC1uZyBidXQgaXQgZ2l2ZXMgbWUgdGhlIGZvbGxvd2luZyBlcnJvcjoNCj4NCj4g
d2hlcmUgZGlkIHlvdSBhZGQgaXQgdG8gPyBpdCBpcyBhIHBhY2thZ2Ugc28geW91IGhhdmUgdG8g
YWRkIGl0IHRvIA0KPiBJTUFHRV9JTlNUQUxMDQo+DQo+Pg0KPj4gRVJST1I6IE5vdGhpbmcgUlBS
T1ZJREVTICdsaWJjYXAtbmcnIChidXQgDQo+PiAvZGF0YS91c2Vycy9tcmFqYXNlL2wxMDBfbGFi
ZWxfYmFzZWRfcjEwMHBvYy9yZXBvL3Bva3kvbWV0YS1mc3MtcHJvZHUNCj4+IGMgdC9yZWNpcGVz
LWNvcmUvaW1hZ2VzL2Zzcy1pbWFnZS1mdWxsLmJiIFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSAN
Cj4+IHJlcXVpcmVzIGl0KQ0KPj4NCj4+IEJ1dCwgSSBzZWUgaXQgcHJlc2VudCBhdCBodHRwOi8v
Z2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC5jZ2kvcG9reS9wbGFpbi9tZXRhL3JlY2lwZXMtc3Vw
cG9ydC9saWJjYXAtbmcvLi4uLi4/Pw0KPj4NCj4+IFRoYW5rcywNCj4+IE1vbmljYQ0KPj4NCj4+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+PiBGcm9tOiBQYXVsIEVnZ2xldG9uIFttYWls
dG86cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb21dDQo+PiBTZW50OiBTdW5kYXksIEp1bmUg
MTksIDIwMTYgNToxNCBQTQ0KPj4gVG86IFJhamFzZWthcmFuLCBNb25pY2EgPE1vbmljYS5SYWph
c2VrYXJhbkB1cy5mdWppdHN1LmNvbT4NCj4+IENjOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwu
Y29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPj4gU3ViamVjdDogUmU6IFt5b2N0b10gYXV0
b3JlY29uZg0KPj4NCj4+IEhpIE1vbmljYSwNCj4+DQo+PiBBcyBzaG93biBpbiBLaGVtJ3Mgb3Jp
Z2luYWwgZXhhbXBsZSB5b3UgbmVlZCB0byBhZGQgdGhpcyB0aHJvdWdoIEVYVFJBX0lNQUdFX0ZF
QVRVUkVTLCBub3QgSU1BR0VfSU5TVEFMTCAoc2luY2UgdG9vbHMtc2RrIGlzIGEgZmVhdHVyZSBu
YW1lLCBub3QgYSBwYWNrYWdlIG5hbWUpLg0KPj4NCj4+IENoZWVycywNCj4+IFBhdWwNCj4+DQo+
PiBPbiBTdW4sIDE5IEp1biAyMDE2IDIwOjIzOjUzIFJhamFzZWthcmFuLCBNb25pY2Egd3JvdGU6
DQo+Pj4gSSBhZGRlZCB0aGUgZm9sbG93aW5nIGxpbmUgdG8gbXkgcmVjaXBlIGZpbGUsDQo+Pj4N
Cj4+PiBJTUFHRV9JTlNUQUxMICs9ICJ0b29scy1zZGsiDQo+Pj4NCj4+PiBCdXQgdGhlcmUgd2Fz
IHRoZSBmb2xsb3dpbmcgZXJyb3Igd2l0aCB0aGUgYnVpbGQ6DQo+Pj4NCj4+PiBFUlJPUjogTm90
aGluZyBSUFJPVklERVMgJ3Rvb2xzLXNkaycgKGJ1dCANCj4+PiAvZGF0YS91c2Vycy9tcmFqYXNl
L2wxMDBfbGFiZWxfYmFzZWRfcjEwMHBvYy9yZXBvL3Bva3kvbWV0YS1mc3MtcHJvZA0KPj4+IHUg
YyB0L3JlYyBpcGVzLWNvcmUvaW1hZ2VzL2Zzcy1pbWFnZS1mdWxsLmJiIFJERVBFTkRTIG9uIG9y
IA0KPj4+IG90aGVyd2lzZSByZXF1aXJlcyBpdCkNCj4+PiBOT1RFOiBSdW50aW1lIHRhcmdldCAn
dG9vbHMtc2RrJyBpcyB1bmJ1aWxkYWJsZSwgcmVtb3ZpbmcuLi4NCj4+PiBNaXNzaW5nIG9yIHVu
YnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2FzOiBbJ3Rvb2xzLXNkayddDQo+Pj4gRVJST1I6
IFJlcXVpcmVkIGJ1aWxkIHRhcmdldCAnZnNzLWltYWdlLWZ1bGwnIGhhcyBubyBidWlsZGFibGUg
cHJvdmlkZXJzLg0KPj4+IE1pc3Npbmcgb3IgdW5idWlsZGFibGUgZGVwZW5kZW5jeSBjaGFpbiB3
YXM6IFsnZnNzLWltYWdlLWZ1bGwnLCANCj4+PiAndG9vbHMtc2RrJ10NCj4+DQo+Pj4gQW55IGlk
ZWEgb24gdGhpcz8NCj4+Pg0KPj4+IFRoYW5rcywNCj4+PiBNb25pY2ENCj4+Pg0KPj4+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+Pj4gRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hl
bUBnbWFpbC5jb21dDQo+Pj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDE1LCAyMDE2IDM6NDggUE0N
Cj4+PiBUbzogUmFqYXNla2FyYW4sIE1vbmljYSA8TW9uaWNhLlJhamFzZWthcmFuQHVzLmZ1aml0
c3UuY29tPg0KPj4+IENjOiBQYXVsIEVnZ2xldG9uIDxwYXVsLmVnZ2xldG9uQGxpbnV4LmludGVs
LmNvbT47IA0KPj4+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4+PiBTdWJqZWN0OiBSZTogW3lv
Y3RvXSBhdXRvcmVjb25mDQo+Pj4NCj4+PiBUaGF0IG1pZ2h0IHdvcmssIGhvd2V2ZXIgeW91IG1p
Z2h0IG5lZWQgbW9yZSBwYWNrYWdlcywgc28gYWRkaW5nIA0KPj4+IHRvb2xzLXNkayB3aWxsIGNv
dmVyIGFsbCBvZiB0aGVtIGluIG9uZSBnbw0KPj4NCj4+Pg0KPj4+ID4gT24gSnVuIDE1LCAyMDE2
LCBhdCAxOjQ3IFBNLCBSYWphc2VrYXJhbiwgTW9uaWNhIA0KPj4+ID4gPE1vbmljYS5SYWphc2Vr
YXJhbkB1cy5mdWppdHN1LmNvbT4gd3JvdGU6DQo+Pg0KPj4+ID4gSGkgUmFqLA0KPj4+ID4NCj4+
PiA+IFdpbGwgYWRkaW5nIGEgbGluZSBpbiB0aGUgaW1hZ2UncyByZWNpcGUgZmlsZSBsaWtlIHRo
aXMgd29yayA/DQo+Pj4gPg0KPj4+ID4gSU1BR0VfSU5TVEFMTCA9IOKAnWF1dG9jb25m4oCdDQo+
Pj4gPg0KPj4+ID4gSSBpbnN0YWxsZWQgImdpdCIgYW5kICJyZXNvbHZjb25mIiBpbiB0aGUgc2Ft
ZSB3YXkuIEp1c3Qgbm90IHN1cmUgDQo+Pj4gPiBhYm91dCB0aGUgcGFja2FnZSBuYW1lIHRoaXMg
dGltZS4NCj4+DQo+Pj4gPiBUaGFua3MsDQo+Pj4gPiBNb25pY2ENCj4+PiA+DQo+Pj4gPg0KPj4+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+PiA+IEZyb206IEtoZW0gUmFqIFttYWls
dG86cmFqLmtoZW1AZ21haWwuY29tXQ0KPj4+ID4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDE1LCAy
MDE2IDM6NDIgUE0NCj4+PiA+IFRvOiBSYWphc2VrYXJhbiwgTW9uaWNhIDxNb25pY2EuUmFqYXNl
a2FyYW5AdXMuZnVqaXRzdS5jb20+DQo+Pj4gPiBDYzogUGF1bCBFZ2dsZXRvbiA8cGF1bC5lZ2ds
ZXRvbkBsaW51eC5pbnRlbC5jb20+OyANCj4+PiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4+
PiA+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGF1dG9yZWNvbmYNCj4+PiA+DQo+Pj4gPiBZb3UgbmVl
ZCB0byBhZGQgYXV0b2NvbmYgdG8geW91ciB0YXJnZXQgaW1hZ2UsIGlmIHlvdSBkbyBub3QgdXNl
IA0KPj4+ID4gT25saW5lIHBhY2thZ2UgbWFuYWdlbWVudA0KPj4NCj4+PiA+IEVYVFJBX0lNQUdF
X0ZFQVRVUkVTX2FwcGVuZCA9IOKAnCB0b29scy1zZGvigJ0NCj4+PiA+DQo+Pj4gPiBpbiBsb2Nh
bC5jb25mIG1pZ2h0IGhlbHANCj4+PiA+DQo+Pj4gPg0KPj4+ID4NCj4+PiA+PiBPbiBKdW4gMTUs
IDIwMTYsIGF0IDE6MzUgUE0sIFJhamFzZWthcmFuLCBNb25pY2EgDQo+Pj4gPj4gPE1vbmljYS5S
YWphc2VrYXJhbkB1cy5mdWppdHN1LmNvbT4gd3JvdGU6DQo+Pg0KPj4+ID4+IEhpIFBhdWwsDQo+
Pj4gPj4NCj4+PiA+PiBUaGFuayB5b3UuIFRoaXMgaXMgaW4gdGhlIHRhcmdldC4NCj4+PiA+Pg0K
Pj4+ID4+IFRoYW5rcywNCj4+PiA+PiBNb25pY2ENCj4+PiA+Pg0KPj4+ID4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+Pj4gPj4gRnJvbTogUGF1bCBFZ2dsZXRvbiBbbWFpbHRvOnBhdWwu
ZWdnbGV0b25AbGludXguaW50ZWwuY29tXQ0KPj4+ID4+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAx
NSwgMjAxNiAzOjI1IFBNDQo+Pj4gPj4gVG86IFJhamFzZWthcmFuLCBNb25pY2EgPE1vbmljYS5S
YWphc2VrYXJhbkB1cy5mdWppdHN1LmNvbT4NCj4+PiA+PiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KPj4+ID4+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGF1dG9yZWNvbmYNCj4+PiA+Pg0KPj4+
ID4+IEhpIE1vbmljYSwNCj4+PiA+Pg0KPj4+ID4+IE9uIFdlZCwgMTUgSnVuIDIwMTYgMjA6MTc6
MTYgUmFqYXNla2FyYW4sIE1vbmljYSB3cm90ZToNCj4+PiA+Pg0KPj4+ID4+PiBXaGF0IGlzIHRo
ZSBwYWNrYWdlIHRvIGluc3RhbGwgYXV0b3JlY29uZiA/IChVYnVudHUgZXF1aXZhbGVudDoNCj4+
PiA+Pj4gYXB0LWdldCBpbnN0YWxsIGRoLWF1dG9yZWNvbmYgKQ0KPj4+ID4+Pg0KPj4+ID4+PiBJ
IGFtIGdldHRpbmcgdGhlIGZvbGxvd2luZyBlcnJvciBmb3Igb25lIG9mIG15IGFwcGxpY2F0aW9u
czoNCj4+PiA+Pj4gImF1dG9yZWNvbmY6IGNvbW1hbmQgbm90IGZvdW5kIg0KPj4+ID4+DQo+Pj4g
Pj4NCj4+PiA+PiBhdXRvcmVjb25mIGlzIHBhcnQgb2YgYXV0b2NvbmYuDQo+Pj4gPj4NCj4+PiA+
PiBXaGVyZSBpcyB0aGlzPyBPbiB0aGUgdGFyZ2V0IG9yIHdpdGhpbiB0aGUgYnVpbGQgc3lzdGVt
Pw0KPj4+ID4+DQo+Pj4gPj4gQ2hlZXJzLA0KPj4+ID4+IFBhdWwNCj4+PiA+Pg0KPj4+ID4+IC0t
DQo+Pj4gPj4NCj4+PiA+PiBQYXVsIEVnZ2xldG9uDQo+Pj4gPj4gSW50ZWwgT3BlbiBTb3VyY2Ug
VGVjaG5vbG9neSBDZW50cmUNCj4+PiA+PiAtLQ0KPj4+ID4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4gPj4geW9jdG8gbWFpbGluZyBsaXN0DQo+
Pj4gPj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPj4+ID4+IGh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPj4+ID4NCj4+PiA+DQo+Pj4NCj4+Pg0KPj4NCj4+
IC0tDQo+Pg0KPj4gUGF1bCBFZ2dsZXRvbg0KPj4gSW50ZWwgT3BlbiBTb3VyY2UgVGVjaG5vbG9n
eSBDZW50cmUNCg==

