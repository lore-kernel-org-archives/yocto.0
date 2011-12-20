Return-Path: <shane.wang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 229B3E00305
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 08:08:52 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Dec 2011 08:08:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49009020"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Dec 2011 08:08:50 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 21 Dec 2011 00:08:47 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 21 Dec 2011 00:08:47 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 21 Dec 2011 00:08:45 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Wed, 21 Dec 2011 00:08:44 +0800
Thread-Topic: [yocto] RFC: Web UI design for bitbake
Thread-Index: Acy+8V1UcZ1zvQR0RPqNAX7vf1Lq/gAP6+0A
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED757D77@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B7A4@shsmsx501.ccr.corp.intel.com>
	<CAGiJk9fSjJj+0M=xKX2=aeh=o3QadOf3VQz0=kG7HfBwk5qOkQ@mail.gmail.com>
In-Reply-To: <CAGiJk9fSjJj+0M=xKX2=aeh=o3QadOf3VQz0=kG7HfBwk5qOkQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Uriel Liu <uriell@wicresoft.com>
Subject: Re: RFC: Web UI design for bitbake
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
X-List-Received-Date: Tue, 20 Dec 2011 16:08:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2FtdWVsIFN0aXJ0emVsIHdyb3RlIG9uwqAyMDExLTEyLTIwOg0KDQo+IDIwMTEvMTIvMjAgV2Fu
ZywgU2hhbmUgPHNoYW5lLndhbmdAaW50ZWwuY29tPjoNCj4NCj4gSXQgc291bmRzIGxpa2UgeW91
IHdhbnQgdG8gYnVpbGQgaXQgYWxsIGZyb20gc2NyYXRjaCwgcXVpdGUgYSBsb3Qgb2YNCj4gd29y
ayB0byBidWlsZCBhIGZ1bGx5IGZlYXR1cmVkIHdlYiBidWlsZCBzeXN0ZW0sDQo+IGluIHRoaXMg
Y2FzZSBjb21wYXRpYmlsaXR5IHRvIG90aGVyIHN5c3RlbXMgd291bGQgYmUgbmljZS4NCj4gDQo+
IA0KPiBGb3Igd2ViIGJ1aWxkcyB3aXRoIGJpdGJha2UsIEplbmtpbnMtQ0kgKGEgZm9yayBvZiB0
aGUgY29udGludW91cw0KPiBpbnRlZ3JhdGlvbiBzeXN0ZW0gSHVkc29uKSBbMV0gY291bGQgYmUg
d29ydGggYSBsb29rLA0KPiBpdCBpcyBtb3JlIHRoYW4ganVzdCBhIGJ1aWxkIHRvb2wuDQo+IA0K
PiBUaGVyZSBpcyBhbHNvIEF1dG9idWlsZGVyLCBidXQgSSBndWVzcyBmb3IgZW5kIHVzZXJzIGl0
IGlzIHRvbyBtdWNoDQo+IGNvbmZpZ3VyYXRpb24gZWZmb3J0Pw0KPiBKZW5raW5zLUNJIHdhcyB2
ZXJ5IGVhc3kgdG8gc2V0dXAgYW5kIHdpdGggYSBwbHVnLWluIGl0IGNvdWxkIGJlIGFzDQo+IHNp
bXBsZSBhcyBwb2ludGluZyB0aGUgd2ViLVVJIHRvIHRoZSBCaXRiYWtlIHBhdGgsDQo+IG1hbmFn
aW5nIGNsdXN0ZXIvY2xvdWQvc2xhdmUtcGMgZW50aXRpZXMgaXMgZWFzeSB0b28uDQo+IA0KPiBK
dXN0IG15IDAuMDIgY2VudHMgaW4gdGhlIGNhc2UgdGhhdCB5b3UgZGlkbid0IGFscmVhZHkgY2Fz
dCBpdCBpbiBjb25jcmV0ZS4NCj4gSU1ITyBpdCBsb29rcyBsaWtlIEplbmtpbnMgYW5kIHRoZSBj
b25jZXB0LXBkZiBhcmUgdmVyeSBzaW1pbGFyLA0KPiBvbmx5IGRpZmZlcmVuY2Ugc2VlbXMgdG8g
YmU6IHlvdSB3YW50IHRvIGludmVudCBpdCBhbGwgYnkgeW91cnNlbGY/DQo+IA0KPiANCj4gWzFd
IEplbmtpbnMtQ0kgOiBodHRwOi8vamVua2lucy1jaS5vcmcvDQo+DQoNClRoYW5rcyBmb3IgdGhl
IGZlZWRiYWNrcy4gV2UgY29uc2lkZXJlZCBhdXRvYnVpbGRlciBwcmV2aW91c2x5LiBCdXQgdGhl
eSBhcmUgc2ltaWxhciBidXQgZGlmZmVyZW50Lg0KV2ViIEhPQiBpcyBnb2luZyB0byBwcm92aWRl
IGEgdG9vbCB0byBkZWVwbHkgY3VzdG9taXplIGltYWdlcyBmcm9tIGJyb3dzZXJzLg0KQXQgdGhp
cyBwb2ludCwgYXV0b2J1aWxkZXIgaXMgd2Vha2VyLg0KDQpXZSB3aWxsIGhhdmUgYSBsb29rIGF0
IHlvdXIgc3VnZ2VzdGlvbnMgZmlyc3QuDQoNCi0tDQpTaGFuZQ0K

