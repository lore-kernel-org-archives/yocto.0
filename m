Return-Path: <john.mcgehee@mediatek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE89AE00DE6; Mon, 11 Nov 2019 15:54:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,UNPARSEABLE_RELAY autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Nov 2019 15:54:19 PST
Received: from mailgw02.mediatek.com (mailgw02.mediatek.com [216.200.240.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A153E009D4
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2019 15:54:19 -0800 (PST)
X-UUID: 9366d786ee62468995e10100ff279868-20191111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
	s=dk; 
	h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From;
	bh=aB5T25lftVkXh5PM9yBoPi9uimnGtNo+n1+slApmjfA=; 
	b=uSUDRg3GrLO2mWmUSKdFTf/M+AzAgHBpkEOJrQ20gRvfOmCeCtUU8nusXgc2vARSp8NW5RyuHwodTGwLfzC2Yvqygg7e+Gc13AQ5kwlXcLrFVMlv+A2trgvAcuuSH1cNMZnhDnBck5HD6PiUg+AOXmuxTAwZ8gx60WkSC/uPh2c=;
X-UUID: 9366d786ee62468995e10100ff279868-20191111
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
	(envelope-from <john.mcgehee@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLS)
	with ESMTP id 1470229249; Mon, 11 Nov 2019 15:52:50 -0800
Received: from MTKMBS62N1.mediatek.inc (172.29.193.41) by
	MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server
	(TLS) id 15.0.1395.4; Mon, 11 Nov 2019 15:53:04 -0800
Received: from MTKMBS62N1.mediatek.inc ([fe80::697c:586d:7cff:34e7]) by
	MTKMBS62N1.mediatek.inc ([fe80::697c:586d:7cff:34e7%12]) with mapi id
	15.00.1395.000; Mon, 11 Nov 2019 15:52:58 -0800
From: John McGehee <John.McGehee@mediatek.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Public cloud provider for Yocto builds
Thread-Index: AQHVmOrUo7Sq89tg4kKNL/vz7lFkWA==
Date: Mon, 11 Nov 2019 23:52:58 +0000
Message-ID: <1573516378223.29405@mediatek.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.29.193.239]
MIME-Version: 1.0
Subject: Public cloud provider for Yocto builds
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
X-List-Received-Date: Mon, 11 Nov 2019 23:54:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_157351637822329405mediatekcom_"

--_000_157351637822329405mediatekcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: base64

P0kgYW0gbG9va2luZyBhdCBidWlsZGluZyBvbiBhIHB1YmxpYyBjbG91ZCBwcm92aWRlciBsaWtl
IEFXUywgR29vZ2xlIG9yIEF6dXJlLiBJcyB0aGVyZSBhbnkgY2xvdWQgcHJvdmlkZXIgdGhhdCBp
cyBiZXR0ZXIgdGhhbiB0aGUgb3RoZXJzIGZvciBZb2N0byBidWlsZCBhbmQgQ0k/DQoNCg0KSXMg
dGhlcmUgYW55dGhpbmcgZWxzZSB0aGF0IEkgc2hvdWxkIHVzZSB0byBnZXQgdGhlIG1vc3Qgb3Vy
IG9mIGNsb3VkLWJhc2VkIGJ1aWxkcz8NCg==

--_000_157351637822329405mediatekcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PWlzby04ODU5LTEiPg0KPHN0eWxlIHR5cGU9InRleHQvY3NzIiBz
dHlsZT0iZGlzcGxheTpub25lIj48IS0tIHAgeyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0
b206IDBweDsgfS0tPjwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBkaXI9Imx0ciIgc3R5bGU9ImZv
bnQtc2l6ZToxMnB0O2NvbG9yOiMwMDAwMDA7YmFja2dyb3VuZC1jb2xvcjojRkZGRkZGO2ZvbnQt
ZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7Ij4NCjxwPiYjODIwMztJ
IGFtIGxvb2tpbmcgYXQgYnVpbGRpbmcgb24gYSBwdWJsaWMgY2xvdWQgcHJvdmlkZXIgbGlrZSBB
V1MsIEdvb2dsZSBvciBBenVyZS4gSXMgdGhlcmUmbmJzcDthbnkgY2xvdWQgcHJvdmlkZXIgdGhh
dCBpcyZuYnNwO2JldHRlciB0aGFuIHRoZSBvdGhlcnMmbmJzcDtmb3IgWW9jdG8gYnVpbGQgYW5k
IENJPzxicj4NCjwvcD4NCjxwPjxicj4NCjwvcD4NCjxwPklzIHRoZXJlIGFueXRoaW5nIGVsc2Ug
dGhhdCBJIHNob3VsZCB1c2UgdG8gZ2V0IHRoZSBtb3N0IG91ciBvZiBjbG91ZC1iYXNlZCBidWls
ZHM/PGJyPg0KPC9wPg0KPC9ib2R5Pg0KPC9odG1sPg0KPCEtLXR5cGU6dGV4dC0tPjwhLS17LS0+
PHByZT4qKioqKioqKioqKiBNRURJQVRFSyBDb25maWRlbnRpYWxpdHkgTm90aWNlICoqKioqKioq
KioqDQpUaGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGluIHRoaXMgZS1tYWlsIG1lc3NhZ2UgKGlu
Y2x1ZGluZyBhbnkgDQphdHRhY2htZW50cykgbWF5IGJlIGNvbmZpZGVudGlhbCwgcHJvcHJpZXRh
cnksIHByaXZpbGVnZWQsIG9yIA0Kb3RoZXJ3aXNlIGV4ZW1wdCBmcm9tIGRpc2Nsb3N1cmUgdW5k
ZXIgYXBwbGljYWJsZSBsYXdzLiBJdCBpcyANCmludGVuZGVkIHRvIGJlIGNvbnZleWVkIG9ubHkg
dG8gdGhlIGRlc2lnbmF0ZWQgcmVjaXBpZW50KHMpLiBBbnkgDQp1c2UsIGRpc3NlbWluYXRpb24s
IGRpc3RyaWJ1dGlvbiwgcHJpbnRpbmcsIHJldGFpbmluZyBvciBjb3B5aW5nIA0Kb2YgdGhpcyBl
LW1haWwgKGluY2x1ZGluZyBpdHMgYXR0YWNobWVudHMpIGJ5IHVuaW50ZW5kZWQgcmVjaXBpZW50
KHMpIA0KaXMgc3RyaWN0bHkgcHJvaGliaXRlZCBhbmQgbWF5IGJlIHVubGF3ZnVsLiBJZiB5b3Ug
YXJlIG5vdCBhbiANCmludGVuZGVkIHJlY2lwaWVudCBvZiB0aGlzIGUtbWFpbCwgb3IgYmVsaWV2
ZSB0aGF0IHlvdSBoYXZlIHJlY2VpdmVkIA0KdGhpcyBlLW1haWwgaW4gZXJyb3IsIHBsZWFzZSBu
b3RpZnkgdGhlIHNlbmRlciBpbW1lZGlhdGVseSANCihieSByZXBseWluZyB0byB0aGlzIGUtbWFp
bCksIGRlbGV0ZSBhbnkgYW5kIGFsbCBjb3BpZXMgb2YgdGhpcyANCmUtbWFpbCAoaW5jbHVkaW5n
IGFueSBhdHRhY2htZW50cykgZnJvbSB5b3VyIHN5c3RlbSwgYW5kIGRvIG5vdCANCmRpc2Nsb3Nl
IHRoZSBjb250ZW50IG9mIHRoaXMgZS1tYWlsIHRvIGFueSBvdGhlciBwZXJzb24uIFRoYW5rIHlv
dSENCjwvcHJlPjwhLS19LS0+

--_000_157351637822329405mediatekcom_--
