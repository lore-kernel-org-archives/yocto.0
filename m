Return-Path: <Archana.c727@toshiba-tsip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E434E00C93; Wed, 24 Apr 2019 04:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from peak.toshiba-tesi.com (unknown [202.56.254.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F84E00C05
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 04:45:28 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CHAgDuSsBc/xlVdApmHAEBAQQBAQcEA?=
	=?us-ascii?q?QGBVAQBAQsBgmcRgSwKhAWVK5UUhTIoC4FVgnUCF4Y5NwYOAQMBAQUBAQEBAoE?=
	=?us-ascii?q?JAQuFSwEBAQMBASEROgsQAgEGAg0LAgImAgICJQEKFRACBA4FgyOCF4xRm2WBL?=
	=?us-ascii?q?xoChSuEboELJwGBXIhOgzUma4MSPoJhAQSBZTECglCCNSIEgSsBAQGJJQgKgki?=
	=?us-ascii?q?ZKAEGAQEBggpUhTuHS4RrggtehUuDVQOJCIwEhj2KUIU7gXhwUIEegU4JgQ2HV?=
	=?us-ascii?q?oImhT9yj1GBIQEB?=
X-IPAS-Result: =?us-ascii?q?A2CHAgDuSsBc/xlVdApmHAEBAQQBAQcEAQGBVAQBAQsBgmc?=
	=?us-ascii?q?RgSwKhAWVK5UUhTIoC4FVgnUCF4Y5NwYOAQMBAQUBAQEBAoEJAQuFSwEBAQMBA?=
	=?us-ascii?q?SEROgsQAgEGAg0LAgImAgICJQEKFRACBA4FgyOCF4xRm2WBLxoChSuEboELJwG?=
	=?us-ascii?q?BXIhOgzUma4MSPoJhAQSBZTECglCCNSIEgSsBAQGJJQgKgkiZKAEGAQEBggpUh?=
	=?us-ascii?q?TuHS4RrggtehUuDVQOJCIwEhj2KUIU7gXhwUIEegU4JgQ2HVoImhT9yj1GBIQE?=
	=?us-ascii?q?B?=
X-IronPort-AV: E=Sophos;i="5.60,389,1549909800"; d="scan'208";a="20631995"
Received: from unknown (HELO tosblrmbx04.TOSHIBA-TSIP.COM) ([10.116.85.25])
	by peak.toshiba-tesi.com with ESMTP; 24 Apr 2019 16:59:45 +0530
Received: from TOSBLRMBX01.TOSHIBA-TSIP.COM ([fe80::1d8f:a072:df12:dcb2]) by
	tosblrmbx04.TOSHIBA-TSIP.COM ([fe80::2089:5e37:936d:8fb9%18]) with mapi
	id 14.02.0247.003; Wed, 24 Apr 2019 17:13:47 +0530
From: Archana Polampalli <Archana.c727@toshiba-tsip.com>
To: "ross.burton@intel.com" <ross.burton@intel.com>
Thread-Topic: [yocto] .pc files are not avilable at build time
Thread-Index: AQHU+QGVAxU7eft6BE2Lic4a00hOA6ZJJiQAgAGxrgA=
Date: Wed, 24 Apr 2019 11:43:46 +0000
Message-ID: <1556106244.5224.29.camel@toshiba-tsip.com>
References: <1555933846.5224.23.camel@toshiba-tsip.com>
	<CAJTo0LYzO4NfWtDpSShBDiouUke7nRMMP7WwWSsCrFPHtz4BjQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYzO4NfWtDpSShBDiouUke7nRMMP7WwWSsCrFPHtz4BjQ@mail.gmail.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.80.63]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 29 Apr 2019 02:44:31 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .pc files are not avilable at build time
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
X-List-Received-Date: Wed, 24 Apr 2019 11:46:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D98A70522DB7284A8D946BFA54C75BAC@TOSHIBA-TSIP.COM>
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGZvciB5b3VyIHJlc3BvbmNlDQoNCndoYWlsZSBjb25maWd1cmF0aW9uIHRpbWUg
Z2V0dGluZyB0aGlzIGVycm9yDQpjaGVja2luZyBmb3IgRVhUMkZTLi4uIG5vDQrCoElORk/CoMKg
wqDCoMKgLSB8IGNoZWNraW5nIGZvciBFWFQyRlMuLi4gbm8NCsKgSU5GT8KgwqDCoMKgwqAtIHwg
Y29uZmlndXJlOiBlcnJvcjogUGFja2FnZSByZXF1aXJlbWVudHMgKGV4dDJmcykgd2VyZSBub3TC
oA0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtZXQ6DQrCoElORk/CoMKgwqDCoMKgLSB8DQrCoElO
Rk/CoMKgwqDCoMKgLSB8IE5vIHBhY2thZ2UgJ2V4dDJmcycgZm91bmQNCsKgSU5GT8KgwqDCoMKg
wqAtIHwNCsKgSU5GT8KgwqDCoMKgwqAtIHwgQ29uc2lkZXIgYWRqdXN0aW5nIHRoZSBQS0dfQ09O
RklHX1BBVEgNCmVudmlyb25tZW50wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqANCnZh
cmlhYmxlIGlmIHlvdSBpbnN0YWxsZWQgc29mdHdhcmUgaW4gYSBub24tc3RhbmRhcmTCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBwcmVmaXguDQrCoElORk/CoMKgwqDCoMKgLSB8DQrCoElORk/CoMKg
wqDCoMKgLSB8IEFsdGVybmF0aXZlbHksIHlvdSBtYXkgc2V0IHRoZSBlbnZpcm9ubWVudA0KdmFy
aWFibGVzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoA0KRVhUMkZTX0NGTEFHUyBhbmQgRVhU
MkZTX0xJQlMgdG8gYXZvaWQgdGhlIG5lZWQgdG8NCmNhbGzCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcGtnLQ0KY29uZmlnIFNlZSB0aGUgcGtnLWNvbmZpZyBtYW4gcGFnZSBmb3Ig
bW9yZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV0YWlscy4NCg0KZXgyZnMucGMgaXMgcHJv
dmlkZWQgYnkgZTJmc3Byb2dzIHBhY2thZ2UuaSBoYXZlIGFscmVkeSBpbnN0YWxsZWQgaXTCoA0K
DQpSZWdhcmRzDQpBcmNoYW5hDQoNCg0KDQpPbiBUdWUsIDIwMTktMDQtMjMgYXQgMTA6NTEgKzAx
MDAsIEJ1cnRvbiwgUm9zcyB3cm90ZToNCj4gV29ya3MgZm9yIG1lLsKgwqBXaGF0IGlzIHRoZSBh
Y3R1YWwgZXJyb3IgeW91J3JlIHNlZWluZz8NCj4gDQo+IE9uIFR1ZSwgMjMgQXByIDIwMTkgYXQg
MTA6MTcsIEFyY2hhbmEgUG9sYW1wYWxsaQ0KPiA8QXJjaGFuYS5jNzI3QHRvc2hpYmEtdHNpcC5j
b20+IHdyb3RlOg0KPiA+IA0KPiA+IA0KPiA+IEhpIGFsbCwNCj4gPiANCj4gPiBJIGFtIHRyeWlu
ZyB0byBidWlsZCBidHJmcy10b29scyByZWNpcGVzLml0IG5lZWRzIHRoZSBleDJmcy5wYw0KPiA+
IHBrZ2NvbmZpZyBmaWxlLmkgaGF2ZSBhbHJlZHkgaW5zdGFsbGVkIGUyZnNwcm9ncyByZWNpcGUg
aXQgY3JlYXRlZA0KPiA+IHRoZQ0KPiA+IGV4MmZzLnBjIGluIGltYWdlIGRpcmVjdG9yeS5idXQg
YnRyZnN0b29scyB1bmFibGUgdG8gdGFrZSB0aGUNCj4gPiBwa2djb25maWcNCj4gPiBmaWxlLg0K
PiA+IA0KPiA+IHBsZXNlIGFueSBoZWxwIG1lIGhvdyB0byBwcm92aWRlIGV4MmZzLnBjIGZpbGUg
Zm9yIGJ1aWxkIGJ0cmZzLQ0KPiA+IHRvb2xzDQo+ID4gDQo+ID4gUmVnYXJkcw0KPiA+IEFyY2hh
bmENCj4gPiBUaGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGluIHRoaXMgZS1tYWlsIG1lc3NhZ2Ug
YW5kIGluIGFueQ0KPiA+IGF0dGFjaG1lbnRzL2FubmV4dXJlL2FwcGVuZGljZXMgaXMgY29uZmlk
ZW50aWFsIHRvIHRoZQ0KPiA+IHJlY2lwaWVudCBhbmQgbWF5IGNvbnRhaW4gcHJpdmlsZWdlZCBp
bmZvcm1hdGlvbi4NCj4gPiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBw
bGVhc2Ugbm90aWZ5IHRoZQ0KPiA+IHNlbmRlciBhbmQgZGVsZXRlIHRoZSBtZXNzYWdlIGFsb25n
IHdpdGggYW55DQo+ID4gYXR0YWNobWVudHMvYW5uZXh1cmUvYXBwZW5kaWNlcy4gWW91IHNob3Vs
ZCBub3QgZGlzY2xvc2UsDQo+ID4gY29weSBvciBvdGhlcndpc2UgdXNlIHRoZSBpbmZvcm1hdGlv
biBjb250YWluZWQgaW4gdGhlDQo+ID4gbWVzc2FnZSBvciBhbnkgYW5uZXh1cmUuIEFueSB2aWV3
cyBleHByZXNzZWQgaW4gdGhpcyBlLW1haWwNCj4gPiBhcmUgdGhvc2Ugb2YgdGhlIGluZGl2aWR1
YWwgc2VuZGVyIGV4Y2VwdCB3aGVyZSB0aGUgc2VuZGVyDQo+ID4gc3BlY2lmaWNhbGx5IHN0YXRl
cyB0aGVtIHRvIGJlIHRoZSB2aWV3cyBvZg0KPiA+IFRvc2hpYmEgU29mdHdhcmUgSW5kaWEgUHZ0
LiBMdGQuIChUU0lQKSxCYW5nYWxvcmUuDQo+ID4gDQo+ID4gQWx0aG91Z2ggdGhpcyB0cmFuc21p
c3Npb24gYW5kIGFueSBhdHRhY2htZW50cyBhcmUgYmVsaWV2ZWQgdG8gYmUNCj4gPiBmcmVlIG9m
IGFueSB2aXJ1cyBvciBvdGhlciBkZWZlY3QgdGhhdCBtaWdodCBhZmZlY3QgYW55IGNvbXB1dGVy
DQo+ID4gc3lzdGVtIGludG8gd2hpY2ggaXQgaXMgcmVjZWl2ZWQgYW5kIG9wZW5lZCwgaXQgaXMg
dGhlDQo+ID4gcmVzcG9uc2liaWxpdHkNCj4gPiBvZiB0aGUgcmVjaXBpZW50IHRvIGVuc3VyZSB0
aGF0IGl0IGlzIHZpcnVzIGZyZWUgYW5kIG5vDQo+ID4gcmVzcG9uc2liaWxpdHkNCj4gPiBpcyBh
Y2NlcHRlZCBieSBUb3NoaWJhIEVtYmVkZGVkIFNvZnR3YXJlIEluZGlhIFB2dC4gTHRkLCBmb3Ig
YW55DQo+ID4gbG9zcyBvcg0KPiA+IGRhbWFnZSBhcmlzaW5nIGluIGFueSB3YXkgZnJvbSBpdHMg
dXNlLg0KPiA+IC0tDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCj4gPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3Byb2plY3Qu
b3JnDQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvClRo
ZSBpbmZvcm1hdGlvbiBjb250YWluZWQgaW4gdGhpcyBlLW1haWwgbWVzc2FnZSBhbmQgaW4gYW55
DQphdHRhY2htZW50cy9hbm5leHVyZS9hcHBlbmRpY2VzIGlzIGNvbmZpZGVudGlhbCB0byB0aGUg
DQpyZWNpcGllbnQgYW5kIG1heSBjb250YWluIHByaXZpbGVnZWQgaW5mb3JtYXRpb24uIA0KSWYg
eW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIG5vdGlmeSB0aGUNCnNl
bmRlciBhbmQgZGVsZXRlIHRoZSBtZXNzYWdlIGFsb25nIHdpdGggYW55IA0KYXR0YWNobWVudHMv
YW5uZXh1cmUvYXBwZW5kaWNlcy4gWW91IHNob3VsZCBub3QgZGlzY2xvc2UsDQpjb3B5IG9yIG90
aGVyd2lzZSB1c2UgdGhlIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBpbiB0aGUNCm1lc3NhZ2Ugb3Ig
YW55IGFubmV4dXJlLiBBbnkgdmlld3MgZXhwcmVzc2VkIGluIHRoaXMgZS1tYWlsIA0KYXJlIHRo
b3NlIG9mIHRoZSBpbmRpdmlkdWFsIHNlbmRlciBleGNlcHQgd2hlcmUgdGhlIHNlbmRlciANCnNw
ZWNpZmljYWxseSBzdGF0ZXMgdGhlbSB0byBiZSB0aGUgdmlld3Mgb2YgDQpUb3NoaWJhIFNvZnR3
YXJlIEluZGlhIFB2dC4gTHRkLiAoVFNJUCksQmFuZ2Fsb3JlLg0KDQpBbHRob3VnaCB0aGlzIHRy
YW5zbWlzc2lvbiBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBiZWxpZXZlZCB0byBiZQ0KZnJlZSBv
ZiBhbnkgdmlydXMgb3Igb3RoZXIgZGVmZWN0IHRoYXQgbWlnaHQgYWZmZWN0IGFueSBjb21wdXRl
ciANCnN5c3RlbSBpbnRvIHdoaWNoIGl0IGlzIHJlY2VpdmVkIGFuZCBvcGVuZWQsIGl0IGlzIHRo
ZSByZXNwb25zaWJpbGl0eQ0Kb2YgdGhlIHJlY2lwaWVudCB0byBlbnN1cmUgdGhhdCBpdCBpcyB2
aXJ1cyBmcmVlIGFuZCBubyByZXNwb25zaWJpbGl0eSANCmlzIGFjY2VwdGVkIGJ5IFRvc2hpYmEg
RW1iZWRkZWQgU29mdHdhcmUgSW5kaWEgUHZ0LiBMdGQsIGZvciBhbnkgbG9zcyBvcg0KZGFtYWdl
IGFyaXNpbmcgaW4gYW55IHdheSBmcm9tIGl0cyB1c2UuCg==


