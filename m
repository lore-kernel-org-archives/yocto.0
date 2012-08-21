Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91CE2E00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 12:05:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2012 12:05:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,803,1336374000"; d="scan'208";a="189454447"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 21 Aug 2012 12:05:15 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 12:05:14 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.138]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.3]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 12:05:14 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] ERROR: QA Issue: No GNU_HASH in the elf binary
Thread-Index: Ac1/xz1OQq0h6peoTwi2emTaPSNZ4wAO3cuAAA1mg+A=
Date: Tue, 21 Aug 2012 19:05:14 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003313948@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003313905@ORSMSX103.amr.corp.intel.com>
	<CAMKF1soePqtwZyQTJLOi2wxi9ODf1W-JP_cKf6Kvi6wJ4GtFtg@mail.gmail.com>
In-Reply-To: <CAMKF1soePqtwZyQTJLOi2wxi9ODf1W-JP_cKf6Kvi6wJ4GtFtg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ERROR: QA Issue: No GNU_HASH in the elf binary
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
X-List-Received-Date: Tue, 21 Aug 2012 19:05:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpZb3UgYXJlIHJpZ2h0LCB0aGVzZSBhcmUgcmVndWxhciBmaWxlcyBhbmQgbm90IHN5bWxpbmtz
IGFuZCBhcmUgZW5kaW5nIHVwIGluIHVzci9saWIgaW4gcGFja2FnZW5hbWUtZGV2IHBhY2thZ2UN
Ckhvd2V2ZXIgSSB3YW50IHRoZW0gdG8gYmUgaW4gdGhlIHJlZ3VsYXIgcGFja2FnZS4NCg0KSSBk
byBoYXZlIHRoZSBmb2xsb3dpbmcgc3RhdGVtZW50IGluIG15IHJlY2lwZToNCg0KRklMRVNfJHtQ
Tn0gKz0gIiR7bGliZGlyfS9saWIqLnNvIg0KDQphbmQgbm90aGluZyBpbiBteSByZWNpcGUgaGFz
IHN0YXRlbWVudHMgc3VjaCBhcyBGSUxFU18ke1BOKS1kZXYgPSAuLi4NCg0KDQpTbyBpdCBzZWVt
cyB0aGF0IHRoZSBidWlsZCBpcyBtYWtpbmcgYSBhc3N1bXB0aW9uIHRoZXNlIGFyZSBzeW1saW5r
cyBhbmQNCmFuZCBzaG91bGQgbmVjZXNzYXJpbHkgZ28gaW50byAtZGV2IHBhY2thZ2UgaWdub3Jp
bmcgbXkgYWJvdmUgc3RhdGVtZW50IGluIHRoZSBhYm92ZS4gSG93IGRvIEkgZml4IHRoaXMgPw0K
VGhlIGRlbnplbCBicmFuY2ggb2YgcG9reSBkb2VzIG5vdCBoYXZlIHRoaXMgYmVoYXZpb3IsIEkg
Y2hlY2tlZCB0aGF0IGl0IGlzIG5vdCBwdXR0aW5nIGFueSAuc28gZmlsZXMgaW4gLWRldiBwYWNr
YWdlLg0KDQpUaGFua3MNClJhaHVsDQogDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpG
cm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0gDQpTZW50OiBUdWVzZGF5
LCBBdWd1c3QgMjEsIDIwMTIgMTE6MDkgQU0NClRvOiBTYXhlbmEsIFJhaHVsDQpDYzogeW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gRVJST1I6IFFBIElzc3VlOiBO
byBHTlVfSEFTSCBpbiB0aGUgZWxmIGJpbmFyeQ0KDQpPbiBUdWUsIEF1ZyAyMSwgMjAxMiBhdCAx
MTowMyBBTSwgU2F4ZW5hLCBSYWh1bCA8cmFodWwuc2F4ZW5hQGludGVsLmNvbT4gd3JvdGU6DQo+
IGNkdi1wdnItZHJpdmVyLWRldi91c3IvbGliL2xpYk9wZW5WR1Uuc28NCg0KdGhpcyBzZWVtcyB0
byBiZSBhIHByb3BlciBmaWxlIGFuZCBub3QgYSBzeW1saW5rIHNvIGZpcnN0bHkgeW91IGhhdmUg
LnNvIGluIC1kZXYgcGFja2FnZXMgaWYgeW91IGZpeCB0aGF0IGl0IHdpbGwgd29yayBzZWNvbmRs
eSBpZiB5b3UgaW50ZW50aW9uYWxseSB3YW50IHRob3NlIC5zbyBpbiAtZGV2IHBhY2thZ2UgdGhl
biBhZGQNCg0KSU5TQU5FX1NLSVBfJHtQTn0tZGV2ID0gImxkZmxhZ3MiDQoNCmFzIHdlbGwuDQo=

