Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBDD7E009BB; Thu, 14 May 2015 09:34:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48F2CE00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 09:34:58 -0700 (PDT)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.235.1;
	Thu, 14 May 2015 12:40:21 -0400
Received: from BOS-DAG1.zone1.flir.net ([169.254.2.229]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0235.001;
	Thu, 14 May 2015 12:34:57 -0400
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] recipe removing (some)contents of /etc
Thread-Index: AQHQjlrAUyANpUB7zU+06Sq+0XxEU517n7YAgABJ2oD//74hoA==
Date: Thu, 14 May 2015 16:34:56 +0000
Message-ID: <F14AEF751653024287138321000C846AF4821E78@BOS-DAG1.zone1.flir.net>
References: <641241749.3202512.1431617240967.JavaMail.yahoo@mail.yahoo.com>
	<F14AEF751653024287138321000C846AF4821E43@BOS-DAG1.zone1.flir.net>
	<alpine.LFD.2.11.1505141217350.3849@localhost>
In-Reply-To: <alpine.LFD.2.11.1505141217350.3849@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.100.111]
MIME-Version: 1.0
Subject: Re: recipe removing (some)contents of /etc
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
X-List-Received-Date: Thu, 14 May 2015 16:34:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiA+IENoYW5nZQ0KPiA+IElNQUdFX0lOU1RBTEwgKz0g4oCcY2FubG9nZ2Vy4oCdDQo+ID4gdG8N
Cj4gPiBJTUFHRV9JTlNUQUxMX2FwcGVuZCA9IOKAnCBjYW5sb2dnZXLigJ0NCj4gPiBvciBwb3Nz
aWJseSBiZXR0ZXINCj4gPiBFWFRSQV9JTUFHRV9JTlNUQUxMX2FwcGVuZCA9IOKAnCBjYW5sb2dn
ZXLigJ0NCj4NCj4gICBpZiB5b3UncmUgcHV0dGluZyB0aGlzIGluIGxvY2FsLmNvbmYsIGknbSBw
cmV0dHkgc3VyZSB0aGUgcHJlZmVycmVkIHN5bnRheCBpcyBqdXN0Og0KPiAgIEVYVFJBX0lNQUdF
X0lOU1RBTEwgPSAiY2FubG9nZ2VyIg0KDQpZZXMsIEkgdGhpbmsgcmRheSBpcyBjb3JyZWN0IGFu
ZCB0aGUgaW50ZW5kZWQgcHVycG9zZSBvZiBFWFRSQV9JTUFHRV9JTlNUQUxMIGlzIHRvIGJlIHVz
ZWQgZW50aXJlbHkgZnJvbSBsb2NhbC5jb25mIGFuZCB0aGVyZWJ5IGF2b2lkIHRoZSArPSB2cyA/
PSB2cyBfYXBwZW5kIGlzc3VlcyBJIG1lbnRpb25lZC4gIEF0IGxlYXN0IEVYVFJBX0lNQUdFX0ZF
QVRVUkVTIGlzIGxpc3RlZCB0aGlzIHdheSBpbiB0aGUgWW9jdG8gbWFudWFsLg0KDQpUbyBmb3Jj
ZSBhbiBhbmFsb2d5LCByZGF5IHRvbGQgeW91IHdoYXQgc2lkZSBvZiB0aGUgc3RyZWV0IGlzIHNh
ZmUgdG8gd2FsayBvbiAodXNlIEVYVFJBX0lNQUdFX0ZFQVRVUkVTKSBhbmQgSSBwb2ludGVkIG91
dCB3aGF0IGRvZyBiaXQgeW91IGFuZCBob3cgdG8gcHVsbCBoaXMgdGVldGggKHVzZSBfYXBwZW5k
KS4gIEhvd2V2ZXIsIGRlcGVuZGluZyBvbiB5b3VyIHNpdHVhdGlvbiwgSSBtYXkgbm90IGhhdmUg
Z290dGVuIGFsbCBvZiB0aG9zZSB0ZWV0aCAodGhlcmUgYXJlIG90aGVyIGlzc3VlcyB3aXRoIG1h
Y2hpbmUvb3RoZXIgb3ZlcnJpZGVzIHBvdGVudGlhbGx5IGluZmx1ZW5jaW5nIHZhcmlhYmxlIHZh
bHVlcykuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQoNCk5vdGljZSB0byBy
ZWNpcGllbnQ6IFRoaXMgZW1haWwgaXMgbWVhbnQgZm9yIG9ubHkgdGhlIGludGVuZGVkIHJlY2lw
aWVudCBvZiB0aGUgdHJhbnNtaXNzaW9uLCBhbmQgbWF5IGJlIGEgY29tbXVuaWNhdGlvbiBwcml2
aWxlZ2VkIGJ5IGxhdywgc3ViamVjdCB0byBleHBvcnQgY29udHJvbCByZXN0cmljdGlvbnMgb3Ig
dGhhdCBvdGhlcndpc2UgY29udGFpbnMgcHJvcHJpZXRhcnkgaW5mb3JtYXRpb24uIElmIHlvdSBy
ZWNlaXZlIHRoaXMgZW1haWwgYnkgbWlzdGFrZSwgcGxlYXNlIG5vdGlmeSB1cyBpbW1lZGlhdGVs
eSBieSByZXBseWluZyB0byB0aGlzIG1lc3NhZ2UgYW5kIHRoZW4gZGVzdHJveSBpdCBhbmQgZG8g
bm90IHJldmlldywgZGlzY2xvc2UsIGNvcHkgb3IgZGlzdHJpYnV0ZSBpdC4gVGhhbmsgeW91IGlu
IGFkdmFuY2UgZm9yIHlvdXIgY29vcGVyYXRpb24uDQo=

