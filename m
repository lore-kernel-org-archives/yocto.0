Return-Path: <cristian.iorga@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9541E008C3; Thu, 13 Nov 2014 05:09:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBE41E008FF
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:09:39 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 13 Nov 2014 05:08:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="415979060"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Nov 2014 04:59:46 -0800
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Thu, 13 Nov 2014 13:08:46 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.101]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.179]) with mapi id
	14.03.0195.001; Thu, 13 Nov 2014 13:08:46 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Sato image runs, but doesn't start its GUI
Thread-Index: AQHP/0JetFvxAmo5wESRYBAHmTuhJJxehtAA
Date: Thu, 13 Nov 2014 13:08:45 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB2F39A1F5@IRSMSX105.ger.corp.intel.com>
References: <5464AB4D.8020409@topic.nl>
In-Reply-To: <5464AB4D.8020409@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: Sato image runs, but doesn't start its GUI
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
X-List-Received-Date: Thu, 13 Nov 2014 13:09:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KV2hhdCBwb2t5IHZlcnNpb24gYXJlIHlvdSB1c2luZz8NCkhhdmUgeW91IHRy
aWVkIHRvIGJ1aWxkIHlvdXIgY29yZS1pbWFnZS1zYXRvIGZvciBhIHFlbXUgbWFjaGluZSBhbmQg
c2VlIGlmIHRoYXQgcnVucyBjb3JyZWN0bHk/DQpTYXRvIHN0YXJ0cyB3aXRoIGEgZ3JhcGhpY2Fs
IGxhdW5jaGVyL2Rlc2t0b3Avd2luZG93IG1hbmFnZXIuDQpSZWdhcmRzLA0KQ3Jpc3RpYW4NCg0K
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9q
ZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxm
IE9mIE1pa2UgTG9vaWptYW5zDQpTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMTMsIDIwMTQgMzow
MCBQTQ0KVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFt5b2N0b10gU2F0byBp
bWFnZSBydW5zLCBidXQgZG9lc24ndCBzdGFydCBpdHMgR1VJDQoNCkkgZmluYWxseSBnb3QgYXJv
dW5kIHRvIHRyeWluZyB0byB1c2Ugb3VyIGN1c3RvbSBib2FyZCdzIEJTUCB3aXRoIFlvY3RvIGlt
YWdlcy4NCg0KU2luY2UgdGhlIGJvYXJkIGhhcyBhIHRvdWNoc2NyZWVuICh3ZWxsLCBhY3R1YWxs
eSBpdCBoYXMgdHdvKSBJIGJ1aWx0IHRoZSBjb3JlLWltYWdlLXNhdG8uDQoNCkkgaGFkIHRvIHR3
ZWFrIHRoZSBzdGFydHVwIGEgYml0LCBiZWNhdXNlIG91ciBmcmFtZWJ1ZmZlciBpcyBpbiB0aGUg
RlBHQSBpdCB3b24ndCBiZSBhdmFpbGFibGUgdW50aWwgYWZ0ZXIgcHJvZ3JhbW1pbmcgaXQgYW5k
IGxvYWRpbmcgdGhlIG1vZHVsZXMuDQoNClNldHRpbmcgcHNwbGFzaCB0byBTMDUgaW5zdGVhZCBv
ZiBTMDAsIGFuZCBtb2R1dGlscyB0byBsb2FkIGF0IFMwNCBmaXhlcyB0aGUgaW5pdGlhbGl6YXRp
b24gb3JkZXIgcHJvYmxlbXMgSSBzYXcuDQoNCldoYXQgSSBnZXQgbm93IGlzIGEgbmljZSBZb2N0
byBsb2dvIG9uIHRoZSBzY3JlZW4sIGFuZCBhIHByb2dyZXNzIGJhciB0aGF0IGFsbW9zdCBmaWxs
cyB1cC4gQnV0IG5vdGhpbmcgZWxzZSBoYXBwZW5zLiBJJ2QgZXhwZWN0IHRoZSBHVUkgdG8gc3Rh
cnQgdGhlbiwgYnV0IGFwcGFyZW50bHkgdGhlcmUncyBub3RoaW5nIHRvIHRyaWdnZXIgdGhhdD8N
Cg0KRGlzcGxheSB3b3JrcywgdG91Y2ggd29ya3MsIGV2ZXJ5dGhpbmcgc2VlbXMgaW4gcGVyZmVj
dCB3b3JraW5nIG9yZGVyLg0KDQpJIGNhbid0IGZpbmQgYW55dGhpbmcgdGhhdCBhdHRlbXB0cyB0
byBzdGFydCBhbnl0aGluZy4gVGhlcmUncyBub3RoaW5nIGluIGluaXR0YWIsIGFuZCB0aGVyZSdz
IG5vdGhpbmcgaW4gcmMzLmQgdGhhdCByZXNlbWJsZXMgYW4gYXR0ZW1wdCBhdCBzdGFydGluZyBz
b21ldGhpbmcgZGVza3RvcCBHVUkgYXBwbGljYXRpb24gb3Igc28uDQoNCkFtIEkgbWlzc2luZyBz
b21ldGhpbmcsIGlzIHRoaXMgYSBidWcsIG9yIGlzIHRoaXMgZXhwZWN0ZWQgYmVoYXZpb3VyIGFu
ZCBhbSBJIHN1cHBvc2VkIHRvIHR5cGUgc29tZSBtYWdpYyBjb21tYW5kIGZpcnN0Pw0KDQoNCk1l
dCB2cmllbmRlbGlqa2UgZ3JvZXQgLyBraW5kIHJlZ2FyZHMsDQoNCk1pa2UgTG9vaWptYW5zDQpT
eXN0ZW0gRXhwZXJ0DQoNCg0KVE9QSUMgRW1iZWRkZWQgU3lzdGVtcw0KRWluZGhvdmVuc2V3ZWcg
MzItQywgTkwtNTY4MyBLSCBCZXN0DQpQb3N0YnVzIDQ0MCwgTkwtNTY4MCBBSyBCZXN0DQpUZWxl
Zm9vbjogKCszMSkgKDApIDQ5OSAzMyA2OSA3OQ0KVGVsZWZheDogICgrMzEpICgwKSA0OTkgMzMg
NjkgNzANCkUtbWFpbDogbWlrZS5sb29pam1hbnNAdG9waWMubmwNCldlYnNpdGU6IHd3dy50b3Bp
Yy5ubA0KDQpQbGVhc2UgY29uc2lkZXIgdGhlIGVudmlyb25tZW50IGJlZm9yZSBwcmludGluZyB0
aGlzIGUtbWFpbA0KDQpWaXNpdCB1cyBhdCBCaXRzICYgQ2hpcHMgU21hcnQgU3lzdGVtcyAyMHRo
IE5vdmVtYmVyLCAxOTMxIENvbmdyZXNjZW50dW0gQnJhYmFudGhhbGxlbiAncy1IZXJ0b2dlbmJv
c2NoLCBzdGFuZCBudW1iZXIgMzQNCmh0dHA6Ly9iYy1zbWFydHN5c3RlbXMubmwNCg0KLS0gDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9jdG8gbWFp
bGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpodHRwczovL2xpc3RzLnlvY3RvcHJv
amVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg==

