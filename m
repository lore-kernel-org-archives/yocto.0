Return-Path: <stefanx.stanacar@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F118E00BC3
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 04:53:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Apr 2014 04:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,863,1389772800"; d="scan'208";a="520802206"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2014 04:52:53 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 15 Apr 2014 12:52:50 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.200]) with mapi id
	14.03.0123.003; Tue, 15 Apr 2014 12:52:50 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] BBB doesn't boot
Thread-Index: AQHPVvi7U65QgTaRbkKYHPQsid6RTpsQVSAAgACEAYCAAFmtgIAAAWGAgAACeICAAAEggIAAARsAgABDvYCAACrEgIAAGsuAgAAV/wCAADPFAIAABooAgAACyQCAAD9TgIAAL0uA
Date: Tue, 15 Apr 2014 11:52:49 +0000
Message-ID: <1397562801.2977.2.camel@firebird.rb.intel.com>
References: <534C0415.20701@mlbassoc.com> <20140414160038.GB3370@denix.org>
	<534C0719.5050908@mlbassoc.com> <20140414160838.GC3370@denix.org>
	<534C40D9.40509@mlbassoc.com> <20140414224409.GF3370@denix.org>
	<1397521203.15843.62.camel@ted> <20140415013846.GG3370@denix.org>
	<1397537044.15843.66.camel@ted> <20140415050728.GA11339@denix.org>
	<20140415051726.GB11339@denix.org>
	<1397552645.2977.0.camel@firebird.rb.intel.com>
In-Reply-To: <1397552645.2977.0.camel@firebird.rb.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.38]
MIME-Version: 1.0
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Tue, 15 Apr 2014 11:53:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D19984852D09DE4889CF5DB638BA50BA@intel.com>
Content-Transfer-Encoding: base64

DQoNCg0KT24gVHVlLCAyMDE0LTA0LTE1IGF0IDA5OjAzICswMDAwLCBTdGFuYWNhciwgU3RlZmFu
WCB3cm90ZToNCj4gDQo+IA0KPiBPbiBUdWUsIDIwMTQtMDQtMTUgYXQgMDE6MTcgLTA0MDAsIERl
bnlzIERteXRyaXllbmtvIHdyb3RlOg0KPiA+IE9uIFR1ZSwgQXByIDE1LCAyMDE0IGF0IDAxOjA3
OjI4QU0gLTA0MDAsIERlbnlzIERteXRyaXllbmtvIHdyb3RlOg0KPiA+ID4gT24gVHVlLCBBcHIg
MTUsIDIwMTQgYXQgMDU6NDQ6MDRBTSArMDEwMCwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+ID4g
PiA+IE9uIE1vbiwgMjAxNC0wNC0xNCBhdCAyMTozOCAtMDQwMCwgRGVueXMgRG15dHJpeWVua28g
d3JvdGU6DQo+ID4gPiA+ID4gT24gVHVlLCBBcHIgMTUsIDIwMTQgYXQgMDE6MjA6MDNBTSArMDEw
MCwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+ID4gPiA+ID4gPiBPbiBNb24sIDIwMTQtMDQtMTQg
YXQgMTg6NDQgLTA0MDAsIERlbnlzIERteXRyaXllbmtvIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiBP
biBNb24sIEFwciAxNCwgMjAxNCBhdCAwMjoxMTowNVBNIC0wNjAwLCBHYXJ5IFRob21hcyB3cm90
ZToNCj4gPiA+ID4gPiA+ID4gPiBWZXJ5IGludGVyZXN0aW5nIHJlc3VsdHMhICBUaGVzZSBhcmUg
dGhlIHJlc3VsdHMgZnJvbSB0aGUgYnVpbGQgaG9zdHMgSSBoYXZlOg0KPiA+ID4gPiA+ID4gPiA+
ICAgRmVkb3JhIDEzIChpNjg2KSAtIGZhaWxzDQo+ID4gPiA+ID4gPiA+ID4gICBGZWRvcmEgMTcg
KGk2ODYpIC0gZmFpbHMNCj4gPiA+ID4gPiA+ID4gPiAgIFVidW50dSAxMi4wNCAoeDg2XzY0KSAt
IGJvb3RzDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBJbnRlcmVzdGluZyBpbmRlZWQu
IEkgaGF2ZSBubyBpZGVhIHdoYXQncyBzbyBzcGVjaWFsIGFib3V0IEZlZG9yYSBob3N0IC0gdGhp
cyANCj4gPiA+ID4gPiA+ID4gaXMgdGhlIGZpcnN0IHRpbWUgSSBoZWFyIGFib3V0IGlzc3VlcyB3
aXRoIGl0LiBJIG1heSB0cnkgZXhwZXJpbWVudGluZyB3aXRoIA0KPiA+ID4gPiA+ID4gPiBkaWZm
ZXJlbnQgVk1zIG9uY2UgSSBoYXZlIG1vcmUgdGltZS4uLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiBJJ3ZlIGJlZW4gaGF2aW5nIGEgbG9vayBhdCB0aGlzLiBUaGUgYmlnZ2VzdCBkaWZmZXJl
bmNlcyBJIGNhbiBmaW5kDQo+ID4gPiA+ID4gPiBiZXR3ZWVuIHdvcmtpbmcgYW5kIG5vbiB3b3Jr
aW5nIGJ1aWxkcyBpcyB0aGUgcGF0aCBsZW5ndGggdG8gdGhlIGJ1aWxkDQo+ID4gPiA+ID4gPiBk
aXJlY3RvcnkgZm9yIHRoZSBrZXJuZWwuIFRoaXMgaXMgZnJvbSBjb21wYXJpbmcgdm1saW51eCBm
aWxlcyBmcm9tDQo+ID4gPiA+ID4gPiB3b3JraW5nIGFuZCBub24gd29ya2luZyBidWlsZHMuDQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFdvcmtzOg0KPiA+ID4gPiA+ID4gL2hvbWUvcGF1bC9w
b2t5L2J1aWxkL3RtcC93b3JrL2JlYWdsZWJvbmUtcG9reS1saW51eC1nbnVlYWJpDQo+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+IERvZXNuJ3QgV29yazoNCj4gPiA+ID4gPiA+IC9tZWRpYS9kYXRh
MS9idWlsZDEvcG9reS9idWlsZC90bXAvd29yay9iZWFnbGVib25lLXBva3ktbGludXgtZ251ZWFi
aQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBJIGFsc28gaGF2ZSBiZWVuIHdvbmRlcmluZyBp
ZiB0aGUgdmVyc2lvbiBzdHJpbmdzIG1heSBiZSBtYWtpbmcgYQ0KPiA+ID4gPiA+ID4gZGlmZmVy
ZW5jZS4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gaHR0cDovL2Rhbi5ycHN5cy5uZXQvdUlt
YWdlLXJwMiBpcyBhIHVJbWFnZSBmcm9tIGEgYnJva2VuIGJ1aWxkIHdoZXJlIEkNCj4gPiA+ID4g
PiA+IHRydW5jYXRlZCB0aGUgcGF0aCBsZW5ndGggdG8gYSAid29ya2luZyIgYnVpbGQgcGF0aCBs
ZW5ndGggYW5kIHBhdGNoZWQNCj4gPiA+ID4gPiA+IGluIHRoZSBzYW1lIHZlcnNpb24gc3RyaW5n
czoNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gY29uc3QgY2hhciBsaW51eF9iYW5uZXJbXSA9
IA0KPiA+ID4gPiA+ID4gICAgICAgICJMaW51eCB2ZXJzaW9uIDMuMTQuMC15b2N0by1zdGFuZGFy
ZCAocGF1bEB1YnVudHUtYnVpbGQwMSkgKGdjYw0KPiA+ID4gPiA+ID4gdmVyc2lvbiA0LjguMiAo
R0NDKSApICMxIFBSRUVNUFQgTW9uIEFwciAxNCAxNjowMDo1MiBCU1QgMjAxNFxuIjsNCj4gPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gY29uc3QgY2hhciBsaW51eF9wcm9jX2Jhbm5lcltdID0gIiVz
IHZlcnNpb24gJXMgKHBhdWxAdWJ1bnR1LWJ1aWxkMDEpDQo+ID4gPiA+ID4gPiAoZ2NjIHZlcnNp
b24gNC44LjIgKEdDQykgKSAlc1xuIjsNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gdG8gaW5p
dC92ZXJzaW9uLmMuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEkgZG9uJ3QgaGF2ZSBoYXJk
d2FyZSBhbmQgd291bGQgYmUgaW50ZXJlc3RlZCB0byBrbm93IGlmIHRoZSBrZXJuZWwNCj4gPiA+
ID4gPiA+IGxpbmtlZCB0byBhYm92ZSB3b3JrcyBvciBub3QuIElmIGl0IGRvZXNuJ3QsIGl0IHJ1
bGVzIG91dCB0aGVzZSBwYXRoIGFuZA0KPiA+ID4gPiA+ID4gc3RyaW5nIGxlbmd0aHMsIGlmIGl0
IGRvZXMgd29yaywgaXQgcG9pbnRzIHRvIGEgcHJvYmxlbSB0aGVyZS4NCj4gPiA+ID4gPiANCj4g
PiA+ID4gPiBSaWNoYXJkLA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEdvb2QgY2F0Y2ghIEl0IGJv
b3RzOg0KPiA+ID4gPiANCj4gPiA+ID4gVGhhbmtzIERlbnlzLCB0aGlzIGhlbHBzIG5hcnJvdyBk
b3duIHRoZSBpc3N1ZS4gSSd2ZSBzaGFyZWQNCj4gPiA+ID4gaHR0cDovL2Rhbi5ycHN5cy5uZXQv
dUltYWdlLXJwMyB3aGljaCBpcyB0aGUgc2FtZSBhcyB0aGUgbGFzdCBvbmUgYnV0DQo+ID4gPiA+
IHdpdGggbXkgY2hhbmdlcyB0byB2ZXJzaW9uLmMgcmV2ZXJ0ZWQuIFRoZSBvbmUgc2hvdWxkIHRl
bGwgdXMgaWYgaXRzIHRoZQ0KPiA+ID4gPiBwYXRocyBvciB0aGUgc3RyaW5ncy4NCj4gPiA+IA0K
PiA+ID4gVGhpcyBvbmUgYWxzbyBib290cyBmb3IgbWU6DQo+ID4gPiANCj4gPiA+IExpbnV4IHZl
cnNpb24gMy4xNC4wLXlvY3RvLXN0YW5kYXJkIChyaWNoYXJkQHRlZCkgKGdjYyB2ZXJzaW9uIDQu
OC4yIChHQ0MpICkgIzIgUFJFRU1QVCBUdWUgQXByIDE1IDA1OjQwOjE5IElTVCAyMDE0DQo+ID4g
PiANCj4gPiA+IA0KPiA+ID4gPiBJJ20gZ3Vlc3NpbmcgdGhlIHBhdGggcHJvYmxlbSBpcyBtb3Jl
IGxpa2VseSBidXQgYW55dGhpbmcgaXMgcG9zc2libGUuDQo+ID4gPiA+IFRoaXMgaXMgc3RhcnRp
bmcgdG8gbG9vayBsaWtlIHNvbWUga2luZCBvZiBjb21waWxlciBvciBsaW5rZXIgaXNzdWUuIElm
DQo+ID4gPiA+IGl0IGlzIHRoYXQsIGl0IHdvdWxkIGhlbHAgdG8gaGF2ZSBtb3JlIGRhdGEgcG9p
bnRzIGFib3V0IHdoYXQgd29ya3MgYW5kDQo+ID4gPiA+IHdoYXQgZG9lc24ndC4gV2l0aCB0aGF0
IGluIG1pbmQgY291bGQgcGVvcGxlIHdobyBoYXZlIGdvb2Qgb3IgYmFkIGJ1aWxkcw0KPiA+ID4g
PiBwbGVhc2Ugc2hhcmUgdGhlIHBhdGhzIHRoZXkgYnVpbHQgdGhlIGtlcm5lbHMgaW4gc28gd2Ug
Y2FuIHNlZSBpZiB3ZSBjYW4NCj4gPiA+ID4gc3BvdCBzb21lIGtpbmQgb2YgcGF0dGVybi4NCj4g
PiANCj4gPiBCVFcsIG15IHBhdGggaXMgL09FL1JBTS9wb2t5L3RtcC93b3JrL2JlYWdsZWJvbmUt
cG9reS1saW51eC1nbnVlYWJpIGFuZCBpdCANCj4gPiB3b3Jrcy4NCj4gPiANCj4gDQo+IEkgY2Fu
IGNvbmZpcm06DQo+ICBidWlsZCBkaXIgaW4gL2hvbWUvc3RlZmFucy9iMSAgd29ya3MsDQo+IGJ1
dCAvaG9tZS9zdGVmYW5zL3lvY3RvL3Bva3kvYnVpbGQgZG9lc24ndC4NCj4gDQoNCkJ1dCB0aGlz
IHdvcmtzIA0KW3N0ZWZhbnNAZmlyZWJpcmQgYnVdJCBwd2QNCi9ob21lL3N0ZWZhbnMveW9jdG8v
cG9reS9idQ0KW3N0ZWZhbnNAZmlyZWJpcmQgYnVdJCBlY2hvIGBwd2RgfCB3YyAtYw0KMjgNCg0K
DQpCdXQgMjkgZG9lc24ndC4NClNvLCB3aGF0IG5vdz8NCg0KQ2hlZXJzLA0KU3RlZmFuDQoNCj4g
Q2hlZXJzLA0KPiBTdGVmYW4NCj4gDQo+ID4gLS0gDQo+ID4gRGVueXMNCj4gDQoNCg==

