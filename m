Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51D9CE004E5; Wed, 30 Nov 2016 08:28:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 167 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Nov 2016 08:28:00 PST
Received: from cit-hm8-gw01.bmw-carit.de (cit-hm8-mail01.bmw-carit.de
	[212.118.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA9CE00498
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 08:28:00 -0800 (PST)
Received: from [172.20.0.50] (port=22298 helo=cit-hm8-mail01.bmw-carit.de)
	by cit-hm8-gw01.bmw-carit.de with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1cC7h0-0005oQ-15; Wed, 30 Nov 2016 17:25:10 +0100
Received: from ULM-DC01.bmw-carit.intra ([fe80::41cf:62be:aacc:1aad]) by
	ULM-DC01.bmw-carit.intra ([fe80::41cf:62be:aacc:1aad%11]) with mapi id
	14.03.0123.003; Wed, 30 Nov 2016 17:25:09 +0100
X-CTCH-RefID: str=0001.0A0C0205.583EFD66.00BF, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: Clemens Lang <Clemens.Lang@bmw-carit.de>
To: "Suchy, Pawel" <pawel.suchy@delphi.com>
Thread-Topic: [yocto] CommonAPI *.so bindings
Thread-Index: AdJLHuy12sJgYoupSBW7qEBniudmwf///gWA
Date: Wed, 30 Nov 2016 16:25:09 +0000
Message-ID: <6211B50E-20F1-45AC-B81E-66CFF6CF4C67@bmw-carit.de>
References: <4f6a6c3622f646e9a01a2cec53be8615@BLUPR6801MB0051.017d.mgd.msft.net>
In-Reply-To: <4f6a6c3622f646e9a01a2cec53be8615@BLUPR6801MB0051.017d.mgd.msft.net>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.20.234]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CommonAPI *.so bindings
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
X-List-Received-Date: Wed, 30 Nov 2016 16:28:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <AF965E599AD10D4BA198266C4BC7A046@bmw-carit.de>
Content-Transfer-Encoding: base64

SGkgUGF3ZWwsDQoNClBhd2VsIFN1Y2h5IDxwYXdlbC5zdWNoeUBkZWxwaGkuY29tPiB3cm90ZToN
Cg0KPiBUaGF0IGlzIGNhdXNpbmcgYSBwcm9ibGVtIHdpdGggYmluZGluZyBDb21tb25BUEkgZHlu
YW1pYyBsaWJyYXJpZXMgdmlhICANCj4gY29tbW9uYXBpLmluaS4NCj4gVGhlIGNvbW1vbmFwaS5p
bmkgZmlsZSBjb250YWlucyBzZWN0aW9ucyB3aGVyZSBkZXBlbmRlbmNpZXMgdG8gcHJveHkgIA0K
PiBvYmplY3RzIGNvdWxkIGJlIGRlZmluZWQ6DQo+IFtwcm94eV0gIA0KPiBsb2NhbDpjb21tb25h
cGkuZXhhbXBsZXMuVGVzdDpjb21tb25hcGkuZXhhbXBsZXMuVGVzdD1saWJUZXN0LURCdXMuc28N
Cj4NCj4gQnV0IGl0IGNhbm5vdCB0YWtlIGxpbmsgdG8gdmVyc2lvbmVkIGxpYnJhcnkgYmVjYXVz
ZSBvZiB0aGF0IGNvZGU6DQo+IGh0dHA6Ly9kb2NzLnByb2plY3RzLmdlbml2aS5vcmcvaXBjLmNv
bW1vbi1hcGktcnVudGltZS8zLjEuNS9SdW50aW1lXzhjcHBfc291cmNlLmh0bWwjbDAwMjgzDQo+
DQo+ICBSdW50aW1lOjpsb2FkTGlicmFyeShjb25zdCBzdGQ6OnN0cmluZyAmX2xpYnJhcnkpIHsN
Cj4gMzIxICBzdGQ6OnN0cmluZyBpdHNMaWJyYXJ5KF9saWJyYXJ5KTsNCj4gMzIyDQo+IDMyMyAg
Ly8gVE9ETzogZGVjaWRlIHdoZXRoZXIgdGhpcyByZWFsbHkgaXMgYSBnb29kIGlkZWEuLi4NCj4g
MzI0ICAjaWZkZWYgV0lOMzINCj4gMzI1ICBpZiAoaXRzTGlicmFyeS5yZmluZCgiLmRsbCIpICE9
IGl0c0xpYnJhcnkubGVuZ3RoKCkgLSA0KSB7DQo+IDMyNiAgaXRzTGlicmFyeSArPSAiLmRsbCI7
DQo+IDMyNyAgfQ0KPiAzMjggICNlbHNlDQo+IDMyOSAgaWYgKGl0c0xpYnJhcnkucmZpbmQoIi5z
byIpICE9IGl0c0xpYnJhcnkubGVuZ3RoKCkgLSAzKSB7DQo+IDMzMCAgaXRzTGlicmFyeSArPSAi
LnNvIjsNCj4gMzMxICB9DQo+IDMzMiAgI2VuZGlmDQo+DQo+IFF1ZXN0aW9uczoNCj4gMS4gSG93
IHRvIHNvbHZlIGJlc3QgdGhpcz8NCg0KT3VyIHNvbHV0aW9uIHRvIHRoYXQgaXMgdG8gbm90IHJl
bHkgb24gcnVudGltZSBsb2FkaW5nIG9mIENvbW1vbkFQSSAgDQpsaWJyYXJpZXMgYW5kIGp1c3Qg
bGluayB0aGUgbGlicmFyaWVzIHRoYXQgeW91IG5lZWQgaW50byB0aGUgYmluYXJ5ICANCmRpcmVj
dGx5LCBpbiB3aGljaCBjYXNlIHRoaXMgY29kZSB3aWxsIG5vdCBiZSBydW4gYXQgYWxsLiBJZiB5
b3VyIHByb2plY3QgIA0KZG9lcyBub3QgbmVlZCB0aGUgYWJpbGl0eSB0byBzd2l0Y2ggYmV0d2Vl
biBkaWZmZXJlbnQgY29tbXVuaWNhdGlvbiAgDQpiYWNrZW5kcyBvZiBDb21tb25BUEksIHRoYXQg
c2hvdWxkIGFsc28gd29yayBmb3IgeW91Lg0KDQpOb3RlIHRoYXQgeW91IG1heSBuZWVkIC1XbCwt
LXB1c2gtc3RhdGUsLS1uby1hcy1uZWVkZWQsLWxpYnJhcnksLS1wb3Atc3RhdGUgIA0KZGVwZW5k
aW5nIG9uIHdoYXQgeW91ciBsaWJyYXJpZXMgbG9vayBsaWtlLg0KDQoNCkhUSCwNCkNsZW1lbnMN
Ci0tIA0KQk1XIENhciBJVCBHbWJIDQpDbGVtZW5zIExhbmcNClNwZXppYWxpc3QgRW50d2lja2x1
bmcNCkxpc2UtTWVpdG5lci1TdHJhw59lIDE0DQo4OTA4MSBVbG0NCg0KVGVsOiArNDktNzMxLTM3
ODA0MTgyDQpNYWlsOiBjbGVtZW5zLmxhbmdAYm13LWNhcml0LmRlDQpXZWI6IGh0dHA6Ly93d3cu
Ym13LWNhcml0LmRlDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KQk1XIENhciBJVCBHbWJIDQpHZXNjaMOkZnRzZsO8
aHJlcjogTWljaGFlbCBXw7xydGVuYmVyZ2VyIHVuZCBBbGV4aXMgVHJvbGluDQpTaXR6IHVuZCBS
ZWdpc3RlcmdlcmljaHQ6IE3DvG5jaGVuIEhSQiAxMzQ4MTANCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo=

