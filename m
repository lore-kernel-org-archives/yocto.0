Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9AD4E009E4; Wed, 29 Jul 2015 06:44:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A49E0096A
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:44:29 -0700 (PDT)
Received: from mail.raylase.de (127.0.0.1) id hn3cc40171sq for
	<yocto@yoctoproject.org>;
	Wed, 29 Jul 2015 15:44:26 +0200 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by mail.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256/256)
	id 201507291344250041695; Wed, 29 Jul 2015 15:44:25 +0200
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Wed, 29 Jul 2015 15:44:24 +0200
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0248.002; Wed, 29 Jul 2015 15:44:24 +0200
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, Dalon Westergreen
	<dwesterg@gmail.com>, Kevin B. <enak999@googlemail.com>
Thread-Topic: [yocto] Which repo for meta-altera ?
Thread-Index: AdDJFHrk/r5V2qTtQ1K5KfDyaiXrhAA2q3CAAAS8GeA=
Date: Wed, 29 Jul 2015 13:44:23 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC5476ECD3@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
	<55B8D0BD.3050803@dynamicdevices.co.uk>
In-Reply-To: <55B8D0BD.3050803@dynamicdevices.co.uk>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.109]
MIME-Version: 1.0
X-Mlf-Version: 8.0.8.3655
X-Mlf-UniqueId: o201507291344250041695
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?utf-8?B?cmZpIOKAjltyZmlAbGlzdHMucm9ja2V0Ym9hcmRzLm9yZ13igI4=?=
	<rfi@lists.rocketboards.org>
Subject: Re: Which repo for meta-altera ?
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
X-List-Received-Date: Wed, 29 Jul 2015 13:44:36 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWxleCwgRGFsb24sIEtldmluLCBMaXN0cw0KDQpobW1tLCBzbyBJIGd1ZXNzIEknbSBzdGls
bCBjb25mdXNlZCAoc29ycnkpLg0KDQpBbGV4IHJlY29tbWVuZHMgZ29pbmcgdmlhIHRoZSAib2Zm
aWNpYWwiIG9lIGxheWVycyBpbmRleCwgd2hpY2ggY3VycmVudGx5IGxpbmtzIGRpcmVjdGx5IHRv
IGdpdGh1Yi5jb20va3Jhai9tZXRhLWFsdGVyYS4NCg0KS2V2aW4gYW5kIERhbG9uIGhvbGQgb3V0
IGZvciBnaXRodWIuY29tL2FsdGVyYS1vcGVuc291cmNlL21ldGEtYWx0ZXJhLCBhbmQgRGFsb24g
c3BlY2lmaWNhbGx5IHNheXMgIi4uLiBhbmQgcmVwb3MgdW5kZXIgYW55IHVzZXIgbmFtZSBpbiBn
aXRodWIgYXJlIGZvcmtzIi4NCg0KU28gaXMgdGhlcmUgYW4gb2ZmaWNpYWwgOy0pIGRpY2hvdG9t
eSBiZXR3ZWVuIGFsdGVyYSBhbmQgb2U/DQoNClRoYW5rcyBmb3IgbGlzdGVuaW5nLi4uDQotLQ0K
amltDQoNCg0KLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQ0KVm9uOiBBbGV4IEog
TGVubm9uIFttYWlsdG86YWpsZW5ub25AZHluYW1pY2RldmljZXMuY28udWtdDQpHZXNlbmRldDog
TWl0dHdvY2gsIDI5LiBKdWxpIDIwMTUgMTU6MTANCkFuOiBTcHJpZ2dzLCBKaW0gPEouU3ByaWdn
c0ByYXlsYXNlLmRlPg0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkJldHJlZmY6IFJlOiBb
eW9jdG9dIFdoaWNoIHJlcG8gZm9yIG1ldGEtYWx0ZXJhID8NCg0KDQoNCk9uIDI4LzA3LzIwMTUg
MTA6MTAsIFNwcmlnZ3MsIEppbSB3cm90ZToNCj4gSGkgR3V5czsgY29uZnVzZWQgbm9vYiBoZXJl
Li4uDQo+DQo+IFRoZXJlIGFwcGVhciB0byBiZSAoYXQgbGVhc3QpIHR3byAib2ZmaWNpYWwiIHJl
cG9zIGZvciBtZXRhLWFsdGVyYToNCj4NCj4gICAgICAgICBnaXRodWIuY29tL2tyYWovbWV0YS1h
bHRlcmENCj4NCj4gYW5kDQo+DQo+ICAgICAgICAgZ2l0LnJvY2tldGJvYXJkcy5vcmcvbWV0YS1h
bHRlcmEuZ2l0DQo+DQo+DQo+IFNvIGhvdyBzaG91bGQgSSBjaG9vc2UgYmV0d2VlbiB0aGVtPw0K
Pg0KPiBUaGFua3MhDQo+IC0tDQo+IEppbQ0KPg0KPiBTb3JyeSBhYm91dCB0aGUgY29tcGFueSBz
aWcuOiBJIGNhbid0IHN3aXRjaCBpdCBvZmYuDQo+DQoNCmZ3aXcgSSB3b3VsZCB1c3VhbGx5IHN0
YXJ0IHdpdGggdGhlIG9mZmljaWFsIGluZGV4DQoNCmh0dHA6Ly9sYXllcnMub3BlbmVtYmVkZGVk
Lm9yZy9sYXllcmluZGV4L2JyYW5jaC9tYXN0ZXIvbGF5ZXJzLw0KDQpUaGlzIHNlZW1zIHRvIHBv
aW50IHRvIGdpdGh1Yg0KDQpDaGVlcnMsIEFsZXgNCg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KDQpSQVlMQVNFIEFHDQpBcmdlbHNyaWVkZXIgRmVsZCAyKzQNCjgyMjM0IFdl
c3NsaW5nDQpHZXJtYW55DQpUZWwuOiArNDktKDApODE1My84OCA5OC0wDQpGYXg6ICs0OS0oMCk4
MTUzLzg4IDk4LTEwDQpodHRwOi8vd3d3LnJheWxhc2UuZGUNCg0KRGlzdHJpY3QgQ291cnQgTXVu
aWNoLCBIUkIgMTMxNDUwDQoNCkJvYXJkOiBQZXRlciB2b24gSmFuIChDRU8pDQoNClN1cGVydmlz
b3J5IEJvYXJkOiBEci4gVWxyaWNoIExvaG1hbm4gKENoYWlybWFuKQ0KDQoNCkRpZXNlIEUtTWFp
bCBlbnRow6RsdCB2ZXJ0cmF1bGljaGUgdW5kL29kZXIgcmVjaHRsaWNoIGdlc2Now7x0enRlIElu
Zm9ybWF0aW9uZW4uIFdlbm4gU2llIG5pY2h0IGRlciByaWNodGlnZSBBZHJlc3NhdCBzaW5kIG9k
ZXIgZGllc2UgRS1NYWlsIGlycnTDvG1saWNoIGVyaGFsdGVuIGhhYmVuLCBpbmZvcm1pZXJlbiBT
aWUgYml0dGUgc29mb3J0IGRlbiBBYnNlbmRlciB1bmQgdmVybmljaHRlbiBTaWUgZGllc2UgTWFp
bC4gRGFzIHVuZXJsYXVidGUgS29waWVyZW4gc293aWUgZGllIHVuYmVmdWd0ZSBXZWl0ZXJnYWJl
IGRpZXNlciBNYWlsIGlzdCBuaWNodCBnZXN0YXR0ZXQuDQoNClRoaXMgZS1tYWlsIG1heSBjb250
YWluIGNvbmZpZGVudGlhbCBhbmQvb3IgcHJpdmlsZWdlZCBpbmZvcm1hdGlvbi4gSWYgeW91IGFy
ZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCAob3IgaGF2ZSByZWNlaXZlZCB0aGlzIGUtbWFp
bCBpbiBlcnJvcikgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkZXN0
cm95IHRoaXMgZS1tYWlsLiBBbnkgdW5hdXRob3JpemVkIGNvcHlpbmcsIGRpc2Nsb3N1cmUgb3Ig
ZGlzdHJpYnV0aW9uIG9mIHRoZSBtYXRlcmlhbCBpbiB0aGlzIGUtbWFpbCBpcyBzdHJpY3RseSBm
b3JiaWRkZW4uDQo=

