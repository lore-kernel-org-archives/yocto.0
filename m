Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 348B5E00739
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 19:58:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jul 2012 19:58:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="194800407"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jul 2012 19:58:46 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 18 Jul 2012 19:58:46 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.44]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.166]) with mapi id
	14.01.0355.002; Wed, 18 Jul 2012 19:58:46 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
Thread-Index: AQHNZKpNsY4FWoQDWUKwIg8ki89qS5cvivyAgABfOtA=
Date: Thu, 19 Jul 2012 02:58:45 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C03188C9C@ORSMSX106.amr.corp.intel.com>
References: <cover.1342504457.git.nitin.a.kamble@intel.com>
	<1342620801.2338.160.camel@trz-ThinkPad-T420>
In-Reply-To: <1342620801.2338.160.camel@trz-ThinkPad-T420>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
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
X-List-Received-Date: Thu, 19 Jul 2012 02:58:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWmFudXNzaSwgVG9tDQo+
IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAxOCwgMjAxMiA3OjQzIFBNDQo+IFRvOiBLYW1ibGUsIE5p
dGluIEENCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IGJydWNlLmFzaGZpZWxkQHdpbmRy
aXZlci5jb20NCj4gU3ViamVjdDogUmU6IFtQQVRDSCAwLzFdIG1ldGE6IHVwZGF0ZSBjcm93bmJh
eS5zY2MgZm9yIG5ld2VyIGVtZ2QgZHJpdmVyDQo+IA0KPiBPbiBNb24sIDIwMTItMDctMTYgYXQg
MjI6NTcgLTA3MDAsIG5pdGluLmEua2FtYmxlQGludGVsLmNvbSB3cm90ZToNCj4gPiBGcm9tOiBO
aXRpbiBBIEthbWJsZSA8bml0aW4uYS5rYW1ibGVAaW50ZWwuY29tPg0KPiA+DQo+ID4gVGhpcyBj
b21taXQgY2hhbmdlcyBlbWdkIGtlcm5lbCBkcml2ZXIgZm9yIGNyb3duYmF5IGJzcCB0byB0aGUg
ZW1nZC0NCj4gMS4xNC4NCj4gPg0KPiANCj4gTml0aW4sDQo+IA0KPiBEb2Vzbid0IHN3aXRjaGlu
ZyB0aGlzIG92ZXIgaW4gdGhlIGtlbnJuZWwgcmVxdWlyZSBlbWdkLTEuMTQgdXNlcnNwYWNlDQo+
IHJlY2lwZSB1cGRhdGVzIHRvIHdvcms/ICBEaWQgSSBtaXNzIHRob3NlPw0KPiANCj4gVG9tDQo+
IA0KVG9tLA0KICAgIEkgYW0gaG9sZGluZyB0aGUgZW1nZCAxLjE0IHVzZXJzcGFjZSBjb21taXRz
IHVudGlsIHRoZSBrZXJuZWwgcmVwb3NpdG9yeSBjaGFuZ2UgZ29lcyB1cHN0cmVhbS4gVGhlIGtl
cm5lbCByZWNpcGUgd2lsbCBuZWVkIG5ldyBTUkNSRVYgKHdpdGggZW1nZCAxLjE0IGtlcm5lbCBw
YXJ0cykgZm9yIHRoZSB1c2VyIGxldmVsIGVtZ2QgMS4xNCBwYXJ0cyB0byB3b3JrLiBBbmQgdGhh
dCBkZXBlbmRlbmN5IHdpbGwgZ2V0IHNhdGlzZmllZCBvbmNlIHRoaXMgY29tbWl0IGlzIGluLg0K
DQpOaXRpbg0KDQo=

