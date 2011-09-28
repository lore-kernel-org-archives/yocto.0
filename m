Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE005.bigfish.com (am1ehsobe005.messaging.microsoft.com
	[213.199.154.208])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F602E011BA
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 19:14:01 -0700 (PDT)
Received: from mail99-am1-R.bigfish.com (10.3.201.249) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.22; Wed, 28 Sep 2011 02:14:00 +0000
Received: from mail99-am1 (localhost.localdomain [127.0.0.1])	by
	mail99-am1-R.bigfish.com (Postfix) with ESMTP id DED4CBB832F;
	Wed, 28 Sep 2011 02:13:59 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zz9371K98dKzz1202hzz6d524hz2dh2a8h668h839h8e2h8e3h941h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail99-am1 (localhost.localdomain [127.0.0.1]) by mail99-am1
	(MessageSwitch) id 1317175985977724_19347;
	Wed, 28 Sep 2011 02:13:05 +0000 (UTC)
Received: from AM1EHSMHS015.bigfish.com (unknown [10.3.201.254])	by
	mail99-am1.bigfish.com (Postfix) with ESMTP id 0AFB6340111;
	Wed, 28 Sep 2011 02:12:14 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS015.bigfish.com
	(10.3.207.153) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 28 Sep 2011 02:12:12 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0323.007; Tue, 27 Sep 2011 21:12:04 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "niqingliang@insigma.com.cn" <niqingliang@insigma.com.cn>
Thread-Topic: [yocto] ntpclient compile fail
Thread-Index: AQHMfSyOz1y/ebOfgEm8SXMs3mRNEZViTYMAgAAN3YCAAAP7AIAAAgYA
Date: Wed, 28 Sep 2011 02:12:03 +0000
Message-ID: <CAEsOVNey3Ncnzw+wyJcvhPWO89Vbs0PrVB+pTwsJLht3xS-3og@mail.gmail.com>
References: <1317093523.6536.58.camel@localhost.localdomain>
	<CAEsOVNc84ON5Oxri1=eAHG74NGT9B14QYUDs8JXa9KhrG0XaSw@mail.gmail.com>
	<1317171633.6536.86.camel@localhost.localdomain>
	<CAEsOVNdthcyBsS--65CirCnoMZ7wBamUKpebvhfVE+pDmkOSoQ@mail.gmail.com>
	<1317175465.6536.98.camel@localhost.localdomain>
In-Reply-To: <1317175465.6536.98.camel@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ntpclient compile fail
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Sep 2011 02:14:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-ID: <5AAD25A17619FC4CA6231CD481EC82DF@freescale.net>
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgMjcsIDIwMTEgYXQgOTowNCBQTSwgTmkgUWluZ2xpYW5nDQo8bmlxaW5nbGlh
bmdAaW5zaWdtYS5jb20uY24+IHdyb3RlOg0KPiAxLiBzb3JyeSwgSSB3aWxsLg0KPiAyLiBZZXMs
IEkgbWFkZSBhIG5ldyBNYWtlZmlsZSAoYmFzZWQgb24gdGhlIG9yaWdpbmFsKSBhcyB0aGUgcGF0
Y2ggb2YNCj4gbnRwY2xpZW50ICh3aGljaCB3aWxsIG92ZXJyaWRlIHRoZSBvcmlnaW5hbCBNYWtl
ZmlsZSkuDQoNClRoZXJlIGFyZSBsb3RzIG9mIHdheXMgdG8gZG8gdGhpcyBhbmQgYXZvaWQgbWFr
aW5nIGEgcGF0Y2guIFlvdSBjYW4NCnVzZSBFWFRSQV9PRUNPTkYsIEVYVFJBX09FTUFLRSwgRVhU
UkFfQ0ZMQUdTLCBldGMgaW4gdGhlIHJlY2lwZSBpdHNlbGYNCnRvIGZpeCB1cCB0aGUgYnVpbGQg
cHJvY2Vzcy4gWW91IGNhbiBldmVuIGdvIGFuZCBtb2RpZnkgdGhlIHZhcmlhYmxlcw0KaW4gdGhl
IGRvX2NvbmZpZ3VyZSwgZG9fY29tcGlsZSwgZXRjIGJ1aWxkIHN0ZXBzIGFzIHdlbGwuDQoNCi1N


