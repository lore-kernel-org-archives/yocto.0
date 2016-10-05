Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D924FE00444; Wed,  5 Oct 2016 11:19:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -7.5 USER_IN_DEF_DKIM_WL From: address is in the default
	DKIM white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.86.79 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Oct 2016 11:19:41 PDT
Received: from rcdn-iport-8.cisco.com (rcdn-iport-8.cisco.com [173.37.86.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 813EAE002AC
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 11:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=6360; q=dns/txt; s=iport;
	t=1475691581; x=1476901181;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=PhsunRVwCx6CLMo6XtVZE7CWNOA4B3FoNVKthQ1NVO0=;
	b=Vyf7OrwHOnqs0HT5Qb3NrR4ZCAILz4MHXF3ry856AwkwL+tHHLDt9aas
	/fEoqixavQaE6eGz5Xm1l31J4yoK8hEVnmFw8tCgGCoZIKN6cifUMu+bt
	jY5QM1+UvolzGA65DZ0tnK5/I8UNSFdypTWg9gtKRqZ41ycEs+BrEw3Vq k=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0B0AQD8QvVX/5tdJa1eGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgz0BAQEBAR5XfAeNK5Z/khuCD4IJHoYCAhyBWDgUAQIBAQEBAQEBXie?=
	=?us-ascii?q?EYQEBAQMBIxFFEAIBCA4KAgImAgICMBUQAgQOBYhGCK1JjGkBAQEBAQEBAQEBA?=
	=?us-ascii?q?QEBAQEBAQEBAQEdgQeFNYF9CIJQhBkQAgGDHyuCLwWON4tDAYYmiVCBbk6EGIk?=
	=?us-ascii?q?fjHODfQEeNkuCaxwZgTlyhzaBAAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,302,1473120000"; d="scan'208";a="154760274"
Received: from rcdn-core-4.cisco.com ([173.37.93.155])
	by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Oct 2016 18:18:37 +0000
Received: from XCH-RTP-005.cisco.com (xch-rtp-005.cisco.com [64.101.220.145])
	by rcdn-core-4.cisco.com (8.14.5/8.14.5) with ESMTP id u95IIbIF024553
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 5 Oct 2016 18:18:37 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-005.cisco.com
	(64.101.220.145) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 5 Oct 2016 14:18:36 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 5 Oct 2016 14:18:36 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
Thread-Topic: [yocto] Question: xxxx listed in PACKAGES multiple times, this
	leads to packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSr6CY76UA//+R1QCAAHifgIAAJRiAgACR/ICAACS/AIAAe/YA//+o+IA=
Date: Wed, 5 Oct 2016 18:18:36 +0000
Message-ID: <16724416-E2A7-4179-B927-1ABCEC8C4C41@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<894BCA8B-9CE0-4B9E-9538-ED1B710627E8@cisco.com>
	<20161005163020.GC2084@csclub.uwaterloo.ca>
In-Reply-To: <20161005163020.GC2084@csclub.uwaterloo.ca>
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
X-List-Received-Date: Wed, 05 Oct 2016 18:19:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1D5034AAA4DBDF44B8D054ECF95DB6FA@emea.cisco.com>
Content-Transfer-Encoding: base64

Pj4gQXJlIHRoZSBmaWxlcyBwcmVzZW50IGluIHRoZSBpbWFnZS9wYWNrYWdlcz8gIE1heWJlIGl0
IGlzIGp1c3QgdGhlDQo+PiBiaXRiYWtlIGNhY2hlIHNraXBwaW5nIGRvaW5nIHdvcmsgaXQgYWxy
ZWFkeSBkaWQgbGFzdCB0aW1lLg0KDQpJZiBJIGRvbuKAmXQgZG8gdGhlIGJpdGJha2UgY2xlYW4s
IGFuZCBqdXN0IGRvIGJpdGJha2UgYWdhaW4sIHRoZW4geWVzLiANCg0KDQpCdXQgaWYgSSBkbyDi
gJxiaXRiYWtlIC1jIGNsZWFuIGMtbWxpYuKAnSBhbmQgYml0YmFrZSBhZ2FpbiwgdGhlIGlzIHdo
ZXJlIHRoZSBwcm9ibGVtLg0KDQpUaGFua3MsDQogIOKAlERpbmggDQoNCg0KDQoNCk9uIDEwLzUv
MTYsIDk6MzAgQU0sICJMZW5uYXJ0IFNvcmVuc2VuIiA8bHNvcmVuc2VAY3NjbHViLnV3YXRlcmxv
by5jYT4gd3JvdGU6DQoNCj5PbiBXZWQsIE9jdCAwNSwgMjAxNiBhdCAwNDowNjoyNVBNICswMDAw
LCBEaW5oIE5ndXllbiAoZGluaG4pIHdyb3RlOg0KPj4gTWFueSB0aGFua3MgUGF1bC4gWW91ciBo
ZWxwIGlzIGdyZWF0bHkgYXBwcmVjaWF0ZWQuDQo+PiANCj4+IDEuID4+PiBMaWtlIHRoZSBvdGhl
ciByZXNwb25kZXIgSSB3b3VsZCBzdWdnZXN0IHlvdSBub3Qgc2V0IFBBQ0tBR0VTDQo+PiANCj4+
IFllcywgSSBkaWQgbm90IHNldCB0aGUgUEFDS0FHRVMsIHNvIC1kZXYsIC1kYmcgYW5kIG1haW4g
cGFja2FnZXMgd2VyZSBidWlsdCBhcyBzaG93biBiZWxvdzoNCj4+IA0KPj4gZGluaG5AcnMtYmxk
c3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAkIGZp
bmQgdG1wL2RlcGxveSB8IGdyZXAgYy1tbGlidG1wL2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGli
LWRiZ18xLjEtcjBfY29yZTItNjQuaXBrDQo+PiB0bXAvZGVwbG95L2lway9jb3JlMi02NC9jLW1s
aWItZGV2XzEuMS1yMF9jb3JlMi02NC5pcGsNCj4+IHRtcC9kZXBsb3kvaXBrL2NvcmUyLTY0L2Mt
bWxpYl8xLjEtcjBfY29yZTItNjQuaXBrDQo+PiB0bXAvZGVwbG95L2xpY2Vuc2VzL2MtbWxpYg0K
Pj4gDQo+PiAyLiA+Pj4gRklMRVNfJHtQTn0tZGV2ID0gIiR7aW5jbHVkZWRpcn3igJ0NCj4+IA0K
Pj4gSSBhZGRlZCB0aGF0IHRvIC5iYiBhcyB5b3Ugc3VnZ2VzdGVkIHNvIC5zbyBmaWxlIGRvZXNu
J3QgZW5kIHVwIGluIHRoZSAke1BOfS1kZXYNCj4+IFBhY2thZ2Ug4oCUIE5vIGxvbmdlciBzZWUg
dGhlIGVycm9yIG1lbnRpb25lZCBpbiBwcmV2aW91cyBtYWlsLiBUaHgNCj4+IA0KPj4gMy4gPj4+
IFRoaXMgaXMgd2hhdCBJIHN1c3BlY3RlZCB3b3VsZCBoYXBwZW4gLSB0aGVzZSBmaWxlcyB3b3Vs
ZCBub3JtYWxseSBiZSBwYXJ0IG9mDQo+PiB0aGUgJHtQTn0tZGJnIHBhY2thZ2UsIGJ1dCBzaW5j
ZSB5b3UndmUgcmVtb3ZlZCB0aGF0IGZyb20gUEFDS0FHRVMsIHRoZXkgYXJlIA0KPj4gZW5kaW5n
IHVwIHVucGFja2FnZWQgYW5kIHRoYXQgaXMgbm90IGFsbG93ZWQuDQo+PiANCj4+IERpZCB5b3Ug
bWVhbiB0aGUgImluc3RhbGwgLW0gMDY0NCB4eHggeXl54oCdIHRvIHJlbW92ZSB0aG9zZSBmaWxl
cyBmcm9tIHRoZSBQQUNLQUdFUz8gSG93IGRvIEkgY29weSAuc28gYW5kIGJpbmFyaWVzIGZyb20g
bXkgdGFyZ2V0IHRvIHRoZSBsaWJkaXIgb3IgYmluZGlyPw0KPj4gDQo+PiBBZnRlciBjaGFuZ2lu
ZyB0aGUgLmJiIHRvIHJlbW92ZSB0aGUgUEFDS0FHRVMgc2V0dGluZyBhbmQgRklMRVNfJHtQTn0t
ZGV2ID0gIiR7aW5jbHVkZWRpcn3igJ0NCj4+IEZvciB0aGUgdmVyeSBmaXJzdCB0aW1lLCBwYWNr
YWdlcyB3ZXJlIGJ1aWx0IGZpbmQsIGltYWdlIHdlcmUgY3JlYXRlZCB1bmRlciBpbWFnZSBkaXJl
Y3RvcnkgYW5kIGMtbWxpYiBzb3VyY2UgaXMgc3RpbGwgaW4gdGhlIHlwIHdvcmtzcGFjZSBhcyBz
aG93biBiZWxvdzoNCj4+IA0KPj4gQS5QYWNrYWdlcyB3ZXJlIGJ1aWx0DQo+PiBkaW5obkBycy1i
bGRzcnY6L21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cCQg
ZmluZCB0bXAvZGVwbG95IHwgZ3JlcCBjLW1saWINCj4+IHRtcC9kZXBsb3kvaXBrL2NvcmUyLTY0
L2MtbWxpYi1kYmdfMS4xLXIwX2NvcmUyLTY0Lmlwaw0KPj4gdG1wL2RlcGxveS9pcGsvY29yZTIt
NjQvYy1tbGliLWRldl8xLjEtcjBfY29yZTItNjQuaXBrDQo+PiB0bXAvZGVwbG95L2lway9jb3Jl
Mi02NC9jLW1saWJfMS4xLXIwX2NvcmUyLTY0Lmlwaw0KPj4gdG1wL2RlcGxveS9saWNlbnNlcy9j
LW1saWINCj4+IA0KPj4gQi4gU291cmNlIGZpbGVzIGFuZCB0aGUgYy1tbGliIGdpdCBkaXJlY3Rv
cnkgc3RpbGwgaGF2ZSBhbGwgdGhlIHNvdXJjZXMgKGUuZyBqdXN0IGdyZXAgdGhlIG1saWJfYXBp
LmMpIA0KPj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERl
dkxhdGVzdC9pb3hzZGsveXAkIGZpbmQgLiAtbmFtZSAibWxpYl9hcGkuYyINCj4+IC4vdG1wL3dv
cmsvY29yZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIwL2dpdC9zcmMvbWxpYl9hcGkuYw0K
Pj4gLi90bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvcGFja2FnZXMt
c3BsaXQvYy1tbGliLWRiZy91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAvZ2l0L3NyYy9tbGli
X2FwaS5jDQo+PiAuL3RtcC93b3JrL2NvcmUyLTY0LXBva3ktbGludXgvYy1tbGliLzEuMS1yMC9w
YWNrYWdlL3Vzci9zcmMvZGVidWcvYy1tbGliLzEuMS1yMC9naXQvc3JjL21saWJfYXBpLmMNCj4+
IGRpbmhuQHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXZMYXRlc3Qv
aW94c2RrL3lwJCANCj4+IA0KPj4gQy4gSW1hZ2Ugd2FzIGJ1aWx0IGFzIHdlbGwgaW5jbHVkaW5n
IGJpbmFyaWVzIGFuZCBsaWJtbGliLnNvDQo+PiBkaW5obkBycy1ibGRzcnY6L21lZGlhL3JhZ2h1
cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cC90bXAvd29yay9jb3JlMi02NC1w
b2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvaW1hZ2UvdXNyL2JpbiQgbHMgLWx0cg0KPj4gdG90YWwg
MTQyNA0KPj4gLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE3MTcwMSBPY3QgIDUgMDE6MTcgZGF0
YW1vZGVsX2NhY2hlDQo+PiAtcnctci0tci0tIDEgZGluaG4gZGluaG4gMTg3NDM0IE9jdCAgNSAw
MToxNyBpbnZva2UNCj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxODQ5NjEgT2N0ICA1IDAx
OjE3IGludm9rZV9iDQo+PiAtcnctci0tci0tIDEgZGluaG4gZGluaG4gMTcxNzAxIE9jdCAgNSAw
MToxNyBwcm90b2NvbF9pbmZyYQ0KPj4gLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE5MTM2MiBP
Y3QgIDUgMDE6MTcgcHVibGlzaGVyDQo+PiAtcnctci0tci0tIDEgZGluaG4gZGluaG4gMTg3MDg0
IE9jdCAgNSAwMToxNyBycGMtcmVnaXN0ZXINCj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAx
Nzk2NDggT2N0ICA1IDAxOjE3IHNlcnZpY2UNCj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAx
NzQ1MTggT2N0ICA1IDAxOjE3IHN1YnNjcmliZXINCj4+IA0KPj4gZGluaG5AcnMtYmxkc3J2Oi9t
ZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAvdG1wL3dvcmsv
Y29yZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIwL2ltYWdlL3Vzci9iaW4kIGNkIC4uL2xp
Yg0KPj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxh
dGVzdC9pb3hzZGsveXAvdG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIw
L2ltYWdlL3Vzci9saWIkIGxzIC1sdHINCj4+IHRvdGFsIDg1Ng0KPj4gLXJ3LXItLXItLSAzIGRp
bmhuIGRpbmhuIDg3MjY1NyBPY3QgIDUgMDE6MTcgbGlibWxpYi5zbw0KPj4gDQo+PiBTbyBpdCBp
cyBhbGwgZ29vZCBmb3IgdGhlIGZpcnN0IHRpbWUsIGJ1dCB0aGVyZWFmdGVyIHRoYXQsIGlmIEkg
ZG8gY2xlYW4g4oCcYml0YmFrZSAtYyBjbGVhbiBjLW1saWLigJ0gYW5kIOKAnGJpdGJha2UgYy1t
bGli4oCdIGFnYWluLg0KPj4gQWxsIHBhY2thZ2VzIHdlcmUgYnVpbGQgc3VjY2Vzc2Z1bCwgYnV0
IGFsbCBkYXRhIHVuZGVyIGMtbWxpYiBnb3Qgd2FzIGdvbmUuIE5vdGhpbmcgdGhlcmUgaW5jbHVk
aW5nIC5jL2ggZmlsZXMsIGltYWdlIGRpcmVjdG9yeSBldGMuLi4NCj4+IA0KPj4gZGluaG5AcnMt
Ymxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAv
dG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIwL2dpdCQgbHMgLWx0cg0K
Pj4gdG90YWwgMA0KPj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2Rpbmhu
L2lveERldkxhdGVzdC9pb3hzZGsveXAvdG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC9jLW1s
aWIvMS4xLXIwL2dpdCQgDQo+PiANCj4+IFBsZWFzZSBnaXZlIG1lIGFuIGlkZWEgd2h5IGhvdyB0
byBzb2x2ZSB0aGlzPyBTb3JyeSBmb3IgYSBsb25nIGVtYWlsIDstKSkNCj4NCj5BcmUgdGhlIGZp
bGVzIHByZXNlbnQgaW4gdGhlIGltYWdlL3BhY2thZ2VzPyAgTWF5YmUgaXQgaXMganVzdCB0aGUN
Cj5iaXRiYWtlIGNhY2hlIHNraXBwaW5nIGRvaW5nIHdvcmsgaXQgYWxyZWFkeSBkaWQgbGFzdCB0
aW1lLg0KPg0KPi0tIA0KPkxlbiBTb3JlbnNlbg0K

