Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF49C77B73
	for <webhook@archiver.kernel.org>; Sun,  4 Jun 2023 08:11:00 +0000 (UTC)
Received: from smtpemea02.avnet.com (smtpemea02.avnet.com [193.34.102.204])
 by mx.groups.io with SMTP id smtpd.web10.13528.1685865667353545439
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jun 2023 01:01:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@avnet.eu header.s=20201007 header.b=ffnNCO76;
 spf=pass (domain: avnet.eu, ip: 193.34.102.204, mailfrom: konrad.weihmann@avnet.eu)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=avnet.eu;
	s=20201007; t=1685865663;
	bh=QZFTRVkLRkuNjg4r/q1wooPTtMasCqeNluBmV0IM5j4=;
	h=From:To:Subject:Date:References:In-Reply-To;
	b=ffnNCO76YlvoaYN2unkS9ZE82url5lVQy6iYcx3h1KLRc/eYK8RbFaRZY4Y/DR1oi
	 sn7S0zlcmHiot0jrH2y5iZ/YhPkLrJwF34wrUbcnK2URNfT7H35tFoA10eitfdxqNz
	 dsOwqSUrOAY6wAtU/Lw/va5S2x/w7VufxkebOr0MBpmRMwgdS0fNsVUmOjr7mwPWcL
	 NJz35KmuqnE+wWvcCsOGn9Lc0H4GOpONkavJF9OCCAR95B/AJtwubQBN81hQYQeXnm
	 y54AQ5U853pWhxjJ9gfq9KA5D08WHAcy/sCwCJF6boeomujFD8bw3fPE9T+nuKD4et
	 YsIh0e9Pix7pw==
Received: from DEPOIX0MX19EMS2.emea.avnet.com (Not Verified[172.23.112.143]) by smtpemea02.avnet.com with Trustwave MailMarshal (v10,0,6,3739) (using TLS: TLSv1.2, ECDHE-RSA-AES256-GCM-SHA384)
	id <B647c44bf0000>; Sun, 04 Jun 2023 10:01:03 +0200
Received: from DEPOIX0MX19EMP1.EMEA.AVNET.COM (172.23.112.140) by
 DEPOIX0MX19EMS2.emea.avnet.com (172.23.112.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.12; Sun, 4 Jun 2023 10:01:03 +0200
Received: from DEPOIX0MX19EMP1.EMEA.AVNET.COM ([fe80::4165:59c5:32c8:e746]) by
 DEPOIX0MX19EMP1.emea.avnet.com ([fe80::4165:59c5:32c8:e746%8]) with mapi id
 15.02.1258.012; Sun, 4 Jun 2023 10:01:03 +0200
From: "Weihmann, Konrad (Avnet Embedded)" <Konrad.Weihmann@avnet.eu>
To: "adrian.freihofer@gmail.com" <adrian.freihofer@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Register out-of-tree fetcher with devtool
Thread-Topic: [External]Re: [yocto] Register out-of-tree fetcher with devtool
Thread-Index: AdmVDWBRe8zMLdKYRjWxfCeHi/NFvQAcCOMAAE85GGA=
Date: Sun, 4 Jun 2023 08:01:02 +0000
Message-ID: <200a3eb78804459191bdebce1092f5d3@avnet.eu>
References: <bf178b45e66f404094d05cd4e1d524a2@avnet.eu>
 <c95d683751feba2f24bcbd9288a05e9ae755aac7.camel@gmail.com>
In-Reply-To: <c95d683751feba2f24bcbd9288a05e9ae755aac7.camel@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.112.39]
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=DLWcXgBb c=1 sm=1 tr=0 ts=647c44bf a=fB2MiEStJSD3ub6SrsR72A==:117 a=xqWC_Br6kY4A:10 a=VyOD0qlthIEA:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10 a=of4jigFt-DYA:10 a=cU6kfCkelfAA:10 a=pGLkceISAAAA:8 a=DrHOEiwdAAAA:8 a=iGHA9ds3AAAA:8 a=kgd2DgN1SJL46aDUxgkA:9 a=QEXdDO2ut3YA:10 a=E07at6hw5NRKWWwPwz1Q:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-SEG-SpamProfiler-Score: 0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 04 Jun 2023 08:11:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60173

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogYWRyaWFuLmZyZWlob2Zl
ckBnbWFpbC5jb20gPGFkcmlhbi5mcmVpaG9mZXJAZ21haWwuY29tPg0KPiBTZW50OiBGcmVpdGFn
LCAyLiBKdW5pIDIwMjMgMjI6MTENCj4gVG86IFdlaWhtYW5uLCBLb25yYWQgKEF2bmV0IEVtYmVk
ZGVkKSA8S29ucmFkLldlaWhtYW5uQGF2bmV0LmV1PjsNCj4geW9jdG9AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZw0KPiBTdWJqZWN0OiBbRXh0ZXJuYWxdUmU6IFt5b2N0b10gUmVnaXN0ZXIgb3V0LW9m
LXRyZWUgZmV0Y2hlciB3aXRoIGRldnRvb2wNCj4gDQo+IE9uIEZyaSwgMjAyMy0wNi0wMiBhdCAw
NDo0NyArMDAwMCwgV2VpaG1hbm4sIEtvbnJhZCAoQXZuZXQgRW1iZWRkZWQpDQo+IHdyb3RlOg0K
PiA+DQo+ID4NCj4gPg0KPiA+IEhpIGFsbCwNCj4gPg0KPiA+IHdlIGRvIGhhdmUgYW4gb3V0LW9m
LXRyZWUgZmV0Y2hlciB0aGF0IEkgd291bGQgbGlrZSB0byBtYWtlIHVzZSBvZg0KPiA+IHdpdGgg
ZGV2dG9vbCwgZm9yIGluc3RhbmNlIGZvciB1cGdyYWRlIGNoZWNraW5nLg0KPiA+IFdpdGhpbiBv
dXIgcmVjaXBlcyB0aGUgZmV0Y2hlciBpcyByZWdpc3RlcmVkIGJ5IHRoaXMgd29ya2Fyb3VuZA0K
PiA+DQo+ID4gcHl0aG9uICgpIHsNCj4gPiDCoMKgwqAgaW1wb3J0IGZvbw0KPiA+IMKgwqDCoCBi
Yi5mZXRjaDIubWV0aG9kcy5hcHBlbmQoZm9vLkZvb0ZldGNoZXIoKSkNCj4gPiB9DQo+IEhpIEtv
bnJhZA0KPiANCj4gSXMgdGhlcmUgYSBzcGVjaWZpYyByZWFzb24gd2h5IHlvdSBuZWVkIHRvIGZl
dGNoIGF0IHRoZSB0aW1lIG9mIHBhcnNpbmc/IE9yDQo+IHdvdWxkIGl0IGJlIHBvc3NpYmxlIHRv
IG92ZXJyaWRlIHRoZSBkb19mZXRjaCB0YXNrPw0KPiANCj4gUmVnYXJkcywNCj4gQWRyaWFuDQo+
IA0KDQpBcHBlbmRpbmcgdGhlIGZldGNoZXIgY2xhc3MgaW1wbGVtZW50YXRpb24gZG9lcyBub3Qg
YWN0dWFsbHkgcnVuIHRoZSBjb2RlIHRvIGZldGNoIGFueXRoaW5nLCBpdCdzIGp1c3Qgc28gdGhl
IHBhcnNlciBjYW4gc2VlIHRoZSBjb2RlLg0KRmV0Y2hpbmcgaXRzZWxmIGlzIHN0aWxsIHJ1biBp
biB0aGUgZmV0Y2ggdGFzay4NCkFuZCBvdmVycmlkaW5nIHRoYXQgb25lIHdvdWxkIGhhdmUgdGhl
IGRvd25zaWRlIHRoYXQgSSB3b3VsZCBuZWVkIHRvIGR1cGxpY2F0ZSBhIGxvdCBvZiBiaXRiYWtl
IGNvZGUgYXMgd2VsbCB0byBtYWtlIGl0IHdvcmssIHNvIEkgZG9uJ3QgdGhpbmsgdGhhdCB3b3Vs
ZCBiZSBhIHZhbGlkIG9wdGlvbi4NCkp1c3QgdGhpbmsgb2YgdGhlIHByZS1taXJyb3IgaGFuZGxp
bmcsIGJsb2IgY3JlYXRpb24gYW5kIGFsbCB0aGUgb3RoZXIgZmVhdHVyZXMgSSB3b3VsZCBuZWVk
IHRvIGNvcHkgY29kZSBmcm9tIGNvcmUvYml0YmFrZS4NCkluIGFkZGl0aW9uLCBvdmVycmlkaW5n
IGRvX2ZldGNoIHdvdWxkbid0IGdldCBtZSBhbnkgY2xvc2VyIHdpdGggdGhlIGludGVncmF0aW9u
IG9mIGRldnRvb2wgY2hlY2stdXBncmFkZS1zdGF0dXMsIGFzIHRoYXQgb25lIGRvZXNuJ3QgZXZl
biB0cmlnZ2VyIGRvX2ZldGNoLCBidXQgb3RoZXIgcGFydHMgb2YgdGhlIGZldGNoZXIgY2xhc3Mg
aW1wbGVtZW50YXRpb24sIHdoaWNoIHdvdWxkIGJlIHN0aWxsIHVuc2VlbiBieSBkZXZ0b29sLg0K
SW4gY29uY2x1c2lvbiwgYXMgSSB3cm90ZSwgaXQncyBub3QgcHJldHR5IGJ1dCB0aGUgY3VycmVu
dGx5IGJlc3Qgd2F5IEkgY2FuIHRoaW5rIG9mIHRvIGludGVncmF0ZSBhbiBvdXQtb2YtdHJlZSBp
bXBsZW1lbnRhdGlvbiBpbnRvIHRoZSBjb3JlIHdvcmtmbG93Lg0KQnV0IGlmIGFueW9uZSBoYXMg
YSBiZXR0ZXIgcHJvcG9zYWwgSSByZWFsbHkgd291bGQgbGlrZSB0byBoZWFyIGl0Lg0KDQpDaGVl
cnMNCktvbnJhZA0KDQo+ID4NCj4gPiBXaGljaCBpc27igJl0IHRoZSBuaWNlc3QgcG9zc2libGUg
c29sdXRpb24gc3RpbGwgZG9lcyB0aGUgdHJpY2suDQo+ID4NCj4gPiBCdXQgdGhhdCBkb2VzbuKA
mXQgd29yayBmb3IgZGV2dG9vbCwgYXMgaXQgc2VlbXMgdG8gbm90IHRha2UgYW55IGJ1dA0KPiA+
IG9lLWNvcmUgbGliLXBhdGhzIGludG8gY29uc2lkZXJhdGlvbi4NCj4gPg0KPiA+IEZvciBkZXZ0
b29sIGNoZWNrLXVwZ3JhZGUtc3RhdHVzIDxyZWNpcGUgd2l0aCBhYm92ZSBjb2RlIHNuaXBwZXQ+
DQo+ID4NCj4gPiBJIGdldCBzb21ldGhpbmcgbGlrZSDigJxubyBoYW5kbGVyIGZvciBmb286Ly/i
gKYgZm91bmTigJ0uDQo+ID4NCj4gPiBJcyB0aGVyZSBhbnkgd2F5IHRvIHJlZ2lzdGVyIHRoaXMg
b3V0LW9mLXRyZWUgZmV0Y2hlciBtb2R1bGUgc28NCj4gPiB0aW5mb2lsL2RldnRvb2wgY2FuIOKA
nHNlZeKAnSB0aGVtPw0KPiA+DQo+ID4gQ2hlZXJzDQo+ID4gS29ucmFkDQo+ID4NCj4gPg0KPiA+
IA0KPiA+DQo+IA0KPiAtLQ0KPiBBZHJpYW4gRnJlaWhvZmVyDQo+IEdzY2h3YWRlcndlZyAyOQ0K
PiA4NjEwIFVzdGVyDQo+ICs0MSA3NiA1MDMgMzcgOTgNCg0KV2UgY29udGludW91c2x5IGNvbW1p
dCB0byBjb21wbHkgd2l0aCB0aGUgYXBwbGljYWJsZSBkYXRhIHByb3RlY3Rpb24gbGF3cyBhbmQg
ZW5zdXJlIGZhaXIgYW5kIHRyYW5zcGFyZW50IHByb2Nlc3Npbmcgb2YgeW91ciBwZXJzb25hbCBk
YXRhLiANClBsZWFzZSByZWFkIG91ciBwcml2YWN5IHN0YXRlbWVudCBpbmNsdWRpbmcgYW4gaW5m
b3JtYXRpb24gbm90aWNlIGFuZCBkYXRhIHByb3RlY3Rpb24gcG9saWN5IGZvciBkZXRhaWxlZCBp
bmZvcm1hdGlvbiBvbiBvdXIgd2Vic2l0ZS4NCg==

