Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 558164C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 09:04:52 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jul 2011 07:04:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,529,1304319600"; d="scan'208";a="25826468"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2011 07:04:51 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 14 Jul 2011 07:04:52 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.32]) with mapi id
	14.01.0289.001; Thu, 14 Jul 2011 07:04:51 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] docs: how to spell "bitbake", and docbook semantic
	markup for user input
Thread-Index: AQHMQUu8gfE21a6ohE2bSkWwCfXp9pTrULuAgABOXICAAGmOgIAABD4A///OLPA=
Date: Thu, 14 Jul 2011 14:04:51 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379030CFC@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107130653460.4203@localhost6.localdomain6>
	<1310597317.2270.4.camel@scimitar> <4E1E627B.80801@linux.intel.com>
	<alpine.DEB.2.02.1107140544380.3506@localhost6.localdomain6>
	<1310637718.20015.1137.camel@rex>
In-Reply-To: <1310637718.20015.1137.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: docs: how to spell "bitbake", and docbook semantic markup for user input
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Jul 2011 14:04:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWdyZWVkIHRoYXQgQml0QmFrZSBpcyB0aGUgY29ycmVjdCBzcGVsbGluZy4gIEkgd2lsbCBiZSBz
dXJlIHRvIG1ha2UgYSBzd2VlcCB0aHJvdWdoIG91ciBZb2N0byBtYW51YWxzIGFuZCBtYWtlIHN1
cmUgdGhhdCB3aGVuIHdlIGFyZSByZWZlcnJpbmcgdG8gdGhlIHRvb2wgYW5kIG5vdCBpbmRpY2F0
aW5nIHRoZSBjb21tYW5kIHRoZXkgc2F5ICJCaXRCYWtlIi4NCg0KVGhhbmtzLA0KU2NvdHRSDQoN
Ci0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFpbHRv
OnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddIA0KU2VudDogVGh1cnNkYXksIEp1
bHkgMTQsIDIwMTEgMzowMiBBTQ0KVG86IFJvYmVydCBQLiBKLiBEYXkNCkNjOiBEYXJyZW4gSGFy
dDsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgUmlmZW5iYXJrLCBTY290dCBNDQpTdWJqZWN0OiBS
ZTogW3lvY3RvXSBkb2NzOiBob3cgdG8gc3BlbGwgImJpdGJha2UiLCBhbmQgZG9jYm9vayBzZW1h
bnRpYyBtYXJrdXAgZm9yIHVzZXIgaW5wdXQNCg0KT24gVGh1LCAyMDExLTA3LTE0IGF0IDA1OjQ2
IC0wNDAwLCBSb2JlcnQgUC4gSi4gRGF5IHdyb3RlOg0KPiBPbiBXZWQsIDEzIEp1bCAyMDExLCBE
YXJyZW4gSGFydCB3cm90ZToNCj4gDQo+ID4gT24gMDcvMTMvMjAxMSAwMzo0OCBQTSwgSm9zaHVh
IExvY2sgd3JvdGU6DQo+ID4gPiBPbiBXZWQsIDIwMTEtMDctMTMgYXQgMDY6NTcgLTA0MDAsIFJv
YmVydCBQLiBKLiBEYXkgd3JvdGU6DQo+ID4gPj4ganVzdCBwZXJ1c2luZyB0aGUgZG9jdW1lbnRh
dGlvbiBpbiBteSB0eXBpY2FsbHkgcGVkYW50aWMgZmFzaGlvbiBhbmQNCj4gPiA+PiBhIGNvdXBs
ZSBxdWVzdGlvbnMgYWJvdXQgc3R5bGUuICBmaXJzdCwgaXMgdGhlIHByb3BlciBzcGVsbGluZw0K
PiA+ID4+ICJCaXRiYWtlIiBvciAiQml0QmFrZSIgc2luY2UgdGhlIGRvYyBzb3VyY2Ugc2VlbXMg
dG8gYm91bmNlIGJhY2sgYW5kDQo+ID4gPj4gZm9ydGggYW5kIGl0IHJlYWxseSBzaG91bGQgYmUg
Y29uc2lzdGVudC4NCj4gPiA+DQo+ID4gPiBJIGJlbGlldmUgaXQncyB0aGUgbGF0dGVyLCBhdCBs
ZWFzdCB0aGF0J3Mgd2hhdCBJJ3ZlIGFsd2F5cyB1c2UuDQo+ID4gPg0KPiA+DQo+ID4gQWdyZWVk
Og0KPiA+DQo+ID4gVGhlIG1hbiBwYWdlOg0KPiA+IEJpdEJha2UgLSBzaW1wbGUgdG9vbCBmb3Ig
dGhlIGV4ZWN1dGlvbiBvZiB0YXNrcw0KPiA+DQo+ID4gVGhlIHVzZXIgbWFudWFsOg0KPiA+IEJp
dEJha2UgVXNlciBNYW51YWwNCj4gPg0KPiA+IFRob3NlIHNlZW0gbGlrZSB0aGUgdHdvIGxpbmVz
IG9mIGRvY3VtZW50YXRpb24gdGhhdCBhcmUgbW9zdCBsaWtlbHkgdG8NCj4gPiBiZSBjb3JyZWN0
IDotKSBTbyB1bmxlc3MgUmljaGFyZCBvciBDaHJpcyBwaXBlIHVwLCBJJ2QgZ28gd2l0aCBCaXRC
YWtlLg0KPiANCj4gICBpIHRob3VnaHQgYXMgbXVjaCwgaSdtIGdvaW5nIHdpdGggdGhhdC4gIG5v
dCBoaWdoIG9uIGFueSBsaXN0IG9mDQo+IHByaW9yaXRpZXMgYnV0IHdoaWxlIGknbSBwZXJ1c2lu
ZyB0aGUgZG9jcywgaSBtaWdodCBhcyB3ZWxsIG1ha2Ugbm90ZXMNCj4gb2Ygd2hhdCBjYW4gY2hh
bmdlLCBhbmQgc3VibWl0IHBhdGNoZXMgZm9yIHRoZSBtb3JlIG9idmlvdXMgc3R1ZmYuDQo+IA0K
PiAgIGFyZSB0aGUgc21hbGwgY2hhbmdlcyBpJ3ZlIHBvc3RlZCBoZXJlIGluIGFjY2VwdGFibGUg
Zm9ybWF0PyAgZG8NCj4gdGhleSBnZXQgQUNLZWQgYXQgc29tZSBwb2ludCBzbyBpIGNhbiB2ZXJp
ZnkgdGhleSB3ZXJlIGFjY2VwdGVkPw0KDQpUaGUgcGllY2VzIGluIHBva3kncyBkb2N1bWVudGF0
aW9uIGRpcmVjdG9yeSBhcmUgcGFydCBvZiB0aGUgeW9jdG8tZG9jcw0KcmVwbyB3aGljaCBpcyBt
YWludGFpbmVkIGJ5IFNjb3R0IChjYydkKS4gU2NvdHQgaXMgYSB0ZWNoIHdyaXRlciByYXRoZXIN
CnRoYW4gYSBkZXZlbG9wZXIgYW5kIGxvdmVzIGdpdCwgZXIsIEkgbWVhbiB3ZSBtaWdodCBuZWVk
IHRvIGhlbHAgaGltIGdldA0KdGhlIHBhdGNoZXMgaW4gOy0pLiBQbGVhc2UgZG8gc2VuZCB0aGVt
IGFuZCB3ZSdsbCBmaWd1cmUgdGhhdCBiaXQgb3V0DQp0aG91Z2ggYW5kIHdpbGwgc2VuZCBhbiBh
Y2tub3dsZWRnZW1lbnQgd2hlbiB0aGV5J3JlIG1lcmdlZC4NCg0KQ2hlZXJzLA0KDQpSaWNoYXJk
DQoNCg==

