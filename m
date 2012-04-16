Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76FF5E01363
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 07:24:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Apr 2012 07:24:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="133042178"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 16 Apr 2012 07:24:31 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 16 Apr 2012 07:24:30 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.140]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.141]) with mapi id
	14.01.0355.002; Mon, 16 Apr 2012 07:24:30 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: jack <woailinux@hotmail.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
Thread-Topic: [yocto] error: runqemu command not fonund, when "$ runqemu
	qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3" THx!
Thread-Index: AQHNGfN8eoI4wEL1vkCJySsQ3KMN0paaknOAgAMukID//8NuoA==
Date: Mon, 16 Apr 2012 14:24:30 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C451CACCA@ORSMSX101.amr.corp.intel.com>
References: <BLU0-SMTP1211642316DA9A003041503B9380@phx.gbl>
	<857BE142E5399E46B20FD45B9DB8A7BC0FD377DB@SHSMSX102.ccr.corp.intel.com>
	<BLU0-SMTP574C166F80A87118D4937CB93E0@phx.gbl>
In-Reply-To: <BLU0-SMTP574C166F80A87118D4937CB93E0@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: error: runqemu command not fonund, when "$ runqemu qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3" THx!
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
X-List-Received-Date: Mon, 16 Apr 2012 14:24:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSmFjaywNCg0KQ2FuIHlvdSBjaGVjayB0aGF0IHlvdSBoYXZlIHJ1bnFlbXUgdW5kZXIgL29w
dC9wb2t5LzEuMS4xL3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC91c3IvYmluLz8gIEFuZCBj
YW4geW91IGRvICJlY2hvICRQQVRIIiB0byBjaGVjayB5b3VyIFBBVEggc3RhcnRzIHdpdGggL29w
dC9wb2t5LzEuMS4xL3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC91c3IvYmluLw0KDQpUaGFu
a3MsDQpKZXNzaWNhDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogeW9jdG8tYm91
bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qu
b3JnXSBPbiBCZWhhbGYgT2YgamFjaw0KU2VudDogTW9uZGF5LCBBcHJpbCAxNiwgMjAxMiAzOjU4
IEFNDQpUbzogTHUsIExpYW5oYW8NCkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0
OiBSZTogW3lvY3RvXSBlcnJvcjogcnVucWVtdSBjb21tYW5kIG5vdCBmb251bmQsIHdoZW4gIiQg
cnVucWVtdSBxZW11eDg2IGJ6SW1hZ2UtcWVtdXg4Ni5iaW4gY29yZS1pbWFnZS1sc2ItcXQzLXFl
bXV4ODYuZXh0MyIgVEh4IQ0KDQpPbiAyMDEy5bm0MDTmnIgxNOaXpSAxODoyMiwgTHUsIExpYW5o
YW8gd3JvdGU6DQo+IGphY2sgd3JvdGUgb24gMjAxMi0wNC0xNDoNCj4+IGhpLGFsbCEgSSBVc2Ug
YSBwcmUtYnVpbHQgaW1hZ2UgYW5kIHJ1biBpdCBpbiB0aGUgUUVNVSBlbXVsYXRvci4NCj4+IEkg
aGF2ZSBkb3dubG9hZGVkIGFuZCBpbnN0YWxsZWQNCj4+ICJwb2t5LWVnbGliYy1pNjg2LWk1ODYt
dG9vbGNoYWluLWdtYWUtMS4xLjEudGFyLmJ6MiIsIHRoZW4gSQ0KPj4gZG93bmxvYWRlZCAiYnpJ
bWFnZS1xZW11eDg2LmJpbiIgIGFuZCAgImNvcmUtaW1hZ2UtbHNiLXF0My1xZW11eDg2LmV4dDMi
DQo+PiBidXQgd2hlbg0KPj4gIiQgcnVucWVtdSBxZW11eDg2IGJ6SW1hZ2UtcWVtdXg4Ni5iaW4g
Y29yZS1pbWFnZS1sc2ItcXQzLXFlbXV4ODYuZXh0MyINCj4+IGVycm9yIGxpa2UgYmVsb3c6DQo+
PiBlcnJvcjogcnVucWVtdSBjb21tYW5kIG5vdCBmb251bmQNCj4+DQo+IFlvdSBtYXkgbmVlZCB0
byAic291cmNlIC9vcHQvcG9reS8xLjEuMS9lbnZpcm9ubWVudC1zZXR1cC1pNTg2LXBva3ktbGlu
dXgiIGZpcnN0IGJlZm9yZSB5b3UgInJ1bnFlbXUiLg0KPg0KPiBCZXN0IFJlZ2FyZHMsDQo+IExp
YW5oYW8NCj4NCj4NCj4NCmhlbGxvLCBMaWFuaGFvISBUaGFuayB5b3UgZm9yIHlvdXIgYW5zd2Vy
LiBCdXQgSSBkaWQgInNvdXJjZSAvb3B0L3Bva3kvMS4xLjEvZW52aXJvbm1lbnQtc2V0dXAtaTU4
Ni1wb2t5LWxpbnV4IiBmaXJzdCBiZWZvcmUgInJ1bnFlbXUiLmVycm9yIHN0aWxsIGxpa2UgdGhp
cywgZXJyb3I6IHJ1bnFlbXUgY29tbWFuZCBub3QgZm9udW4uIENvdWxkIHlvdSBoZWxwIG1lID8N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp5b2N0byBt
YWlsaW5nIGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0K

