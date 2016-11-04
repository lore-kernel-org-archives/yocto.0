Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 071F5E00BC0; Fri,  4 Nov 2016 11:07:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.93 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-6.cisco.com (alln-iport-6.cisco.com [173.37.142.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA4ADE00B62
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 11:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=1918; q=dns/txt; s=iport;
	t=1478282859; x=1479492459;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=9s5inZC2BPgFORj6+q7cvdQwjTg8Po75vcwCwWQGbAg=;
	b=PLLV+B59kLfOPMSs4T5fMQmhFgW0n5RrCG5IclKT6GnsToPxDiFNP3AL
	I2zi3+x7/PxInVKSURMAj18e3VWgo+Sc9CPrbIo33nncZfK/GVR/1Yxdj
	s94yhq7pdXPyPzDS0y/5gzKj58EWS1vScXDNpIteHuYguNB4/oDB4fg1W M=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AaAQDhzRxY/5hdJa1dGQEBAQEBAQEBA?=
	=?us-ascii?q?QEBBwEBAQEBgy4BAQEBAR9YfAeNMZcAh2CMZoIIHQuFewIagX0/FAECAQEBAQE?=
	=?us-ascii?q?BAWIohGEBAQEDAQEBASAROgsQAgEIGAICJgICAh8GAQoVEAIEDgWIPgMPCA6vJ?=
	=?us-ascii?q?Yh6DYNuAQEBAQEBAQEBAQEBAQEBAQEBAQEBHIEJhTaBfYJYgkeCAIMELYIvBZl?=
	=?us-ascii?q?uNQGGM4MMBYJNeIM2gW5OhCGJLYkBhCCEAwEeN2yFIXKGOIEMAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,444,1473120000"; d="scan'208";a="344365836"
Received: from rcdn-core-1.cisco.com ([173.37.93.152])
	by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Nov 2016 18:07:38 +0000
Received: from XCH-RTP-004.cisco.com (xch-rtp-004.cisco.com [64.101.220.144])
	by rcdn-core-1.cisco.com (8.14.5/8.14.5) with ESMTP id uA4I7cSN027381
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 4 Nov 2016 18:07:38 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-004.cisco.com
	(64.101.220.144) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Fri, 4 Nov 2016 14:07:37 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Fri, 4 Nov 2016 14:07:37 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Yocto : QA issue: package qlibc-dbg contains bad RPATH
Thread-Index: AQHSNsNt0hXDYRx+DUWVolbeE77beaDI7TOA
Date: Fri, 4 Nov 2016 18:07:37 +0000
Message-ID: <4883AD2B-6C23-4DA6-9FFE-757017FA040D@cisco.com>
References: <560994DC-02C8-4A2C-B489-646F9DBBF7EF@cisco.com>
	<CAMKF1srt_esuvzVMxprmQw92udoGxBsfMwhA9Kxe5RwRhuOzhQ@mail.gmail.com>
In-Reply-To: <CAMKF1srt_esuvzVMxprmQw92udoGxBsfMwhA9Kxe5RwRhuOzhQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.58.80]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto : QA issue: package qlibc-dbg contains bad RPATH
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
X-List-Received-Date: Fri, 04 Nov 2016 18:07:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <834D448AC4BC5E429B3C7ED27611F029@emea.cisco.com>
Content-Transfer-Encoding: base64

DQo+PiBxdWljayBmaXggaXMgaW4gYSBkb19pbnN0YWxsIG9yIGRvX2luc3RhbGxfYXBwZW5kIGRv
DQoNCj4+IGNocnBhdGggLWQgJHtEfSR7bGliZGlyfS9saWJxbGliY2V4dC5zbw0KDQpLaGVtLCB5
b3UgYXJlIHRoZSB0cnVlIFlvY3RvIEd1cnUgOy0pKSANCg0KVGhhbmsgeW91LiBJdCBzb2x2ZWQg
bXkgUlBBVEggaXNzdWUuIA0KDQrigJREaW5oIA0KDQoNCg0KDQoNCg0KT24gMTEvNC8xNiwgMTA6
NDYgQU0sICJLaGVtIFJhaiIgPHJhai5raGVtQGdtYWlsLmNvbT4gd3JvdGU6DQoNCj5PbiBGcmks
IE5vdiA0LCAyMDE2IGF0IDg6MDkgQU0sIERpbmggTmd1eWVuIChkaW5obikgPGRpbmhuQGNpc2Nv
LmNvbT4gd3JvdGU6DQo+PiBIaSBZb2N0byBHdXJ1cywNCj4+DQo+PiBFUlJPUjogUUEgSXNzdWU6
IHBhY2thZ2UgcWxpYmMtZGJnIGNvbnRhaW5zIGJhZCBSUEFUSA0KPg0KPnF1aWNrIGZpeCBpcyBp
biBhIGRvX2luc3RhbGwgb3IgZG9faW5zdGFsbF9hcHBlbmQgZG8NCj4NCj5jaHJwYXRoIC1kICR7
RH0ke2xpYmRpcn0vbGlicWxpYmNleHQuc28NCj4NCj5pZGVhbGx5LCBvbmUgc2hvdWxkIGZpeCBi
dWlsZCBzeXN0ZW0gdG8gbm90IGVtaXQgdGhlIHdyb25nIHJwYXRoIGluIGZpcnN0IHBsYWNlLg0K
Pg0KPj4gL21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cF9x
bGliYzMyL3RtcC93b3JrL3BwY2U1MDB2Mi1wb2t5LWxpbnV4LWdudXNwZS9xbGliYy8xLjAtcjAv
Z2l0L2xpYg0KPj4gaW4gZmlsZQ0KPj4gL21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2
TGF0ZXN0L2lveHNkay95cF9xbGliYzMyL3RtcC93b3JrL3BwY2U1MDB2Mi1wb2t5LWxpbnV4LWdu
dXNwZS9xbGliYy8xLjAtcjAvcGFja2FnZXMtc3BsaXQvcWxpYmMtZGJnL3Vzci9saWIvbGlicWxp
YmNleHQuc28NCj4+IFtycGF0aHNdDQo+PiBFUlJPUjogUUEgcnVuIGZvdW5kIGZhdGFsIGVycm9y
cy4gUGxlYXNlIGNvbnNpZGVyIGZpeGluZyB0aGVtLg0KPj4NCj4+DQo+PiBJIGFtIGFibGUgdG8g
Y29tcGlsZSBhbmQgYnVpbGQgSVBLIHBhY2thZ2UgZm9yIHFsaWJjIHJlY2lwZS4gQnV0IGl0IHRo
ZQ0KPj4gYWJvdmUgUUEgaXNzdWUsIHdoaWNoIGluZGljYXRlIHBhY2thZ2UgcWxpYmMtZGJnIGhh
cyBhIGJhZCBSUEFUSC4NCj4+IEFueSBpZGVhIGhvdyB0byBzb2x2ZSB0aGlzPw0KPj4NCj4+IE1h
bnkgdGhhbmtzIGluIGFkdmFuY2UNCj4+ICAg4oCURGluaA0KPj4NCj4+IC0tDQo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4geW9jdG8gbWFpbGlu
ZyBsaXN0DQo+PiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+PiBodHRwczovL2xpc3RzLnlvY3Rv
cHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4+DQo=

