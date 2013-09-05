Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B52B2E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 02:04:42 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 05 Sep 2013 02:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,845,1371106800"; d="scan'208";a="291089230"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Sep 2013 02:04:28 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 5 Sep 2013 10:04:27 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.29]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.218]) with mapi id
	14.03.0123.003; Thu, 5 Sep 2013 10:04:27 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-security][PATCH] meta-security: add a basic runtime test
	for scanelf
Thread-Index: AQHOqhAF7Dks3g2sGUS5GZEl4MZ3S5m2yQOA
Date: Thu, 5 Sep 2013 09:04:27 +0000
Message-ID: <1378371879.27411.2.camel@firebird.rb.intel.com>
References: <1378368903-28966-1-git-send-email-stefanx.stanacar@intel.com>
In-Reply-To: <1378368903-28966-1-git-send-email-stefanx.stanacar@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.73]
MIME-Version: 1.0
Subject: Re: [meta-security][PATCH] meta-security: add a basic runtime test for scanelf
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
X-List-Received-Date: Thu, 05 Sep 2013 09:04:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D0614AE137649842A2D4CDD4AC4A039E@intel.com>
Content-Transfer-Encoding: base64

SSBqdXN0IG5vdGljZWQgdGhhdCBwYXgtdXRpbHMgaXMgaW4gY29yZSBhbmQgaGFzIG5vdGhpbmcg
dG8gZG8gd2l0aA0KbWV0YS1zZWN1cml0eSwgc28gdGhpcyBpcyBwb2ludGxlc3MsIHBsZWFzZSBp
Z25vcmUuDQpJJ2xsIHNlbmQgc29tZSBvdGhlciB0ZXN0IGZvciB0aGlzIGxheWVyLg0KDQpDaGVl
cnMsDQpTdGVmYW4NCg0KT24gVGh1LCAyMDEzLTA5LTA1IGF0IDExOjE1ICswMzAwLCBTdGVmYW4g
U3RhbmFjYXIgd3JvdGU6DQo+IE5vdyB0aGF0IHRoZSB0ZXN0aW1hZ2UgY2xhc3MgZnJvbSBjb3Jl
IGhhcyB0aGUgYWJpbGl0eSB0byBydW4gdGVzdHMgZnJvbSBvdGhlcg0KPiBsYXllcnMgaXQgbWFr
ZXMgc2VucyB0byBhZGQgYSBiYXNpYyBydW50aW1lIHRlc3QgaGVyZS4NCj4gVGhpcyB1c2VzIHNj
YW5lbGYgZnJvbSB0aGUgcGF4LXV0aWxzIHBhY2thZ2UgYW5kIHNjYW5zIHRoZSBiaW5hcmllcyBp
biBQQVRIDQo+IGZvciBURVhUUkVMIGFuZCBSUEFUSCBpbmZvcm1hdGlvbi4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IFN0ZWZhbiBTdGFuYWNhciA8c3RlZmFueC5zdGFuYWNhckBpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgbGliL29lcWEvcnVudGltZS9fX2luaXRfXy5weSB8ICAwDQo+ICBsaWIvb2VxYS9y
dW50aW1lL3NjYW5lbGYucHkgIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGxp
Yi9vZXFhL3J1bnRpbWUvX19pbml0X18ucHkNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBsaWIvb2Vx
YS9ydW50aW1lL3NjYW5lbGYucHkNCj4gDQo+IGRpZmYgLS1naXQgYS9saWIvb2VxYS9ydW50aW1l
L19faW5pdF9fLnB5IGIvbGliL29lcWEvcnVudGltZS9fX2luaXRfXy5weQ0KPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwLi5lNjlkZTI5DQo+IGRpZmYgLS1naXQgYS9saWIv
b2VxYS9ydW50aW1lL3NjYW5lbGYucHkgYi9saWIvb2VxYS9ydW50aW1lL3NjYW5lbGYucHkNCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMC4uYjlhYmYyNA0KPiAtLS0gL2Rl
di9udWxsDQo+ICsrKyBiL2xpYi9vZXFhL3J1bnRpbWUvc2NhbmVsZi5weQ0KPiBAQCAtMCwwICsx
LDI2IEBADQo+ICtpbXBvcnQgdW5pdHRlc3QNCj4gK2Zyb20gb2VxYS5vZXRlc3QgaW1wb3J0IG9l
UnVudGltZVRlc3QsIHNraXBNb2R1bGUNCj4gK2Zyb20gb2VxYS51dGlscy5kZWNvcmF0b3JzIGlt
cG9ydCAqDQo+ICsNCj4gK2RlZiBzZXRVcE1vZHVsZSgpOg0KPiArICAgIGlmIG5vdCBvZVJ1bnRp
bWVUZXN0Lmhhc1BhY2thZ2UoInBheC11dGlscyIpOg0KPiArICAgICAgICBza2lwTW9kdWxlKCJw
YXgtdXRpbHMgcGFja2FnZSBub3QgaW5zdGFsbGVkIikNCj4gKw0KPiArY2xhc3MgU2NhbmVsZlRl
c3Qob2VSdW50aW1lVGVzdCk6DQo+ICsNCj4gKyAgICBkZWYgc2V0VXAoc2VsZik6DQo+ICsgICAg
ICAgIHNlbGYuc2NhbmNtZCA9ICdzY2FuZWxmIC0tcXVpZXQgLS1yZWN1cnNpdmUgLS1tb3VudCAt
LWxkcGF0aCAtLXBhdGgnDQo+ICsNCj4gKyAgICBAc2tpcFVubGVzc1Bhc3NlZCgndGVzdF9zc2gn
KQ0KPiArICAgIGRlZiB0ZXN0X3NjYW5lbGZfdGV4dHJlbChzZWxmKToNCj4gKyAgICAgICAgIyBw
cmludCBURVhUUkVMIGluZm9ybWF0aW9uDQo+ICsgICAgICAgIHNlbGYuc2NhbmNtZCArPSAiIC0t
dGV4dHJlbCINCj4gKyAgICAgICAgKHN0YXR1cywgb3V0cHV0KSA9IHNlbGYudGFyZ2V0LnJ1bihz
ZWxmLnNjYW5jbWQpDQo+ICsgICAgICAgIHNlbGYuYXNzZXJ0RXF1YWwob3V0cHV0LnN0cmlwKCks
ICIiLCAiXG4iLmpvaW4oW3NlbGYuc2NhbmNtZCwgb3V0cHV0XSkpDQo+ICsNCj4gKyAgICBAc2tp
cFVubGVzc1Bhc3NlZCgndGVzdF9zc2gnKQ0KPiArICAgIGRlZiB0ZXN0X3NjYW5lbGZfcnBhdGgo
c2VsZik6DQo+ICsgICAgICAgICMgcHJpbnQgUlBBVEggaW5mb3JtYXRpb24NCj4gKyAgICAgICAg
c2VsZi5zY2FuY21kICs9ICIgLS1ycGF0aCINCj4gKyAgICAgICAgKHN0YXR1cywgb3V0cHV0KSA9
IHNlbGYudGFyZ2V0LnJ1bihzZWxmLnNjYW5jbWQpDQo+ICsgICAgICAgIHNlbGYuYXNzZXJ0RXF1
YWwob3V0cHV0LnN0cmlwKCksICIiLCAiXG4iLmpvaW4oW3NlbGYuc2NhbmNtZCwgb3V0cHV0XSkp
DQoNCg==

