Return-Path: <Neil.Wu@emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C170CE0090E; Thu, 22 Jan 2015 22:30:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from esa6.emerson-outbound.iphmx.com
	(esa6.emerson-outbound.iphmx.com [68.232.143.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAD8EE00860
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 22:30:13 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.09,453,1418061600"; 
   d="scan'208";a="1007180"
Received: from usstlz-pinfez07.extemr.org ([144.191.128.191])
	by esa6.emerson-outbound.iphmx.com with ESMTP/TLS/AES128-SHA;
	23 Jan 2015 12:30:13 +0600
Received: from USSTLZ-PMSG008.emrsn.org (10.16.72.190) by
	USSTLZ-PINFEZ07.extemr.org (10.16.8.80) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Fri, 23 Jan 2015 06:30:11 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.242]) by
	USSTLZ-PMSG008.emrsn.org ([169.254.3.148]) with mapi id 14.03.0158.001;
	Fri, 23 Jan 2015 06:30:10 +0000
From: <Neil.Wu@Emerson.com>
To: <nicolas.dechesne@linaro.org>
Thread-Topic: [yocto] The problem of do_rootfs_append
Thread-Index: AQHQNh8rLtpgDFGoakS5siQ3kZEkKpzNP0sA
Date: Fri, 23 Jan 2015 06:30:10 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8522763E3D1@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
	<CAMKF1spkVua7kS-Ac9Mk4iU56sHj8Jf66x_=QFsMZtkjnX9EuQ@mail.gmail.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763E282@USSTLZ-PMSG012.emrsn.org>
	<CAP71Wjw4VgvQH0rZt6q7BmG_Gs5MFO8+KeB87=VeTCt3E2xvGw@mail.gmail.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763E2A4@USSTLZ-PMSG012.emrsn.org>
	<CAP71WjwcAye27jhr8KiE43PHf0_ZT5jbCBTdwJ3MhiFJikuv0w@mail.gmail.com>
In-Reply-To: <CAP71WjwcAye27jhr8KiE43PHf0_ZT5jbCBTdwJ3MhiFJikuv0w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: The problem of do_rootfs_append
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
X-List-Received-Date: Fri, 23 Jan 2015 06:30:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIG5pY28NClRoYW5rIHlvdSBmb3IgeW91ciBoZWxwLg0KSSBoYXZlIHJlc29sdmVkIHRoZSBw
cm9ibGVtIHVzaW5nIElNQUdFX1BPU1RQUk9DRVNTX0NPTU1BTkQgaW4gY29yZS1pbWFnZS1zcGVj
aWZpYy5iYi4NCg0KTmVpbA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTmlj
b2xhcyBEZWNoZXNuZSBbbWFpbHRvOm5pY29sYXMuZGVjaGVzbmVAbGluYXJvLm9yZ10gDQpTZW50
OiBUaHVyc2RheSwgSmFudWFyeSAyMiwgMjAxNSA0OjQxIFBNDQpUbzogV3UsIE5laWwgW0NMSU1B
VEUvUlMvQ05dDQpDYzogWW9jdG8gbGlzdCBkaXNjdXNzaW9uDQpTdWJqZWN0OiBSZTogW3lvY3Rv
XSBUaGUgcHJvYmxlbSBvZiBkb19yb290ZnNfYXBwZW5kDQoNCk9uIFRodSwgSmFuIDIyLCAyMDE1
IGF0IDk6MzEgQU0sICA8TmVpbC5XdUBlbWVyc29uLmNvbT4gd3JvdGU6DQo+IFRoYW5rIHlvdSBm
b3IgeW91ciByZXBseS4NCj4gQnV0IEkgZm91bmQgdGhhdCB0aGVyZSBhcmUgb3RoZXJzIHVzZSBk
b19yb290ZnNfYXBwZW5kKCkgd2hlbiBzZWFyY2hpbmcgb24gdGhlIEludGVybmV0Lg0KPiBJZiBJ
IHdhbnQgdG8gcmVtb3ZlIHRoZSBkaXJlY3RvcnkgaW4gZG9fcm9vdGZzKCkgdGFzaywgaG93IGNh
biBJIHRvIGRvIGl0ID8NCg0KZG9fcm9vdGZzIHdhcyBhIFNoZWxsIGZ1bmN0aW9uIGluIHRoZSBw
YXN0LCBpdCB3YXMgY2hhbmdlZCB0byBQeXRob24NCmxhc3QgeWVhciBvciBzby4NCg0KaWYgeW91
IHdhbnQgdG8gcG9zdCBwcm9jZXNzIGFuIGltYWdlLCB5b3UgY2FuIHVzZQ0KSU1BR0VfUE9TVFBS
T0NFU1NfQ09NTUFORCB2YXJpYWJsZSBhbmQgYWRkIHlvdXIgb3duIGZ1bmN0aW9ucyB0aGVyZS4N
Cg0KY2hlZXJzDQo=

