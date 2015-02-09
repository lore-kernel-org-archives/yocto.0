Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B524EE00596; Mon,  9 Feb 2015 05:25:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F3BEE002F9
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 05:25:56 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AjkGAIC02FSHCzIm/2dsb2JhbABcgmQiUloEgn69T4ImhXECHHpDAQEBAQEBfIQMAQEBAQMSERE6CwwEAgEIDQEDBAEBAQICBh0DAgICHxEUAQgIAQEEDgUIARmHdwMRAQymPIpJkBQNhWUBAQEBAQEBAQEBAQEBAQEBAQEBAQEXgSGMLYF5FhsHBoJiLoEUBY8bg1CEFQGDFIUIhhqGACKDbm8BgUN+AQEB
X-IronPort-AV: E=Sophos;i="5.09,544,1418101200"; d="scan'208";a="90661154"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	09 Feb 2015 08:25:54 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC02.global.avaya.com) ([135.64.58.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	09 Feb 2015 08:25:53 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC02.global.avaya.com ([135.64.58.12]) with mapi id
	14.03.0174.001; Mon, 9 Feb 2015 14:25:51 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
Thread-Topic: [yocto] Multiple packages from single recipe file
Thread-Index: AdBEVmdYTHj4lBUISYySWRMx3zG2rgAC9HOAAAIoToA=
Date: Mon, 9 Feb 2015 13:25:50 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A34C5C7@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A34C510@AZ-FFEXMB01.global.avaya.com>
	<CAK5mtew20WE6O2rAuNNTqMpFU2jydOBoHYVnqzRxODD5EAGvAw@mail.gmail.com>
In-Reply-To: <CAK5mtew20WE6O2rAuNNTqMpFU2jydOBoHYVnqzRxODD5EAGvAw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple packages from single recipe file
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
X-List-Received-Date: Mon, 09 Feb 2015 13:25:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkluIGNhc2Ugb2Ygd3JpdGluZyB0aGUgc3BlYyBmaWxlIGZvciBSUE0gd2UgbmVlZCB0
byBjcmVhdGUgZmlyc3QgdGhlIGRpcmVjdG9yeSBsYXlvdXQgYW5kIHRoZW4gcHV0dGluZyB0aGUg
ZmlsZXMgdXNpbmcgY3Agb3Igb3RoZXIgY29tbWFuZHMgYW5kIHRoZW4gcGVyZm9ybSAlZmlsZSBl
dGMuIHN0dWZmLiBCdXQgd2hlbiBJIHRha2UgYSBsb29rIHRvIHNvbWUgb2YgdGhlIHJlY2lwZSBm
aWxlIHByZXNlbnQgdW5kZXIgcG9reSBzb21ldGltZSBJIHNlZSBGSUxFU18ke1BOfSBhbmQgaXQg
ZGlkbuKAmXQgc3BlY2lmeSBmcm9tIHdoZXJlIHRvIHBpY2sgdGhlIGZpbGVzLg0KTWF5IGJlIHRo
ZSBjYXNlIGlzIHRoYXQgdGhlc2UgcHJvamVjdCB1c2UgQXV0byB0b29scyBmb3IgYnVpbGRpbmcu
IEJ1dCBpbiBvdXIgY2FzZSB3ZSBoYXZlIHBsYWluIE1ha2VmaWxlIGZvciBidWlsZGluZyBhbmQg
dGhlbiBjb2xsZWN0aW5nIGZpbGVzIGZyb20gZGlmZmVyZW50IGxvY2F0aW9uIGFuZCBwdXR0aW5n
IGluIHBhY2thZ2UuDQpTbyBJIHdhcyB0aGlua2luZyBjYW4gYmUgdXNlIHN1Y2ggc2hvcnRjdXQg
bWV0aG9kIGZvciBzdWNoIGpvYi4NCg0KLUFiaGluYXYNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCkZyb206IFZpY3RvciBSb2RyaWd1ZXogW21haWx0bzp2bS5yb2QyNUBnbWFpbC5jb21d
IA0KU2VudDogTW9uZGF5LCBGZWJydWFyeSAwOSwgMjAxNSAxODo0Ng0KVG86IEJpcG5lc2gsIEFi
aGluYXYgKEFiaGluYXYpDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6
IFt5b2N0b10gTXVsdGlwbGUgcGFja2FnZXMgZnJvbSBzaW5nbGUgcmVjaXBlIGZpbGUNCg0KT24g
TW9uLCBGZWIgOSwgMjAxNSBhdCA0OjUxIEFNLCBCaXBuZXNoLCBBYmhpbmF2IChBYmhpbmF2KSA8
YWJoaW5hdmJpcG5lc2hAYXZheWEuY29tPiB3cm90ZToNCj4gSGksDQo+DQo+DQo+DQo+IEkgd2Fz
IGxvb2tpbmcgZnVydGhlciBpbnRvIHRoZSBkb2N1bWVudCB0byBmaW5kIGEgd2F5IHRvIGRlZmlu
ZSANCj4gbXVsdGlwbGUgcGFja2FnZXMgZnJvbSBhIHNpbmdsZSByZWNpcGUgZmlsZS4gQXMgaW4g
Y3VycmVudCByZWNpcGUgSSANCj4gaGF2ZSB3cml0dGVuIGENCj4gZG9faW5zdGFsbCgpIGZ1bmN0
aW9uIGZvciBwdXR0aW5nIGZpbGVzIGluIHBhcnRpY3VsYXIgZGlyZWN0b3JpZXMuIFNvIA0KPiBp
dCBjb3BpZXMgZmlsZXMgZnJvbSAke1N9IHRvICR7RH0uDQo+DQo+IEJ1dCBzb21lIG9mIHRoZSBk
b2N1bWVudHMgdGFsayBhYm91dCBtdWx0aXBsZSBwYWNrYWdlIHNvbWV0aGluZyBhcyANCj4gYmVs
b3cNCj4NCj4NCj4NCj4gRklMRVNfJHtQTn0gPSAiXA0KPg0KPiAgICAgJHtiaW5kaXJ9LyogXA0K
Pg0KPiAgICAgJHtzYmluZGlyfS8qIFwNCj4NCj4gICAgICR7bGliZXhlY2Rpcn0vKiBcDQo+DQo+
ICAgICAke2xpYmRpcn0vbGliKi5zby4qIFwNCj4NCj4gICAgICR7c3lzY29uZmRpcn0gXA0KPg0K
PiAgICAgJHtzaGFyZWRzdGF0ZWRpcn0gXA0KPg0KPiAgICAgJHtsb2NhbHN0YXRlZGlyfSBcDQo+
DQo+ICAgICAvYmluLyogXA0KPg0KPiAgICAgL3NiaW4vKiBcDQo+DQo+ICAgICAvbGliLyouc28q
IFwNCj4NCj4gICAgICR7ZGF0YWRpcn0vJHtQTn0gXA0KPg0KPiAgICAgJHtsaWJkaXJ9LyR7UE59
LyogXA0KPg0KPiAgICAgJHtkYXRhZGlyfS9waXhtYXBzIFwNCj4NCj4gICAgICR7ZGF0YWRpcn0v
YXBwbGljYXRpb25zIFwNCj4NCj4gICAgICR7ZGF0YWRpcn0vaWRsIFwNCj4NCj4gICAgICR7ZGF0
YWRpcn0vb21mIFwNCj4NCj4gICAgICR7ZGF0YWRpcn0vc291bmRzIFwNCj4NCj4gICAgICR7bGli
ZGlyfS9ib25vYm8vc2VydmVycyINCj4NCj4NCj4NCj4gRklMRVNfJHtQTn0tZGJnID0gIlwNCj4N
Cj4gICAgICR7YmluZGlyfS8uZGVidWcgXA0KPg0KPiAgICAgJHtzYmluZGlyfS8uZGVidWcgXA0K
Pg0KPiAgICAgJHtsaWJleGVjZGlyfS8uZGVidWcgXA0KPg0KPiAgICAgJHtsaWJkaXJ9Ly5kZWJ1
ZyBcDQo+DQo+ICAgICAvYmluLy5kZWJ1ZyBcDQo+DQo+ICAgICAvc2Jpbi8uZGVidWcgXA0KPg0K
PiAgICAgL2xpYi8uZGVidWcgXA0KPg0KPiAgICAgJHtsaWJkaXJ9LyR7UE59Ly5kZWJ1ZyINCj4N
Cj4NCj4NCj4gQnV0IEkgYW0gbm90IGdldHRpbmcgaG93IHRoZSBzb3VyY2UgZm9yIHN1Y2ggZmls
ZSB3aWxsIGJlIGRldGVybWluZSBhcyANCj4gaW4gb3VyIHByb2plY3QgZmlsZXMgd2lsbCBiZSBw
cmVzZW50IGluIGRpZmZlcmVudCBkaXJlY3RvcmllcyBhbmQgbmVlZCANCj4gdG8gYmUgcGxhY2Vk
IGluIHNvbWUgcHJlZGVmaW5lZCBwYXRocy4NCj4NCj4NCj4NCj4gU28gaG93IHdlIGNhbiBhY2hp
ZXZlIHRoZSBzYW1lLg0KPg0KPg0KPg0KPiBUaGFua3MsDQo+DQo+IEFiaGluYXYNCj4NCj4NCj4g
LS0NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
eW9jdG8gbWFpbGluZyBsaXN0DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly91
cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19saXN0cy55b2N0b3By
b2plYw0KPiB0Lm9yZ19saXN0aW5mb195b2N0byZkPUF3SUJhUSZjPUJGcFdRdzhic3VLcGwxU2dp
Wkg2NFEmcj1nZUoxd0I3eFJJTW10DQo+IGVZQjJGbzhlc0wzMkJPV3Z3UDFIbVkwWXVMRUI0RSZt
PUxlMkV0Q2pqOUFXMDh0NExyeDdUTkR6ZlpCM3FuVUlOVmlLTmcNCj4gbHk4TmZZJnM9NHJPNi1x
Y1g0TGh2ZmMwV1hPN1o3bmpqX09Ya01IbzNLX0lUQzJQNWNtZyZlPQ0KPg0KDQoNCkhpICwgYmFz
aWNhbGx5IHRoZSB5b2N0byByZWNlcGVpcyB3b3JrIGV4YWN0bHkgYXMgYW4gc3BlYyBmaWxlOg0K
DQp3d3cucnBtLm9yZy9tYXgtcnBtL3MxLXJwbS1idWlsZC1jcmVhdGluZy1zcGVjLWZpbGUuaHRt
bA0KDQpUaGUgc2NlbmFyaW8geW91IG1lbnRpb24gaXMgcG9zc2libGU6DQoNCnJwbTUub3JnL2Rv
Y3MvcnBtLWd1aWRlLmh0bWwNCg0KSG9wZSBpdCBoZWxwcw0KDQpWaWN0b3IgUm9kcmlndWV6DQo=

