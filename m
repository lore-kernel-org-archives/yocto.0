Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE005.bigfish.com (tx2ehsobe003.messaging.microsoft.com
	[65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F41FE004E9
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 15:22:10 -0700 (PDT)
Received: from mail129-tx2-R.bigfish.com (10.9.14.240) by
	TX2EHSOBE005.bigfish.com (10.9.40.25) with Microsoft SMTP Server id
	14.1.225.22; Mon, 26 Sep 2011 22:22:09 +0000
Received: from mail129-tx2 (localhost.localdomain [127.0.0.1])	by
	mail129-tx2-R.bigfish.com (Postfix) with ESMTP id B213817082C0;
	Mon, 26 Sep 2011 22:22:08 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zz1432Nzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h941h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail129-tx2 (localhost.localdomain [127.0.0.1]) by mail129-tx2
	(MessageSwitch) id 1317075728447510_30493;
	Mon, 26 Sep 2011 22:22:08 +0000 (UTC)
Received: from TX2EHSMHS027.bigfish.com (unknown [10.9.14.241])	by
	mail129-tx2.bigfish.com (Postfix) with ESMTP id 5E7FF17E8011;
	Mon, 26 Sep 2011 22:22:08 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS027.bigfish.com
	(10.9.99.127) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Mon, 26 Sep 2011 22:22:08 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0323.007; Mon, 26 Sep 2011 17:22:08 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "niqingliang@insigma.com.cn" <niqingliang@insigma.com.cn>
Thread-Topic: [yocto] rootfs-ramdisk error
Thread-Index: AQHMe+2D0CYGrsB4u0aXDm6bkK5l95VfN9wAgAAUN4CAACNGAIAAuEKAgABpswA=
Date: Mon, 26 Sep 2011 22:22:07 +0000
Message-ID: <CAEsOVNcz6xXAJkx7YJ0DcEr2LCxQASk6TB0bsaxxVciKvqvunw@mail.gmail.com>
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
In-Reply-To: <CAEsOVNeTEH3zXjhF_UjQg3PdNKXNpjJ+hujLN=uML707EHeUdQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 26 Sep 2011 22:22:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-ID: <00DB6B4EDB26BA4BB526BCF646888D91@freescale.net>
Content-Transfer-Encoding: base64

MjAxMS85LzI2IE1hdHRoZXcgTWNDbGludG9jayA8bXNtQGZyZWVzY2FsZS5jb20+Og0KPiBIYXZl
IHlvdSBjaGVja2VkIHlvdXIgcm9vdGZzIGl0c2VsZiB0byBzZWUgaG93IG11Y2ggZnJlZSBzcGFj
ZSBpcw0KPiBsZWZ0PyBZb3UgY291bGQgbW91bnQgaXQgaW4gbG9vcGJhY2sgb24geW91ciBidWls
ZCBtYWNoaW5lIHRvIGNoZWNrLg0KPg0KPiBUaGVyZSBhcmUgc29tZSB2YXJzIHdpdGhpbiBwb2t5
IHRoYXQgZGV0ZXJtaW5lIHRoZSByb290ZnMgc2l6ZSwgZ3JlcA0KPiBmb3IgSU1BR0VfUk9PVEZT
X1NJWkUuDQoNCkknbSBhY3R1YWxseSBzZWVpbmcgYSBzaW1pbGlhciBpc3N1ZSBhdCB0aGUgbW9t
ZW50Og0KDQpTdGFydGluZyBCb290bG9nIGRhZW1vbjogYm9vdGxvZ2Q6IGNhbm5vdCBhbGxvY2F0
ZSBwc2V1ZG8gdHR5OiBObyBzdWNoDQpmaWxlIG9yIGRpcmVjdG9yeQ0KYm9vdGxvZ2QuDQp0YXI6
IGNhbid0IG9wZW4gJy9ldGMvZGV2LnRhcic6IE5vIHNwYWNlIGxlZnQgb24gZGV2aWNlDQovZXRj
L3JjUy5kL1MzN3BvcHVsYXRlLXZvbGF0aWxlLnNoOiBsaW5lIDQwOiAvZXRjL3ZvbGF0aWxlLmNh
Y2hlOiBObw0Kc3BhY2UgbGVmdCBvbiBkZXZpY2UNCi9ldGMvcmNTLmQvUzM3cG9wdWxhdGUtdm9s
YXRpbGUuc2g6IGxpbmUgNDA6IC9ldGMvdm9sYXRpbGUuY2FjaGU6IE5vDQpzcGFjZSBsZWZ0IG9u
IGRldmljZQ0KL2V0Yy9yY1MuZC9TMzdwb3B1bGF0ZS12b2xhdGlsZS5zaDogbGluZSA0MDogL2V0
Yy92b2xhdGlsZS5jYWNoZTogTm8NCnNwYWNlIGxlZnQgb24gZGV2aWNlDQovZXRjL3JjUy5kL1Mz
N3BvcHVsYXRlLXZvbGF0aWxlLnNoOiBsaW5lIDQwOiAvZXRjL3ZvbGF0aWxlLmNhY2hlOiBObw0K
c3BhY2UgbGVmdCBvbiBkZXZpY2UNCi9ldGMvcmNTLmQvUzM3cG9wdWxhdGUtdm9sYXRpbGUuc2g6
IGxpbmUgNDA6IC9ldGMvdm9sYXRpbGUuY2FjaGU6IE5vDQpzcGFjZSBsZWZ0IG9uIGRldmljZQ0K
L2V0Yy9yY1MuZC9TMzdwb3B1bGF0ZS12b2xhdGlsZS5zaDogbGluZSA0MDogL2V0Yy92b2xhdGls
ZS5jYWNoZTogTm8NCnNwYWNlIGxlZnQgb24gZGV2aWNlDQovZXRjL3JjUy5kL1MzN3BvcHVsYXRl
LXZvbGF0aWxlLnNoOiBsaW5lIDI1OiAvZXRjL3ZvbGF0aWxlLmNhY2hlOiBObw0Kc3BhY2UgbGVm
dCBvbiBkZXZpY2UNCi9ldGMvcmNTLmQvUzM3cG9wdWxhdGUtdm9sYXRpbGUuc2g6IGxpbmUgMjU6
IC9ldGMvdm9sYXRpbGUuY2FjaGU6IE5vDQpzcGFjZSBsZWZ0IG9uIGRldmljZQ0KL2V0Yy9yY1Mu
ZC9TMzdwb3B1bGF0ZS12b2xhdGlsZS5zaDogbGluZSA1MjogL2V0Yy92b2xhdGlsZS5jYWNoZTog
Tm8NCnNwYWNlIGxlZnQgb24gZGV2aWNlDQovZXRjL3JjUy5kL1MzN3BvcHVsYXRlLXZvbGF0aWxl
LnNoOiBsaW5lIDI1OiAvZXRjL3ZvbGF0aWxlLmNhY2hlOiBObw0Kc3BhY2UgbGVmdCBvbiBkZXZp
Y2UNCi9ldGMvcmNTLmQvUzM3cG9wdWxhdGUtdm9sYXRpbGUuc2g6IGxpbmUgMjU6IC9ldGMvdm9s
YXRpbGUuY2FjaGU6IE5vDQpzcGFjZSBsZWZ0IG9uIGRldmljZQ0KQ29uZmlndXJpbmcgbmV0d29y
ayBpbnRlcmZhY2VzLi4uIEFERFJDT05GKE5FVERFVl9VUCk6IGV0aDA6IGxpbmsgaXMgbm90IHJl
YWR5DQp1ZGhjcGMgKHYxLjE4LjUpIHN0YXJ0ZWQNClNlbmRpbmcgZGlzY292ZXIuLi4NClNlbmRp
bmcgZGlzY292ZXIuLi4NClNlbmRpbmcgZGlzY292ZXIuLi4NCk5vIGxlYXNlLCBmYWlsaW5nDQpk
b25lLg0KSU5JVDogRW50ZXJpbmcgcnVubGV2ZWw6IDVwb3N0aW4NCg0KDQotTQ==


