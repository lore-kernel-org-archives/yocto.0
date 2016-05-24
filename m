Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A321BE00C02; Tue, 24 May 2016 15:58:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD7EE00756
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 15:58:32 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 24 May 2016 15:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,360,1459839600"; d="scan'208";a="814075605"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga003.jf.intel.com with ESMTP; 24 May 2016 15:58:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.244]) by
	ORSMSX108.amr.corp.intel.com ([169.254.2.172]) with mapi id
	14.03.0248.002; Tue, 24 May 2016 15:58:32 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-autobuilder][PATCH] bin/release_scripts/release.py
Thread-Index: AQHRtWE1i0raToBvAEKs6BfLA9m+fJ/IsZMAgAADP4A=
Date: Tue, 24 May 2016 22:58:32 +0000
Message-ID: <D36A2A3A.D247%tracy.graydon@intel.com>
References: <1464055651-9492-1-git-send-email-tracy.graydon@intel.com>
	<1464104813.2920.21.camel@intel.com>
In-Reply-To: <1464104813.2920.21.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.4.160422
x-originating-ip: [10.254.177.82]
MIME-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] bin/release_scripts/release.py
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
X-List-Received-Date: Tue, 24 May 2016 22:58:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FA02688723E20B499476E04C23BEE0C5@intel.com>
Content-Transfer-Encoding: base64

T24gMDUvMjQvMTYsIDg6NDYgQU0sICJSYW5kbGUsIFdpbGxpYW0gQyIgPHdpbGxpYW0uYy5yYW5k
bGVAaW50ZWwuY29tPg0Kd3JvdGU6DQoNCj5PbiBNb24sIDIwMTYtMDUtMjMgYXQgMTk6MDcgLTA3
MDAsIEdyYXlkb24sIFRyYWN5IHdyb3RlOg0KPj4gRml4ZWQgdGhlIHBhdGggZm9yIHRoZSBwdWJs
aXNoaW5nIG9mIHRoZSBlY2xpcHNlIHBsdWdpbnMuIFRoZXkgd2VyZQ0KPj4gZ29pbmcgdG8gdGhl
IHdyb25nIHN1YmRpcmVjdG9yeSB1bmRlciBkb3dubG9hZHMuDQo+PiANCj4+IFNpZ25lZC1vZmYt
Ynk6IEdyYXlkb24sIFRyYWN5IDx0cmFjeS5ncmF5ZG9uQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4g
IGJpbi9yZWxlYXNlX3NjcmlwdHMvcmVsZWFzZS5weSB8IDIyICsrKysrKysrKysrLS0tLS0tLS0t
LS0NCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0p
DQo+PiANCj4+IGRpZmYgLS1naXQgYS9iaW4vcmVsZWFzZV9zY3JpcHRzL3JlbGVhc2UucHkNCj4+
Yi9iaW4vcmVsZWFzZV9zY3JpcHRzL3JlbGVhc2UucHkNCj4+IGluZGV4IDUxY2Q2MDcuLjNkNGNl
MzkgMTAwNzU1DQo+PiAtLS0gYS9iaW4vcmVsZWFzZV9zY3JpcHRzL3JlbGVhc2UucHkNCj4+ICsr
KyBiL2Jpbi9yZWxlYXNlX3NjcmlwdHMvcmVsZWFzZS5weQ0KPj4gQEAgLTM0MCwxOCArMzQwLDE4
IEBAIGRlZiBwdWJsaXNoX2FkdChyZWxfaWQsIHJlbF90eXBlLCBvcHRzKToNCj4+ICAgICAgICAg
ICAgICBRRU1VX1RBUkdFVCA9IG9zLnBhdGguam9pbihBRFRfUk9PVEZTLCBkaXJuYW1lKQ0KPj4g
ICAgICAgICAgICAgIHByaW50ICJRRU1VX1NSQzogJXMiICVRRU1VX1NSQw0KPj4gICAgICAgICAg
ICAgIHN5bmNfaXQoUUVNVV9TUkMsIFFFTVVfVEFSR0VULCAiIikNCj4+IC0NCj4+ICAgICAgICAg
IHN5bmNfaXQoSVBLX0RJUiwgQURUX0lQSywgIiIpDQo+PiAgICAgIHJldHVybg0KPj4gIA0KPj4g
IGlmIF9fbmFtZV9fID09ICdfX21haW5fXyc6DQo+PiAtDQo+PiArICAgIA0KPj4gICAgICBvcy5z
eXN0ZW0oImNsZWFyIikNCj4+ICAgICAgcHJpbnQNCj4+IC0NCj4+ICsgICANCj4+ICAgICAgVkhP
U1RTID0gIi9zcnYvd3d3L3Zob3N0cyINCj4+ICAgICAgQUJfQkFTRSA9IG9zLnBhdGguam9pbihW
SE9TVFMsDQo+PiAiYXV0b2J1aWxkZXIueW9jdG9wcm9qZWN0Lm9yZy9wdWIvcmVsZWFzZXMiKQ0K
Pj4gLSAgICBETF9CQVNFID0gb3MucGF0aC5qb2luKFZIT1NUUywNCj4+ICJkb3dubG9hZHMueW9j
dG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0byIpDQo+PiArICAgIERMX0RJUiA9IG9zLnBhdGgu
am9pbihWSE9TVFMsDQo+PiJkb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcyIpDQo+
PiArICAgIERMX0JBU0UgPSBvcy5wYXRoLmpvaW4oRExfRElSLCAiL3JlbGVhc2VzL3lvY3RvIikN
Cj4+ICAgICAgQURUX0JBU0UgPSBvcy5wYXRoLmpvaW4oVkhPU1RTLCAiYWR0cmVwby55b2N0b3By
b2plY3Qub3JnIikNCj4+ICANCj5TbyBpcyB0aGUgaW50ZW50IGlzIHRvIGNyZWF0ZSBhIG5ldyBE
TF9CQVNFDQo+ZGlyZWN0b3J5IGRvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3Jl
bGVhc2VzL3lvY3RvIG9yIHNob3VsZA0KPnRoYXQgYmU6DQo+ICAgIERMX0JBU0UgPSBvcy5wYXRo
LmpvaW4oRExfRElSLCAiL3lvY3RvIikNCj4NCj4gICAgLUJpbGwNCj4NCg0KQXJnaC4gTm8sIHRo
YXQgRExfQkFTRSBsaW5lIHNob3VsZG7igJl0IGJlIHRoZXJlLiBJdOKAmXMgY3J1ZnQuIEkgdGhv
dWdodCBJDQpoYWQgZGVsZXRlZCBpdC4gVGhhbmtzIGZvciBjYXRjaGluZy4gSSB3aWxsIHJlc3Vi
bWl0IHRoZSBwYXRjaCB3aXRoIHRoYXQNCmZpeC4NCg0KLXQNCg0K

