Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A08BE00A2F
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 02:04:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Apr 2014 02:04:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="493201567"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 15 Apr 2014 02:03:58 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.224]) with mapi id
	14.03.0123.003; Tue, 15 Apr 2014 10:03:34 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "denis@denix.org" <denis@denix.org>
Thread-Topic: [yocto] BBB doesn't boot
Thread-Index: AQHPVvi7U65QgTaRbkKYHPQsid6RTpsQVSAAgACEAYCAAFmtgIAAAWGAgAACeICAAAEggIAAARsAgABDvYCAACrEgIAAGsuAgAAV/wCAADPFAIAABooAgAACyQCAAD9TgA==
Date: Tue, 15 Apr 2014 09:03:33 +0000
Message-ID: <1397552645.2977.0.camel@firebird.rb.intel.com>
References: <534C0415.20701@mlbassoc.com> <20140414160038.GB3370@denix.org>
	<534C0719.5050908@mlbassoc.com> <20140414160838.GC3370@denix.org>
	<534C40D9.40509@mlbassoc.com> <20140414224409.GF3370@denix.org>
	<1397521203.15843.62.camel@ted> <20140415013846.GG3370@denix.org>
	<1397537044.15843.66.camel@ted> <20140415050728.GA11339@denix.org>
	<20140415051726.GB11339@denix.org>
In-Reply-To: <20140415051726.GB11339@denix.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.38]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"gary@mlbassoc.com" <gary@mlbassoc.com>
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
X-List-Received-Date: Tue, 15 Apr 2014 09:04:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0335E37EA3119E4C8902DF00F09F4BA8@intel.com>
Content-Transfer-Encoding: base64

DQoNCg0KT24gVHVlLCAyMDE0LTA0LTE1IGF0IDAxOjE3IC0wNDAwLCBEZW55cyBEbXl0cml5ZW5r
byB3cm90ZToNCj4gT24gVHVlLCBBcHIgMTUsIDIwMTQgYXQgMDE6MDc6MjhBTSAtMDQwMCwgRGVu
eXMgRG15dHJpeWVua28gd3JvdGU6DQo+ID4gT24gVHVlLCBBcHIgMTUsIDIwMTQgYXQgMDU6NDQ6
MDRBTSArMDEwMCwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+ID4gPiBPbiBNb24sIDIwMTQtMDQt
MTQgYXQgMjE6MzggLTA0MDAsIERlbnlzIERteXRyaXllbmtvIHdyb3RlOg0KPiA+ID4gPiBPbiBU
dWUsIEFwciAxNSwgMjAxNCBhdCAwMToyMDowM0FNICswMTAwLCBSaWNoYXJkIFB1cmRpZSB3cm90
ZToNCj4gPiA+ID4gPiBPbiBNb24sIDIwMTQtMDQtMTQgYXQgMTg6NDQgLTA0MDAsIERlbnlzIERt
eXRyaXllbmtvIHdyb3RlOg0KPiA+ID4gPiA+ID4gT24gTW9uLCBBcHIgMTQsIDIwMTQgYXQgMDI6
MTE6MDVQTSAtMDYwMCwgR2FyeSBUaG9tYXMgd3JvdGU6DQo+ID4gPiA+ID4gPiA+IFZlcnkgaW50
ZXJlc3RpbmcgcmVzdWx0cyEgIFRoZXNlIGFyZSB0aGUgcmVzdWx0cyBmcm9tIHRoZSBidWlsZCBo
b3N0cyBJIGhhdmU6DQo+ID4gPiA+ID4gPiA+ICAgRmVkb3JhIDEzIChpNjg2KSAtIGZhaWxzDQo+
ID4gPiA+ID4gPiA+ICAgRmVkb3JhIDE3IChpNjg2KSAtIGZhaWxzDQo+ID4gPiA+ID4gPiA+ICAg
VWJ1bnR1IDEyLjA0ICh4ODZfNjQpIC0gYm9vdHMNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4g
SW50ZXJlc3RpbmcgaW5kZWVkLiBJIGhhdmUgbm8gaWRlYSB3aGF0J3Mgc28gc3BlY2lhbCBhYm91
dCBGZWRvcmEgaG9zdCAtIHRoaXMgDQo+ID4gPiA+ID4gPiBpcyB0aGUgZmlyc3QgdGltZSBJIGhl
YXIgYWJvdXQgaXNzdWVzIHdpdGggaXQuIEkgbWF5IHRyeSBleHBlcmltZW50aW5nIHdpdGggDQo+
ID4gPiA+ID4gPiBkaWZmZXJlbnQgVk1zIG9uY2UgSSBoYXZlIG1vcmUgdGltZS4uLg0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IEkndmUgYmVlbiBoYXZpbmcgYSBsb29rIGF0IHRoaXMuIFRoZSBiaWdn
ZXN0IGRpZmZlcmVuY2VzIEkgY2FuIGZpbmQNCj4gPiA+ID4gPiBiZXR3ZWVuIHdvcmtpbmcgYW5k
IG5vbiB3b3JraW5nIGJ1aWxkcyBpcyB0aGUgcGF0aCBsZW5ndGggdG8gdGhlIGJ1aWxkDQo+ID4g
PiA+ID4gZGlyZWN0b3J5IGZvciB0aGUga2VybmVsLiBUaGlzIGlzIGZyb20gY29tcGFyaW5nIHZt
bGludXggZmlsZXMgZnJvbQ0KPiA+ID4gPiA+IHdvcmtpbmcgYW5kIG5vbiB3b3JraW5nIGJ1aWxk
cy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBXb3JrczoNCj4gPiA+ID4gPiAvaG9tZS9wYXVsL3Bv
a3kvYnVpbGQvdG1wL3dvcmsvYmVhZ2xlYm9uZS1wb2t5LWxpbnV4LWdudWVhYmkNCj4gPiA+ID4g
PiANCj4gPiA+ID4gPiBEb2Vzbid0IFdvcms6DQo+ID4gPiA+ID4gL21lZGlhL2RhdGExL2J1aWxk
MS9wb2t5L2J1aWxkL3RtcC93b3JrL2JlYWdsZWJvbmUtcG9reS1saW51eC1nbnVlYWJpDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gSSBhbHNvIGhhdmUgYmVlbiB3b25kZXJpbmcgaWYgdGhlIHZlcnNp
b24gc3RyaW5ncyBtYXkgYmUgbWFraW5nIGENCj4gPiA+ID4gPiBkaWZmZXJlbmNlLg0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IGh0dHA6Ly9kYW4ucnBzeXMubmV0L3VJbWFnZS1ycDIgaXMgYSB1SW1h
Z2UgZnJvbSBhIGJyb2tlbiBidWlsZCB3aGVyZSBJDQo+ID4gPiA+ID4gdHJ1bmNhdGVkIHRoZSBw
YXRoIGxlbmd0aCB0byBhICJ3b3JraW5nIiBidWlsZCBwYXRoIGxlbmd0aCBhbmQgcGF0Y2hlZA0K
PiA+ID4gPiA+IGluIHRoZSBzYW1lIHZlcnNpb24gc3RyaW5nczoNCj4gPiA+ID4gPiANCj4gPiA+
ID4gPiBjb25zdCBjaGFyIGxpbnV4X2Jhbm5lcltdID0gDQo+ID4gPiA+ID4gICAgICAgICJMaW51
eCB2ZXJzaW9uIDMuMTQuMC15b2N0by1zdGFuZGFyZCAocGF1bEB1YnVudHUtYnVpbGQwMSkgKGdj
Yw0KPiA+ID4gPiA+IHZlcnNpb24gNC44LjIgKEdDQykgKSAjMSBQUkVFTVBUIE1vbiBBcHIgMTQg
MTY6MDA6NTIgQlNUIDIwMTRcbiI7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gY29uc3QgY2hhciBs
aW51eF9wcm9jX2Jhbm5lcltdID0gIiVzIHZlcnNpb24gJXMgKHBhdWxAdWJ1bnR1LWJ1aWxkMDEp
DQo+ID4gPiA+ID4gKGdjYyB2ZXJzaW9uIDQuOC4yIChHQ0MpICkgJXNcbiI7DQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gdG8gaW5pdC92ZXJzaW9uLmMuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSSBk
b24ndCBoYXZlIGhhcmR3YXJlIGFuZCB3b3VsZCBiZSBpbnRlcmVzdGVkIHRvIGtub3cgaWYgdGhl
IGtlcm5lbA0KPiA+ID4gPiA+IGxpbmtlZCB0byBhYm92ZSB3b3JrcyBvciBub3QuIElmIGl0IGRv
ZXNuJ3QsIGl0IHJ1bGVzIG91dCB0aGVzZSBwYXRoIGFuZA0KPiA+ID4gPiA+IHN0cmluZyBsZW5n
dGhzLCBpZiBpdCBkb2VzIHdvcmssIGl0IHBvaW50cyB0byBhIHByb2JsZW0gdGhlcmUuDQo+ID4g
PiA+IA0KPiA+ID4gPiBSaWNoYXJkLA0KPiA+ID4gPiANCj4gPiA+ID4gR29vZCBjYXRjaCEgSXQg
Ym9vdHM6DQo+ID4gPiANCj4gPiA+IFRoYW5rcyBEZW55cywgdGhpcyBoZWxwcyBuYXJyb3cgZG93
biB0aGUgaXNzdWUuIEkndmUgc2hhcmVkDQo+ID4gPiBodHRwOi8vZGFuLnJwc3lzLm5ldC91SW1h
Z2UtcnAzIHdoaWNoIGlzIHRoZSBzYW1lIGFzIHRoZSBsYXN0IG9uZSBidXQNCj4gPiA+IHdpdGgg
bXkgY2hhbmdlcyB0byB2ZXJzaW9uLmMgcmV2ZXJ0ZWQuIFRoZSBvbmUgc2hvdWxkIHRlbGwgdXMg
aWYgaXRzIHRoZQ0KPiA+ID4gcGF0aHMgb3IgdGhlIHN0cmluZ3MuDQo+ID4gDQo+ID4gVGhpcyBv
bmUgYWxzbyBib290cyBmb3IgbWU6DQo+ID4gDQo+ID4gTGludXggdmVyc2lvbiAzLjE0LjAteW9j
dG8tc3RhbmRhcmQgKHJpY2hhcmRAdGVkKSAoZ2NjIHZlcnNpb24gNC44LjIgKEdDQykgKSAjMiBQ
UkVFTVBUIFR1ZSBBcHIgMTUgMDU6NDA6MTkgSVNUIDIwMTQNCj4gPiANCj4gPiANCj4gPiA+IEkn
bSBndWVzc2luZyB0aGUgcGF0aCBwcm9ibGVtIGlzIG1vcmUgbGlrZWx5IGJ1dCBhbnl0aGluZyBp
cyBwb3NzaWJsZS4NCj4gPiA+IFRoaXMgaXMgc3RhcnRpbmcgdG8gbG9vayBsaWtlIHNvbWUga2lu
ZCBvZiBjb21waWxlciBvciBsaW5rZXIgaXNzdWUuIElmDQo+ID4gPiBpdCBpcyB0aGF0LCBpdCB3
b3VsZCBoZWxwIHRvIGhhdmUgbW9yZSBkYXRhIHBvaW50cyBhYm91dCB3aGF0IHdvcmtzIGFuZA0K
PiA+ID4gd2hhdCBkb2Vzbid0LiBXaXRoIHRoYXQgaW4gbWluZCBjb3VsZCBwZW9wbGUgd2hvIGhh
dmUgZ29vZCBvciBiYWQgYnVpbGRzDQo+ID4gPiBwbGVhc2Ugc2hhcmUgdGhlIHBhdGhzIHRoZXkg
YnVpbHQgdGhlIGtlcm5lbHMgaW4gc28gd2UgY2FuIHNlZSBpZiB3ZSBjYW4NCj4gPiA+IHNwb3Qg
c29tZSBraW5kIG9mIHBhdHRlcm4uDQo+IA0KPiBCVFcsIG15IHBhdGggaXMgL09FL1JBTS9wb2t5
L3RtcC93b3JrL2JlYWdsZWJvbmUtcG9reS1saW51eC1nbnVlYWJpIGFuZCBpdCANCj4gd29ya3Mu
DQo+IA0KDQpJIGNhbiBjb25maXJtOg0KIGJ1aWxkIGRpciBpbiAvaG9tZS9zdGVmYW5zL2IxICB3
b3JrcywNCmJ1dCAvaG9tZS9zdGVmYW5zL3lvY3RvL3Bva3kvYnVpbGQgZG9lc24ndC4NCg0KQ2hl
ZXJzLA0KU3RlZmFuDQoNCj4gLS0gDQo+IERlbnlzDQoNCg==

