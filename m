Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C23D8E00282
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:39:57 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 07:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="124361348"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Jul 2012 07:39:57 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 Jul 2012 07:39:56 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.44]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.210]) with mapi id
	14.01.0355.002; Thu, 19 Jul 2012 07:39:56 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
Thread-Index: AQHNZKpNsY4FWoQDWUKwIg8ki89qS5cvivyAgABfOtCAAH5qAIAARcRQ
Date: Thu, 19 Jul 2012 14:39:55 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C03188F51@ORSMSX106.amr.corp.intel.com>
References: <cover.1342504457.git.nitin.a.kamble@intel.com>
	<1342620801.2338.160.camel@trz-ThinkPad-T420>
	<ADD6A3980E8C39419A432FF422031B4C03188C9C@ORSMSX106.amr.corp.intel.com>
	<1342668398.2338.227.camel@trz-ThinkPad-T420>
In-Reply-To: <1342668398.2338.227.camel@trz-ThinkPad-T420>
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
X-List-Received-Date: Thu, 19 Jul 2012 14:39:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWmFudXNzaSwgVG9tDQo+
IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDE5LCAyMDEyIDg6NTcgQU0NCj4gVG86IEthbWJsZSwgTml0
aW4gQQ0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgYnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbQ0KPiBTdWJqZWN0OiBSRTogW1BBVENIIDAvMV0gbWV0YTogdXBkYXRlIGNyb3duYmF5
LnNjYyBmb3IgbmV3ZXIgZW1nZCBkcml2ZXINCj4gDQo+IE9uIFdlZCwgMjAxMi0wNy0xOCBhdCAx
OTo1OCAtMDcwMCwgS2FtYmxlLCBOaXRpbiBBIHdyb3RlOg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogWmFudXNzaSwgVG9tDQo+ID4gPiBTZW50OiBX
ZWRuZXNkYXksIEp1bHkgMTgsIDIwMTIgNzo0MyBQTQ0KPiA+ID4gVG86IEthbWJsZSwgTml0aW4g
QQ0KPiA+ID4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IGJydWNlLmFzaGZpZWxkQHdpbmRy
aXZlci5jb20NCj4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMC8xXSBtZXRhOiB1cGRhdGUgY3Jv
d25iYXkuc2NjIGZvciBuZXdlciBlbWdkDQo+ID4gPiBkcml2ZXINCj4gPiA+DQo+ID4gPiBPbiBN
b24sIDIwMTItMDctMTYgYXQgMjI6NTcgLTA3MDAsIG5pdGluLmEua2FtYmxlQGludGVsLmNvbSB3
cm90ZToNCj4gPiA+ID4gRnJvbTogTml0aW4gQSBLYW1ibGUgPG5pdGluLmEua2FtYmxlQGludGVs
LmNvbT4NCj4gPiA+ID4NCj4gPiA+ID4gVGhpcyBjb21taXQgY2hhbmdlcyBlbWdkIGtlcm5lbCBk
cml2ZXIgZm9yIGNyb3duYmF5IGJzcCB0byB0aGUNCj4gPiA+ID4gZW1nZC0NCj4gPiA+IDEuMTQu
DQo+ID4gPiA+DQo+ID4gPg0KPiA+ID4gTml0aW4sDQo+ID4gPg0KPiA+ID4gRG9lc24ndCBzd2l0
Y2hpbmcgdGhpcyBvdmVyIGluIHRoZSBrZW5ybmVsIHJlcXVpcmUgZW1nZC0xLjE0DQo+ID4gPiB1
c2Vyc3BhY2UgcmVjaXBlIHVwZGF0ZXMgdG8gd29yaz8gIERpZCBJIG1pc3MgdGhvc2U/DQo+ID4g
Pg0KPiA+ID4gVG9tDQo+ID4gPg0KPiA+IFRvbSwNCj4gPiAgICAgSSBhbSBob2xkaW5nIHRoZSBl
bWdkIDEuMTQgdXNlcnNwYWNlIGNvbW1pdHMgdW50aWwgdGhlIGtlcm5lbCByZXBvc2l0b3J5DQo+
IGNoYW5nZSBnb2VzIHVwc3RyZWFtLiBUaGUga2VybmVsIHJlY2lwZSB3aWxsIG5lZWQgbmV3IFNS
Q1JFViAod2l0aCBlbWdkDQo+IDEuMTQga2VybmVsIHBhcnRzKSBmb3IgdGhlIHVzZXIgbGV2ZWwg
ZW1nZCAxLjE0IHBhcnRzIHRvIHdvcmsuIEFuZCB0aGF0DQo+IGRlcGVuZGVuY3kgd2lsbCBnZXQg
c2F0aXNmaWVkIG9uY2UgdGhpcyBjb21taXQgaXMgaW4uDQo+ID4NCj4gDQo+IFllYWgsIEkgdW5k
ZXJzdGFuZCwgdGhlIGNyb3duYmF5IGlzIHR5cGljYWxseSB0aGUgbW9zdCBjb21wbGljYXRlZCB1
cGRhdGUNCj4gZm9yIGFsbCBvZiB0aG9zZSByZWFzb25zIC0gc2ltdWx0YW5lb3VzIG5ldyBrZXJu
ZWwgdmVyc2lvbi9yZWNpcGUsIG5ldyBlbWdkDQo+IGJyYW5jaCwgYW5kIG5ldyBlbWdkIHVzZXJz
cGFjZSByZWNpcGUgYWxsIGF0IHRoZSBzYW1lIHRpbWUuDQo+IA0KPiBJbiB0aGUgcGFzdCBJJ3Zl
IHN1Ym1pdHRlZCB0aGVtIGFsbCBhdCB0aGUgc2FtZSB0aW1lIGZvciBzaW11bHRhbmVvdXMgcmV2
aWV3DQo+IGFuZCBzb21lIGNvb3JkaW5hdGlvbiB3aXRoIEJydWNlIC0gb25jZSB0aGUga2VybmVs
IHBhcnRzIGFyZSBpbiwgdGhlIGtlcm5lbA0KPiByZWNpcGUgYW5kIHRoZSB1c2Vyc3BhY2UgcGFy
dHMgY2FuIHRoZW4gYmUgcHVsbGVkIGluIGFsb25nIHdpdGggYSBzaW1wbGUNCj4gZm9sbG93LW9u
IHBhdGNoIHRvIHVwZGF0ZSB0aGUgU1JDUkVWcyBCcnVjZSBnaXZlIHVzLg0KPiANCj4gVGhlIHRo
aW5nIGlzIHRoYXQgaWYgQnJ1Y2UgcHVsbHMgaW4gdGhlIHBhdGNoIHRvIHN3aXRjaCB0byBlbWdk
LTEuMTQgYW5kIG9ubHkgYXQNCj4gdGhhdCBwb2ludCBkbyB5b3UgcG9zdCB0aGUgdXNlcnNwYWNl
IHJlY2lwZSwgYW5kIGl0IGVuZHMgdXAgbmVlZGluZyBzb21lDQo+IHJld29yaywgaW4gdGhlIG1l
YW50aW1lIHRoZSBncmFwaGljcyByZW1haW4gbm9uLWZ1bmN0aW9uYWwgKEkga25vdywgdGhleQ0K
PiBhbHJlYWR5IGFyZSwgdGhhbmtzIHRvIHRoZSBwYWNrYWdlIHJlLW9yZGVyaW5nIHBhdGNoZXMg
YnJlYWtpbmcgdGhlIGN1cnJlbnQNCj4gcmVjaXBlLCBidXQgaG9wZWZ1bGx5IHRoZSAxLjE0IGNo
YW5nZXMgd2lsbCBiZSBpbiBhbmQgd2UgZG9uJ3QgaGF2ZSB0byB3b3JyeQ0KPiBhYm91dCBpdCBh
bnkgbW9yZS4pLg0KPiANCj4gRG9lcyB0aGF0IG1ha2Ugc2Vuc2UsIGFuZCBjYW4geW91IGp1c3Qg
cG9zdCB0aGUgdXNlcnNwYWNlIGFuZCBrZXJuZWwgcmVjaXBlDQo+IHBhcnRzIGJlZm9yZSB3ZSBn
aXZlIEJydWNlIHRoZSBnby1haGVhZCBpbiBtYWtpbmcgdGhlIGtlcm5lbCBjaGFuZ2VzPyAgKEkn
ZA0KPiBhbHNvIGxpa2UgdG8gdHJ5IGl0IG91dCBteXNlbGYgYXMgd2VsbC4uLikuDQo+IA0KVG9t
LA0KICBVbnRpbCB0aGUgY3Jvd25iYXkgYnNwJ3MgTGludXgteW9jdG8ga2VybmVsIHJlY2lwZSdz
IG1ldGEgU1JDUkVWIGlzIHVwZGF0ZWQsIHRoZXNlIGtlcm5lbCByZXBvIGNoYW5nZXMgaGF2ZSBu
byBlZmZlY3QgaW4gdGhlIGJ1aWxkIHByb2Nlc3MuIFJpZ2h0ID8gU28gYXMgSSBzZWUsIHRoaXMg
Y29tbWl0IGRvZXMgbm90IG1ha2UgYW55dGhpbmcgd29yc3QgKG9yIGJldHRlcikuDQpJIGFtIHNl
bmRpbmcgdGhlIHVzZXJsYW5kIHJlY2lwZSBjb21taXRzIGFueXdheTsgU28gdGhhdCB5b3UgY2Fu
IGFsc28gdGVzdCBpdCBvdXQuDQoNCg0KVGhhbmtzLA0KTml0aW4NCg0KDQoNCg==

