Return-Path: <joshua.g.lock@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5259BE00A64; Tue, 15 Nov 2016 08:23:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2643EE00A30
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 08:23:13 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga104.jf.intel.com with ESMTP; 15 Nov 2016 08:23:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,495,1473145200"; d="scan'208";a="786724086"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
	by FMSMGA003.fm.intel.com with ESMTP; 15 Nov 2016 08:23:11 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.38]) by
	irsmsx105.ger.corp.intel.com ([169.254.7.177]) with mapi id
	14.03.0248.002; Tue, 15 Nov 2016 16:23:10 +0000
From: "Lock, Joshua G" <joshua.g.lock@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SWAT Reboot
Thread-Index: AQHSP1yOPyMLpmDXZkaEbOO33H5N6Q==
Date: Tue, 15 Nov 2016 16:23:10 +0000
Message-ID: <1479226988.2943.2.camel@intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.249.254.65]
MIME-Version: 1.0
Subject: SWAT Reboot
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
X-List-Received-Date: Tue, 15 Nov 2016 16:23:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <6CD5263CC80EE84D85F4E223FEB5856C@intel.com>
Content-Transfer-Encoding: base64

VGhlIHNob3J0IHZlcnNpb24gaXMgdGhhdCB0aGUgU1dBVCBwcm9jZXNzIGRvY3VtZW50IGhhcyBi
ZWVuIHVwZGF0ZWQsDQppZiB5b3UncmUgYSBtZW1iZXIgb2YgdGhlIFNXQVQgdGVhbSBwbGVhc2Ug
dGFrZSBhIGZldyBtb21lbnRzIHRvIHJlYWQNCnRoaXMgbWFpbCBhbmQgdXBkYXRlIHRoZSB3aWtp
Lg0KDQoNCldlJ3JlIG1ha2luZyBhIGNvbmNlcnRlZCBlZmZvcnQgaW4gdGhlIDIuMyBjeWNsZSB0
byBpbXByb3ZlIHRoZSBTV0FUDQpwcm9jZXNzIGFuZCBlbnN1cmUgdGhhdCBpdCdzIG9wZXJhdGlu
ZyBlZmZlY3RpdmVseS4NCg0KVG8gdGhhdCBlbmQgSSd2ZSB1cGRhdGVkIHRoZSBTV0FUIHByb2Nl
c3MgZG9jdW1lbnQgb24gdGhlIFlvY3RvIFByb2plY3QNCndpa2kgdG8gcmVmbGVjdCBjdXJyZW50
IGV4cGVjdGF0aW9ucywgcGFydGljdWxhcmx5IGluIGxpZ2h0IG9mIHRoZQ0KYWRkaXRpb24gb2Yg
dGhlIGJ1aWxkbG9nZ2VyIHRvb2wgZHVyaW5nIHRoZSBtb3J0eSBjeWNsZToNCg0KaHR0cHM6Ly93
aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9pbmRleC5waHA/dGl0bGU9WW9jdG9fQnVpbGRfRmFp
bHVyZV8NClN3YXRfVGVhbQ0KDQoNCkluIHJldmlld2luZyB0aGUgcHJvY2VzcyB3ZSd2ZSBhZGRl
ZCBhbiBleHRyYSByb2xlLCBhcyBkZXNjcmliZWQgb24gdGhlDQp3aWtpLCBmb3Igc29tZW9uZSB0
byBiZSBhIGZpcnN0IHBvaW50IG9mIGNvbnRhY3QgZm9yIHRoZSBTV0FUIHByb2Nlc3MNCmFuZCB0
byBwcm92aWRlIGJhY2t1cCBjb3ZlciBmb3IgdGhlIGFjdGl2ZSBtZW1iZXIuIFRoaXMgc2hvdWxk
IGhlbHANCnByb3ZpZGUgY29udGludWl0eSBmb3IgdGhlIHByb2Nlc3Mgd2hlbiBhY3RpdmUgbWVt
YmVycyByb3RhdGUgYW5kIGhlbHANCnBlb3BsZSBleHRlcm5hbCB0byB0aGUgcHJvY2VzcyB3aXRo
IGEgY29uc3RhbnQgcG9pbnQgb2YgY29udGFjdC4NCg0KQXMgVHJhY3kgR3JheWRvbiBpcyBhbHJl
YWR5IGhlYXZpbHkgaW52b2x2ZWQgaW4gYnVpbGQgYW5kIHJlbGVhc2UNCnRocm91Z2ggaGVyIHJv
bGUgYXMgWW9jdG8gUHJvamVjdCByZWxlYXNlIGVuZ2luZWVyIHdlJ3ZlIGFza2VkIGhlciB0bw0K
aGVscCBvdXQgaGVyZS4NCg0KRHVyaW5nIHRoZSAyLjMgZGV2ZWxvcG1lbnQgY3ljbGUgd2Ugd2ls
bCBiZSBmdXJ0aGVyIGltcHJvdmluZyB0aGUNCmJ1aWxkbG9nZ2VyIHRvb2wgdG8gYXV0b21hdGUg
bW9yZSBvZiB0aGUgYm9pbGVycGxhdGUgYXNwZWN0cyBvZiB0aGUNClNXQVQgcHJvY2VzcywgbW9z
dCBzaWduaWZpY2FudGx5IGEgY2hhbmdlIHRvIGF1dG9tYXRlIGluaXRpYWwgdXBkYXRpbmcNCm9m
IHRoZSBCdWlsZExvZyBlbnRyeSBvbiBhIGJ1aWxkIGZhaWx1cmU6DQoNCmh0dHBzOi8vYnVnemls
bGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0NjYNCg0KSXQgd291bGQgYmUg
dXNlZnVsIGlmIFNXQVQgbWVtYmVycyBjb3VsZCB1cGRhdGUgdGhlaXIgdXNlciBwYWdlIG9uIHRo
ZQ0Kd2lraSB0byBpbmNsdWRlIHRoZWlyIGNvbnRhY3QgZGV0YWlscyBhbmQgbGluayB0byBpdCBm
cm9tIHRoZSBtZW1iZXJzDQpzZWN0aW9uIG9mIHRoZSBTV0FUIHByb2Nlc3MgcGFnZToNCg0KaHR0
cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9Zb2N0b19CdWlsZF9GYWlsdXJlX1N3YXRf
VGVhbSNNZW1iZXINCnMNCg0KRmVlbCBmcmVlIHRvIHJlYWNoIG91dCB0byBUcmFjeSBhbmQgbXlz
ZWxmIHdpdGggYW55IHF1ZXN0aW9ucy4NCg0KRXhwZWN0IG1vcmUgdXBkYXRlcyBhcyB3ZSBwcm9j
ZWVkIHdpdGggdGhlIFNXQVQgcmVib290IGFuZCB0b29sDQplbmhhbmNlbWVudHMuDQoNClJlZ2Fy
ZHMsDQoNCkpvc2h1YQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KSW50ZWwgQ29ycG9yYXRpb24gKFVLKSBMaW1pdGVk
ClJlZ2lzdGVyZWQgTm8uIDExMzQ5NDUgKEVuZ2xhbmQpClJlZ2lzdGVyZWQgT2ZmaWNlOiBQaXBl
cnMgV2F5LCBTd2luZG9uIFNOMyAxUkoKVkFUIE5vOiA4NjAgMjE3MyA0NwoKVGhpcyBlLW1haWwg
YW5kIGFueSBhdHRhY2htZW50cyBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgbWF0ZXJpYWwgZm9y
CnRoZSBzb2xlIHVzZSBvZiB0aGUgaW50ZW5kZWQgcmVjaXBpZW50KHMpLiBBbnkgcmV2aWV3IG9y
IGRpc3RyaWJ1dGlvbgpieSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGFy
ZSBub3QgdGhlIGludGVuZGVkCnJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNlbmRlciBh
bmQgZGVsZXRlIGFsbCBjb3BpZXMuCg==


