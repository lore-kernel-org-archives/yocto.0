Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0587CE00C9B; Tue,  6 Aug 2019 11:29:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [209.222.82.123 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE335E00C25
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 11:29:54 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx12.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 06 Aug 2019 18:29:48 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 6 Aug 2019 11:28:39 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 6 Aug 2019 11:28:39 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Belisko Marek <marek.belisko@gmail.com>
Thread-Topic: [yocto] U-boot enable not working for Raspberry Pi3
Thread-Index: AdVMdFsl/WD6MMNoQLOCFWV356rAjgASMIQAAA4mYrA=
Date: Tue, 6 Aug 2019 18:28:39 +0000
Message-ID: <667c8e38a3664b2c964e978b07cb6963@sakuraus.com>
References: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
	<CAAfyv34M_0dKu2ML0En8QyVCV5KXscZ6gYfZwE=-yrxxHuqxYA@mail.gmail.com>
In-Reply-To: <CAAfyv34M_0dKu2ML0En8QyVCV5KXscZ6gYfZwE=-yrxxHuqxYA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1565116188-893023-15436-30295-1
X-BESS-VER: 2019.1_20190805.2038
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.216940 [from 
	cloudscan20-198.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: U-boot enable not working for Raspberry Pi3
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
X-List-Received-Date: Tue, 06 Aug 2019 18:29:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyZWssDQoNClRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24sIHRoYXQgc2VlbXMgdG8gYmUg
dGhlIGNhc2UuIFdoYXQgaW1hZ2UgYXJlIHlvdSBidWlsZGluZyBzbyBJIGNhbiB0cnkgdGhhdCB0
byBzZWUgd2hhdCBJIGdldD8NCg0KQlIsDQpHcmVnIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+IEZyb206IEJlbGlza28gTWFyZWsgW21haWx0bzptYXJlay5iZWxpc2tvQGdtYWls
LmNvbV0NCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDA2LCAyMDE5IDExOjEyIEFNDQo+IFRvOiBH
cmVnIFdpbHNvbi1MaW5kYmVyZyA8R1dpbHNvbkBzYWt1cmF1cy5jb20+DQo+IENjOiBZb2N0byBs
aXN0IGRpc2N1c3Npb24gPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQo+IFN1YmplY3Q6IFJlOiBb
eW9jdG9dIFUtYm9vdCBlbmFibGUgbm90IHdvcmtpbmcgZm9yIFJhc3BiZXJyeSBQaTMNCj4gDQo+
IEhpIEdyZWcsDQo+IA0KPiBPbiBUdWUsIEF1ZyA2LCAyMDE5IGF0IDc6MTIgUE0gR3JlZyBXaWxz
b24tTGluZGJlcmcgPEdXaWxzb25Ac2FrdXJhdXMuY29tPg0KPiB3cm90ZToNCj4gPg0KPiA+IEkn
bSB3b3JraW5nIHdpdGggYSBZb2N0byBTdW1vIGJ1aWxkIHByb3ZpZGVkIHdpdGggUXQncyBib290
MnF0IHN5c3RlbS4gSSdtIHRyeWluZw0KPiB0byBlbmFibGUgdXNpbmcgRGFzIFUtYm9vdCB0byBs
b2FkIExpbnV4IGFzIGEgZmlyc3Qgc3RlcCBpbiB0cnlpbmcgdG8gZW5hYmxlIE9TVHJlZQ0KPiB1
cGRhdGVzLg0KPiA+DQo+ID4gSW4gdGhlIG1ldGEtcmFzcGJlcnJ5cGkgZG9jdW1lbnRhdGlvbiBp
cyBzYXlzIHRvIHNldDoNCj4gPg0KPiA+IFJQSV9VU0VfVV9CT09UID0gIjEiDQo+IENvdWxkIGJl
IHRoYSB0Ym9vdDJxdCBzb21laG93IGRyb3AgeW91ciBjb25maWcuIFBsZWFzZSB0cnkgdGluIHJ1
biBiaXRiYWtlIC1lDQo+IDxJTUFHRV9OQU1FPiB8IGdyZXAgXlJQSV9VU0VfVV9CT09UIHRvIGJl
IHN1cmUgdGhhdCB2YXJpYWJsZSBleGlzdHMuIEkNCj4gdXNlZCBpdCBtYW55IHRpbWVzIGFuZCBp
dCB3b3JrcyBwZXJmZWN0bHkgZmluZS4NCj4gPg0KPiA+IHRvIGVuYWJsZSB1LWJvb3QgZm9yIHRo
ZSByYXNwYmVycnlwaS4gSSBoYXZlIHNldCB0aGF0IHZhcmlhYmxlIGluIHRoZSB0b3AgbGV2ZWwN
Cj4gbG9jYWwuY29uZiBmaWxlIGJ1dCBJIGRvbid0IHNlZW0gdG8gYmUgZ2V0dGluZyBhbnkgY2hh
bmdlcyBpbiB0aGUgYnVpbGQuIE5vdGhpbmcgaW4gdGhlDQo+IGNvb2tlciBsb2cgc2hvd3MgYnVp
bGRpbmcgdS1ib290LCBhbmQgdGhlIHN0YXJ0IHVwIHNjcmVlbiBkb2Vzbid0IHNob3cgYW55IHUt
Ym9vdA0KPiBtZXNzYWdlcy4NCj4gPg0KPiA+IEl0IGFwcGVhcnMgdGhhdCBJJ20gbWlzc2luZyBu
ZWNlc3NhcnkgdG8gdHVybiB1LWJvb3Qgb24sIGNhbiBhbnlib2R5IHNoZWQgc29tZQ0KPiBsaWdo
dCBvbiB3aGF0IGlzIGdvaW5nIG9uPw0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPg0KPiA+IEdyZWcg
V2lsc29uLUxpbmRiZXJnDQo+ID4gd3d3LnNha3VyYXVzLmNvbQ0KPiA+IC0tDQo+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiB5b2N0byBtYWls
aW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy55
b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo+IA0KPiBCUiwNCj4gDQo+IG1hcmVrDQo+
IA0KPiAtLQ0KPiBhcyBzaW1wbGUgYW5kIHByaW1pdGl2ZSBhcyBwb3NzaWJsZQ0KPiAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IE1hcmVrIEJlbGlz
a28gLSBPUEVOLU5BTkRSQQ0KPiBGcmVlbGFuY2UgRGV2ZWxvcGVyDQo+IA0KPiBSdXNrYSBOb3Zh
IFZlcyAyMTkgfCBQcmVzb3YsIDA4MDA1IFNsb3ZhayBSZXB1YmxpYw0KPiBUZWw6ICs0MjEgOTE1
IDA1MiAxODQNCj4gc2t5cGU6IG1hcmVrd2hpdGUNCj4gdHdpdHRlcjogI29wZW5uYW5kcmENCj4g
d2ViOiBodHRwOi8vb3Blbi1uYW5kcmEuY29tDQo=

