Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B410EE00A85; Wed,  5 Oct 2016 09:10:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AFD8E00A30
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 09:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=6204; q=dns/txt; s=iport;
	t=1475683810; x=1476893410;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=FZlKohcCb+7gCk4v2eoIqnE+sOKm3QmuhlKhajlkMMY=;
	b=mQ5PsA1Z7GjddQ1F4GFwdaJNIJHUEWvETWgMYbfy+/4XCFmbJCNezJmq
	7LH44boej+JAwAO2zuYm7XutxH57OEFh8/el8ArUSqaI1EOJ+EXWEK/g+
	M0S0kyOsRget5CBe2UGCCWspXgmjfme4pztliyH1sWR3uHmlUEihv8pVY 8=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BBAQBMJfVX/40NJK1SChkBAQEBAQEBA?=
	=?us-ascii?q?QEBAQcBAQEBAYM9AQEBAQEeV3wHjSuWfodYjFKCCRsLhXoCHIFWOBQBAgEBAQE?=
	=?us-ascii?q?BAQFeJ4RhAQEBAwEBAQEgEToLEAIBBgIYAgImAgICHwYBChUQAgQBDQWINAMPC?=
	=?us-ascii?q?A6PTJ0xiQANg1MBAQEBAQEBAQEBAQEBAQEBAQEBAQEdgQeFNYF9gliCR4FYP4J?=
	=?us-ascii?q?tK4IvBZlFNQGGJoVSeIMGgjyNN4hghBODfQEeNkuCaxwZgTlyAYc1gQABAQE?=
X-IronPort-AV: E=Sophos;i="5.31,449,1473120000"; d="scan'208";a="332125010"
Received: from alln-core-8.cisco.com ([173.36.13.141])
	by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	05 Oct 2016 16:10:09 +0000
Received: from XCH-RTP-001.cisco.com (xch-rtp-001.cisco.com [64.101.220.141])
	by alln-core-8.cisco.com (8.14.5/8.14.5) with ESMTP id u95GA8uX031803
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 5 Oct 2016 16:10:08 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-001.cisco.com
	(64.101.220.141) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 5 Oct 2016 12:10:08 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 5 Oct 2016 12:10:01 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Khem Raj <raj.khem@gmail.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Question: xxxx listed in PACKAGES multiple times, this
	leads to packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSr6CY76UA//+R1QCAAHifgIAAJRiAgACR/ICAAJEhgP//lJ6A
Date: Wed, 5 Oct 2016 16:10:01 +0000
Message-ID: <2BBD728A-8CAF-4A2F-9F04-4BDD540B88C6@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1soSLUCxQvf0fgKotA+Tvahs8jKZGOZ7AuB8=_9x3ZW+Gw@mail.gmail.com>
In-Reply-To: <CAMKF1soSLUCxQvf0fgKotA+Tvahs8jKZGOZ7AuB8=_9x3ZW+Gw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.33.250]
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
X-List-Received-Date: Wed, 05 Oct 2016 16:10:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1E2E9CE6A3960040A636FBD14E5A6EC7@emea.cisco.com>
Content-Transfer-Encoding: base64

Pj4+IEkgd29uZGVyIHdoeSBkbyB3ZSB3YW50IHRvIG92ZXJyaWRlIGRlZmF1bHQgUEFDS0FHRVMg
aGVyZS4gSWYgd2UgY2FuIGxlYXZlIHRoYXQgYWxvbmUgdGhpbmdzIHdvdWxkIHdvcmsgb3V0IG9u
IGl0cyBvd24uDQoNCkkgZGlkIHJlbW92ZSB0aGUgUEFDS0FHRVMgc2V0dGluZyBpbiBteSAuYmIg
4oCUIHNvIGFsbCBkZWZhdWx0IHBhY2thZ2VzIHdlcmUgYnVpbHQuIEJ1dCBzdGlsbCBoYXZpbmcg
c29tZSBvdGhlciBpc3N1ZSBhcyBzdGF0ZWQgaW4gb3RoZXIgZW1haWxzLg0KDQpUaGFua3MgS2hl
bS4NCiAg4oCURGluaA0KDQoNCg0KT24gMTAvNS8xNiwgODozNCBBTSwgIktoZW0gUmFqIiA8cmFq
LmtoZW1AZ21haWwuY29tPiB3cm90ZToNCg0KPkkgd29uZGVyIHdoeSBkbyB3ZSB3YW50IHRvIG92
ZXJyaWRlIGRlZmF1bHQgUEFDS0FHRVMgaGVyZS4gSWYgd2UgY2FuIGxlYXZlDQo+dGhhdCBhbG9u
ZSB0aGluZ3Mgd291bGQgd29yayBvdXQgb24gaXRzIG93bi4NCj4NCj5PbiBUdWUsIE9jdCA0LCAy
MDE2IGF0IDExOjU1IFBNLCBQYXVsIEVnZ2xldG9uDQo+PHBhdWwuZWdnbGV0b25AbGludXguaW50
ZWwuY29tPiB3cm90ZToNCj4+IE9uIFdlZCwgMDUgT2N0IDIwMTYgMDU6MTI6MjcgRGluaCBOZ3V5
ZW4gd3JvdGU6DQo+Pj4gVGhhbmtzIG11Y2ggUGF1bC4NCj4+Pg0KPj4+ID4+Pj4gUEFDS0FHRVMg
PSAiJHtQTn0iIHNob3VsZCB3b3JrDQo+Pj4NCj4+PiBJdCBzb2x2ZWQgdGhlIGVhcmx5IGVycm9y
IOKAnCBjLW1saWIgbGlzdGVkIGluIFBBQ0tBR0VTIG11bHRpcGxlIHRpbWVzLCB0aGlzDQo+Pj4g
bGVhZHMgdG8gcGFja2FnaW5nIGVycm9yc+KAnSDigJQgVGhhbmtzIGFnYWluLg0KPj4+DQo+Pj4N
Cj4+PiBCdXQgcnVubmluZyBpbnRvIG90aGVyIGlzc3VlLiBCZWxvdyBpcyBteSBkb19pbnN0YWxs
DQo+Pj4NCj4+PiBkb19pbnN0YWxsICgpIHsNCj4+PiAgICAgICBvZV9ydW5tYWtlIGFsbA0KPj4+
ICAgICAgIGluc3RhbGwgLWQgJHtEfSR7bGliZGlyfQ0KPj4+ICAgICAgIGluc3RhbGwgLWQgJHtE
fSR7YmluZGlyfQ0KPj4+ICAgICAgIGluc3RhbGwgLW0gMDY0NCAke1N9L3RhcmdldC9saWJtbGli
LnNvICR7RH0ke2xpYmRpcn0NCj4+PiAgICAgICBpbnN0YWxsIC1tIDA2NDQgJHtTfS90YXJnZXQv
ZGF0YW1vZGVsX2NhY2hlICR7RH0ke2JpbmRpcn0NCj4+PiAgICAgICBpbnN0YWxsIC1tIDA2NDQg
JHtTfS90YXJnZXQvaW52b2tlICR7RH0ke2JpbmRpcn0NCj4+PiAgICAgICBpbnN0YWxsIC1tIDA2
NDQgJHtTfS90YXJnZXQvaW52b2tlX2IgJHtEfSR7YmluZGlyfQ0KPj4+ICAgICAgIGluc3RhbGwg
LW0gMDY0NCAke1N9L3RhcmdldC9wcm90b2NvbF9pbmZyYSAke0R9JHtiaW5kaXJ9DQo+Pj4gICAg
ICAgaW5zdGFsbCAtbSAwNjQ0ICR7U30vdGFyZ2V0L3B1Ymxpc2hlciAke0R9JHtiaW5kaXJ9DQo+
Pj4gICAgICAgaW5zdGFsbCAtbSAwNjQ0ICR7U30vdGFyZ2V0L3JwYy1yZWdpc3RlciAke0R9JHti
aW5kaXJ9DQo+Pj4gICAgICAgaW5zdGFsbCAtbSAwNjQ0ICR7U30vdGFyZ2V0L3NlcnZpY2UgJHtE
fSR7YmluZGlyfQ0KPj4+ICAgICAgIGluc3RhbGwgLW0gMDY0NCAke1N9L3RhcmdldC9zdWJzY3Jp
YmVyICR7RH0ke2JpbmRpcn0NCj4+PiB9DQo+Pj4NCj4+PiBQQUNLQUdFUyA9ICIke1BOfSINCj4+
PiBGSUxFU18ke1BOfSA9ICIvdXNyL2Jpbi9kYXRhbW9kZWxfY2FjaGUgXA0KPj4+ICAgICAgICAg
ICAgICAgL3Vzci9iaW4vaW52b2tlIFwNCj4+PiAgICAgICAgICAgICAgIC91c3IvYmluL2ludm9r
ZV9iIFwNCj4+PiAgICAgICAgICAgICAgIC91c3IvbGliL2xpYm1saWIuc28gXA0KPj4+ICAgICAg
ICAgICAgICAgL3Vzci9iaW4vcHJvdG9jb2xfaW5mcmEgXA0KPj4+ICAgICAgICAgICAgICAgL3Vz
ci9iaW4vcHVibGlzaGVyIFwNCj4+PiAgICAgICAgICAgICAgIC91c3IvYmluL3JwYy1yZWdpc3Rl
ciBcDQo+Pj4gICAgICAgICAgICAgICAvdXNyL2Jpbi9zZXJ2aWNlIFwNCj4+PiAgICAgICAgICAg
ICAgIC91c3IvYmluL3N1YnNjcmliZXIiDQo+Pj4NCj4+Pg0KPj4+DQo+Pj4gQW5kIHVuZGVyICR7
U30vdGFyZ2V0LCBpdCBoYXMgdGhlIGxpYm1saWIuc28gYW5kIG90aGVyIGJpbmFyaWVzIGJ1aWx0
LA0KPj4+IEFuZCBJIGludGVuZGVkIHRvIGNvcHkgdGhlIC5zbyB0byAke0R9JHtsaWJkaXJ9IGFu
ZCBiaW5hcmlyZXMgdG8NCj4+PiAke0R9JHtiaW5kaXJ9LiBJIGFtIGFibGUgdG8gYnVpbGQgdGhl
IGMtbWxpYiBwYWNrYWdlIGFzIHNob3duIGJlbG93Og0KPj4NCj4+PiBkaW5obkBycy1ibGRzcnY6
L21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cCQgZmluZA0K
Pj4+IHRtcC9kZXBsb3kgfCBncmVwIGMtbWxpYg0KPj4+IHRtcC9kZXBsb3kvaXBrL2NvcmUyLTY0
L2MtbWxpYl8xLjEtcjBfY29yZTItNjQuaXBrDQo+Pj4NCj4+Pg0KPj4+IFRoZSBwcm9ibGVtIGlz
IHRoYXQsIGFmdGVyICJiaXRiYWtlIGMtbWxpYuKAnSwgaXQgbW92ZWQgYWxsIHNvdXJjZXMgdW5k
ZXIgJHtTfQ0KPj4+IHRvIC91c3Ivc3JjL2RlYnVnIGV0Yy4uDQo+Pj4gSSBnb29nbGVkIGJ1dCB1
bmFibGUgdG8gZmluZCB0aGUgcm9vdCBjYXVzZS4NCj4+PiBXb3VsZCB5b3UgYW5kIG90aGVyIGNh
biBoZWxwIHRvIGlkZW50aWZ5IHRoZSBpc3N1ZT8NCj4+PiBOT1RFOiBFeGVjdXRpbmcgUnVuUXVl
dWUgVGFza3MNCj4+PiBFUlJPUjogUUEgSXNzdWU6IGMtbWxpYjogRmlsZXMvZGlyZWN0b3JpZXMg
d2VyZSBpbnN0YWxsZWQgYnV0IG5vdCBzaGlwcGVkDQo+Pj4gICAvdXNyL3NyYw0KPj4+ICAgL3Vz
ci9saWIvLmRlYnVnDQo+Pj4gICAvdXNyL2xpYi8uZGVidWcvbGlibWxpYi5zbw0KPj4+ICAgL3Vz
ci9zcmMvZGVidWcNCj4+PiAgIC91c3Ivc3JjL2RlYnVnL2MtbWxpYg0KPj4+ICAgL3Vzci9zcmMv
ZGVidWcvYy1tbGliLzEuMS1yMA0KPj4+ICAgL3Vzci9zcmMvZGVidWcvYy1tbGliLzEuMS1yMC9n
aXQNCj4+PiAgIC91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAvZ2l0L3NyYw0KPj4+ICAgL3Vz
ci9zcmMvZGVidWcvYy1tbGliLzEuMS1yMC9naXQvaW5jbHVkZQ0KPj4+ICAgL3Vzci9zcmMvZGVi
dWcvYy1tbGliLzEuMS1yMC9naXQvZGVwcw0KPj4+ICAgL3Vzci9zcmMvZGVidWcvYy1tbGliLzEu
MS1yMC9naXQvc3JjL21saWJfYXBpLmMNCj4+PiAgIC91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEt
cjAvZ2l0L3NyYy9tbGliX21ldHJpY3MuYw0KPj4+ICAgL3Vzci9zcmMvZGVidWcvYy1tbGliLzEu
MS1yMC9naXQvc3JjL21saWJfdXRpbC5jDQo+Pj4gICAvdXNyL3NyYy9kZWJ1Zy9jLW1saWIvMS4x
LXIwL2dpdC9zcmMvbWxpYl9sb2NhbF9tZXRyaWNzLmMNCj4+PiAgIC91c3Ivc3JjL2RlYnVnL2Mt
bWxpYi8xLjEtcjAvZ2l0L3NyYy9kc2xpbmtfYmluZGluZ3MNCj4+PiAgIC91c3Ivc3JjL2RlYnVn
L2MtbWxpYi8xLjEtcjAvZ2l0L3NyYy91dGlscw0KPj4+ICAgL3Vzci9zcmMvZGVidWcvYy1tbGli
LzEuMS1yMC9naXQvc3JjL3NlcnZpY2Vfc2RrDQo+Pj4gICAvdXNyL3NyYy9kZWJ1Zy9jLW1saWIv
MS4xLXIwL2dpdC9zcmMvZHNsaW5rX2JpbmRpbmdzL21saWJfc2VydmljZV9jYWNoZS5jDQo+Pj4g
L3Vzci9zcmMvZGVidWcvYy1tbGliLzEuMS1yMC9naXQvc3JjL2RzbGlua19iaW5kaW5ncy9tbGli
X3dyYXBwZXIuYw0KPj4+IC91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAvZ2l0L3NyYy9kc2xp
bmtfYmluZGluZ3MvbWxpYl9kc2EuYw0KPj4+IC91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAv
Z2l0L3NyYy9kc2xpbmtfYmluZGluZ3MvaW5jbHVkZQ0KPj4+IOKApi4NCj4+DQo+PiBUaGlzIGlz
IHdoYXQgSSBzdXNwZWN0ZWQgd291bGQgaGFwcGVuIC0gdGhlc2UgZmlsZXMgd291bGQgbm9ybWFs
bHkgYmUgcGFydCBvZg0KPj4gdGhlICR7UE59LWRiZyBwYWNrYWdlLCBidXQgc2luY2UgeW91J3Zl
IHJlbW92ZWQgdGhhdCBmcm9tIFBBQ0tBR0VTLCB0aGV5IGFyZQ0KPj4gZW5kaW5nIHVwIHVucGFj
a2FnZWQgYW5kIHRoYXQgaXMgbm90IGFsbG93ZWQuDQo+Pg0KPj4gTGlrZSB0aGUgb3RoZXIgcmVz
cG9uZGVyIEkgd291bGQgc3VnZ2VzdCB5b3Ugbm90IHNldCBQQUNLQUdFUyAtIGluc3RlYWQgeW91
DQo+PiBqdXN0IG5lZWQgdG8gdGFrZSBzdGVwcyBzbyB0aGF0IHRoZSAuc28gZmlsZSBkb2Vzbid0
IGVuZCB1cCBpbiB0aGUgJHtQTn0tZGV2DQo+PiBwYWNrYWdlLiBZb3UgY291bGQgZG8gc29tZXRo
aW5nIGxpa2UgdGhpczoNCj4+DQo+PiBGSUxFU18ke1BOfS1kZXYgPSAiJHtpbmNsdWRlZGlyfSIN
Cj4+DQo+PiBDaGVlcnMsDQo+PiBQYXVsDQo+Pg0KPj4gLS0NCj4+DQo+PiBQYXVsIEVnZ2xldG9u
DQo+PiBJbnRlbCBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRyZQ0KPj4gLS0NCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiB5b2N0byBtYWls
aW5nIGxpc3QNCj4+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4+IGh0dHBzOi8vbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0K

