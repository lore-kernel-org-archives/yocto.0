Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06999E013A5
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 06:33:17 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Mar 2012 06:32:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="123094943"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga001.jf.intel.com with ESMTP; 29 Mar 2012 06:32:58 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 29 Mar 2012 06:32:58 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.160]) with mapi id
	14.01.0355.002; Thu, 29 Mar 2012 06:32:58 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Rudolf Streif
	<rudolf.streif@linux.com>
Thread-Topic: [yocto] tentative list of vars to be dropped from variable
	glossary
Thread-Index: AQHNDaoprUrHAPxrl0+nZKLZ5PSZRJaBRY8g
Date: Thu, 29 Mar 2012 13:32:57 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945177117@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203240525230.22364@oneiric>
	<1332589972.27577.1.camel@ted>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945175E22@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-raRiKQ7GHLSy4tAJHJmDardhr8by0A9FGJ7diCYo00Uw@mail.gmail.com>
	<1332802684.28414.146.camel@ted>
	<CA+gsK-o4KeAqZLW8gSQkoEBy6jyJvi8EJeZuChfsYgwAF2xCyQ@mail.gmail.com>
	<1333025256.14983.29.camel@ted>
In-Reply-To: <1333025256.14983.29.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: tentative list of vars to be dropped from variable glossary
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
X-List-Received-Date: Thu, 29 Mar 2012 13:33:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3aWxsIHRha2UgY2FyZSBvZiB0aGlzLiANCg0KU2NvdHQNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGlu
dXhmb3VuZGF0aW9uLm9yZ10gDQpTZW50OiBUaHVyc2RheSwgTWFyY2ggMjksIDIwMTIgNjo0OCBB
TQ0KVG86IFJ1ZG9sZiBTdHJlaWY7IFJpZmVuYmFyaywgU2NvdHQgTQ0KQ2M6IHlvY3RvQHlvY3Rv
cHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIHRlbnRhdGl2ZSBsaXN0IG9mIHZhcnMg
dG8gYmUgZHJvcHBlZCBmcm9tIHZhcmlhYmxlIGdsb3NzYXJ5DQoNCk9uIE1vbiwgMjAxMi0wMy0y
NiBhdCAxNjo1MCAtMDcwMCwgUnVkb2xmIFN0cmVpZiB3cm90ZToNCj4gVGhhbmtzLCBSaWNoYXJk
LiBDbGVhcmVyIG5vdyBidXQgbm90IGVudGlyZWx5Lg0KPiANCj4gICAgICAgICANCj4gICAgICAg
ICANCj4gICAgICAgICA+PiBCQk1BU0sgcmVtb3ZlcyByZWNpcGVzIGZyb20gYmVpbmcgcGFyc2Vk
LiBJdCBkb2VzIG5vdA0KPiAgICAgICAgIHJlbW92ZSB0aGVtIGZyb20NCj4gICAgICAgICA+PiBp
bWFnZXMgYWx0aG91Z2ggdGhhdCB3b3VsZCBJIGd1ZXNzIGJlIGFuIGluZGlyZWN0IHJlc3VsdA0K
PiAgICAgICAgIHNpbmNlIHlvdSBjb3VsZA0KPiAgICAgICAgID4+bm8gbG9uZ2VyIGJ1aWxkIHRo
ZW0uDQo+ICAgICAgICAgDQo+ICAgICAgICAgDQo+IFllcywgaXQgcmVtb3ZlcyBpdCBmcm9tIGJl
aW5nIHBhcnNlZC4gSSB1c2VkLCBmb3IgdGVzdCBhbHRob3VnaCBub3QNCj4gc2Vuc2libGUsIEJC
TUFTSyA9ICJiYXNlLXBhc3N3ZCIuIElmIEkgdGhlbiB0cmllZCBidWlsZGluZw0KPiBjb3JlLWlt
YWdlLW1pbmltYWwgaXQgZmFpbHMgd2l0aCAiTm90aGluZyBwcm92aWRlcyBiYXNlLXBhc3N3ZCIu
IElmDQo+IG9uZSBjb3VsZCB1c2UgQkJNQVNLIHRvIGN1c3RvbWl6ZSBpbWFnZXMgYXMgc3VnZ2Vz
dGVkDQo+IGluIGh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzL2xhdGVzdC9kZXYtbWFu
dWFsL2Rldi1tYW51YWwuaHRtbCN1c2luZ3Bva3ktZXh0ZW5kLWN1c3RvbWltYWdlLWxvY2FsY29u
ZiB0aGVuIG9uZSB3b3VsZCBleHBlY3QgdGhlIHBhY2thZ2UgdG8gYmUgcmVtb3ZlZCBpbmRpcmVj
dGx5IGZyb20gdGhlIGltYWdlLiBIb3dldmVyLCB0aGF0IGRvZXMgbm90IGhhcHBlbiwgdGhlIGJ1
aWxkIGp1c3QgZmFpbHMuDQoNCkkgaGFkbid0IHJlYWxpc2VkIFNjb3R0IGhhZCBhZGRlZCB0aGlz
IHRvIHRoZSBjdXN0b21pc2luZyBpbWFnZXMgc2VjdGlvbg0Kb2YgdGhlIG1hbnVhbC4gVGhpcyBp
cyBub3Qgd2hhdCBpdHMgZGVzaWduZWQgZm9yIGFuZCB3ZSBuZWVkIHRvIG1vdmUNCnRoaXMgdG8g
c29tZXdoZXJlIGxlc3MgY29uZnVzaW5nLg0KDQpTY290dDogVGhpcyBpcyBnb2luZyB0byBuZWVk
IHRvIG1vdmUgc29tZXdoZXJlIGVsc2UgaW4gdGhlIG1hbnVhbCBhcw0KdGhpcyBpcyBjb25mdXNp
bmcuIEknbSBnb2luZyB0byBzdWdnZXN0IGEgNC4xMiBzZWN0aW9uICJPdGhlciB0aXBzIGFuZA0K
dHJpY2tzIiB3aGljaCBzYXlzOg0KDQoiIiINClNvbWV0aW1lcyB0aGVyZSBhcmUgZ3JvdXBzIG9m
IHJlY2lwZXMgeW91IG1pZ2h0IHdpc2ggdG8gZmlsdGVyIG91dC4gSWYNCnRoZXJlIHdlcmUgcmVj
aXBlcyB5b3Uga25vdyB5b3UncmUgbmV2ZXIgZ29pbmcgdG8gd2FudC91c2UsIHJlbW92aW5nDQp0
aGVtIGZyb20gcGFyc2luZyB3b3VsZCBzcGVlZCB1cCBwYXJ0cyBvZiB0aGUgYnVpbGQgZm9yIGV4
YW1wbGUuDQoNCkl0IGlzIHBvc3NpYmxlIHRvIGZpbHRlciBvciBtYXNrIG91dCBib3RoIC5iYiBh
bmQgLmJiYXBwZW5kIGZpbGVzLiBZb3UNCmNhbiBkbyB0aGlzIGJ5IHByb3ZpZGluZyBhbiBleHBy
ZXNzaW9uIHdpdGggdGhlIEJCTUFTSyB2YXJpYWJsZS4gSGVyZSBpcw0KYW4gZXhhbXBsZToNCg0K
ICAgICBCQk1BU0sgPSAiLiovbWV0YS1teW1hY2hpbmUvcmVjaXBlcy1tYXliZS8iDQoNCkhlcmUs
IGFsbCAuYmIgYW5kIC5iYmFwcGVuZCBmaWxlcyBpbiB0aGUgZGlyZWN0b3J5IHRoYXQgbWF0Y2hl
cyB0aGUNCmV4cHJlc3Npb24gYXJlIGlnbm9yZWQgZHVyaW5nIHRoZSBidWlsZCBwcm9jZXNzLiAN
CiIiIg0KDQpDaGVlcnMsDQoNClJpY2hhcmQNCg0KDQoNCg==

