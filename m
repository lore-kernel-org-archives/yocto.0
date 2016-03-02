Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3D28E007B5; Wed,  2 Mar 2016 11:04:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A197E006AE
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 11:04:24 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 02 Mar 2016 11:04:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,530,1449561600"; d="scan'208";a="925388442"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2016 11:04:11 -0800
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Wed, 2 Mar 2016 11:04:10 -0800
Received: from orsmsx102.amr.corp.intel.com ([169.254.3.42]) by
	ORSMSX113.amr.corp.intel.com ([169.254.9.125]) with mapi id
	14.03.0248.002; Wed, 2 Mar 2016 11:04:10 -0800
From: "Randle, William C" <william.c.randle@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Question about access local stash/bitbucket server via
	yocto
Thread-Index: AQHRdLZNLGPRWWHwRUOTm2/A0KN+Ig==
Date: Wed, 2 Mar 2016 19:04:09 +0000
Message-ID: <1456945402.2259.2.camel@intel.com>
References: <OF43D40F78.BEF1AE15-ON88257F6A.0061E32E-88257F6A.0061FA08@selinc.com>
In-Reply-To: <OF43D40F78.BEF1AE15-ON88257F6A.0061E32E-88257F6A.0061FA08@selinc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.0.162]
MIME-Version: 1.0
Subject: Re: Question about access local stash/bitbucket server via yocto
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
X-List-Received-Date: Wed, 02 Mar 2016 19:04:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B03F133A48958C44A680917CCEC51C53@intel.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDE2LTAzLTAyIGF0IDA5OjUwIC0wODAwLCByb2JlcnRfam9zbHluQHNlbGluYy5j
b20gd3JvdGU6DQo+IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyB3cm90ZSBvbiAwMy8w
Mi8yMDE2IDA2OjIzOjEyIEFNOg0KPiANCj4gPiANCj4gPiBGcm9tOiAiT2xzc29uIFJpa2FyZCAo
UkJTTi9FU1cxKSIgPFJpa2FyZC5PbHNzb25Ac2UuYm9zY2guY29tPg0KPiA+IFRvOiAieW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZyIgPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+LMKgDQo+ID4gRGF0ZTog
MDMvMDIvMjAxNiAwNjozMSBBTQ0KPiA+IFN1YmplY3Q6IFt5b2N0b10gUXVlc3Rpb24gYWJvdXQg
YWNjZXNzIGxvY2FsIHN0YXNoL2JpdGJ1Y2tldCBzZXJ2ZXINCj4gPiB2aWHCoA0KPiB5b2N0bw0K
PiA+IA0KPiA+IFNlbnQgYnk6IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZw0KPiA+IA0K
PiA+IERlYXIgWW9jdG8gbWVtYmVycywNCj4gPiANCj4gPiBNeSBmaXJzdCBwb3N0IHNvIGhlcmUg
d2UgZ2/igKYuDQo+ID4gMSkgSSBhbSBuZXcgdG8geW9jdG8gYW5kIHNvIGlzIHRoZSBjb21wYW55
IEkgd29yayBmb3LigKYuDQo+ID4gMikgTXkgY29tcGFueXMgZmlyZXdhbGwvaW50cmFuZXQgYmxv
Y2tzIGdpdCBwcm90b2NvbCBzbyBvbmx5IGh0dHANCj4gPiB3b3Jrc+KApsKgDQo+ID4gDQo+ID4g
DQo+ID4gQW55aG93LCBpbiB0aGUgY29tcGFueSB0aGVyZSBpcyBhIGxvY2FsIHN0YXNoL2JpdGJ1
Y2tldCBzZXZlcg0KPiA+IHdoaWNowqANCj4gPiBydW4gb24gWFhYWCBwb3J0IG51bWJlciB3aGVy
ZSBJIGhhdmUgc29tZSByZXBvc2l0b3JpZXMgYW5kIEkgYW0NCj4gPiBhYmxlDQo+ID4gdG8gY2xv
bmUgdGhlbSB3aXRoOsKgDQo+ID4gZ2l0IGNsb25lIGh0dHA6Ly88VVNFUj5APHNlcnZlcj46PFBP
UlQ+L1hYWC9+WVlZL1paWi5naXRbJTNjVVNFUiUNCj4gPiAzZUAlM2NzZXJ2ZXIlM2VdID09PiBU
aGlzIHdvcmtzIGZpbmUgZnJvbSBjb21tYW5kIGxpbmUsIG5vdGUgdGhlDQo+ID4g4oCcfuKAnQ0K
PiA+IA0KPiA+IEhvd2V2ZXIsIG5vdyBJIHdhbnQgdG8gZG8gdGhlIGNsb25lIGZyb20gYSB5b2N0
by9iaXRiYWtlIGZpbGUgScKgDQo+ID4gY3JlYXRlZCBhcyBmb2xsb3dzOg0KPiA+IExJQ19GSUxF
U19DSEtTVU0gPSAiZmlsZTovL0xJQ0VOU0U7bWQ1PVhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFgi
DQo+ID4gRklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgOj0gIiR7VEhJU0RJUn0vJHtQTn0tJHtQVn06
Ig0KPiA+IFNSQ1JFViA9ICJYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFgi
DQo+ID4gU1JDX1VSSSA9ICJodHRwOi88VVNFUj5APHNlcnZlcj46PFBPUlQ+L1hYWC9+WVlZL1pa
Wi5naXQiDQo+ID4gSG93ZXZlciB0aGlzIGZhaWxzIHdpdGggVXNlcm5hbWUvUGFzc3dvcmQgQXV0
aGVudGljYXRpb24gRmFpbGVkwqANCj4gPiB3aGljaCBJIGZpbmQgc3RyYW5nZSBzaW5jZSBJIGhh
dmUgbm8gcHJvYmxlbSB3aXRoIGdpdCBjbG9uZSDigKYuLg0KPiBVc2luZyBTU0ggaXMgcHJvYmFi
bHkgeW91ciBiZXN0IGJldC4gWW91J2xsIG5lZWQgdG8gdXBsb2FkIHlvdXINCj4gcHVibGljDQo+
IGtleSB0byBTdGFzaCBmaXJzdCAoaXQncyBpbiB5b3VyIGFjY291bnQgc2V0dGluZ3MpLiBUaGUg
U1JDX1VSSQ0KPiBzeW50YXggaXMNCj4gYSBiaXQgYXdrd2FyZCBpbiBteSBvcGluaW9uLCBidXQg
aXQgbG9va3MgbGlrZSB0aGlzOg0KPiBTUkNfVVJJID0NCj4gImdpdDovLzx1c2VyPkA8c2VydmVy
Pjo8cG9ydD4vWFhYL35ZWVkvWlpaLmdpdDtwcm90b2NvbD1zc2giDQo+IA0KPiBOb3RlIHRoYXQg
dGhlIHVzZXIgaXMgbm90IHlvdXIgU3Rhc2ggdXNlcm5hbWUsIGl0J3MgdGhlIHVzZXIgdGhhdA0K
PiBTdGFzaA0KPiB1c2VzIGZvciBTU0guIEl0IGlzIHByb2JhYmx5ICJnaXQiIG9yIHNvbWV0aGlu
ZyBzaW1pbGFyLiBUaGUgcG9ydA0KPiBudW1iZXINCj4gYW5kIHRpbGRlIGFyZSBub3QgYSBwcm9i
bGVtLg0KDQpZb3UgbWF5IGFsc28gbmVlZCB0byBjYWNoZSB5b3VyIHBhc3NwaHJhc2UgdXNpbmcg
c3NoLWFnZW50L3NzaC1hZGQsIGFzDQpiaXRiYWtlIGl0IG5vdCBzZXR1cCB0byBwcm9tcHQgeW91
IGZvciBpdC4NCg0KPiA+IA0KPiA+IA0KPiA+IE5vdyBJIGhhdmUgdHdvIHF1ZXN0aW9uczoNCj4g
PiAxKcKgwqDCoMKgwqBJcyBpdCBwb3NzaWJsZSB0byBhZGQgbXkgVVNFUiBhbmQgUEFTU1dPUkQg
aW4gdGhlIGJpdGJha2UvDQo+ID4geW9jdG8gKCouYmIgZmlsZSkgZmlsZSB0byB3b3JrIGFyb3Vu
ZCB0aGUgVXNlcm5hbWUvUGFzc3dvcmTCoA0KPiA+IEF1dGhlbnRpY2F0aW9uIEZhaWxlZCBwcm9i
bGVtLg0KPiA+IDIpwqDCoMKgwqDCoEkgYWxzbyBoYXZlIGEgcXVlc3Rpb24gaWYgdGhlcmUgYXJl
IGFueSBsaW1pdGF0aW9uIGluIHRoZcKgDQo+ID4gcGF0aCBJIHVzZSwgZm9yIGV4YW1wbGU6DQo+
ID4gYS7CoMKgwqDCoMKgSXMgaXQgT0sgdG8gaGF2ZSA8UE9SVD4gbnVtYmVyIGFzIHBhcnQgb2Yg
cGF0aCwgSSBoYXZlbuKAmXTCoA0KPiA+IHNlZW4gdGhhdCBpbiBhbnkgb3RoZXIgZmlsZXMgcmVs
YXRlZCB0byB5b2N0by9iaXRiYWtlPyBBbmQgaWYgbm90wqANCj4gPiBob3cgZG8gSSBzcGVjaWZ5
IHRoZSBQT1JUIG51bWJlcj8NCj4gPiBiLsKgwqDCoMKgT3IgbWF5YmUgdGhlIOKAnH7igJ0gd2ls
bCBjYXVzZSBwcm9ibGVtICwgSSBoYXZlbuKAmXQgc2VlbiB0aGlzIGluwqANCj4gPiBhbnkgcGF0
aCBuYW1lcyByZWxhdGVkIHRvIHlvY3RvL2JpdGJha2U/DQo+ID4gDQo+ID4gQW55IGFkdmljZSBJ
IGFwcHJlY2lhdGVkLg0KPiA+IA0KPiA+IE1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4gLyBCZXN0
IHJlZ2FyZHPCoA0KPiA+IA0KPiA+IFJpa2FyZCBPbHNzb24NCj4gPiANCj4gPiBFbmdpbmVlcmlu
ZyBTb2Z0d2FyZSwgTHVuZCwgU3dlZGVuIChSQlNOL0VTVynCoA0KPiA+IFRlbC4gKzQ2KDQ2KTI3
MC02ODQzIHwgUmlrYXJkLk9sc3NvbjJAc2UuYm9zY2guY29twqANCj4gLS0NCj4gUm9iZXJ0IEpv
c2x5bg0KPiBTb2Z0d2FyZSBFbmdpbmVlciwgUiZEIC0gQXV0b21hdGlvbg0KPiBTY2h3ZWl0emVy
IEVuZ2luZWVyaW5nIExhYm9yYXRvcmllcw0KPiA1MDktMzMyLTE4OTAgZXh0LiAzMjE0

