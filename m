Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D943E004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 18:50:36 -0700 (PDT)
Received: from mail29-ch1-R.bigfish.com (216.32.181.168) by
	CH1EHSOBE012.bigfish.com (10.43.70.62) with Microsoft SMTP Server id
	14.1.225.22; Wed, 28 Sep 2011 01:50:34 +0000
Received: from mail29-ch1 (localhost.localdomain [127.0.0.1])	by
	mail29-ch1-R.bigfish.com (Postfix) with ESMTP id 81E0C678274;
	Wed, 28 Sep 2011 01:50:34 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz6d524hz2dh2a8h668h839h8e2h8e3h941h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail29-ch1 (localhost.localdomain [127.0.0.1]) by mail29-ch1
	(MessageSwitch) id 1317174634287966_2316;
	Wed, 28 Sep 2011 01:50:34 +0000 (UTC)
Received: from CH1EHSMHS018.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.244])	by mail29-ch1.bigfish.com (Postfix) with ESMTP id
	367345E004F;	Wed, 28 Sep 2011 01:50:34 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS018.bigfish.com
	(10.43.70.18) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 28 Sep 2011 01:50:33 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0323.007; Tue, 27 Sep 2011 20:50:33 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "niqingliang@insigma.com.cn" <niqingliang@insigma.com.cn>
Thread-Topic: [yocto] ntpclient compile fail
Thread-Index: AQHMfSyOz1y/ebOfgEm8SXMs3mRNEZViTYMAgAAN3YA=
Date: Wed, 28 Sep 2011 01:50:33 +0000
Message-ID: <CAEsOVNdthcyBsS--65CirCnoMZ7wBamUKpebvhfVE+pDmkOSoQ@mail.gmail.com>
References: <1317093523.6536.58.camel@localhost.localdomain>
	<CAEsOVNc84ON5Oxri1=eAHG74NGT9B14QYUDs8JXa9KhrG0XaSw@mail.gmail.com>
	<1317171633.6536.86.camel@localhost.localdomain>
In-Reply-To: <1317171633.6536.86.camel@localhost.localdomain>
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
X-List-Received-Date: Wed, 28 Sep 2011 01:50:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-ID: <8164C136A5E9984C96A6DECC3934F0C8@freescale.net>
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgMjcsIDIwMTEgYXQgODowMCBQTSwgTmkgUWluZ2xpYW5nDQo8bmlxaW5nbGlh
bmdAaW5zaWdtYS5jb20uY24+IHdyb3RlOg0KPiB0aGUgYXR0YWNoZW1lbnQgaXMgdGhlIGJiIGZp
bGUgYW5kIE1ha2VmaWxlKG1vZGlmaWVkKSwNCg0KSXQgdXN1YWxseSBiZXN0IHRvIGluY2x1ZGUg
dGhlc2UgYXR0YWNobWVudHMgaW5saW5lIHdoZW4gcG9zc2libGUuDQoNCj4gYWZ0ZXIgJ292ZXJy
aWRlJyBDRkxBR1MvTERGTEFHUyBpbiBNYWtlZmlsZSwgSSBoYXZlIGFkZGVkDQo+IG92ZXJyaWRl
IExERkxBR1MgKz0gLVdsLC0tbm8tYXMtbmVlZGVkDQo+IGluIHRoZSBNYWtlZmlsZSB0byBuZXV0
cmFsaXplIHRoZSAnLVdsLC0tYXMtbmVlZGVkJyBpbiB0aGUgb3JpZ2luYWwNCj4gTERGTEFHUy4N
Cj4NCj4gYW5kIHRoZW4gdGhlIHdvcmxkIGNsZWFyLg0KDQpBcmUgeW91IGVkaXRpbmcgdGhlIHNv
dXJjZSBmaWxlcyBpbiB0aGlzIHBhY2thZ2Ugb3IgdGhlIHJlY2lwZSBpdHNlbGY/DQoNCi1N


