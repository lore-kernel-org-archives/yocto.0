Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95D19E00A54; Tue,  4 Dec 2018 09:03:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A48E8E00566
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 09:03:35 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Dec 2018 09:03:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,314,1539673200"; d="scan'208";a="256746382"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by orsmga004.jf.intel.com with ESMTP; 04 Dec 2018 09:03:17 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.219]) by
	PGSMSX102.gar.corp.intel.com ([169.254.6.33]) with mapi id
	14.03.0415.000; Wed, 5 Dec 2018 01:03:16 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, "Graydon, Tracy" <tracy.graydon@intel.com>, 
	"Erway, Tracey M" <tracey.m.erway@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.4.4 RC1
Thread-Index: AdSC29L4uuuUDBxeT+i5N9NtPzn21AAJ8DuAAPi9zKABMBongAASKspQ
Date: Tue, 4 Dec 2018 17:03:15 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634CF730E@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634CEF595@PGSMSX110.gar.corp.intel.com>
	<5a3e9c82256c75c451d6a406fe5b16db394ff9d7.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634CF2AD2@PGSMSX110.gar.corp.intel.com>
	<41893927b8cee3885c93d3386b77aa9eb14e7cf0.camel@linuxfoundation.org>
In-Reply-To: <41893927b8cee3885c93d3386b77aa9eb14e7cf0.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTFlYWQzNDEtNWRkNC00NTNiLTllZWEtZThjODZmNmMwODBhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia2JQa3NJR1VBbU1hZ25DZHdYdE9tQXRtRWhWeFwveEpKMlVVUWVTSm5QTWMxek5vZ0pXa0hRMnRKN25nT3IxQUgifQ==
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.4.4 RC1
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
X-List-Received-Date: Tue, 04 Dec 2018 17:03:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IHJpY2hhcmQucHVyZGllQGxp
bnV4Zm91bmRhdGlvbi5vcmcgPHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+
U2VudDogVHVlc2RheSwgNCBEZWNlbWJlciwgMjAxOCAxMTo1NyBQTQ0KPlRvOiBKYWluLCBTYW5n
ZWV0YSA8c2FuZ2VldGEuamFpbkBpbnRlbC5jb20+OyBKb2xsZXksIFN0ZXBoZW4gSw0KPjxzdGVw
aGVuLmsuam9sbGV5QGludGVsLmNvbT47IEVnZ2xldG9uLCBQYXVsIDxwYXVsLmVnZ2xldG9uQGlu
dGVsLmNvbT47DQo+R3JheWRvbiwgVHJhY3kgPHRyYWN5LmdyYXlkb25AaW50ZWwuY29tPjsgRXJ3
YXksIFRyYWNleSBNDQo+PHRyYWNleS5tLmVyd2F5QGludGVsLmNvbT47IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmcNCj5DYzogU2FuZ2FsLCBBcG9vcnYgPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsg
S2lya2lyaXMsIE5lY3Rhcg0KPjxuZWN0YXIua2lya2lyaXNAaW50ZWwuY29tPg0KPlN1YmplY3Q6
IFJlOiBRQSBjeWNsZSByZXBvcnQgZm9yIDIuNC40IFJDMQ0KPg0KPk9uIFdlZCwgMjAxOC0xMS0y
OCBhdCAwNzowNyArMDAwMCwgSmFpbiwgU2FuZ2VldGEgd3JvdGU6DQo+PiBUaGUgdGVzdCBjYXNl
cyBydW4gZm9yIDIuNC40IFJDMSBhcmUgc2FtZSBhcyBydW4gZm9yIDIuNCByZWxlYXNlLg0KPg0K
Pk9rLCBidXQgSSdtIG5vdCBzdXJlIHRoZXkncmUgY29ycmVjdC4gQXJlIHRoZSB0ZXN0IGNhc2Vz
IHdlJ3JlIHRhbGtpbmcgYWJvdXQgYWxzbw0KPnJ1biBmb3IgdGhlIDIuNSByZWxlYXNlPyBJJ2xs
IGV4cGxhaW4gbW9yZSBiZWxvdy4NCj4NCkZvciAyLjUgZG90IHJlbGVhc2UsIHdlJ2xsIHJ1biB0
aGUgdGVzdCBjYXNlcyB3aGljaCB3ZSBydW4gZm9yIDIuNSBtYXN0ZXIgcmVsZWFzZS4NCj4+ID4g
VGhhbmtzIGZvciBydW5uaW5nIHRoZSBRQSBmb3IgdGhpcy4gSSBkbyBoYXZlIHNvbWUNCj4+ID4g
cXVlc3Rpb25zL29ic2VydmF0aW9ucy4NCj4+ID4NCj4+ID4gRmlyc3RseSwgdGhpcyByZXBvcnQg
aXMgYSBsaXR0bGUgbWlzbGVhZGluZyBhcyB0aGVyZSBhcmUgb25seSB0d28NCj4+ID4gYnVncyBt
ZW50aW9uZWQgYnV0IDggZmFpbHVyZXMuIFRoZSBmdWxsIHJlcG9ydCBzaG93cyBvdGhlciBidWdz
DQo+PiA+IHdoaWNoIHdlcmUgZm9yIGV4YW1wbGUgcmVvcGVuZWQgb3IgYWxyZWFkeSBvcGVuLg0K
Pj4gSW4gcmVwb3J0LCBvbmx5IG5ldyBidWdzIGFyZSBtZW50aW9uZWQuIEFsbCB0aGUgYnVncyB3
aGljaCBhcmUNCj4+IHJlb3BlbmVkL2FscmVhZHkgZXhpc3RpbmcgYXJlIG5vdCBsaXN0ZWQgaW4g
cmVwb3J0IG1haWwgYnV0IGNhbiBiZQ0KPj4gc2VlbiBpbiBmdWxsIHJlcG9ydC4NCj4+IEhvd2V2
ZXIsIGlmIGl0cyBjcmVhdGluZyBhbnkgY29uZnVzaW9uL2luY29udmVuaWVuY2UsIGdvaW5nIGZv
cndhcmQgSQ0KPj4gY2FuIG1lbnRpb24gYWxsIHRoZSBmYWlsaW5nIGJ1Z3MgaW4gcmVwb3J0Lg0K
Pg0KPkkgdGhpbmsgaXQgd291bGQgYmUgdXNlZnVsIHRvIGhhdmUgYSBjb21wbGV0ZSBzdW1tYXJ5
IG9mIHRoZSBidWdzIGZvdW5kLCBpbg0KPnBhcnRpY3VsYXIgdGhlIHJlb3BlbmVkIG9uZXMgYXMg
b3RoZXJ3aXNlIGl0IGdpdmVzIGEgbWlzbGVhZGluZyB2aWV3IG9mIHRoZQ0KPnJlbGVhc2Ugc3Rh
dHVzLg0KPg0KU3VyZS4NCj4+ID4gVGFraW5nIHRoZSBhYm92ZSBidWdzIGZpcnN0LCBJIGJlbGll
dmUgdGhleSdyZSBib3RoIG1hbnVhbCB2ZXJzaW9ucw0KPj4gPiBvZiB0ZXN0cyB3aGljaCBhcmUg
YWxyZWFkeSBhdXRvbWF0ZWQuIEkgYmVsaWV2ZSB0aGUgYXV0b21hdGVkIHRlc3RzDQo+PiA+IGhh
dmUgcGFzc2VkIGFuZCB0aGVyZSBhcHBlYXJzIHRvIGJlIHNvbWUga2luZCBvZiBwcm9ibGVtIHdp
dGggdGhlDQo+PiA+IG1hbnVhbCBleGVjdXRpb24gc3VjaCBhcyB0aGUgd3JvbmcgcHJvY2VzcyBi
ZWluZyBkb2N1bWVudGVkLiBJJ20gbm90DQo+PiA+IHF1aXRlIHN1cmUgd2h5IHRoZXNlIGFyZSBi
ZWluZyBydW4gbWFudWFsbHk/IFdhcyB0aGUgbGlzdCBvZiBtYW51YWwNCj4+ID4gdGVzdHMgd2Ug
cmVjZWl2ZWQgZnJvbSBJbnRlbCBpbmNvcnJlY3Q/DQo+PiBUaGUgbGlzdCBtYW51YWwgdGVzdCB3
ZSBydW4gZm9yIDIuNC40IGlzIHNhbWUgYXMgd2UgcnVuIGZvciAyLjQNCj4+IHJlbGVhc2UuIFRo
aXMgdGVzdCBjYXNlIGlzIGF1dG9tYXRlZCBsYXRlciB0aGFuIDIuNCByZWxlYXNlIGFuZCBpcw0K
Pj4gc3RpbGwgbWFudWFsIGFzIHBlciAyLjQgdGVzdCBwbGFuIGluIFRlc3RvcGlhLiBJdCdzIGFu
IGlyb255IHRoYXQgaW4NCj4+IFlvY3RvIFByb2plY3Qgd2UgZG9uJ3QgaGF2ZSBhbnkgdHJhY2tp
bmcgb2YgYSB0ZXN0IGNhc2UgY29udmVydGluZw0KPj4gaW50byBhdXRvbWF0ZWQgaW4gd2hpY2gg
cmVsZWFzZSwgYW5kIG5vIHN5c3RlbSB0aGF0IHdlIGNhbiB1cGRhdGUgdGVzdA0KPj4gY2FzZXMg
aW4gRG90IHJlbGVhc2VzLiBJIGFtIHRyeWluZyB0byBzdHJlYW1saW5lIHRoZSB0cmFja2luZyBv
ZiB0ZXN0DQo+PiBjYXNlIGV2b2x1dGlvbiwgc28gYXMgdG8gYXZvaWQgc3VjaCBzY2VuYXJpb3Mg
aW4gZnV0dXJlLg0KPg0KPlRha2luZzoNCj4NCj5odHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVj
dC5vcmcvc2hvd19idWcuY2dpP2lkPTEzMDMzDQo+DQo+YXMgYW4gZXhhbXBsZSwgSSBiZWxpZXZl
IHRoZSBhdXRvbWF0ZWQgdmVyc2lvbiBpczoNCj4NCj5odHRwOi8vZ2l0LnlvY3RvcHJvamVjdC5v
cmcvY2dpdC5jZ2kvcG9reS90cmVlL21ldGEvbGliL29lcWEvc2VsZnRlc3QvY2FzZXMvcHJzZQ0K
PnJ2aWNlLnB5P2g9cm9ja28jbjUyDQo+DQo+d2hpY2ggd2FzIHByZXNlbnQgaW4gdGhlIGZpcnN0
IDIuNCByZWxlYXNlLg0KPg0KPkl0cyBhbHNvIHByZXNlbnQgaW4gcHlybzoNCj4NCj5odHRwOi8v
Z2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC5jZ2kvcG9reS90cmVlL21ldGEvbGliL29lcWEvc2Vs
ZnRlc3QvcHJzZXJ2aWNlLg0KPnB5P2g9cHlybyNuNTQNCj4NCj5hbmQgbW9ydHk6DQo+aHR0cDov
L2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQuY2dpL3Bva3kvdHJlZS9tZXRhL2xpYi9vZXFhL3Nl
bGZ0ZXN0L3Byc2VydmljZS4NCj5weT9oPW1vcnR5I241MQ0KPmtyb2dvdGg6DQo+aHR0cDovL2dp
dC55b2N0b3Byb2plY3Qub3JnL2NnaXQuY2dpL3Bva3kvdHJlZS9tZXRhL2xpYi9vZXFhL3NlbGZ0
ZXN0L3Byc2VydmljZS4NCj5weT9oPWtyb2dvdGgjbjUyDQo+amV0aHJvOg0KPmh0dHA6Ly9naXQu
eW9jdG9wcm9qZWN0Lm9yZy9jZ2l0LmNnaS9wb2t5L3RyZWUvbWV0YS9saWIvb2VxYS9zZWxmdGVz
dC9wcnNlcnZpY2UuDQo+cHk/aD1qZXRocm8jbjUxDQo+DQo+c28gaGFzIGJlZW4gdGhlcmUgc2lu
Y2UgYXQgbGVhc3QgMi4wLg0KPg0KPlNvIGVpdGhlciBJJ20gd3JvbmcgYWJvdXQgdGhpcyBiZWlu
ZyBhbiBhdXRvbWF0ZWQgdmVyc2lvbiBvZiB0aGUgdGVzdCwgb3Igd2UNCj5yZWFsbHkgc2hvdWxk
bid0IGJlIHJ1bm5pbmcgdGhpcyB0ZXN0IG1hbnVhbGx5IGJ1dCBpdCBpc24ndCBhIHByb2JsZW0g
b2YgY2hhbmdpbmcNCj50ZXN0IGNyaXRlcmlhIGJldHdlZW4gcG9pbnQgcmVsZWFzZXMuDQo+DQo+
SSdkIGFsc28gbm90ZSB0aGF0IG5vYm9keSBmcm9tIFFBIGhhcyByZXBsaWVkIHRvIG15IHF1ZXN0
aW9uIGluIHRoZSBidWd6aWxsYS4NCj4NCkZvcg0KaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2pl
Y3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMzAzMw0KIHRlc3QgY2FzZSBoYXMgYmVlbiBydW4gbWFu
dWFsbHkgZm9yIDIuNCByZWxlYXNlIGFzIHBlciBUZXN0b3BpYSBkYXRhLiANClRvIGFuc3dlciB5
b3VyIHF1ZXN0aW9uIGluIEJ1Z3ppbGxhLCB3ZSBhcmUgd29ya2luZyBvbiBpdCBhbmQgd2lsbCBi
ZSB1cGRhdGVkIGFzYXAuDQoNCj5JJ20gbm93IHdvcnJ5aW5nIGFib3V0IHdoYXQgdGVzdCBjYXNl
cyBnZXQgcnVuIGZvciAyLjUgYW5kIGhvdyB0aGVzZSBkaWZmZXIgZnJvbQ0KPndoYXQgd2UgcnVu
IGFnYWluc3QgMi42IGFuZCBtYXN0ZXIgYW5kIHdoYXQgUUEgc3VtbWFyaXNlZCBpbiB0aGUgcmVj
ZW50DQo+ZG9jdW1lbnRhdGlvbiBvZiB0ZXN0IGNhc2VzIGV4ZXJjaXNlLiBQZXJoYXBzIHdlIG5l
ZWQgdG8gZG9jdW1lbnQgdGhlIG1hbnVhbA0KPnRlc3QgY2FzZXMgaW4gdGhlIDIuNSByZWxlYXNl
IHRvbyB0byBlbnN1cmUgd2UgaGF2ZSB0aGUgcmlnaHQgc2V0Pw0KDQogSSBhbSB3b3JraW5nIG9u
IGlkZW50aWZ5aW5nIHRoZSB0ZXN0IGNhc2VzIHdoaWNoIHdlcmUgYXV0b21hdGVkIGluIDIuNiBh
bmQgbWFzdGVyLiBBbmQgdGhlIG5ldyB0ZXN0IGNhc2UgZG9jdW1lbnQgc3VtbWFyaXNlZCBieSBR
QSB0ZWFtIHNob3VsZCBiZSBhbGlnbmVkIHRvIGxhdGVzdCBzdGF0ZSBvZiB0ZXN0IGNhc2UsIGF1
dG9tYXRlZCBvciBtYW51YWwuDQpJIGFtIGFsc28gd29ya2luZyBvbiBkb2N1bWVudGF0aW9uIG9m
IG1hbnVhbCB0ZXN0IGNhc2VzIGZvciAyLjUgYW5kIGZpbmRpbmcgd2hpY2ggb25lcyBhcmUgYWxy
ZWFkeSBhdXRvbWF0ZWQgaW4gMi42LCBzbyB0aGF0IHdlIGNhbiBleGVjdXRlIHRoZSBsYXRlc3Qg
c3RhdGUgaW4gbmV4dCByZWxlYXNlLg0KDQo+DQo+Q2hlZXJzLA0KPg0KPlJpY2hhcmQNCg0KDQpU
aGFua3MgJiBSZWdhcmRzLA0KU2FuZ2VldGEgSmFpbg0KDQo=

