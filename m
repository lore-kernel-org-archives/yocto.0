Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF9E1E0174E
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 08:36:42 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Nov 2013 08:36:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="384471009"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 04 Nov 2013 08:36:29 -0800
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.75]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.83]) with mapi id
	14.03.0123.003; Mon, 4 Nov 2013 16:36:21 +0000
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: =?utf-8?B?SGFucyBCZWNrw6lydXM=?= <hans.beckerus@gmail.com>
Thread-Topic: [yocto] meta-openembedded/meta-oe and busbox issues in 'dora'
Thread-Index: AQHO2XfnmDXxi5tYBkKjrCJNXk+NC5oVPgUAgAAC6wCAAAREAA==
Date: Mon, 4 Nov 2013 16:36:22 +0000
Message-ID: <1383583014.1197.3.camel@firebird.rb.intel.com>
References: <CAFyqS9pSWH5Lee1xTCKmj8gTLYrQRgk340a-UcYTjWsGj+wjfw@mail.gmail.com>
	<20131104161112.GE3684@jama>
	<CAFyqS9q=jCAnL=ds-+ij3bCk3d58PKw4OQGBdxZi4JePb+GvAg@mail.gmail.com>
In-Reply-To: <CAFyqS9q=jCAnL=ds-+ij3bCk3d58PKw4OQGBdxZi4JePb+GvAg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.73]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-openembedded/meta-oe and busbox issues in 'dora'
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
X-List-Received-Date: Mon, 04 Nov 2013 16:36:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E247E61DD354F42AC6FD1EB57BB8399@intel.com>
Content-Transfer-Encoding: base64

DQoNCk9uIE1vbiwgMjAxMy0xMS0wNCBhdCAxNzoyMSArMDEwMCwgSGFucyBCZWNrw6lydXMgd3Jv
dGU6DQo+IE9uIE1vbiwgTm92IDQsIDIwMTMgYXQgNToxMSBQTSwgTWFydGluIEphbnNhIDxtYXJ0
aW4uamFuc2FAZ21haWwuY29tPiB3cm90ZToNCj4gPiBPbiBNb24sIE5vdiAwNCwgMjAxMyBhdCAw
NTowNTo0M1BNICswMTAwLCBIYW5zIEJlY2vDqXJ1cyB3cm90ZToNCj4gPj4gSGVsbG8uIFdlIGdl
dCB0aGUgYmVsb3cgZXJyb3Igd2hlbiB0cnlpbmcgdG8gYnVpbGQgb3VyIGltYWdlIGluIFlvY3Rv
DQo+ID4+IDEuNSAnZG9yYScuDQo+ID4+DQo+ID4+IEVSUk9SOiBObyByZWNpcGVzIGF2YWlsYWJs
ZSBmb3I6DQo+ID4+ICAgL2hvbWUvcG9reS9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9lL3JlY2lw
ZXMtY29yZS9idXN5Ym94L2J1c3lib3hfMS4yMC4yLmJiYXBwZW5kDQo+ID4+IEVSUk9SOiBDb21t
YW5kIGV4ZWN1dGlvbiBmYWlsZWQ6IEV4aXRlZCB3aXRoIDENCj4gPj4NCj4gPj4gV2UgdXNlIHRo
ZSAnZG9yYScgYnJhbmNoIGFsc28gaW4gbWV0YS1vcGVuZW1iZWRkZWQuDQo+ID4NCj4gPiBXaHkg
YXJlIHlvdSB1c2luZyBtZXRhLW9wZW5lbWJlZGRlZCBmcm9tICdkb3JhJyBicmFuY2ggd2hlbiB5
b3VyIG9lLWNvcmUNCj4gPiBicmFuY2ggaXMgJ21hc3Rlcic/DQo+IEFoYS4gV2UgdXNlIHRoZSAn
ZG9yYScgYnJhbmNoIGluIFlvY3RvIGJ1dCBuZWVkIHNvbWUgcGFja2FnZXMgcHJvdmlkZWQNCj4g
b25seSBpbiBtZXRhLW9wZW5lbWJlZGRlZC4NCj4gQXJlIHlvdSBzYXlpbmcgdGhhdCB3ZSBzaG91
bGQgbm90IHVzZSB0aGUgJ2RvcmEnIGJyYW5jaCBpbg0KPiBtZXRhLW9wZW5lbWJlZGRlZCBidXQg
aW5zdGVhZCBnbyBmb3IgJ21hc3Rlcic/DQo+IEkgYW0gcHJvYmFibHkgY29uZnVzZWQgaGVyZSwg
YnV0IEkgZGlzdGluY3RpdmVseSB0aG91Z2ggJ2RvcmEnIGluDQo+IFlvY3RvIHdvdWxkIHJlcXVp
cmUgdGhlIHNhbWUgaW4gT0UgOigNCj4gDQoNCk5vLCBNYXJ0aW4gaXMgc2F5aW5nOiB1c2UgdGhl
IHNhbWUgYnJhbmNoIGFjcm9zcyBhbGwgeW91ciBsYXllcnMuDQpJZiB5b3UgYXJlIHVzaW5nIGRv
cmEgZm9yIG9lLWNvcmUveW9jdG8gdXNlIGRvcmEgZm9yIG1ldGEtb3BlbmVtYmRlZGRlZC4NCklm
IHlvdSBhcmUgdXNpbmcgbWFzdGVyIGZvciBvZS1jb3JlIHVzZSBtYXN0ZXIgZm9yIG1ldGEtb3Bl
bmVtYmVkZGVkDQooYW5kIHRoaXMgdXN1YWxseSBob2xkcyB0cnVlIGZvciBhbGwgbGF5ZXJzLCBk
b24ndCBtaXggbGF5ZXJzIGFuZA0KYnJhbmNoZXMpLiBUaGVyZSBpcyBubyBidXN5Ym94L2J1c3li
b3hfMS4yMC4yLmJiYXBwZW5kIGluIHRoZSBkb3JhDQpicmFuY2ggb2YgbWV0YS1vcGVuZW1iZWRk
ZWQsIHNvIHlvdSdyZSBwcm9iYWJseSBub3QgdXAgdG8gZGF0ZSB3aXRoIHRoZQ0KYnJhbmNoLg0K
DQoNCkNoZWVycywNClN0ZWZhbg0KDQo+ID4NCj4gPiBVc2UgdGhlIHNhbWUgYnJhbmNoZXMgZm9y
IGFsbCBsYXllcnMuDQo+ID4NCj4gPj4gQnV0IGJ1c3lib3ggaGFzIGJlZW4gdXBncmFkZWQgdG8g
MS4yMS4xIGluIFlvY3RvLiBJcyB0aGVyZSBzb21lIHNpbXBsZQ0KPiA+PiB3YXkgdG8gd29ya2Fy
b3VuZCB0aGlzIGlzc3VlIChiZXNpZGVzIHJlbW92aW5nIHRoZSBidXN5Ym94IHJlY2lwZSBmcm9t
DQo+ID4+IG1ldGEtb2UpPw0KPiA+PiBJLmUgaXMgdGhlcmUgc29tZSBjbGVhbiB3YXkgdG8gdGVs
bCBiaXRiYWtlIHRoYXQgaXQgaXMgZXhwZWN0ZWQgdGhhdA0KPiA+PiB0aGlzIHNwZWNpZmljIHJl
Y2lwZSBpcyBtaXNzaW5nPw0KPiA+Pg0KPiA+PiBUaGFua3MuDQo+ID4+IEhhbnMNCj4gPj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPj4geW9jdG8g
bWFpbGluZyBsaXN0DQo+ID4+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPj4gaHR0cHM6Ly9s
aXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo+ID4NCj4gPiAtLQ0KPiA+IE1h
cnRpbiAnSmFNYScgSmFuc2EgICAgIGphYmJlcjogTWFydGluLkphbnNhQGdtYWlsLmNvbQ0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBt
YWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg0K

