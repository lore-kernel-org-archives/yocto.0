Return-Path: <joshua.g.lock@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 411E8E00F14; Mon, 12 Sep 2016 04:57:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13165E00F0A
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 04:57:35 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 12 Sep 2016 04:57:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,322,1470726000"; 
   d="scan'208";a="7798078"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
	by orsmga004.jf.intel.com with ESMTP; 12 Sep 2016 04:57:34 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.113]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.43]) with mapi id
	14.03.0248.002; Mon, 12 Sep 2016 12:57:32 +0100
From: "Lock, Joshua G" <joshua.g.lock@intel.com>
To: "Ohly, Patrick" <patrick.ohly@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [meta-swupd][PATCH] swupdimage.bbclass: ensure that do_rootfs
	gets executed
Thread-Index: AQHSDMS0c6oIpnP/ZEKZ8aPrD/uDuqB1r2GA
Date: Mon, 12 Sep 2016 11:57:32 +0000
Message-ID: <1473681451.4627.2.camel@intel.com>
References: <1473664166-2472-1-git-send-email-patrick.ohly@intel.com>
In-Reply-To: <1473664166-2472-1-git-send-email-patrick.ohly@intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.10.196]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 12 Sep 2016 07:00:21 -0700
Subject: Re: [meta-swupd][PATCH] swupdimage.bbclass: ensure that do_rootfs gets executed
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
X-List-Received-Date: Mon, 12 Sep 2016 11:57:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <166D7884528EAC44B769F0383FA0B19C@intel.com>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDE2LTA5LTEyIGF0IDA5OjA5ICswMjAwLCBQYXRyaWNrIE9obHkgd3JvdGU6DQo+
IE9FLWNvcmUgY29tbWl0IDZkOTY5YmFjYzcxOGUgY2hhbmdlZCBkb19yb290ZnMgc28gdGhhdCBp
dCBjcmVhdGVzDQo+IElNR0RFUExPWURJUi4gVGhhdCBjaGFuZ2UgYnJva2UgdGhlIGNyZWF0aW9u
IG9mIGFkZGl0aW9uYWwgc3d1cGQNCj4gaW1hZ2VzLCBiZWNhdXNlIHNldHRpbmcgZG9fcm9vdGZz
IHRvIGVtcHR5IGNhdXNlZCB0aGUgZW50aXJlIHRhc2sgdG8NCj4gYmUgc2tpcHBlZCwgaW5jbHVk
aW5nIHRoZSBldmFsdWF0aW9uIG9mIHRoZSAnY2xlYW5kaXJzJyB0YXNrDQo+IGF0dHJpYnV0ZS4N
Cj4gDQo+IEl0IHJlbWFpbnMgdG8gYmUgc2VlbiB3aGV0aGVyIHRoYXQncyByZWFsbHkgdGhlIGRl
c2lyZWQgYmVoYXZpb3IgKHNlZQ0KPiBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwMjU2KSwgYnV0IGFzIGl0DQo+IGlzDQo+IHdoYXQgaXQgaXMgcmln
aHQgbm93LCB3ZSBuZWVkIHRvIGF2b2lkIHRoZSBzaXR1YXRpb24gYnkgb3ZlcndyaXRpbmcNCj4g
ZG9fcm9vdGZzIHdpdGggbm9uLWVtcHR5IGNvZGUgdGhhdCBkb2Vzbid0IGRvIGFueXRoaW5nLiBU
aGF0IHdheSwgdGhlDQo+IGRpcmVjdG9yeSBnZXRzIGNyZWF0ZWQuDQoNClB1c2hlZCB0byBtYXN0
ZXIgKGFuZCBwcmVzc3RhdGUpLiBUaGFua3MhDQoNCkpvc2h1YQ0KDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBQYXRyaWNrIE9obHkgPHBhdHJpY2sub2hseUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGNs
YXNzZXMvc3d1cGRpbWFnZS5iYmNsYXNzIHwgNiArKysrKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvY2xhc3Nl
cy9zd3VwZGltYWdlLmJiY2xhc3MgYi9jbGFzc2VzL3N3dXBkaW1hZ2UuYmJjbGFzcw0KPiBpbmRl
eCAyMGJkNGM4Li41NmFhNjBhIDEwMDY0NA0KPiAtLS0gYS9jbGFzc2VzL3N3dXBkaW1hZ2UuYmJj
bGFzcw0KPiArKysgYi9jbGFzc2VzL3N3dXBkaW1hZ2UuYmJjbGFzcw0KPiBAQCAtNDgsNyArNDgs
MTEgQEAgcHl0aG9uIHN3dXBkaW1hZ2VfdmlydGNsYXNzX2hhbmRsZXIgKCkgew0KPiDCoMKgwqDC
oMKgZS5kYXRhLnNldFZhcigiSU1BR0VfQlVORExFX05BTUUiLCBpbWFnZWV4dCkNCj4gwqDCoMKg
wqDCoCMgV2Ugb3ZlcnJpZGUgdGhlIGRlZmF1bHQgbWV0aG9kcyBzdWNoIHRoYXQgdGhleSBvbmx5
IGNvcHkgZnJvbQ0KPiB0aGUgbWVnYSByb290ZnMuDQo+IMKgwqDCoMKgwqBlLmRhdGEuc2V0VmFy
KCJkb19pbWFnZSIsICLCoMKgwqDCoGltcG9ydA0KPiBzd3VwZC5yb290ZnNcbsKgwqDCoMKgc3d1
cGQucm9vdGZzLmNyZWF0ZV9yb290ZnMoZClcbiIpDQo+IC3CoMKgwqDCoGUuZGF0YS5zZXRWYXIo
ImRvX3Jvb3RmcyIsICIiKQ0KPiArwqDCoMKgwqAjIGRvX3Jvb3RmcyBtdXN0IG5vdCBiZSBlbXB0
eSwgYmVjYXVzZSBlbXB0eSB0YXNrcyBnZXQgc2tpcHBlZA0KPiArwqDCoMKgwqAjIGFuZCB3ZSBk
b24ndCB3YW50IHRoYXQgZm9yIGRvX3Jvb3RmcyBiZWNhdXNlIGl0cyBjbGVhbmRpcnMNCj4gK8Kg
wqDCoMKgIyB2YXJpYWJsZSB0cmlnZ2VycyB0aGUgY3JlYXRpb24gb2YgdGhlIElNR0RFUExPWURJ
UiB0aGF0IHdlDQo+ICvCoMKgwqDCoCMgYXJlIGdvaW5nIHRvIHdyaXRlIGludG8uDQo+ICvCoMKg
wqDCoGUuZGF0YS5zZXRWYXIoImRvX3Jvb3RmcyIsICLCoMKgwqDCoHBhc3MiKQ0KPiDCoMKgwqDC
oMKgIyBEZXBlbmQgb24gY29tcGxldGUgYnVuZGxlIGdlbmVyYXRpb24gaW4gdGhlIGJhc2UgaW1h
Z2UuDQo+IMKgwqDCoMKgwqBkZXAgPSAnICVzOmRvX3N0YWdlX3N3dXBkX2lucHV0cycgJSBwbl9i
YXNlDQo+IMKgwqDCoMKgwqBlLmRhdGEuYXBwZW5kVmFyRmxhZygnZG9faW1hZ2UnLCAnZGVwZW5k
cycsIGRlcCkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIENvcnBvcmF0aW9uIChVSykgTGltaXRlZApSZWdp
c3RlcmVkIE5vLiAxMTM0OTQ1IChFbmdsYW5kKQpSZWdpc3RlcmVkIE9mZmljZTogUGlwZXJzIFdh
eSwgU3dpbmRvbiBTTjMgMVJKClZBVCBObzogODYwIDIxNzMgNDcKClRoaXMgZS1tYWlsIGFuZCBh
bnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvcgp0aGUg
c29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gQW55IHJldmlldyBvciBkaXN0
cmlidXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBhcmUgbm90
IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRl
bGV0ZSBhbGwgY29waWVzLgo=


