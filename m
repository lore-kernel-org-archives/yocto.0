Return-Path: <james.woodyatt@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F171BE0081C
	for <yocto@yoctoproject.org>; Tue, 31 Dec 2013 15:30:37 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Dec 2013 15:30:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,583,1384329600"; d="scan'208";a="458423281"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 31 Dec 2013 15:30:36 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.51]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.114]) with mapi id
	14.03.0123.003; Tue, 31 Dec 2013 15:30:36 -0800
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: "Woodyatt, James" <james.woodyatt@intel.com>, Yocto Discussion
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] error in cmake.bbclass exposed when meta-darwin included
Thread-Index: AQHPBoBNKGP0yBz9nkG+Sig7JSHk2g==
Date: Tue, 31 Dec 2013 23:30:35 +0000
Message-ID: <CEE891A4.F1F%james.woodyatt@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.27]
MIME-Version: 1.0
Subject: Re: error in cmake.bbclass exposed when meta-darwin included
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
X-List-Received-Date: Tue, 31 Dec 2013 23:30:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <38522659B720BE4C829CC6B2616D10F2@intel.com>
Content-Transfer-Encoding: base64

RXZlcnlvbmXigJQNCg0KSSBkaWRu4oCZdCBxdWl0ZSBnZXQgaXQgcmlnaHQgaW4gbXkgcHJldmlv
dXMgcGF0Y2guICBUaGUgbWFpbiBwcm9ibGVtIGlzDQp0aGF0IHRoZSBleHBhbnNpb24gb2YgQ01B
S0VfU1lTVEVNX05BTUUgbmVlZHMgdG8gbWF0Y2ggb25lIG9mIHRoZSAuY21ha2UNCmZpbGVzIGlu
IHRoZSBNb2R1bGVzL1BsYXRmb3JtIGRpcmVjdG9yeSBvZiB0aGUgQ01ha2Ugc291cmNlIHRyZWUu
ICBUaGVyZQ0KaXMgYSB3aG9sZSBzbGV3IG9mIExpbnV4LSRmb28uY21ha2UgZmlsZXMgaW4gdGhl
cmUsIGJ1dCB0aGUgb25lIHRoYXQgd29ya3MNCmZvciBtZSBpcyBMaW51eC5jbWFrZS4gIEFsYXMs
IHRoZSBiaXRiYWtlLmNvbmYgZmlsZSBpbiBQb2t5IGRlZmluZXMNClRBUkdFVF9PUz0ibGludXgk
e0xJQkNFWFRFTlNJT059JHtBQklFWFRFTlNJT059IiB3aGljaCBkb2VzbuKAmXQgd29yay4NCg0K
VGhlIGZvbGxvd2luZyBwYXRjaCBpcyBzaW1wbGVyIGFuZCBwcm9iYWJseSBiZXR0ZXI6DQoNCmRp
ZmYgLS1naXQgYS9tZXRhL2NsYXNzZXMvY21ha2UuYmJjbGFzcyBiL21ldGEvY2xhc3Nlcy9jbWFr
ZS5iYmNsYXNzDQppbmRleCBlNjRjMzBjLi40ZWY5ZmNhIDEwMDY0NA0KLS0tIGEvbWV0YS9jbGFz
c2VzL2NtYWtlLmJiY2xhc3MNCisrKyBiL21ldGEvY2xhc3Nlcy9jbWFrZS5iYmNsYXNzDQpAQCAt
MzUsNyArMzUsNyBAQCBjbWFrZV9kb19nZW5lcmF0ZV90b29sY2hhaW5fZmlsZSgpIHsNCiAgICAg
ICAgY2F0ID4gJHtXT1JLRElSfS90b29sY2hhaW4uY21ha2UgPDxFT0YNCiMgQ01ha2Ugc3lzdGVt
IG5hbWUgbXVzdCBiZSBzb21ldGhpbmcgbGlrZSAiTGludXgiLg0KIyBUaGlzIGlzIGltcG9ydGFu
dCBmb3IgY3Jvc3MtY29tcGlsaW5nLg0KLXNldCggQ01BS0VfU1lTVEVNX05BTUUgYGVjaG8gJHtT
REtfT1N9IHwgc2VkICdzL14uL1x1Ji8nYCApDQorc2V0KCBDTUFLRV9TWVNURU1fTkFNRSAiTGlu
dXgiICkNCnNldCggQ01BS0VfU1lTVEVNX1BST0NFU1NPUiAke1RBUkdFVF9BUkNIfSApDQpzZXQo
IENNQUtFX0NfQ09NUElMRVIgJHtPRUNNQUtFX0NfQ09NUElMRVJ9ICkNCnNldCggQ01BS0VfQ1hY
X0NPTVBJTEVSICR7T0VDTUFLRV9DWFhfQ09NUElMRVJ9ICkNCg0KDQoNCuKAlA0KamFtZXMgd29v
ZHlhdHQgPGphbWVzLndvb2R5YXR0QGludGVsLmNvbT4NClNvZnR3YXJlIEFyY2hpdGVjdCwgTmV3
IERldmljZXMgR3JvdXANCg0KDQoNCg0KT24gMTIvMzEvMTMsIDEyOjUwLCAiV29vZHlhdHQsIEph
bWVzIiA8amFtZXMud29vZHlhdHRAaW50ZWwuY29tPiB3cm90ZToNCg0KPkV2ZXJ5b25l4oC5DQo+
DQo+UGxlYXNlIHJldmlldyB0aGUgZm9sbG93aW5nIHBhdGNoIGZvciBQb2t5LCB3aGljaCBJIGJl
bGlldmUgaXMgbmVjZXNzYXJ5DQo+Zm9yIHByb3Blcmx5IHN1cHBvcnRpbmcgYnVpbGRzIHdoZXJl
IG1ldGEtZGFyd2luIChhbHNvIHByb2JhYmx5DQo+bWV0YS1taW5ndykgaXMgaW5jbHVkZWQgaW4g
dGhlIEJpdGJha2UgbGF5ZXIgcGF0aCBsaXN0Lg0KPg0KPkV4cGxhbmF0aW9uOiB0aGUgbWV0YS1k
YXJ3aW4gbGF5ZXIgb3ZlcnJpZGVzIHRoZSB2YWx1ZSBvZiB0aGUgU0RLX09TDQo+dmFyaWFibGUg
d2l0aCB0aGUgdmFsdWUgb2YgSE9TVF9PUywgd2hpY2ggaXMgwrNkYXJ3aW7CsiBmb3IgbW9zdCBi
dWlsZHMsIGFuZA0KPnRoaXMgbWFrZXMgZXZlcnl0aGluZyB0aGF0IHVzZXMgQ01ha2UgZmFpbCB0
byBidWlsZCBwcm9wZXJseS4gIFRoZSBjYXNlDQo+d2hlcmUgSSBmb3VuZCB0aGlzIGlzIHdoZW4g
T3BlbkNWIGlzIGluY2x1ZGVkIGZyb20gdGhlIE9wZW5FbWJlZGRlZA0KPm1ldGEtb2UgbGF5ZXIu
ICBUaGUgcGF0Y2ggYmVsb3cgc2VlbXMgdG8gY29ycmVjdCBhbiBlcnJvciBpbiB0aGUgdXNhZ2Ug
b2YNCj50aGUgU0RLX09TIHZhcmlhYmxlIHdpdGhpbiB0aGUgY21ha2UuYmJjbGFzcyBmaWxlLg0K
Pg0KPmRpZmYgLS1naXQgYS9tZXRhL2NsYXNzZXMvY21ha2UuYmJjbGFzcyBiL21ldGEvY2xhc3Nl
cy9jbWFrZS5iYmNsYXNzDQo+aW5kZXggZTY0YzMwYy4uNGVmOWZjYSAxMDA2NDQNCj4tLS0gYS9t
ZXRhL2NsYXNzZXMvY21ha2UuYmJjbGFzcw0KPisrKyBiL21ldGEvY2xhc3Nlcy9jbWFrZS5iYmNs
YXNzDQo+QEAgLTM1LDcgKzM1LDcgQEAgY21ha2VfZG9fZ2VuZXJhdGVfdG9vbGNoYWluX2ZpbGUo
KSB7DQo+ICAgICAgICBjYXQgPiAke1dPUktESVJ9L3Rvb2xjaGFpbi5jbWFrZSA8PEVPRg0KPiAj
IENNYWtlIHN5c3RlbSBuYW1lIG11c3QgYmUgc29tZXRoaW5nIGxpa2UgIkxpbnV4Ii4NCj4gIyBU
aGlzIGlzIGltcG9ydGFudCBmb3IgY3Jvc3MtY29tcGlsaW5nLg0KPi1zZXQoIENNQUtFX1NZU1RF
TV9OQU1FIGBlY2hvICR7U0RLX09TfSB8IHNlZCAncy9eLi9cdSYvJ2AgKQ0KPitzZXQoIENNQUtF
X1NZU1RFTV9OQU1FIGBlY2hvICR7VEFSR0VUX09TfSB8IHNlZCAncy9eLi9cdSYvJ2AgKQ0KPiBz
ZXQoIENNQUtFX1NZU1RFTV9QUk9DRVNTT1IgJHtUQVJHRVRfQVJDSH0gKQ0KPiBzZXQoIENNQUtF
X0NfQ09NUElMRVIgJHtPRUNNQUtFX0NfQ09NUElMRVJ9ICkNCj4gc2V0KCBDTUFLRV9DWFhfQ09N
UElMRVIgJHtPRUNNQUtFX0NYWF9DT01QSUxFUn0gKQ0KPg0KPkkgdGVzdGVkIHRoaXMgd2l0aCBh
IGxvY2FsIGJ1aWxkLCBhbmQgSSBiZWxpZXZlIHRoaXMgZGlmZiBzaG91bGQgYmUNCj5hcHBlbmRl
ZCB0byB0aGUgb2Vjb3JlLnBhdGNoIGZpbGUgaW4gdGhlIG1ldGEtZGFyd2luIGxheWVyIHNvdXJj
ZSB0cmVlLA0KPmFuZCBpdCBzaG91bGQgYmUgYXBwbGllZCBpbiB0aGUgYXBwcm9wcmlhdGUgYnJh
bmNoZXMgb2YgdGhlIFBva3kgc291cmNlDQo+dHJlZS4NCj4NCj4NCj4tLSANCj5qYW1lcyB3b29k
eWF0dCA8amFtZXMud29vZHlhdHRAaW50ZWwuY29tPg0KPg0KPlNvZnR3YXJlIEFyY2hpdGVjdCwg
TmV3IERldmljZXMgR3JvdXANCj4NCj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPnlvY3RvIG1haWxpbmcgbGlzdA0KPnlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNCj5odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg0K

