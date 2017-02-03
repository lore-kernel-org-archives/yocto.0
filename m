Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B96FFE009CD; Fri,  3 Feb 2017 05:31:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cit-hm8-gw01.bmw-carit.de (cit-hm8-mail01.bmw-carit.de
	[212.118.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A76E009CD
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 05:31:31 -0800 (PST)
Received: from [172.20.0.50] (port=27504 helo=cit-hm8-mail01.bmw-carit.de)
	by cit-hm8-gw01.bmw-carit.de with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1cZdxX-0000gd-1y; Fri, 03 Feb 2017 14:31:27 +0100
Received: from ULM-DC01.bmw-carit.intra ([fe80::41cf:62be:aacc:1aad]) by
	ULM-DC01.bmw-carit.intra ([fe80::41cf:62be:aacc:1aad%11]) with mapi id
	14.03.0123.003; Fri, 3 Feb 2017 14:31:27 +0100
X-CTCH-RefID: str=0001.0A0C0207.5894862F.01FB, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: Clemens Lang <Clemens.Lang@bmw-carit.de>
To: Daniel. <danielhilst@gmail.com>
Thread-Topic: [yocto] Repeteability in image compilation. How to achieve it?
	How	to measure it?
Thread-Index: AQHSfh9q2E210T5I5UWpmuhu9lDMWaFXNp+A
Date: Fri, 3 Feb 2017 13:31:26 +0000
Message-ID: <8960F08D-AEDC-4474-A6D6-219BC5764252@bmw-carit.de>
References: <CAF3SDA56bgLyrmSKxm=ObR-rrj2RVXojXnbeErkys2uJfdXU9w@mail.gmail.com>
In-Reply-To: <CAF3SDA56bgLyrmSKxm=ObR-rrj2RVXojXnbeErkys2uJfdXU9w@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.20.80]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repeteability in image compilation. How to achieve it? How	to measure it?
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
X-List-Received-Date: Fri, 03 Feb 2017 13:31:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF40FD1A9569F142AAA448002BBD6103@bmw-carit.de>
Content-Transfer-Encoding: base64

SGksDQoNCj4gT24gMyBGZWIgMjAxNywgYXQgMTQ6MTEsIERhbmllbC4gPGRhbmllbGhpbHN0QGdt
YWlsLmNvbT4gd3JvdGU6DQo+IA0KPiBIaSBldmVyeWJvZHksDQo+IA0KPiBIb3cgY2FuIEkgYmUg
c3VyZSB0aGF0IHRoZSBzYW1lIGltYWdlIGJ1aWx0IGJ5IGRpc3RpbmN0IGJ1aWxkaW5nIGhvc3Rz
DQo+IGFyZSB0cnVsbHkgaWRlbnRpY2FsPz8gSXMgaXQgcG9zc2libGUgdG8gbWVhc3VyZSB0aGF0
Pw0KDQpJIGNhbiByZWNvbW1lbmQgdG9vbGluZyBvZmZlcmVkIGJ5IHRoZSByZXByb2R1Y2libGUg
YnVpbGRzIHByb2plY3QuIEVzcGVjaWFsbHkgZGlmZm9zY29wZSBjYW4gYmUgdmVyeSBoZWxwZnVs
IGluIHRoaXMuIFNlZSBodHRwczovL3JlcHJvZHVjaWJsZS1idWlsZHMub3JnL3Rvb2xzLy4gWW91
IG1heSB3YW50IHRvIHN0YXJ0IGNvbXBhcmluZyBpbmRpdmlkdWFsIHBhY2thZ2VzIGZpcnN0LCBi
ZWZvcmUgeW91IHRhY2tsZSBpbWFnZSBjcmVhdGlvbiwgdGhvdWdoLg0KDQpIVEgsDQpDbGVtZW5z
DQotLSANCkNsZW1lbnMgTGFuZyDigKIgRGV2ZWxvcG1lbnQgU3BlY2lhbGlzdA0KQk1XIENhciBJ
VCBHbWJIIOKAoiBMaXNlLU1laXRuZXItU3RyLiAxNCDigKIgODkwODEgVWxtIOKAoiBodHRwOi8v
Ym13LWNhcml0LmNvbQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KQk1XIENhciBJVCBHbWJIDQpHZXNjaMOk
ZnRzZsO8aHJlcjogTWljaGFlbCBXw7xydGVuYmVyZ2VyIHVuZCBBbGV4aXMgVHJvbGluDQpTaXR6
IHVuZCBSZWdpc3RlcmdlcmljaHQ6IE3DvG5jaGVuIEhSQiAxMzQ4MTANCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCg0K

