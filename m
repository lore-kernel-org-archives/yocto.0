Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E703E00724; Tue,  4 Oct 2016 12:48:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.94 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-7.cisco.com (alln-iport-7.cisco.com [173.37.142.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8E1FE00563
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 12:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=3848; q=dns/txt; s=iport;
	t=1475610481; x=1476820081;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=ZWNIOpvOz4SbxXoPjwfSxT9rxBbnfZ6QJ15bXqCF5GQ=;
	b=HtT3Co3xSfzjyfPc+VbNuFAsQh/UGi22mXUgZnsqMvJAUdbfsDupwW/j
	l1Y88odi+1GazNqkEtNWrWhGn9zcCBpA7NRYA6tasSwY9c5V7n0N5nCN1
	9KU5nSbXj5cZBDFMmfJzSqsTJyIfad7sChSV8uzFmlDjPDLMVPaAC8ATs A=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DgAQA4BvRX/5RdJa1cGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgz0BAQEBAR5XfAeNK5YqU5IXgg+CByaFeAIcgVU4FAECAQEBAQEBAV4?=
	=?us-ascii?q?nhGIBAQQjEUUQAgEIGAICJgICAjAVEAIEDgUJiEQOsTmMdwEBAQEBAQEBAQEBA?=
	=?us-ascii?q?QEBAQEBAQEBARyBB4U1gX2CWIRHF4JtK4IvBY42i0MBhiaJTYI8jTaMcIN9AR4?=
	=?us-ascii?q?2TIJnGxmBOHIBhliBAAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,444,1473120000"; d="scan'208";a="331647315"
Received: from rcdn-core-12.cisco.com ([173.37.93.148])
	by alln-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Oct 2016 19:47:59 +0000
Received: from XCH-RTP-005.cisco.com (xch-rtp-005.cisco.com [64.101.220.145])
	by rcdn-core-12.cisco.com (8.14.5/8.14.5) with ESMTP id
	u94Jlxii018638
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 4 Oct 2016 19:47:59 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-005.cisco.com
	(64.101.220.145) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Tue, 4 Oct 2016 15:47:58 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Tue, 4 Oct 2016 15:47:58 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Question: xxxx listed in PACKAGES multiple times, this
	leads to packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSr6CY76UA//+R1QA=
Date: Tue, 4 Oct 2016 19:47:58 +0000
Message-ID: <127A78F9-AB8A-467C-AC6B-02DBDDE09EE0@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<14908226.eNXmjE9kDk@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <14908226.eNXmjE9kDk@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.57.212]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 04 Oct 2016 19:48:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <6A99DBF0D9F22D4B91DC13363E50614A@emea.cisco.com>
Content-Transfer-Encoding: base64

DQpIaSBQYXVsLCB0aGFua3MgbXVjaCBmb3IgcHJvbXB0IHJlc3BvbnNlLiANCg0KVGhlIGMtbWxp
Yi5iYiBiZWxvdyBoYXMgdGhlIHBhY2thZ2VzIHZhciBhcw0KUEFDS0FHRVMgPSsgIiR7UE594oCd
IEkgYWxzbyB0cmllZCBQQUNLQUdFUyA9ICIke1BOfeKAnSANCg0KDQpUaGUgcGFja2FnZXMgd2Vy
ZSBidWlsdCBzdWNjZXNzZnVsIGluZGVlZCwgYnV0IHRoZSBFUlJPUjogUUEgSXNzdWUgLi4uDQpB
bnkgcmVjb21tZW5kYXRpb24gdG8gY2hhbmdlIHRoZSBhYm92ZSBQQUNLQUdFUyB2YXJpYWJsZSBp
biB0aGUgYmI/DQoNClNVTU1BUlkgPSAiYy1tbGliIGNyb3NzIGJ1aWxkIGVudmlyb25tZW50IHdp
dGggSU94IFNESyINCkRFU0NSSVBUSU9OID0gImMtbWxpYiBjcm9zcyBidWlsZCBlbnZpcm9ubWVu
dCB3aXRoIElPeCBTREsgIg0KI0RFUEVORFMgPSAibGlic2RrX2RzbGlua19jLXN0YXRpYyBsaWJq
YW5zc29uIGxpYmxpYnV2IGxpYnpsb2ciDQojREVQRU5EUyA9ICJ1dGlsLWxpbnV4Ig0KREVQRU5E
UyA9ICIiDQpQUk9WSURFUyA9ICIiDQoNCiNMSUNFTlNFID0gIiINCkxJQ0VOU0UgPSAiQ0xPU0VE
Ig0KU1JDX1VSSSA9ICJnaXQ6Ly9naXRsYWIuY2lzY28uY29tL2doYWx3YXNpL2MtbWxpYi5naXQ7
cHJvdG9jb2w9aHR0cCINClNSQ1JFViA9ICIke0FVVE9SRVZ9Ig0KDQpTUkNfVVJJW21kNXN1bV0g
PSAiZTg5NmJjZDI2N2IzY2MxZGU4OWIzYWM4NWVlMmYyOGIiDQpTUkNfVVJJW3NoYTI1NnN1bV0g
PSAiN2I3YmU2N2JjZjA5MGRjZjliOTM5Y2JhOTcwNTc3MWI5YzA1MDNjNGIzNjdmN2I2MGFmOTY4
ZGMyN2VjNTQxZCINCg0KUyA9ICIke1dPUktESVJ9L2dpdCINClBWID0gIjEuMC4wIg0KDQpkb19p
bnN0YWxsICgpIHsNCiAgICAgICAgb2VfcnVubWFrZSBhbGwNCiAgICAgICAgaW5zdGFsbCAtZCAg
JHtEfSR7bGliZGlyfQ0KICAgICAgICBpbnN0YWxsIC1tIDA2NDQgJHtTfS90YXJnZXQvKiAke0R9
JHtsaWJkaXJ9DQp9DQoNClBBQ0tBR0VTID0rICIke1BOfSINCg0KRklMRVNfJHtQTn0gPSAiL3Vz
ci9saWIvZGF0YW1vZGVsX2NhY2hlIFwNCgkvdXNyL2xpYi9pbnZva2UgXA0KCS91c3IvbGliL2lu
dm9rZV9iIFwNCgkvdXNyL2xpYi9saWJtbGliLnNvIFwNCgkvdXNyL2xpYi9wcm90b2NvbF9pbmZy
YSBcDQoJL3Vzci9saWIvcHVibGlzaGVyIFwNCgkvdXNyL2xpYi9ycGMtcmVnaXN0ZXIgXA0KCS91
c3IvbGliL3NlcnZpY2UgXA0KCS91c3IvbGliL3N1YnNjcmliZXIgXA0KCS91c3IvbGliL3Rlc3Qt
c2VydmljZSBcDQoJL3Vzci9saWIvcHJvcGVydGllcy5qc29u4oCdDQoNCg0KDQoNCg0KTWFueSB0
aGFua3MsDQogIOKAlERpbmggDQoNCk9uIDEwLzQvMTYsIDEyOjIyIFBNLCAiUGF1bCBFZ2dsZXRv
biIgPHBhdWwuZWdnbGV0b25AbGludXguaW50ZWwuY29tPiB3cm90ZToNCg0KPkhpIERpbmgsDQo+
DQo+T24gVHVlLCAwNCBPY3QgMjAxNiAxNjowNzo1OSBEaW5oIE5ndXllbiB3cm90ZToNCj4+ID4+
PiBFUlJPUjogUUEgSXNzdWU6IGMtbWxpYiBpcyBsaXN0ZWQgaW4gUEFDS0FHRVMgbXVsdGlwbGUg
dGltZXMsIHRoaXMgbGVhZHMNCj4+ID4+PiB0byBwYWNrYWdpbmcgZXJyb3JzLiBbcGFja2FnZXMt
bGlzdF0NCj4+IFN1bW1hcnk6IFRoZXJlIHdhcyAxIEVSUk9SDQo+PiA+Pj4gbWVzc2FnZSBzaG93
biwgcmV0dXJuaW5nIGEgbm9uLXplcm8gZXhpdCBjb2RlLg0KPj4gDQo+PiBJIGdvdCB0aGUgYWJv
dmUgRVJST1IgYmVjYXVzZSAgbXkgYy1tbGliXzEuMC1yMF9jb3JlMi02NC5pcGsgYW5kIG90aGVy
DQo+PiBwYWNrYWdlcyB3ZXJlIGxpc3RlZCBpbiBkaWZmZXJlbnQgcGxhY2VzIGFzIHNob3duIGJl
bG93Og0KPiANCj4+IGRpbmhuQHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9p
b3hEZXYvaW94c2RrJCBmaW5kIC4gLW5hbWUNCj4+IGMtbWxpYl8xLjAtcjBfY29yZTItNjQuaXBr
DQo+IA0KPj4gLi95cC90bXAvZGVwbG95L2lway9jb3JlMi02NC9jLW1saWJfMS4wLXIwX2NvcmUy
LTY0Lmlwaw0KPj4gLi95cC90bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjAt
cjAvZGVwbG95LWlwa3MvY29yZTItNjQvYy1tbGliXw0KPj4gMS4wLXIwX2NvcmUyLTY0Lmlwaw0K
Pg0KPlRoYXQgaXMgbm90IHdoYXQgdGhhdCBlcnJvciBtZWFucy4gV2hhdCBpdCBkb2VzIG1lYW4g
aXMgdGhhdCB0aGVyZSBpcyBhDQo+dmFyaWFibGUgY2FsbGVkIFBBQ0tBR0VTIHdoaWNoIGlzIHVz
ZWQgdG8gY29udHJvbCB0aGUgbGlzdCBvZiBwYWNrYWdlcw0KPnByb2R1Y2VkIGJ5IGEgcmVjaXBl
LCBhbmQgaW4gdGhlIHZhbHVlIG9mIHRoYXQgdmFyaWFibGUgZm9yIHRoZSBjLW1saWIgcmVjaXBl
LA0KPmEgYy1tbGliIHBhY2thZ2UgaXMgbGlzdGVkIG1vcmUgdGhhbiBvbmNlLiBZb3UgbmVlZCB0
byBsb29rIGF0IHdoYXQgeW91IGFyZSBkb2luZyBpbiB0aGUNCj5yZWNpcGUgd2l0aCB0aGUgUEFD
S0FHRVMgdmFyaWFibGUgYW5kIGZpeCBpdCBzbyB0aGF0IHRoYXQgZG9lcyBub3Qgb2NjdXIuDQo+
DQo+RllJIGZvciBmdXR1cmUgcmVmZXJlbmNlIHRoZXJlJ3MgYSB1c2VmdWwgc2VjdGlvbiBvZiB0
aGUgbWFudWFsIGRlc2NyaWJpbmcNCj53YXJuaW5ncyBhbmQgd2hhdCB0byBkbyBhYm91dCB0aGVt
Og0KPg0KPiAgaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvY3VycmVudC9yZWYtbWFu
dWFsL3JlZi1tYW51YWwuaHRtbCNxYS1lcnJvcnMtYW5kLXdhcm5pbmdzDQo+DQo+Q2hlZXJzLA0K
PlBhdWwNCj4NCj4tLSANCj4NCj5QYXVsIEVnZ2xldG9uDQo+SW50ZWwgT3BlbiBTb3VyY2UgVGVj
aG5vbG9neSBDZW50cmUNCg==

