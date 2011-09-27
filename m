Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe004.messaging.microsoft.com [216.32.181.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E8DBE004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 08:06:13 -0700 (PDT)
Received: from mail212-ch1-R.bigfish.com (216.32.181.174) by
	CH1EHSOBE015.bigfish.com (10.43.70.65) with Microsoft SMTP Server id
	14.1.225.22; Tue, 27 Sep 2011 15:06:11 +0000
Received: from mail212-ch1 (localhost.localdomain [127.0.0.1])	by
	mail212-ch1-R.bigfish.com (Postfix) with ESMTP id 68BEA164814F;
	Tue, 27 Sep 2011 15:06:11 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz6d524h8275dhz2dh2a8h668h839h8e2h8e3h941h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail212-ch1 (localhost.localdomain [127.0.0.1]) by mail212-ch1
	(MessageSwitch) id 1317135969298882_16229;
	Tue, 27 Sep 2011 15:06:09 +0000 (UTC)
Received: from CH1EHSMHS033.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.246])	by mail212-ch1.bigfish.com (Postfix) with ESMTP id
	44EE114D004C;	Tue, 27 Sep 2011 15:06:09 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS033.bigfish.com
	(10.43.70.33) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Tue, 27 Sep 2011 15:06:07 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0323.007; Tue, 27 Sep 2011 10:06:07 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "niqingliang@insigma.com.cn" <niqingliang@insigma.com.cn>
Thread-Topic: [yocto] rootfs-ramdisk error
Thread-Index: AQHMe+2D0CYGrsB4u0aXDm6bkK5l95VfN9wAgAAUN4CAACNGAIAAuEKAgABpswCAADA+AIAA6EWA
Date: Tue, 27 Sep 2011 15:06:05 +0000
Message-ID: <CAEsOVNez4=wquKA_5W8FCv=JakZYK-nwpkrbC_-WxBsaurApJw@mail.gmail.com>
References: <1316656573.17177.66.camel@localhost.localdomain>
	<CAEsOVNc2uOTzhxqbh4VzopYVC0-iUPBccXfNb3ey5wKZFA_VZQ@mail.gmail.com>
	<1316668170.17177.72.camel@localhost.localdomain>
	<1316740588.17177.76.camel@localhost.localdomain>
	<CAEsOVNeZK0+-KKovDG46TPnUj8GQPpRuJ+5PDzspWXbPv5KN2w@mail.gmail.com>
	<1316749868.17177.86.camel@localhost.localdomain>
	<1316750116.17177.89.camel@localhost.localdomain>
	<1316767728.6536.0.camel@localhost.localdomain>
	<CAEsOVNf5VNoxAGwwZG7yQzmNe6KY5=YZAm-dWy6QQaH3s6Qb4Q@mail.gmail.com>
	<1317001285.6536.21.camel@localhost.localdomain>
	<1317001520.6536.24.camel@localhost.localdomain>
	<1317005861.6536.35.camel@localhost.localdomain>
	<1317013437.6536.37.camel@localhost.localdomain>
	<CAEsOVNeTEH3zXjhF_UjQg3PdNKXNpjJ+hujLN=uML707EHeUdQ@mail.gmail.com>
	<CAEsOVNcz6xXAJkx7YJ0DcEr2LCxQASk6TB0bsaxxVciKvqvunw@mail.gmail.com>
	<1317086064.6536.45.camel@localhost.localdomain>
In-Reply-To: <1317086064.6536.45.camel@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rootfs-ramdisk error
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
X-List-Received-Date: Tue, 27 Sep 2011 15:06:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-ID: <60371F91E6E3894E820C3402D96C0300@freescale.net>
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMjYsIDIwMTEgYXQgODoxNCBQTSwgTmkgUWluZ2xpYW5nDQo8bmlxaW5nbGlh
bmdAaW5zaWdtYS5jb20uY24+IHdyb3RlOg0KPiBtYXliZSBub3Qgb25seSBzaW1pbGFyLCBidXQg
c2FtZTopDQo+DQo+IGN1cmlvdXMsIHRoZSBpc3N1ZSBkaXNhcHBlYXJlZCwgd2hhdCBJIGNhbiBy
ZW1lYmVyIGlzIHJlY29uZmlndXJlZCB0aGUNCj4gYnVzeWJveC4NCj4gbWF5YmUgYW5vdGhlciB0
aGluZyBpcyByZWJ1aWxkZWQgYWxsLg0KPg0KPiBiZWZvcmUgdGhhdCwgSSBoYXZlIGFkZGVkIGRl
YnVnIGNvZGUgaW4gdWRoY3BjJ3Mgc2NyaXB0LCBhbmQgZm91bmQgdGhhdDoNCj4gbWtkaXIgL2V0
Yy9BQUFBQSAgd2lsbCBmYWlsDQo+IGJ1dA0KPiBjZCAvZXRjDQo+IG1rZGlyIC4vQUFBQUEgd2ls
bCBzdWNjZXNzLg0KPiBtYXliZSB0aGF0IGlzIGEgY2x1ZSwgYnV0IEkgY2FuJ3QgcmVwcm9kdWNl
IHRoZSBwcm9ibGVtLjooDQo+DQo+IHRoZSBJTUFHRV9ST09URlNfU0laRSBpcyAxNk0sIG9ubHkg
dXNlZCBhYm91dCAxMU0uDQo+IEkgaGF2ZSBsb29rZWQgdGhlIHNvdXJjZSBjb2RlIG9mIHRoZSBw
b2t5LCBpdCB3aWxsIHVzZSB0aGUgYmlnZ2VyIG9uZSBpbg0KPiAoUk9PVEZTX1NJWkUgYW5kIDEu
MyAqIHJlYWxfc2l6ZSkgYnkgZGVmYXVsdC4NCg0KQ2FuIHlvdSBhZGQgYSBidWcgdG8gYnVnemls
bGEueW9jdG9wcm9qZWN0Lm9yZyB0byB0cmFjayB0aGlzIHNvIHdlIGNhbg0KdHJ5IHRvIGZpeCB0
aGlzIGZvciB0aGUgMS4xIHJlbGVhc2U/DQoNCi1N


