Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13926E00BE0; Tue, 24 May 2016 08:47:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B14E00BA1
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 08:47:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 24 May 2016 08:46:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,360,1459839600"; d="scan'208";a="983754926"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga002.jf.intel.com with ESMTP; 24 May 2016 08:46:55 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 24 May 2016 08:46:54 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.2.84]) by
	ORSMSX162.amr.corp.intel.com ([169.254.3.111]) with mapi id
	14.03.0248.002; Tue, 24 May 2016 08:46:55 -0700
From: "Randle, William C" <william.c.randle@intel.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-autobuilder][PATCH] bin/release_scripts/release.py
Thread-Index: AQHRtWE1OBNie2/1QEmNeD+CcqkidZ/IsZKA
Date: Tue, 24 May 2016 15:46:54 +0000
Message-ID: <1464104813.2920.21.camel@intel.com>
References: <1464055651-9492-1-git-send-email-tracy.graydon@intel.com>
In-Reply-To: <1464055651-9492-1-git-send-email-tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.199.54]
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
X-List-Received-Date: Tue, 24 May 2016 15:47:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <064BB944752242489028D9B2782260A7@intel.com>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDE2LTA1LTIzIGF0IDE5OjA3IC0wNzAwLCBHcmF5ZG9uLCBUcmFjeSB3cm90ZToN
Cj4gRml4ZWQgdGhlIHBhdGggZm9yIHRoZSBwdWJsaXNoaW5nIG9mIHRoZSBlY2xpcHNlIHBsdWdp
bnMuIFRoZXkgd2VyZQ0KPiBnb2luZyB0byB0aGUgd3Jvbmcgc3ViZGlyZWN0b3J5IHVuZGVyIGRv
d25sb2Fkcy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEdyYXlkb24sIFRyYWN5IDx0cmFjeS5ncmF5
ZG9uQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgYmluL3JlbGVhc2Vfc2NyaXB0cy9yZWxlYXNlLnB5
IHwgMjIgKysrKysrKysrKystLS0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNl
cnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9iaW4vcmVsZWFz
ZV9zY3JpcHRzL3JlbGVhc2UucHkgYi9iaW4vcmVsZWFzZV9zY3JpcHRzL3JlbGVhc2UucHkNCj4g
aW5kZXggNTFjZDYwNy4uM2Q0Y2UzOSAxMDA3NTUNCj4gLS0tIGEvYmluL3JlbGVhc2Vfc2NyaXB0
cy9yZWxlYXNlLnB5DQo+ICsrKyBiL2Jpbi9yZWxlYXNlX3NjcmlwdHMvcmVsZWFzZS5weQ0KPiBA
QCAtMzQwLDE4ICszNDAsMTggQEAgZGVmIHB1Ymxpc2hfYWR0KHJlbF9pZCwgcmVsX3R5cGUsIG9w
dHMpOg0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFFFTVVfVEFSR0VUID0gb3MucGF0aC5q
b2luKEFEVF9ST09URlMsIGRpcm5hbWUpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHJp
bnQgIlFFTVVfU1JDOiAlcyIgJVFFTVVfU1JDDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c3luY19pdChRRU1VX1NSQywgUUVNVV9UQVJHRVQsICIiKQ0KPiAtDQo+IMKgwqDCoMKgwqDCoMKg
wqDCoHN5bmNfaXQoSVBLX0RJUiwgQURUX0lQSywgIiIpDQo+IMKgwqDCoMKgwqByZXR1cm4NCj4g
wqANCj4gwqBpZiBfX25hbWVfXyA9PSAnX19tYWluX18nOg0KPiAtDQo+ICvCoMKgwqDCoA0KPiDC
oMKgwqDCoMKgb3Muc3lzdGVtKCJjbGVhciIpDQo+IMKgwqDCoMKgwqBwcmludA0KPiAtDQo+ICvC
oMKgwqANCj4gwqDCoMKgwqDCoFZIT1NUUyA9ICIvc3J2L3d3dy92aG9zdHMiDQo+IMKgwqDCoMKg
wqBBQl9CQVNFID0gb3MucGF0aC5qb2luKFZIT1NUUywNCj4gImF1dG9idWlsZGVyLnlvY3RvcHJv
amVjdC5vcmcvcHViL3JlbGVhc2VzIikNCj4gLcKgwqDCoMKgRExfQkFTRSA9IG9zLnBhdGguam9p
bihWSE9TVFMsDQo+ICJkb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0byIp
DQo+ICvCoMKgwqDCoERMX0RJUiA9IG9zLnBhdGguam9pbihWSE9TVFMsICJkb3dubG9hZHMueW9j
dG9wcm9qZWN0Lm9yZy9yZWxlYXNlcyIpDQo+ICvCoMKgwqDCoERMX0JBU0UgPSBvcy5wYXRoLmpv
aW4oRExfRElSLCAiL3JlbGVhc2VzL3lvY3RvIikNCj4gwqDCoMKgwqDCoEFEVF9CQVNFID0gb3Mu
cGF0aC5qb2luKFZIT1NUUywgImFkdHJlcG8ueW9jdG9wcm9qZWN0Lm9yZyIpDQo+IMKgDQpTbyBp
cyB0aGUgaW50ZW50IGlzIHRvIGNyZWF0ZSBhIG5ldyBETF9CQVNFDQpkaXJlY3RvcnnCoGRvd25s
b2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3JlbGVhc2VzL3lvY3RvIG9yIHNob3VsZCB0
aGF0IGJlOg0KwqAgwqAgRExfQkFTRSA9IG9zLnBhdGguam9pbihETF9ESVIsICIveW9jdG8iKQ0K
DQrCoCDCoCAtQmlsbA0K

