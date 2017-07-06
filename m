Return-Path: <todor.minchev@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7A6EE00BDF; Thu,  6 Jul 2017 15:46:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C237BE00BC1
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 15:46:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jul 2017 15:46:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,319,1496127600"; d="scan'208";a="108157796"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
	by orsmga002.jf.intel.com with ESMTP; 06 Jul 2017 15:46:14 -0700
Received: from irsmsx111.ger.corp.intel.com (10.108.20.4) by
	IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 6 Jul 2017 23:46:13 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.211]) by
	irsmsx111.ger.corp.intel.com ([169.254.2.25]) with mapi id
	14.03.0319.002; Thu, 6 Jul 2017 23:46:13 +0100
From: "Minchev, Todor" <todor.minchev@intel.com>
To: "Khor, Swee Aun" <swee.aun.khor@intel.com>
Thread-Topic: [yocto] [RMC][PATCH v2] RMC: Support x32 build
Thread-Index: AQHS9pO8tlpiFuyDikmfJ0iJE9n6AqJHMXwAgAACgICAACFuAA==
Date: Thu, 6 Jul 2017 22:46:13 +0000
Message-ID: <1499381172.7546.44.camel@intel.com>
References: <1499283599-11297-1-git-send-email-swee.aun.khor@intel.com>
	<1499371700.7546.27.camel@linux.intel.com>
	<CAMKF1sooRsTY9uTPw55do2dPpUS9h9-SCu4cW3d1FZ-87Q=gCQ@mail.gmail.com>
	<1499373993.7546.35.camel@linux.intel.com>
In-Reply-To: <1499373993.7546.35.camel@linux.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.74.100]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [RMC][PATCH v2] RMC: Support x32 build
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
X-List-Received-Date: Thu, 06 Jul 2017 22:46:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A9AEBFE25EDF9C41945062134AA74611@intel.com>
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDE3LTA3LTA2IGF0IDEzOjQ2IC0wNzAwLCBUb2RvciBNaW5jaGV2IHdyb3RlOg0K
PiBPbiBUaHUsIDIwMTctMDctMDYgYXQgMTM6MzcgLTA3MDAsIEtoZW0gUmFqIHdyb3RlOg0KPiA+
IE9uIFRodSwgSnVsIDYsIDIwMTcgYXQgMTowOCBQTSwgVG9kb3IgTWluY2hldg0KPiA+IDx0b2Rv
ci5taW5jaGV2QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiBPbiBXZWQsIDIwMTctMDct
MDUgYXQgMTI6MzkgLTA3MDAsIHN3ZWUuYXVuLmtob3JAaW50ZWwuY29tIHdyb3RlOg0KPiA+ID4+
IEZyb206IHN3ZWVhdW4gPHN3ZWUuYXVuLmtob3JAaW50ZWwuY29tPg0KPiA+ID4+DQo+ID4gPj4g
Uk1DIGVmaSBpcyBuZWVkZWQgdG8gY29tcGlsZWQgYXMgNjQgYml0cyBldmVuIERFRkFVTFRUVU5F
IGlzIHgzMi4NCj4gPiA+Pg0KPiA+ID4+IFNpZ25lZC1vZmYtYnk6IHN3ZWVhdW4gPHN3ZWUuYXVu
Lmtob3JAaW50ZWwuY29tPg0KPiA+ID4+IC0tLQ0KPiA+ID4+ICBNYWtlZmlsZS5lZmkgfCAzICsr
Kw0KPiA+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+ID4gPj4NCj4gPiA+
PiBkaWZmIC0tZ2l0IGEvTWFrZWZpbGUuZWZpIGIvTWFrZWZpbGUuZWZpDQo+ID4gPj4gaW5kZXgg
NGY2OWRmZS4uOTVlMGY4YyAxMDA2NDQNCj4gPiA+PiAtLS0gYS9NYWtlZmlsZS5lZmkNCj4gPiA+
PiArKysgYi9NYWtlZmlsZS5lZmkNCj4gPiA+PiBAQCAtMTYsNiArMTYsOSBAQCBSTUNfSU5TVEFM
TF9MSUJfUEFUSCA6PSAkKFJNQ19JTlNUQUxMX1BSRUZJWCkvbGliLw0KPiA+ID4+DQo+ID4gPj4g
IFJNQ19DRkxBR1MgOj0gLURSTUNfRUZJIC1XYWxsIC1JJChUT1BESVIpL2luYyAtZnBpYyAtbm9z
dGRpbmMgLW5vc3RkbGliICAtZm5vLWJ1aWx0aW4gLXN0ZD1nbnU5MA0KPiA+ID4+DQo+ID4gPj4g
KyNSTUMgZWZpIGlzIG5lZWRlZCB0byBiZSBjb21waWxlZCBhcyA2NCBiaXQgZXZlbiBERUZBVUxU
VFVORSBpcyB4MzINCj4gPiA+PiArQ0MgOj0gJChwYXRzdWJzdCAtbXgzMiwgLW02NCwgJChDQykp
DQo+ID4gPj4gKw0KPiA+ID4NCj4gPiANCj4gPiBkb2VzIHRoaXMgbWVhbiBwYWNrYWdlIGlzIG92
ZXJyaWRpbmcgQ0MgcGFzc2VkIGZyb20gZW52ID8NCj4gPiBpZiB5ZXMgdGhlbiBJIHRoaW5rIGFw
cCBzaG91bGQgYmUgZml4ZWQgdG8gcmVzcGVjdCBDQyBpZiBzZXQgaW4gZW52DQo+ID4gYW5kIG9u
bHkgc2V0IGl0IGlmIENDIGVudiBpcyBub3Qgc2V0DQo+IA0KPiArMQ0KPiANCj4gVGhlIGFwcCBy
ZXNwZWN0cyBib3RoIENDIGFuZCBDRkxBR1MgZnJvbSB0aGUgZW52LiBUaGV5IGhhdmUgdG8gYmUg
c2V0IHRvDQo+IHRoZSBjb3JyZWN0IHZhbHVlcyBiZWZvcmUgdGhlIE1ha2VmaWxlIGlzIGNhbGxl
ZC4NCj4gICANCj4gPiANCj4gPiA+IFNpbmNlIHRoaXMgaXMgbm90IGFuIFJNQy1zcGVjaWZpYyBw
cm9ibGVtLCBJIGJlbGlldmUgdGhhdCB3ZSBzaG91bGRuJ3QNCj4gPiA+IHBhdGNoIHRoZSBjb21w
aWxlciBmbGFncyBpbiB0aGUgUk1DIE1ha2VmaWxlLiBUaGlzIHBhdGNoIHdpbGwgcHJvdmlkZQ0K
PiA+ID4gdGhlIGRlc2lyZWQgb3V0Y29tZSBvbmx5IHdoZW4gUk1DIGlzIGJ1aWx0IHdpdGggbWV0
YS1pbnRlbC4gQSBiZXR0ZXINCj4gPiA+IGFsdGVybmF0aXZlIHdpbGwgYmUgdG8gc3BsaXQgcm1j
LmJiIGludG8gcm1jLmJiICh1c2Vyc3BhY2UgYXBwKSBhbmQNCj4gPiA+IHJtYy1lZmkuYmIgKGVm
aSBsaWJyYXJ5KSBhbmQgbW9kaWZ5IHRoZSBjb21waWxlciBmbGFncyBmb3IgZWFjaCByZWNpcGUu
DQo+ID4gPiBJIHdpbGwgc2VuZCBhIHBhdGNoIHRoYXQgZG9lcyB0aGlzLg0KDQpUaGlzIHBhdGNo
IHNob3VsZCBmaXggdGhlIHgzMiBidWlsZHMuDQoNCmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9waXBlcm1haWwvbWV0YS1pbnRlbC8yMDE3LUp1bHkvMDA0ODE4Lmh0bWwNCg0KLS1Ub2Rv
cg0KDQo+ID4gPg0KPiA+ID4+ICBhbGw6IGxpYnJtY2VmaQ0KPiA+ID4+DQo+ID4gPj4gICQoUk1D
X0xJQl9PQkopOiAlLmVmaS5vOiAlLmMNCj4gPiA+DQo+ID4gPg0KPiA+ID4gLS0NCj4gPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gPiB5b2N0
byBtYWlsaW5nIGxpc3QNCj4gPiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPiA+IGh0dHBz
Oi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPiANCj4gDQoNCg==

