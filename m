Return-Path: <stefanx.stanacar@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 136BBE00B99
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 10:25:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Apr 2014 10:20:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,865,1389772800"; d="scan'208";a="493656959"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 15 Apr 2014 10:25:38 -0700
Received: from irsmsx107.ger.corp.intel.com (163.33.3.99) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 15 Apr 2014 18:25:37 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.157]) with mapi id
	14.03.0123.003; Tue, 15 Apr 2014 18:25:37 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "denis@denix.org" <denis@denix.org>
Thread-Topic: [yocto] BBB doesn't boot
Thread-Index: AQHPVvi7U65QgTaRbkKYHPQsid6RTpsQVSAAgACEAYCAAFmtgIAAAWGAgAACeICAAAEggIAAARsAgABDvYCAACrEgIAAGsuAgAAV/wCAADPFAIAABooAgAACyQCAAD9TgIAAL0uAgAAxRgCAABsWgIAAEJ8A
Date: Tue, 15 Apr 2014 17:25:37 +0000
Message-ID: <1397582768.2977.4.camel@firebird.rb.intel.com>
References: <534C0415.20701@mlbassoc.com>
	<1397552645.2977.0.camel@firebird.rb.intel.com>
	<1397562801.2977.2.camel@firebird.rb.intel.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
In-Reply-To: <20140415162639.GC11339@denix.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.38]
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 15 Apr 2014 17:25:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <F28930598A43E848A56DA337F8860F39@intel.com>
Content-Transfer-Encoding: base64

DQoNCg0KT24gVHVlLCAyMDE0LTA0LTE1IGF0IDEyOjI2IC0wNDAwLCBEZW55cyBEbXl0cml5ZW5r
byB3cm90ZToNCj4gT24gVHVlLCBBcHIgMTUsIDIwMTQgYXQgMDM6NDk6NDJQTSArMDEwMCwgUGF1
bCBFZ2dsZXRvbiB3cm90ZToNCj4gPiBPbiBUdWVzZGF5IDE1IEFwcmlsIDIwMTQgMTE6NTI6NDkg
U3RhbmFjYXIsIFN0ZWZhblggd3JvdGU6DQo+ID4gPiBPbiBUdWUsIDIwMTQtMDQtMTUgYXQgMDk6
MDMgKzAwMDAsIFN0YW5hY2FyLCBTdGVmYW5YIHdyb3RlOg0KPiA+ID4gPiBPbiBUdWUsIDIwMTQt
MDQtMTUgYXQgMDE6MTcgLTA0MDAsIERlbnlzIERteXRyaXllbmtvIHdyb3RlOg0KPiA+ID4gPiA+
IE9uIFR1ZSwgQXByIDE1LCAyMDE0IGF0IDAxOjA3OjI4QU0gLTA0MDAsIERlbnlzIERteXRyaXll
bmtvIHdyb3RlOg0KPiA+ID4gPiA+ID4gT24gVHVlLCBBcHIgMTUsIDIwMTQgYXQgMDU6NDQ6MDRB
TSArMDEwMCwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+ID4gPiA+ID4gPiA+IE9uIE1vbiwgMjAx
NC0wNC0xNCBhdCAyMTozOCAtMDQwMCwgRGVueXMgRG15dHJpeWVua28gd3JvdGU6DQo+ID4gPiA+
ID4gPiA+ID4gT24gVHVlLCBBcHIgMTUsIDIwMTQgYXQgMDE6MjA6MDNBTSArMDEwMCwgUmljaGFy
ZCBQdXJkaWUgd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gPiBPbiBNb24sIDIwMTQtMDQtMTQgYXQg
MTg6NDQgLTA0MDAsIERlbnlzIERteXRyaXllbmtvIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiA+ID4g
PiBPbiBNb24sIEFwciAxNCwgMjAxNCBhdCAwMjoxMTowNVBNIC0wNjAwLCBHYXJ5IFRob21hcyB3
cm90ZToNCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBWZXJ5IGludGVyZXN0aW5nIHJlc3VsdHMhICBU
aGVzZSBhcmUgdGhlIHJlc3VsdHMgZnJvbSB0aGUgDQo+ID4gYnVpbGQgaG9zdHMgSSBoYXZlOg0K
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ICAgRmVkb3JhIDEzIChpNjg2KSAtIGZhaWxzDQo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gICBGZWRvcmEgMTcgKGk2ODYpIC0gZmFpbHMNCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiAgIFVidW50dSAxMi4wNCAoeDg2XzY0KSAtIGJvb3RzDQo+ID4gPiA+ID4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gPiA+ID4gPiBJbnRlcmVzdGluZyBpbmRlZWQuIEkgaGF2ZSBubyBp
ZGVhIHdoYXQncyBzbyBzcGVjaWFsIGFib3V0DQo+ID4gPiA+ID4gPiA+ID4gPiA+IEZlZG9yYSBo
b3N0IC0gdGhpcyBpcyB0aGUgZmlyc3QgdGltZSBJIGhlYXIgYWJvdXQgaXNzdWVzIHdpdGgNCj4g
PiA+ID4gPiA+ID4gPiA+ID4gaXQuIEkgbWF5IHRyeSBleHBlcmltZW50aW5nIHdpdGggZGlmZmVy
ZW50IFZNcyBvbmNlIEkgaGF2ZQ0KPiA+ID4gPiA+ID4gPiA+ID4gPiBtb3JlIHRpbWUuLi4NCj4g
PiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+ID4gSSd2ZSBiZWVuIGhhdmluZyBhIGxv
b2sgYXQgdGhpcy4gVGhlIGJpZ2dlc3QgZGlmZmVyZW5jZXMgSSBjYW4NCj4gPiA+ID4gPiA+ID4g
PiA+IGZpbmQNCj4gPiA+ID4gPiA+ID4gPiA+IGJldHdlZW4gd29ya2luZyBhbmQgbm9uIHdvcmtp
bmcgYnVpbGRzIGlzIHRoZSBwYXRoIGxlbmd0aCB0byB0aGUNCj4gPiA+ID4gPiA+ID4gPiA+IGJ1
aWxkDQo+ID4gPiA+ID4gPiA+ID4gPiBkaXJlY3RvcnkgZm9yIHRoZSBrZXJuZWwuIFRoaXMgaXMg
ZnJvbSBjb21wYXJpbmcgdm1saW51eCBmaWxlcw0KPiA+ID4gPiA+ID4gPiA+ID4gZnJvbQ0KPiA+
ID4gPiA+ID4gPiA+ID4gd29ya2luZyBhbmQgbm9uIHdvcmtpbmcgYnVpbGRzLg0KPiA+ID4gPiA+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiBXb3JrczoNCj4gPiA+ID4gPiA+ID4gPiA+IC9o
b21lL3BhdWwvcG9reS9idWlsZC90bXAvd29yay9iZWFnbGVib25lLXBva3ktbGludXgtZ251ZWFi
aQ0KPiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiBEb2Vzbid0IFdvcms6DQo+
ID4gPiA+ID4gPiA+ID4gPiAvbWVkaWEvZGF0YTEvYnVpbGQxL3Bva3kvYnVpbGQvdG1wL3dvcmsv
YmVhZ2xlYm9uZS1wb2t5LWxpbnV4LWduDQo+ID4gPiA+ID4gPiA+ID4gPiB1ZWFiaQ0KPiA+ID4g
PiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiBJIGFsc28gaGF2ZSBiZWVuIHdvbmRlcmlu
ZyBpZiB0aGUgdmVyc2lvbiBzdHJpbmdzIG1heSBiZSBtYWtpbmcNCj4gPiA+ID4gPiA+ID4gPiA+
IGENCj4gPiA+ID4gPiA+ID4gPiA+IGRpZmZlcmVuY2UuDQo+ID4gPiA+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+ID4gPiA+IGh0dHA6Ly9kYW4ucnBzeXMubmV0L3VJbWFnZS1ycDIgaXMgYSB1SW1h
Z2UgZnJvbSBhIGJyb2tlbiBidWlsZA0KPiA+ID4gPiA+ID4gPiA+ID4gd2hlcmUgSQ0KPiA+ID4g
PiA+ID4gPiA+ID4gdHJ1bmNhdGVkIHRoZSBwYXRoIGxlbmd0aCB0byBhICJ3b3JraW5nIiBidWls
ZCBwYXRoIGxlbmd0aCBhbmQNCj4gPiA+ID4gPiA+ID4gPiA+IHBhdGNoZWQNCj4gPiA+ID4gPiA+
ID4gPiA+IGluIHRoZSBzYW1lIHZlcnNpb24gc3RyaW5nczoNCj4gPiA+ID4gPiA+ID4gPiA+IA0K
PiA+ID4gPiA+ID4gPiA+ID4gY29uc3QgY2hhciBsaW51eF9iYW5uZXJbXSA9DQo+ID4gPiA+ID4g
PiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAiTGludXggdmVyc2lvbiAzLjE0LjAt
eW9jdG8tc3RhbmRhcmQNCj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAocGF1bEB1YnVudHUtYnVp
bGQwMSkgKGdjYw0KPiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiB2ZXJzaW9u
IDQuOC4yIChHQ0MpICkgIzEgUFJFRU1QVCBNb24gQXByIDE0IDE2OjAwOjUyIEJTVA0KPiA+ID4g
PiA+ID4gPiA+ID4gMjAxNFxuIjsNCj4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+
ID4gY29uc3QgY2hhciBsaW51eF9wcm9jX2Jhbm5lcltdID0gIiVzIHZlcnNpb24gJXMNCj4gPiA+
ID4gPiA+ID4gPiA+IChwYXVsQHVidW50dS1idWlsZDAxKQ0KPiA+ID4gPiA+ID4gPiA+ID4gKGdj
YyB2ZXJzaW9uIDQuOC4yIChHQ0MpICkgJXNcbiI7DQo+ID4gPiA+ID4gPiA+ID4gPiANCj4gPiA+
ID4gPiA+ID4gPiA+IHRvIGluaXQvdmVyc2lvbi5jLg0KPiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gPiA+ID4gPiBJIGRvbid0IGhhdmUgaGFyZHdhcmUgYW5kIHdvdWxkIGJlIGludGVyZXN0
ZWQgdG8ga25vdyBpZiB0aGUNCj4gPiA+ID4gPiA+ID4gPiA+IGtlcm5lbA0KPiA+ID4gPiA+ID4g
PiA+ID4gbGlua2VkIHRvIGFib3ZlIHdvcmtzIG9yIG5vdC4gSWYgaXQgZG9lc24ndCwgaXQgcnVs
ZXMgb3V0IHRoZXNlDQo+ID4gPiA+ID4gPiA+ID4gPiBwYXRoIGFuZA0KPiA+ID4gPiA+ID4gPiA+
ID4gc3RyaW5nIGxlbmd0aHMsIGlmIGl0IGRvZXMgd29yaywgaXQgcG9pbnRzIHRvIGEgcHJvYmxl
bSB0aGVyZS4NCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBSaWNoYXJkLA0KPiA+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBHb29kIGNhdGNoISBJdCBib290czoNCj4gPiA+
ID4gPiA+ID4gVGhhbmtzIERlbnlzLCB0aGlzIGhlbHBzIG5hcnJvdyBkb3duIHRoZSBpc3N1ZS4g
SSd2ZSBzaGFyZWQNCj4gPiA+ID4gPiA+ID4gaHR0cDovL2Rhbi5ycHN5cy5uZXQvdUltYWdlLXJw
MyB3aGljaCBpcyB0aGUgc2FtZSBhcyB0aGUgbGFzdCBvbmUNCj4gPiA+ID4gPiA+ID4gYnV0DQo+
ID4gPiA+ID4gPiA+IHdpdGggbXkgY2hhbmdlcyB0byB2ZXJzaW9uLmMgcmV2ZXJ0ZWQuIFRoZSBv
bmUgc2hvdWxkIHRlbGwgdXMgaWYgaXRzDQo+ID4gPiA+ID4gPiA+IHRoZQ0KPiA+ID4gPiA+ID4g
PiBwYXRocyBvciB0aGUgc3RyaW5ncy4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhpcyBv
bmUgYWxzbyBib290cyBmb3IgbWU6DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IExpbnV4IHZl
cnNpb24gMy4xNC4wLXlvY3RvLXN0YW5kYXJkIChyaWNoYXJkQHRlZCkgKGdjYyB2ZXJzaW9uIDQu
OC4yDQo+ID4gPiA+ID4gPiAoR0NDKSApICMyIFBSRUVNUFQgVHVlIEFwciAxNSAwNTo0MDoxOSBJ
U1QgMjAxND4gPiA+IA0KPiA+ID4gPiA+ID4gPiBJJ20gZ3Vlc3NpbmcgdGhlIHBhdGggcHJvYmxl
bSBpcyBtb3JlIGxpa2VseSBidXQgYW55dGhpbmcgaXMNCj4gPiA+ID4gPiA+ID4gcG9zc2libGUu
DQo+ID4gPiA+ID4gPiA+IFRoaXMgaXMgc3RhcnRpbmcgdG8gbG9vayBsaWtlIHNvbWUga2luZCBv
ZiBjb21waWxlciBvciBsaW5rZXIgaXNzdWUuDQo+ID4gPiA+ID4gPiA+IElmDQo+ID4gPiA+ID4g
PiA+IGl0IGlzIHRoYXQsIGl0IHdvdWxkIGhlbHAgdG8gaGF2ZSBtb3JlIGRhdGEgcG9pbnRzIGFi
b3V0IHdoYXQgd29ya3MNCj4gPiA+ID4gPiA+ID4gYW5kDQo+ID4gPiA+ID4gPiA+IHdoYXQgZG9l
c24ndC4gV2l0aCB0aGF0IGluIG1pbmQgY291bGQgcGVvcGxlIHdobyBoYXZlIGdvb2Qgb3IgYmFk
DQo+ID4gPiA+ID4gPiA+IGJ1aWxkcw0KPiA+ID4gPiA+ID4gPiBwbGVhc2Ugc2hhcmUgdGhlIHBh
dGhzIHRoZXkgYnVpbHQgdGhlIGtlcm5lbHMgaW4gc28gd2UgY2FuIHNlZSBpZiB3ZQ0KPiA+ID4g
PiA+ID4gPiBjYW4NCj4gPiA+ID4gPiA+ID4gc3BvdCBzb21lIGtpbmQgb2YgcGF0dGVybi4NCj4g
PiA+ID4gPiANCj4gPiA+ID4gPiBCVFcsIG15IHBhdGggaXMgL09FL1JBTS9wb2t5L3RtcC93b3Jr
L2JlYWdsZWJvbmUtcG9reS1saW51eC1nbnVlYWJpIGFuZA0KPiA+ID4gPiA+IGl0IHdvcmtzLg0K
PiA+ID4gPiANCj4gPiA+ID4gSSBjYW4gY29uZmlybToNCj4gPiA+ID4gIGJ1aWxkIGRpciBpbiAv
aG9tZS9zdGVmYW5zL2IxICB3b3JrcywNCj4gPiA+ID4gDQo+ID4gPiA+IGJ1dCAvaG9tZS9zdGVm
YW5zL3lvY3RvL3Bva3kvYnVpbGQgZG9lc24ndC4NCj4gPiA+IA0KPiA+ID4gQnV0IHRoaXMgd29y
a3MNCj4gPiA+IFtzdGVmYW5zQGZpcmViaXJkIGJ1XSQgcHdkDQo+ID4gPiAvaG9tZS9zdGVmYW5z
L3lvY3RvL3Bva3kvYnUNCj4gPiA+IFtzdGVmYW5zQGZpcmViaXJkIGJ1XSQgZWNobyBgcHdkYHwg
d2MgLWMNCj4gPiA+IDI4DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gQnV0IDI5IGRvZXNuJ3QuDQo+
ID4gPiBTbywgd2hhdCBub3c/DQo+ID4gDQo+ID4gU29tZSBvdGhlciB0aGluZ3MgSSB0cmllZCB3
aXRoIGEgImxvbmciIFRNUERJUiBwYXRoIChub3RlIHRoYXQgaXQncyB0aGUgVE1QRElSIA0KPiA+
IHBhdGggdGhhdCBtYWtlcyB0aGUgZGlmZmVyZW5jZSAtIGluIG15IHRlc3RzIEkndmUgYmVlbiB1
c2luZyANCj4gPiAvaG9tZS9wYXVsL3Bva3kvYnVpbGQyL211Y2gvbG9uZ2VyL3BhdGgvdG8vdG1w
KS4gTm9uZSBvZiB0aGlzIGhlbHBlZDoNCj4gPiANCj4gPiAqIGtlcm5lbCBidWlsdCB3aXRoIGdj
YyA0LjcuMiBhbmQgYmludXRpbHMgMi4yMy4yDQo+ID4gKiB1LWJvb3QgYnVpbHQgd2l0aCBnY2Mg
NC43LjIgYW5kIGJpbnV0aWxzIDIuMjMuMg0KPiA+ICogdS1ib290IGZyb20gaHR0cDovL2Rvd25s
b2Fkcy5hbmdzdHJvbS1kaXN0cmlidXRpb24ub3JnL2RlbW8vYmVhZ2xlYm9uZS8NCj4gPiAqIGVh
cmx5cHJpbnRrIGFuZCBDT05GSUdfREVCVUdfTEwgLSBubyBhZGRpdGlvbmFsIG91dHB1dCBwcmlu
dGVkDQo+ID4gDQo+ID4gSSB0aGluayB3ZSdyZSBub3cgYXQgdGhlIHBvaW50IHdoZXJlIHdlJ2Qg
YmVuZWZpdCBmcm9tIHNvbWVvbmUgd2l0aCBiZXR0ZXIgDQo+ID4ga25vd2xlZGdlIGRlYnVnZ2lu
ZyB0aGUgaXNzdWUuDQo+IA0KPiBPaywgc2hvdWxkIHdlIGV4cGFuZCB0aGUgc2VhcmNoIGFyZWE/
IFNpbmNlIHRoaXMgaXMgc3VwcG9zZWQgdG8gYmUgdmFuaWxsYSANCj4gMy4xNCBrZXJuZWwsIGNh
biB3ZSB0cnkgb3RoZXIgcGxhdGZvcm1zIGFuZCBzZWUgaWYgdGhleSBhcmUgc2ltaWxhcmx5IA0K
PiBhZmZlY3RlZD8gSSdsbCB0cnkgcGluZ2luZyBvdXIga2VybmVsIGd1eXMgZm9yIGFueSBpZGVh
cy4uLg0KPiANCg0KDQpGV0lXLCBJIGZpbGVkIGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9NjE2NQ0KdGhhdCBjb250YWlucyBhbGwgdGhlIGluZm8gSSBo
YWQuDQpBIGxpbmsgdG8gdHdvIG9mIG15IGtlcm5lbCBpcyB0aGVyZSwgb25lIHdvcmtpbmcgb25l
IG5vdC4NCg0KQ2hlZXJzLA0KU3RlZmFuDQoNCg==

