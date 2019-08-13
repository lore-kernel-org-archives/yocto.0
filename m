Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0880E0055C; Tue, 13 Aug 2019 05:09:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
X-Greylist: delayed 502 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Aug 2019 05:09:10 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA238E0055C
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 05:09:10 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 2D48A184AB;
	Tue, 13 Aug 2019 14:00:47 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id ntd4FFSJhLHg; Tue, 13 Aug 2019 14:00:46 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 203531849F;
	Tue, 13 Aug 2019 14:00:45 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C0A101E087;
	Tue, 13 Aug 2019 14:00:45 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B48121E08B;
	Tue, 13 Aug 2019 14:00:45 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Tue, 13 Aug 2019 14:00:45 +0200 (CEST)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by thoth.se.axis.com (Postfix) with ESMTP id A614F5F9;
	Tue, 13 Aug 2019 14:00:45 +0200 (CEST)
Received: from xbox06.axis.com (10.0.15.176) by XBOX03.axis.com (10.0.5.17)
	with Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Tue, 13 Aug 2019 14:00:44 +0200
Received: from xbox06.axis.com ([fe80::59d2:4cb0:3900:3c35]) by
	xbox06.axis.com ([fe80::59d2:4cb0:3900:3c35%12]) with mapi id
	15.00.1395.000; Tue, 13 Aug 2019 14:00:44 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Philip Balister <philip@balister.org>, Nicolas Dechesne
	<nicolas.dechesne@linaro.org>, "Volosincu, Andreea S"
	<andreea.volosincu@windriver.com>
Thread-Topic: [yocto] yocto dev day ELCE 2019 Lyon ?
Thread-Index: AQHVMjBYqcJJtrYPZ0i4Yh8p48/xPKa54goAgABhzcCAAitQgIA8x/tw
Date: Tue, 13 Aug 2019 12:00:44 +0000
Message-ID: <479b317e1dc64b4cafff2c12f59e72d9@xbox06.axis.com>
References: <OFDFFF8F9D.BA13B49C-ONC125842D.00221F33-C125842D.002264A7@INDUSTRONIC.DE>
	<CAP71Wjy4RwRpjFD31wA_b8CpZn5u+2wHHscwCvS7zFCp9pruoQ@mail.gmail.com>
	<e31b617f50e44913a1bb0203e39527c4@xbox06.axis.com>
	<bb27d70f-608c-ec0c-bfa0-3b89a953e45a@balister.org>
In-Reply-To: <bb27d70f-608c-ec0c-bfa0-3b89a953e45a@balister.org>
Accept-Language: en-US, sv-FI
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: yocto dev day ELCE 2019 Lyon ?
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
X-List-Received-Date: Tue, 13 Aug 2019 12:09:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQaGlsaXAgQmFsaXN0ZXIgPHBo
aWxpcEBiYWxpc3Rlci5vcmc+DQo+IFNlbnQ6IGRlbiA1IGp1bGkgMjAxOSAyMzo0Mg0KPiBUbzog
UGV0ZXIgS2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3RlZHRAYXhpcy5jb20+OyBOaWNvbGFz
IERlY2hlc25lDQo+IDxuaWNvbGFzLmRlY2hlc25lQGxpbmFyby5vcmc+OyBUaG9tYXMgUm9vcw0K
PiA8VGhvbWFzLlJvb3NAaW5kdXN0cm9uaWMuZGU+OyBWb2xvc2luY3UsIEFuZHJlZWEgUw0KPiA8
YW5kcmVlYS52b2xvc2luY3VAd2luZHJpdmVyLmNvbT4NCj4gQ2M6IFlvY3RvIGxpc3QgZGlzY3Vz
c2lvbiA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4NCj4gU3ViamVjdDogUmU6IFt5b2N0b10geW9j
dG8gZGV2IGRheSBFTENFIDIwMTkgTHlvbiA/DQo+IA0KPiBJbiAwNy8wNC8yMDE5IDA2OjM4IEFN
LCBQZXRlciBLamVsbGVyc3RlZHQgd3JvdGU6DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+ID4+IEZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG8tDQo+
IGJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZz4NCj4gPj4gT24gQmVoYWxmIE9mIE5pY29sYXMgRGVj
aGVzbmUNCj4gPj4gU2VudDogZGVuIDQganVsaSAyMDE5IDA4OjQ1DQo+ID4+IFRvOiBUaG9tYXMg
Um9vcyA8VGhvbWFzLlJvb3NAaW5kdXN0cm9uaWMuZGU+OyBWb2xvc2luY3UsIEFuZHJlZWEgUw0K
PiA+PiA8YW5kcmVlYS52b2xvc2luY3VAd2luZHJpdmVyLmNvbT4NCj4gPj4gQ2M6IFlvY3RvIGxp
c3QgZGlzY3Vzc2lvbiA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4NCj4gPj4gU3ViamVjdDogUmU6
IFt5b2N0b10geW9jdG8gZGV2IGRheSBFTENFIDIwMTkgTHlvbiA/DQo+ID4+DQo+ID4+IEhpIFRo
b21hcywNCj4gPj4NCj4gPj4gT24gVGh1LCBKdWwgNCwgMjAxOSBhdCA4OjE4IEFNIFRob21hcyBS
b29zDQo+IDxUaG9tYXMuUm9vc0BpbmR1c3Ryb25pYy5kZT4NCj4gPj4gd3JvdGU6DQo+ID4+Pg0K
PiA+Pj4gSGksDQo+ID4+PiBhcmUgdGhlcmUgYW55IHBsYW5zIHRvIG9yZ2FuaXplIGEgeW9jdG8g
ZGV2IGRheSBpbiBPY3RvYmVyIDIwMTksDQo+ID4+PiBMeW9uLiBFbWJlZGRlZCBMaW51eCBDb25m
ZXJlbmNlIEV1cm9wZT8NCj4gPj4+IGNoZWVycywgVGhvbWFzDQo+ID4+DQo+ID4+IFllcywgaW4g
ZmFjdCB3ZSBhcmUgdHJ5aW5nIHNvbWV0aGluZyBuZXcgZm9yIHRoZSBmaXJzdCB0aW1lIGF0IEVM
Qy1FDQo+ID4+IHRoaXMgeWVhciwgc2VlOg0KPiA+PiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVj
dC5vcmcvcGlwZXJtYWlsL3lvY3RvLzIwMTktTWF5LzA0NTA4OC5odG1sDQo+ID4+DQo+ID4+IFRo
ZXJlIHdpbGwgYmUgYSAyLWRheSAiWW9jdG8gUHJvamVjdCBTdW1taXQiIHdpdGggYSBtaXggb2YN
Cj4gPj4gcHJlc2VudGF0aW9ucy90YWxrcywgdHJhaW5pbmcgY2xhc3NlcyBhbmQgZGV2ZWxvcGVy
cyBtZWV0aW5ncywNCj4gPj4gaW5jbHVkaW5nIGEgc29jaWFsIGV2ZW50IGluIHRoZSBldmVuaW5n
Lg0KPiA+Pg0KPiA+PiBjYydpbmcgQW5kcmVlYSBpZiB0aGVyZSBhcmUgbW9yZSBxdWVzdGlvbnMu
DQo+ID4NCj4gPiBXaWxsIHRoaXMgcmVwbGFjZSBPRURFTSB0b28/DQo+IA0KPiBZZXMuIDUgZGF5
cyBvZiBjb25mZXJlbmNlIHNlc3Npb25zIG1lZXRpbmdzIGlzIGVub3VnaCBmb3IgYW55b25lIDop
DQo+IA0KPiBQaGlsaXANCj4gDQo+ID4gLy9QZXRlcg0KDQpMb29raW5nIGF0IHRoZSBpbmZvcm1h
dGlvbiBvbiB0aGUgTGludXggRm91bmRhdGlvbiBwYWdlIGFib3V0IE9TUy9FTENFIA0KKGh0dHBz
Oi8vZXZlbnRzLmxpbnV4Zm91bmRhdGlvbi5vcmcvZXZlbnRzL2VtYmVkZGVkLWxpbnV4LWNvbmZl
cmVuY2UtZXVyb3BlLTIwMTkvcHJvZ3JhbS9jby1sb2NhdGVkLWV2ZW50cy8pLCANCmlzIGl0IGNv
cnJlY3QgdGhhdCB0aGUgc29jaWFsIGV2ZW50IGZvciB0aGUgWW9jdG8gUHJvamVjdCBTdW1taXQg
d2lsbCANCmJlIG9uICJEYXkgMiIsIGkuZS4sIEZyaWRheT8gSSBoYWQgZXhwZWN0ZWQgaXQgdG8g
YmUgb24gVGh1cnNkYXkgYXMgSSANCmFzc3VtZSBwZW9wbGUgd2FudCB0byBnbyBob21lIG9uIEZy
aWRheSBldmVuaW5nLi4uDQoNCi8vUGV0ZXINCg0K

