Return-Path: <reinette.chatre@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5064E013B7
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 14:39:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2012 14:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="175215601"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2012 14:39:42 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 5 Jun 2012 14:39:41 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.60]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.64]) with mapi id
	14.01.0355.002; Tue, 5 Jun 2012 14:39:41 -0700
From: "Chatre, Reinette" <reinette.chatre@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Building poky-tiny for ARM fails in do_compile of
	elfutils
Thread-Index: AQHNQDJ5RjyZO1Dx60S+12DoBMmjipbmgHgAgASF3YCAACgsAIABjbqA
Date: Tue, 5 Jun 2012 21:39:40 +0000
Message-ID: <1338932349.14586.4.camel@rchatre.jf.intel.com>
References: <1338581348.20547.41.camel@rchatre.jf.intel.com>
	<CAMKF1sqDac3uDkddZE4pHTv+R1iqHMHBjigFc-LuZFYm+bFJnw@mail.gmail.com>
	<1338838311.19030.3.camel@rchatre.jf.intel.com>
	<CAMKF1spuePbW4tpP-2q61vFXDQj_7=vQaiYNN=0xMWveanZhhg@mail.gmail.com>
In-Reply-To: <CAMKF1spuePbW4tpP-2q61vFXDQj_7=vQaiYNN=0xMWveanZhhg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.198.61]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building poky-tiny for ARM fails in do_compile of elfutils
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
X-List-Received-Date: Tue, 05 Jun 2012 21:39:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <2B1BBEC08407ED489BC83175C8BD9D76@intel.com>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDEyLTA2LTA0IGF0IDE0OjU1IC0wNzAwLCBLaGVtIFJhaiB3cm90ZToNCj4gPj4g
PiB8IC4uL2xpYmR3ZmwvbGliZHdmbF9waWMuYShsaW51eC1rZXJuZWwtbW9kdWxlcy5vcyk6IElu
IGZ1bmN0aW9uIGBkd2ZsX2xpbnV4X2tlcm5lbF9yZXBvcnRfb2ZmbGluZSc6DQo+ID4+ID4gfCAv
aG9tZS9yY2hhdHJlL3Bva3lfYnVpbGQvdG1wL3dvcmsvYXJtdjV0ZS1wb2t5LWxpbnV4LWdudWVh
YmkvZWxmdXRpbHMtMC4xNDgtcjcvZWxmdXRpbHMtMC4xNDgvbGliZHdmbC9saW51eC1rZXJuZWwt
bW9kdWxlcy5jOjMxMDogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgZnRzX29wZW4nDQo+IA0KPiB5
b3UgbmVlZCBsaWJjLWZ0cmF2ZXJzZSBhZGRlZCB0bw0KPiANCj4gPj4gPiB8IC4uL2xpYmVibC9s
aWJlYmwuYShlYmx3c3RydGFiLm8pOiBJbiBmdW5jdGlvbiBgY29weXN0cmluZ3MnOg0KPiA+PiA+
IHwgL2hvbWUvcmNoYXRyZS9wb2t5X2J1aWxkL3RtcC93b3JrL2FybXY1dGUtcG9reS1saW51eC1n
bnVlYWJpL2VsZnV0aWxzLTAuMTQ4LXI3L2VsZnV0aWxzLTAuMTQ4L2xpYmVibC9lYmx3c3RydGFi
LmM6MzI5OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGB3bWVtcGNweScNCj4gPj4gPiB8IC4uL2xp
YmVibC9saWJlYmwuYShlYmx3c3RydGFiLm8pOiBJbiBmdW5jdGlvbiBgZWJsX3dzdHJ0YWJhZGQn
Og0KPiA+PiA+IHwgL2hvbWUvcmNoYXRyZS9wb2t5X2J1aWxkL3RtcC93b3JrL2FybXY1dGUtcG9r
eS1saW51eC1nbnVlYWJpL2VsZnV0aWxzLTAuMTQ4LXI3L2VsZnV0aWxzLTAuMTQ4L2xpYmVibC9l
Ymx3c3RydGFiLmM6MjQ5OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGB3Y3NsZW4nDQo+ID4+ID4g
fCAuLi9saWJlYmwvbGliZWJsLmEoZWJsd3N0cnRhYi5vKTogSW4gZnVuY3Rpb24gYHNlYXJjaHN0
cmluZyc6DQo+ID4+ID4gfCAvaG9tZS9yY2hhdHJlL3Bva3lfYnVpbGQvdG1wL3dvcmsvYXJtdjV0
ZS1wb2t5LWxpbnV4LWdudWVhYmkvZWxmdXRpbHMtMC4xNDgtcjcvZWxmdXRpbHMtMC4xNDgvbGli
ZWJsL2VibHdzdHJ0YWIuYzoyMjg6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYHdtZW1jbXAnDQo+
IA0KPiBJIHRoaW5rIHlvdSBuZWVkIHRvIGVuYWJsZSAgbGliYy1wb3NpeC1jbGFuZy13Y2hhciBp
biBESVNUUk9fRkVBVFVSRVMNCj4gaWYgeW91IHdhbnQgdGhpcyB0byB3b3JrLg0KPiANCj4geW91
IGNhbiBhZGQgYm90aCAgbGliYy1wb3NpeC1jbGFuZy13Y2hhciBhbmQgIGxpYmMtZnRyYXZlcnNl
IHRvDQo+IERJU1RST19GRUFUVVJFU19MSUJDX0RFRkFVTFQNCj4gDQoNClRoYW5rIHlvdSB2ZXJ5
IG11Y2ghIEkgYW0gYWJsZSB0byBidWlsZCB0aGUgcG9reS10aW55IGltYWdlIGFuZCBib290IGl0
DQppbiBxZW11Lg0KDQpSZWluZXR0ZQ0K

