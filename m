Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07543E00C1E; Wed,  5 Oct 2016 10:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.90 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-3.cisco.com (alln-iport-3.cisco.com [173.37.142.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE609E00B52
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 10:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=1956; q=dns/txt; s=iport;
	t=1475689439; x=1476899039;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=lHdRJ8sp/OSjQ1Nkc6yi7k8HNBp5i58+xz/O28yxvWw=;
	b=WOLpTNW7heg/fmbywufxf6SR3menBlYSG+Pl0Fp9vrx8dH8ygcjOJNyu
	4O4eGvBo30RTho8iDUANqr8bv+3yDghqQHq8d3DpSmIIVN2Cie2lHfpXy
	0gV3vZVeCi9fUkrHQZpR/n/ucuoPvojOyUyEHXRs9ERfpnvsD9g/PKL2w U=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CnAQD8OvVX/4cNJK1dGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgz0BAQEBAR6BUweNK5Z+h1iKQ4IPggmGIAIcgVc4FAECAQEBAQEBAV4?=
	=?us-ascii?q?nhGEBAQEDASMRRRACAQYCDgoCAiYCAgIfERUQAgQOBYg0Aw8IkAqdMYkADYNbA?=
	=?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBHYEHhTWBfYJYgkeCABeCbSuCLwWZRTUBjHC?=
	=?us-ascii?q?DBo9ziGCEE4N9AR42S4JrHBmBOXIBhzWBAAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,449,1473120000"; d="scan'208";a="331447483"
Received: from alln-core-2.cisco.com ([173.36.13.135])
	by alln-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	05 Oct 2016 17:43:56 +0000
Received: from XCH-RTP-005.cisco.com (xch-rtp-005.cisco.com [64.101.220.145])
	by alln-core-2.cisco.com (8.14.5/8.14.5) with ESMTP id u95Hhut9016293
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 5 Oct 2016 17:43:56 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-005.cisco.com
	(64.101.220.145) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 5 Oct 2016 13:43:55 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 5 Oct 2016 13:43:55 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
Thread-Topic: [yocto] Question: xxxx listed in PACKAGES multiple times, this
	leads to packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSr6CY76UA//+R1QCAAHifgIAAJRiAgACR/ICAAJEhgP//lJ6AgAB6cAD//5/NgA==
Date: Wed, 5 Oct 2016 17:43:55 +0000
Message-ID: <466EE7BD-F2D9-48DE-A126-EAEF1695A4D5@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1soSLUCxQvf0fgKotA+Tvahs8jKZGOZ7AuB8=_9x3ZW+Gw@mail.gmail.com>
	<2BBD728A-8CAF-4A2F-9F04-4BDD540B88C6@cisco.com>
	<20161005162828.GB2084@csclub.uwaterloo.ca>
In-Reply-To: <20161005162828.GB2084@csclub.uwaterloo.ca>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.60.186]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 17:44:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0BED12564533284DB5CB8678D3F79B26@emea.cisco.com>
Content-Transfer-Encoding: base64

DQo+PiBJcyB0aGF0IGRvaW5nIGEgY29tcGlsZSBpbiB0aGUgaW5zdGFsbCB0YXJnZXQ/DQoNCg0K
WWVzIExlbi4gQ29tcGlsZSB3YXMgZG9uZSBhbmQgdGhlcmUgaXMgbm8gaXNzdWUgdGhlcmUuDQoN
ClRoYW5rcywNCiAg4oCURGluaCANCg0KDQoNCg0KDQpPbiAxMC81LzE2LCA5OjI4IEFNLCAiTGVu
bmFydCBTb3JlbnNlbiIgPGxzb3JlbnNlQGNzY2x1Yi51d2F0ZXJsb28uY2E+IHdyb3RlOg0KDQo+
T24gV2VkLCBPY3QgMDUsIDIwMTYgYXQgMDQ6MTA6MDFQTSArMDAwMCwgRGluaCBOZ3V5ZW4gKGRp
bmhuKSB3cm90ZToNCj4+ID4+PiBJIHdvbmRlciB3aHkgZG8gd2Ugd2FudCB0byBvdmVycmlkZSBk
ZWZhdWx0IFBBQ0tBR0VTIGhlcmUuIElmIHdlIGNhbiBsZWF2ZSB0aGF0IGFsb25lIHRoaW5ncyB3
b3VsZCB3b3JrIG91dCBvbiBpdHMgb3duLg0KPj4gDQo+PiBJIGRpZCByZW1vdmUgdGhlIFBBQ0tB
R0VTIHNldHRpbmcgaW4gbXkgLmJiIOKAlCBzbyBhbGwgZGVmYXVsdCBwYWNrYWdlcyB3ZXJlIGJ1
aWx0LiBCdXQgc3RpbGwgaGF2aW5nIHNvbWUgb3RoZXIgaXNzdWUgYXMgc3RhdGVkIGluIG90aGVy
IGVtYWlscy4NCj4+IA0KPj4gVGhhbmtzIEtoZW0uDQo+PiAgIOKAlERpbmgNCj4+IA0KPj4gDQo+
PiANCj4+IE9uIDEwLzUvMTYsIDg6MzQgQU0sICJLaGVtIFJhaiIgPHJhai5raGVtQGdtYWlsLmNv
bT4gd3JvdGU6DQo+PiANCj4+ID5JIHdvbmRlciB3aHkgZG8gd2Ugd2FudCB0byBvdmVycmlkZSBk
ZWZhdWx0IFBBQ0tBR0VTIGhlcmUuIElmIHdlIGNhbiBsZWF2ZQ0KPj4gPnRoYXQgYWxvbmUgdGhp
bmdzIHdvdWxkIHdvcmsgb3V0IG9uIGl0cyBvd24uDQo+PiA+DQo+PiA+T24gVHVlLCBPY3QgNCwg
MjAxNiBhdCAxMTo1NSBQTSwgUGF1bCBFZ2dsZXRvbg0KPj4gPjxwYXVsLmVnZ2xldG9uQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6DQo+PiA+PiBPbiBXZWQsIDA1IE9jdCAyMDE2IDA1OjEyOjI3IERp
bmggTmd1eWVuIHdyb3RlOg0KPj4gPj4+IFRoYW5rcyBtdWNoIFBhdWwuDQo+PiA+Pj4NCj4+ID4+
PiA+Pj4+IFBBQ0tBR0VTID0gIiR7UE59IiBzaG91bGQgd29yaw0KPj4gPj4+DQo+PiA+Pj4gSXQg
c29sdmVkIHRoZSBlYXJseSBlcnJvciDigJwgYy1tbGliIGxpc3RlZCBpbiBQQUNLQUdFUyBtdWx0
aXBsZSB0aW1lcywgdGhpcw0KPj4gPj4+IGxlYWRzIHRvIHBhY2thZ2luZyBlcnJvcnPigJ0g4oCU
IFRoYW5rcyBhZ2Fpbi4NCj4+ID4+Pg0KPj4gPj4+DQo+PiA+Pj4gQnV0IHJ1bm5pbmcgaW50byBv
dGhlciBpc3N1ZS4gQmVsb3cgaXMgbXkgZG9faW5zdGFsbA0KPj4gPj4+DQo+PiA+Pj4gZG9faW5z
dGFsbCAoKSB7DQo+PiA+Pj4gICAgICAgb2VfcnVubWFrZSBhbGwNCj4NCj5JcyB0aGF0IGRvaW5n
IGEgY29tcGlsZSBpbiB0aGUgaW5zdGFsbCB0YXJnZXQ/DQo+DQo+LS0gDQo+TGVuIFNvcmVuc2Vu
DQo=

