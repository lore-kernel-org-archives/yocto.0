Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6303CE00A0A; Thu, 20 Oct 2016 05:25:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-1.cisco.com (alln-iport-1.cisco.com [173.37.142.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E966E009BB
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 05:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=1126; q=dns/txt; s=iport;
	t=1476966305; x=1478175905;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=zNVLukRlEOZ5BmGdatG23l/uNiYho1PU8koOPzkgdek=;
	b=XePvXfoMAY4uBz5qI/FswkEILR2Z3oDK9i5WxABuX8yTmaiZRSTiTN5l
	QFJPaZo0PHNI6KhDRKVzurXZv/I+d6C7SIy61A6WO2XJR5rAgcumq7xmF
	VpeDe3fMPL6gyjuPsKzho/PsQF1UMaWeHw4g8ul4uMJW6+T0ZqImVtWAJ s=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0B8AQAFtwhY/4MNJK1cGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgz4BAQEBAR1XfQeNLZZ8h16MX4IIHAuFegIagXM/FAECAQEBAQEBAWI?=
	=?us-ascii?q?ohGIBAQEDAQEBASAROgsFCwIBCBgCAiYCAgIfBgEKFRACBA4FiDgDDwgOtjOJB?=
	=?us-ascii?q?Q2DcAEBAQEBAQEBAQEBAQEBAQEBAQEBARyBB4U2gX0IglCCR4IAgwQsgi8BBJl?=
	=?us-ascii?q?ZNQGGKYVXeIMUgjyNP4hohBeDfwEeNliEeHKHQYEAAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,371,1473120000"; d="scan'208";a="338147856"
Received: from alln-core-1.cisco.com ([173.36.13.131])
	by alln-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	20 Oct 2016 12:24:57 +0000
Received: from XCH-RTP-005.cisco.com (xch-rtp-005.cisco.com [64.101.220.145])
	by alln-core-1.cisco.com (8.14.5/8.14.5) with ESMTP id u9KCOuWB024283
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 20 Oct 2016 12:24:57 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-005.cisco.com
	(64.101.220.145) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Thu, 20 Oct 2016 08:24:56 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Thu, 20 Oct 2016 08:24:56 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Recipe for Turbo.lua ?
Thread-Index: AQHSKnU1Y5RWDfpDaUm24s6/npM3eKCw6FIAgAAqn4A=
Date: Thu, 20 Oct 2016 12:24:56 +0000
Message-ID: <932455FF-0BBC-4406-A5B4-1D51B405AF60@cisco.com>
References: <845509FD-6E43-42F8-9F9F-8B1BF8F9F264@cisco.com>
	<CAMKF1sp7iJAnpmb7kaQXxBssb3x48A5EAYq7QzCzAhT7_8mEeA@mail.gmail.com>
In-Reply-To: <CAMKF1sp7iJAnpmb7kaQXxBssb3x48A5EAYq7QzCzAhT7_8mEeA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.56.26]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe for Turbo.lua ?
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
X-List-Received-Date: Thu, 20 Oct 2016 12:25:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <97280DBFD9CBBF479EA781E5881AB8AF@emea.cisco.com>
Content-Transfer-Encoding: base64

DQo+IEkgY2hlY2tlZCBhdCBsYXllcnMub3BlbmVtYmVkZGVkLm9yZyBhbmQgaXQgc2VlbXMgdGhl
cmUgaXMgbm8gcmVjaXBlIGZvciB0aGlzLg0KDQoNCg0KVGhhbmtzIG11Y2ggS2hlbSwgSSBnb29n
bGVkIHRvbywgYnV0IHVuYWJsZSB0byBmaW5kIGFueS4NCg0KQmVzdCwNCiAg4oCURGluaCANCg0K
T24gMTAvMTkvMTYsIDc6NTMgUE0sICJLaGVtIFJhaiIgPHJhai5raGVtQGdtYWlsLmNvbT4gd3Jv
dGU6DQoNCj5PbiBXZWQsIE9jdCAxOSwgMjAxNiBhdCA2OjU2IFBNLCBEaW5oIE5ndXllbiAoZGlu
aG4pIDxkaW5obkBjaXNjby5jb20+IHdyb3RlOg0KPj4NCj4+IEhpIFlvY3RvIEd1cnVzLA0KPj4N
Cj4+IEkgYW0gdHJ5aW5nIHRvIHVzZSB0aGUgVHVyYm8gTHVhIGFzIGEgZnJhbWV3b3JrIGZvciBi
dWlsZGluZyBMdWEgSklULg0KPj4gaHR0cHM6Ly9naXRodWIuY29tL2tlcm5lbHNhdWNlL3R1cmJv
LmdpdA0KPj4NCj4+IElzIHRoZXJlIGFueSBleGlzdGluZyByZWNpcGUgZm9yIOKAnHR1cmJvIGx1
YeKAnSA/DQo+DQo+SSBjaGVja2VkIGF0IGxheWVycy5vcGVuZW1iZWRkZWQub3JnIGFuZCBpdCBz
ZWVtcyB0aGVyZSBpcyBubyByZWNpcGUgZm9yIHRoaXMuDQo+DQo+Pg0KPj4gTWFueSB0aGFua3Mg
aW4gYWR2YW5jZSwNCj4+ICAg4oCURGluaA0KPj4NCj4+IC0tDQo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4geW9jdG8gbWFpbGluZyBsaXN0DQo+
PiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+PiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvbGlzdGluZm8veW9jdG8NCj4+DQo=

