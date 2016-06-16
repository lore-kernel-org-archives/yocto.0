Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC256E00D86; Thu, 16 Jun 2016 09:49:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C0FE00D82
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 09:49:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 16 Jun 2016 09:49:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,481,1459839600"; d="scan'208";a="977176342"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by orsmga001.jf.intel.com with ESMTP; 16 Jun 2016 09:49:36 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.196]) by
	FMSMSX108.amr.corp.intel.com ([169.254.9.141]) with mapi id
	14.03.0248.002; Thu, 16 Jun 2016 09:49:36 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Test Cycle Report for Yocto Project master branch
Thread-Index: AQHRx7wM/WgJRal/u0yra1nBQ2tWWp/swaYA//+M5SA=
Date: Thu, 16 Jun 2016 16:49:35 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A01FB193D@fmsmsx101.amr.corp.intel.com>
References: <0A5D9A624DF90343892F8F3FE7DE525A01FB0CBE@fmsmsx101.amr.corp.intel.com>
	<1466073839.13979.263.camel@linuxfoundation.org>
	<1466095270.13979.279.camel@linuxfoundation.org>
In-Reply-To: <1466095270.13979.279.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODM5MjI2OWYtOWJhNC00NjRhLTgxYmMtNjI1NmEyNjk4MWUxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6ImNvZTRYUU8rNVc0ekZcL0xBOTNGVGdoaWc4RXF1RVpLSXB4M3R3WW1tSzhZPSJ9
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: Test Cycle Report for Yocto Project master branch
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
X-List-Received-Date: Thu, 16 Jun 2016 16:49:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgdXBkYXRlcyBSaWNoYXJkICEgDQoNClJlZ2FyZHMsDQpKb3PDqQ0KDQot
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogUmljaGFyZCBQdXJkaWUgW21haWx0bzpy
aWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnXSANClNlbnQ6IFRodXJzZGF5LCBKdW5l
IDE2LCAyMDE2IDExOjQxIEFNDQpUbzogUGVyZXogQ2FycmFuemEsIEpvc2UgPGpvc2UucGVyZXou
Y2FycmFuemFAaW50ZWwuY29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6
IFt5b2N0b10gVGVzdCBDeWNsZSBSZXBvcnQgZm9yIFlvY3RvIFByb2plY3QgbWFzdGVyIGJyYW5j
aA0KDQpPbiBUaHUsIDIwMTYtMDYtMTYgYXQgMTE6NDMgKzAxMDAsIFJpY2hhcmQgUHVyZGllIHdy
b3RlOg0KPiBIaSBKb3NlLA0KPiANCj4gVGhhbmtzIGZvciB0aGlzLCBpdHMgdXNlZnVsLg0KPiAN
Cj4gT24gVHVlLCAyMDE2LTA2LTE0IGF0IDEzOjA4ICswMTAwLCBQZXJleiBDYXJyYW56YSwgSm9z
ZSB3cm90ZToNCj4gPiAtICAgICAgICAgVG9hc3RlciAtIE5hbWVFcnJvciB3aGVuIHRyeWluZyB0
byBzZWFyY2ggYSB0YWJsZSBkdWUNCj4gPiBEamFuZ28sIHRoaXMgb25lIGlzIGJsb2NraW5nIGFy
b3VuZCAzMCUgb2YgdGhlIGV4ZWN1dGlvbiA6IDk3NDkgWzFdDQo+IA0KPiBJJ20gaG9waW5nIHRo
aXMgb25lIGhhcyBiZWVuIGZpeGVkL21lcmdlZCBidXQgYW0gbm90IDEwMCUgc3VyZS4NCg0KSXQg
d2Fzbid0IGJ1dCBhIHBhdGNoIGhhcyBub3cgYmVlbiBzZW50IG91dCBhbmQgbWVyZ2VkLg0KDQo+
ID4gLSAgICAgICAgIEJ1aWxkIEFwcGxpYW5jZSA6IGJpdGJha2UgZmFpbHMgdG8gYnVpbGQgaW1h
Z2UgdGhpcyBvbmUNCj4gPiBpcw0KPiA+IGJsb2NraW5nIDUwJSBvZiB0aGUgIGV4ZWN1dGlvbiBv
ZiB0aGUgY29tcG9uZW50OiA5NzU4IFsyXQ0KPiANCj4gSSBrbm93IHRoZXJlIGhhdmUgYmVlbiBz
b21lIGZpeGVzIGhlcmUsIHdlIG5lZWQgdG8gcmV0ZXN0IHRoaXMgdG8gc2VlIA0KPiBpZiB3ZSdy
ZSBkb2luZyBiZXR0ZXIuDQoNClRoZXJlIGFyZSBzZXZlcmFsIGlzc3VlcyBoZXJlLiBJJ3ZlIHBy
b3ZpZGVkIHR3byBwYXRjaGVzIGZvciBzb21lIG9mIHRoZW0sIEp1cm8gd2lsbCBmb2xsb3cgdXAg
d2l0aCBhbm90aGVyLg0KDQo+ID4gLSAgICAgICAgIEZhaWxlZCB0byBleHRyYWN0IHJvb3RmcyBi
eSB1c2luZyBydW5xZW11LWV4dHJhY3Qtc2Q6IGlzDQo+ID4gYmxvY2tpbmcgYXJvdW5kIDExJSBv
ZiB0aGUgZXhlY3V0aW9uIG9mIEFEVCBpbiAyIGRpdHJvczogOTc2MSBbM10NCj4gDQo+VW5rbm93
biA6KA0KDQpFZCBpcyB3b3JraW5nIG9uIHRoaXMgb25lLg0KDQo+ID4gLSAgICAgICAgIE1pc3Np
bmcgc21hcnQgcGFja2FnZXM6IDk3NTQgZHVwbGljYXRlZCBvZiA5NzE3IFs0XQ0KPiANCj4gQmls
bC9BbGVqYW5kZXJvIHdvcmtpbmcgb24gaXQgYnV0IG5vIHBhdGNoIHlldC4NCg0KU3RpbGwgbm8g
cGF0Y2ggeWV0Lg0KDQo+ID4gLSAgICAgICAgIFBhcnNlIGxvZ3MgZmFpbGVkOiA5NTIwIFs4XQ0K
PiANCj4gVGhpcyBidWcgbG9va3MgdmVyeSBjb25mdXNlZCB3aXRoIHBvdGVudGlhbGx5IG11bHRp
cGxlIGRpZmZlcmVudCANCj4gaXNzdWVzLiBOb3Qgc3VyZSBvbmUgc3RhdHVzIDooDQoNClN0aWxs
IG5vdCBzdXJlIGFib3V0IHRoaXMuDQoNClNvIHdlJ3JlIG1ha2luZyBzb21lIHByb2dyZXNzLi4u
DQoNCkNoZWVycywNCg0KUmljaGFyZA0K

