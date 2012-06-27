Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BA4EE0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 09:21:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jun 2012 09:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170702170"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2012 09:21:43 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 27 Jun 2012 09:21:43 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.138]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.73]) with mapi id
	14.01.0355.002; Wed, 27 Jun 2012 09:21:41 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Display issue with EFI BOOTING
Thread-Index: Ac1QxjlLa+ysxA/kS36MzbHtnhvhtAASHF4AANyCykA=
Date: Wed, 27 Jun 2012 16:21:42 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACE5A89@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20ACE4833@ORSMSX105.amr.corp.intel.com>
	<CAMKF1spxgo3B2WxsRg=75Nhi8za6rHWejkjihiOoK_uro=8Ojw@mail.gmail.com>
In-Reply-To: <CAMKF1spxgo3B2WxsRg=75Nhi8za6rHWejkjihiOoK_uro=8Ojw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Darren Hart
	\(dvhart@linux.intel.com\)" <dvhart@linux.intel.com>
Subject: Re: Display issue with EFI BOOTING
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
X-List-Received-Date: Wed, 27 Jun 2012 16:21:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEtoZW0gUmFqIFttYWlsdG86
cmFqLmtoZW1AZ21haWwuY29tXQ0KPlNlbnQ6IEZyaWRheSwgSnVuZSAyMiwgMjAxMiA1OjA2IFBN
DQo+VG86IEJvZGtlLCBLaXNob3JlIEsNCj5DYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgRGFy
cmVuIEhhcnQgKGR2aGFydEBsaW51eC5pbnRlbC5jb20pDQo+U3ViamVjdDogUmU6IFt5b2N0b10g
RGlzcGxheSBpc3N1ZSB3aXRoIEVGSSBCT09USU5HDQo+DQo+T24gRnJpLCBKdW4gMjIsIDIwMTIg
YXQgMzoyOCBQTSwgQm9ka2UsIEtpc2hvcmUgSw0KPjxraXNob3JlLmsuYm9ka2VAaW50ZWwuY29t
PiB3cm90ZToNCj4+IEhpLA0KPj4NCj4+DQo+Pg0KPj4gWW9jdG8gbG9nbyBkaXNwbGF5cyBmaW5l
cyB3aGVuIGJvb3RlZCB3aXRoIEJJT1MuDQo+Pg0KPj4gQnV0IEkgc2VlIHRoZSBMb2dvIERpc3Bs
YXkgaXNzdWUgd2hlbiBib290ZWQgd2l0aCBFRkkuDQo+Pg0KPj4gQXR0YWNoZWQgYXJlIHRoZSBz
Y3JlZW4gc2hvdC4NCj4+DQo+PiBBbnkgSWRlYSB3aHk/DQo+Pg0KPj4NCj4NCj5tYXkgYmUgc2Ny
ZWVuIHJlZnJlc2ggcmF0ZSA/IGp1c3Qgc2hvb3RpbmcgaW4gZGFyayBoZXJlDQoNCkhpIERhcnJl
biwNCg0KRG8geW91IGFsc28gc2VlIHRoZSBZb2N0byBsb2dvIGRpc3RvcnRlZCB3aGlsZSBib290
aW5nIHdpdGggRUZJPw0KSSBkb24ndCBzZWUgdGhpcyBkaXN0b3J0ZWQgbG9nbyB3aXRoIEJJT1Mu
DQoNClRoYW5rcw0KS2lzaG9yZS4NCj4+DQo+PiBUaGFua3MNCj4+DQo+PiBLaXNob3JlLg0KPj4N
Cj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
Pj4geW9jdG8gbWFpbGluZyBsaXN0DQo+PiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+PiBodHRw
czovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4+DQo=

