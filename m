Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6375E00C44; Thu,  7 Jul 2016 00:48:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 129 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Jul 2016 00:48:00 PDT
Received: from cit-hm8-gw01.bmw-carit.de (cit-hm8-mail01.bmw-carit.de
	[212.118.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B23AE00C1D
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 00:48:00 -0700 (PDT)
Received: from [172.20.0.50] (port=23972 helo=cit-hm8-mail01.bmw-carit.de)
	by cit-hm8-gw01.bmw-carit.de with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1bL40H-00064x-1s; Thu, 07 Jul 2016 09:45:45 +0200
Received: from ULM-DC01.bmw-carit.intra ([fe80::41cf:62be:aacc:1aad]) by
	ULM-DC01.bmw-carit.intra ([fe80::41cf:62be:aacc:1aad%11]) with mapi id
	14.03.0123.003; Thu, 7 Jul 2016 09:45:45 +0200
X-CTCH-RefID: str=0001.0A0C0203.577E08A9.0147, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: Clemens Lang <Clemens.Lang@bmw-carit.de>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Thread-Topic: [yocto] linux/limits.h: No such file or directory
Thread-Index: AQHR1/QQSjIO26PZcUmqZTdCozHTy6AMdbcA
Date: Thu, 7 Jul 2016 07:45:43 +0000
Message-ID: <A67957CD-65BD-43D0-ABA6-7F14D62D82EC@bmw-carit.de>
References: <CY1PR0101MB15942895A402A660E25E1963D73B0@CY1PR0101MB1594.prod.exchangelabs.com>
In-Reply-To: <CY1PR0101MB15942895A402A660E25E1963D73B0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.40.100.13]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux/limits.h: No such file or directory
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
X-List-Received-Date: Thu, 07 Jul 2016 07:48:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FB25A4E5F170844FAEA55D5881BD308D@bmw-carit.de>
Content-Transfer-Encoding: base64

SGksDQoNClRha2FzaGkgTWF0c3V6YXdhIDx0bWF0c3V6YXdhQHVpZXZvbHV0aW9uLmNvbT4gd3Jv
dGU6DQoNCj4gPmNvbmZpZ3VyZTogZXJyb3I6IEMgcHJlcHJvY2Vzc29yICJ4ODZfNjQtcG9reXNk
ay1saW51eC1nY2MgLUUgIA0KPiAtLXN5c3Jvb3Q9L21udC9zc2QyLz55b2N0by9kZXYvdG1wL3g4
Ni13azMvc3lzcm9vdHMveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4ICANCj4gIiBmYWls
cyBzYW5pdHkgY2hlY2sNCj4gPnwgU2VlIGBjb25maWcubG9nJyBmb3IgbW9yZSBkZXRhaWxzLg0K
Pg0KPiBJZiBJIGxvb2sgaW50byBjb25maWcubG9nICANCj4gKGdjYy00LjkuMi9idWlsZC54ODZf
NjQtcG9reXNkay1saW51eC54ODZfNjQtcG9reXNkay1saW51eC9saWJnY2MvY29uZmlnLmxvZykg
IA0KPiBhcyBzdWdnZXN0ZWQsIEkgY2FuIHNlZSB0aGUgZm9sbG93aW5nLg0KPiBJdCBzYXlzIGxp
bnV4L2xpbWl0cy5oIGlzIG5vdCBmb3VuZC4NCj4NCj4gKGluIGNvbmZpZy5sb2cpDQo+ID51c3Iv
aW5jbHVkZS9iaXRzL2xvY2FsX2xpbS5oOjM4OjI2OiBmYXRhbCBlcnJvcjogbGludXgvbGltaXRz
Lmg6IE5vIHN1Y2ggIA0KPiBmaWxlIG9yIGRpcmVjdG9yeQ0KDQpUaGlzIGxvb2tzIGEgbG90IGxp
a2UgYSBwcm9ibGVtIHdl4oCZdmUgc2VlbiBhIHdoaWxlIGFnby4gU2VlDQogICBodHRwczovL2xp
c3RzLnlvY3RvcHJvamVjdC5vcmcvcGlwZXJtYWlsL3lvY3RvLzIwMTUtSnVseS8wMjU4NTYuaHRt
bA0Kd2hpY2ggaXMgdGhlIG1haWxpbmcgbGlzdCBwb3N0IGEgY29sbGVhZ3VlIHNlbnQgdG8gdGhl
IGxpc3QgYmFjayB0aGVuLg0KDQpMb29raW5nIGF0IG91ciBnaXQgaGlzdG9yeSwgdGhlIHdvcmth
cm91bmQgd2UgZGlkIGJhY2sgdGhlbiB3YXMgYWRkIGEgIA0KZGVwZW5kZW5jeSBmcm9tIGdjYy1j
cm9zc3Nkay1pbml0aWFsIHRvIG5hdGl2ZXNkay1saW51eC1saWJjLWhlYWRlcnMgaWYgIA0KJFRB
UkdFVF9PUyBzdGFydHMgd2l0aCDigJxsaW51eOKAnS4NCg0KDQpIVEgsDQpDbGVtZW5zDQotLSAN
CkJNVyBDYXIgSVQgR21iSA0KQ2xlbWVucyBMYW5nDQpTcGV6aWFsaXN0IEVudHdpY2tsdW5nDQpM
aXNlLU1laXRuZXItU3RyYcOfZSAxNA0KODkwODEgVWxtDQoNClRlbDogKzQ5LTczMS0zNzgwNDE4
Mg0KTWFpbDogY2xlbWVucy5sYW5nQGJtdy1jYXJpdC5kZQ0KV2ViOiBodHRwOi8vd3d3LmJtdy1j
YXJpdC5kZQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCkJNVyBDYXIgSVQgR21iSA0KR2VzY2jDpGZ0c2bDvGhyZXI6
IE1pY2hhZWwgV8O8cnRlbmJlcmdlciB1bmQgQWxleGlzIFRyb2xpbg0KU2l0eiB1bmQgUmVnaXN0
ZXJnZXJpY2h0OiBNw7xuY2hlbiBIUkIgMTM0ODEwDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K

