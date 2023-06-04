Return-Path: <Konrad.Weihmann@avnet.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DEBCC7EE23
	for <webhook@archiver.kernel.org>; Sun,  4 Jun 2023 13:22:12 +0000 (UTC)
Received: from smtpemea01.avnet.com (smtpemea01.avnet.com [193.34.102.203])
 by mx.groups.io with SMTP id smtpd.web11.16808.1685884928317550407
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jun 2023 06:22:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@avnet.eu header.s=20201007 header.b=sRGuT0Mi;
 spf=pass (domain: avnet.eu, ip: 193.34.102.203, mailfrom: konrad.weihmann@avnet.eu)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=avnet.eu;
	s=20201007; t=1685884925;
	bh=4PRazAULfucUR6xVMLY8GUzEaShimxhJX3hLna9qwZA=;
	h=From:To:Subject:Date:References:In-Reply-To;
	b=sRGuT0MiPkHjdxqGbYpuelSDKHyoI+2E53tVZ7dCLzwxsaaBTMlSz+2HXnDQYmRJk
	 zbpa5AeQtgl8OSGfhtkNMtW1hmesOlqV6et9JfvNTJyej/FHdrtNP3AGNPLrLeHpQZ
	 JbC7Fd8LV0FSqW1tF3dOMixQxMc/ZePRS8V1uRC6PftC7Rk//w2GMIr8Orsc0BtSe5
	 fS0f31P4XDsFw8Vgc+ih25XMKxuvLG64hvJ3IIkx3vU5MWDKux0yNBic16e3nSYtCj
	 vfiziII2PTRCvvLkqU18oExW2SlmlEJeLWM2zlHkfMdcc+xvnXcyFQ9t7wCeNQQfdZ
	 dQXMSI3WnXWeQ==
Received: from DEPOIX0MX19EMP2.emea.avnet.com (Not Verified[172.23.112.141]) by smtpemea01.avnet.com with Trustwave MailMarshal (v10,0,6,3739) (using TLS: TLSv1.2, ECDHE-RSA-AES256-GCM-SHA384)
	id <B647c8ffd0000>; Sun, 04 Jun 2023 15:22:05 +0200
Received: from DEPOIX0MX19EMP1.EMEA.AVNET.COM (172.23.112.140) by
 DEPOIX0MX19EMP2.emea.avnet.com (172.23.112.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.12; Sun, 4 Jun 2023 15:22:04 +0200
Received: from DEPOIX0MX19EMP1.EMEA.AVNET.COM ([fe80::4165:59c5:32c8:e746]) by
 DEPOIX0MX19EMP1.emea.avnet.com ([fe80::4165:59c5:32c8:e746%8]) with mapi id
 15.02.1258.012; Sun, 4 Jun 2023 15:22:04 +0200
From: "Weihmann, Konrad (Avnet Embedded)" <Konrad.Weihmann@avnet.eu>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: Re: [yocto] Register out-of-tree fetcher with devtool
Thread-Topic: [External]Re: [yocto] Register out-of-tree fetcher with devtool
Thread-Index: AdmVDWBRe8zMLdKYRjWxfCeHi/NFvQBxSlIAAAUpc3A=
Date: Sun, 4 Jun 2023 13:22:04 +0000
Message-ID: <6fe42ca129c047d68d2ab30f3f3785f1@avnet.eu>
References: <bf178b45e66f404094d05cd4e1d524a2@avnet.eu>
 <6fbff5c83efad2f5379778dd1442ac248cc67f82.camel@linuxfoundation.org>
In-Reply-To: <6fbff5c83efad2f5379778dd1442ac248cc67f82.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.112.39]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=HrRlpmfS c=1 sm=1 tr=0 ts=647c8ffd a=6L10LVN29+KFB0AHi0rnCQ==:117 a=xqWC_Br6kY4A:10 a=VyOD0qlthIEA:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10 a=of4jigFt-DYA:10 a=cU6kfCkelfAA:10 a=ag1SF4gXAAAA:8 a=DrHOEiwdAAAA:8 a=iGHA9ds3AAAA:8 a=3aCxldwt98MikPATHG4A:9 a=QEXdDO2ut3YA:10 a=Yupwre4RP9_Eg_Bd0iYG:22 a=E07at6hw5NRKWWwPwz1Q:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-SEG-SpamProfiler-Score: 0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 04 Jun 2023 13:22:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60175

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSA8cmlj
aGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gU2VudDogU29ubnRhZywgNC4gSnVu
aSAyMDIzIDE0OjUyDQo+IFRvOiBXZWlobWFubiwgS29ucmFkIChBdm5ldCBFbWJlZGRlZCkgPEtv
bnJhZC5XZWlobWFubkBhdm5ldC5ldT47DQo+IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcN
Cj4gU3ViamVjdDogW0V4dGVybmFsXVJlOiBbeW9jdG9dIFJlZ2lzdGVyIG91dC1vZi10cmVlIGZl
dGNoZXIgd2l0aCBkZXZ0b29sDQo+IA0KPiBPbiBGcmksIDIwMjMtMDYtMDIgYXQgMDQ6NDcgKzAw
MDAsIFdlaWhtYW5uLCBLb25yYWQgKEF2bmV0IEVtYmVkZGVkKQ0KPiB3cm90ZToNCj4gPg0KPiA+
DQo+ID4NCj4gPiBIaSBhbGwsDQo+ID4NCj4gPiB3ZSBkbyBoYXZlIGFuIG91dC1vZi10cmVlIGZl
dGNoZXIgdGhhdCBJIHdvdWxkIGxpa2UgdG8gbWFrZSB1c2Ugb2YNCj4gPiB3aXRoIGRldnRvb2ws
IGZvciBpbnN0YW5jZSBmb3IgdXBncmFkZSBjaGVja2luZy4NCj4gPiBXaXRoaW4gb3VyIHJlY2lw
ZXMgdGhlIGZldGNoZXIgaXMgcmVnaXN0ZXJlZCBieSB0aGlzIHdvcmthcm91bmQNCj4gPg0KPiA+
IHB5dGhvbiAoKSB7DQo+ID4gwqDCoMKgIGltcG9ydCBmb28NCj4gPiDCoMKgwqAgYmIuZmV0Y2gy
Lm1ldGhvZHMuYXBwZW5kKGZvby5Gb29GZXRjaGVyKCkpDQo+ID4gfQ0KPiA+DQo+ID4gV2hpY2gg
aXNu4oCZdCB0aGUgbmljZXN0IHBvc3NpYmxlIHNvbHV0aW9uIHN0aWxsIGRvZXMgdGhlIHRyaWNr
Lg0KPiA+DQo+ID4gQnV0IHRoYXQgZG9lc27igJl0IHdvcmsgZm9yIGRldnRvb2wsIGFzIGl0IHNl
ZW1zIHRvIG5vdCB0YWtlIGFueSBidXQNCj4gPiBvZS1jb3JlIGxpYi1wYXRocyBpbnRvIGNvbnNp
ZGVyYXRpb24uDQo+ID4NCj4gPiBGb3IgZGV2dG9vbCBjaGVjay11cGdyYWRlLXN0YXR1cyA8cmVj
aXBlIHdpdGggYWJvdmUgY29kZSBzbmlwcGV0Pg0KPiA+DQo+ID4gSSBnZXQgc29tZXRoaW5nIGxp
a2Ug4oCcbm8gaGFuZGxlciBmb3IgZm9vOi8v4oCmIGZvdW5k4oCdLg0KPiA+DQo+ID4gSXMgdGhl
cmUgYW55IHdheSB0byByZWdpc3RlciB0aGlzIG91dC1vZi10cmVlIGZldGNoZXIgbW9kdWxlIHNv
DQo+ID4gdGluZm9pbC9kZXZ0b29sIGNhbiDigJxzZWXigJ0gdGhlbT8NCj4gDQo+IEN1cnJlbnRs
eSwgbm8sIHRoZXJlIGlzbid0IGEgZ29vZCBBUEkgZm9yIGRvaW5nIHRoaXMuIEl0IGlzIHNvbWV0
aGluZyBJJ3ZlDQo+IHdvbmRlcmVkIGhvdyB0byBmaXggZm9yIGEgd2hpbGUuDQo+IA0KPiBUaGUg
YWRkcHlsaWIgZGlyZWN0aXZlIHdlIHJlY2VudGx5IGFkZGVkIGRvZXMgZ28gc29tZSB3YXkgdG8g
YWxsb3dpbmcNCj4gbGF5ZXJzIHRvIHByYWdtYXRpY2FsbHkgYWRkIHB5dGhvbiBtb2R1bGVzLiBU
aGVyZSBtaWdodCBiZSBvcHRpb25zIHRvDQo+IGJ1aWxkdXAgdXBvbiB0aGF0IGV4dGVuZCB0aGUg
ZmV0Y2hlciBmcm9tIHRoZXJlPw0KDQpJbmRlZWQgaXQgY291bGQgYmUgYSBjaGFuY2UgdG8gbWFr
ZSBpdCBoYXBwZW4gLSBzYWRseSB3ZSBhcmUgY3VycmVudGx5IG9uIGtpcmtzdG9uZSwgc28gaWYg
dGhlcmUgaXNuJ3QgYW4gYWx0ZXJuYXRpdmUgcHJlc2VudCwgSSBndWVzcyBJIGhhdmUgdG8gc3Rp
Y2sgdG8gcmVjcmVhdGluZyB0aGUgZGV2dG9vbCBjaGVjayB1cGdyYWRlIHN0YXR1cyB2aWEgYW4g
YWRkaXRpb25hbCB0YXNrLg0KSWYgSSBmaW5kIHRoZSB0aW1lIHRvLCBJIHdpbGwgcG9zdCBwYXRj
aGVzIG9yIGZ1cnRoZXIgcXVlc3Rpb25zLg0KDQpDaGVlcnMNCktvbnJhZA0KDQo+IA0KPiBDaGVl
cnMsDQo+IA0KPiBSaWNoYXJkDQoNCldlIGNvbnRpbnVvdXNseSBjb21taXQgdG8gY29tcGx5IHdp
dGggdGhlIGFwcGxpY2FibGUgZGF0YSBwcm90ZWN0aW9uIGxhd3MgYW5kIGVuc3VyZSBmYWlyIGFu
ZCB0cmFuc3BhcmVudCBwcm9jZXNzaW5nIG9mIHlvdXIgcGVyc29uYWwgZGF0YS4gDQpQbGVhc2Ug
cmVhZCBvdXIgcHJpdmFjeSBzdGF0ZW1lbnQgaW5jbHVkaW5nIGFuIGluZm9ybWF0aW9uIG5vdGlj
ZSBhbmQgZGF0YSBwcm90ZWN0aW9uIHBvbGljeSBmb3IgZGV0YWlsZWQgaW5mb3JtYXRpb24gb24g
b3VyIHdlYnNpdGUuDQo=

