Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07566E00C9C; Thu, 29 Aug 2019 10:40:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.222.82.122 listed in list.dnswl.org]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76483E00BB5
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 10:40:11 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx9.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Thu, 29 Aug 2019 17:40:09 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 29 Aug 2019 10:39:59 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 29 Aug 2019 10:39:59 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Thread-Topic: [yocto][meta-raspberrypi] Error trying to generate Raspberry Pi
	initramfs
Thread-Index: AdVekLnxmkGsEIiMSGqlPjLCWhCmVA==
Date: Thu, 29 Aug 2019 17:39:59 +0000
Message-ID: <5d1cad0e5416442aad80dd7faca08983@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.158]
MIME-Version: 1.0
X-BESS-ID: 1567100394-893017-30460-170105-6
X-BESS-VER: 2019.1_20190823.2224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.217855 [from 
	cloudscan9-86.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_RULE7568M, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Error trying to generate Raspberry Pi initramfs
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
X-List-Received-Date: Thu, 29 Aug 2019 17:40:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgWm9yYW4sDQpUaGFua3MgZm9yIHlvdXIgY29tbWVudHMuIA0KDQpJJ20gYWRkaW5nIFttZXRh
LXJhc3BiZXJyeXBpXSB0byB0aGUgYXMgSSBoYXZlIHJlYWxpemVkIHRoYXQgc29tZSBtaWdodCBo
YXZlIG1pc3NlZCB0aGlzIFJhc3BiZXJyeS1waSBzcGVjaWZpYyBxdWVzdGlvbi4NCg0KVGhhbmtz
LA0KR3JlZyBXaWxzb24tTGluZGJlcmfCoCANCiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gRnJvbTogWm9yYW4gU3RvanNhdmxqZXZpYyBbbWFpbHRvOnpvcmFuLnN0b2pzYXZsamV2
aWNAZ21haWwuY29tXQ0KPiBTZW50OiBXZWRuZXNkYXksIEF1Z3VzdCAyOCwgMjAxOSAwNTowOCBQ
TQ0KPiBUbzogR3JlZyBXaWxzb24tTGluZGJlcmcgPEdXaWxzb25Ac2FrdXJhdXMuY29tPg0KPiBD
YzogWW9jdG8gbGlzdCBkaXNjdXNzaW9uIDx5b2N0b0B5b2N0b3Byb2plY3Qub3JnPg0KPiBTdWJq
ZWN0OiBSZTogW3lvY3RvXSBFcnJvciB0cnlpbmcgdG8gZ2VuZXJhdGUgUmFzcGJlcnJ5IFBpIGlu
aXRyYW1mcw0KPiANCj4gVGhyZWUgdGhpbmdzOg0KPiBbMV0gVGhlIGluaXRyYW1mcyBpcyBOT1Qg
dGhlIGluaXRyZCAodGUgc2Vjb25kIG9uZSBpcyB0aGUgdGVtcA0KPiAgICAgICBzdGFnZSBpbiBi
b290aW5nIHRoZSBsaW51eCB0byBtbWNibGsuLi4pOyBbMl0gVGhlcmUgYXJlIHNvbWUgY29uZmln
IHBhcmFtZXRlcnMNCj4geW91IG5lZWQgdG8gc2V0IHVwIGluDQo+ICAgICAgIHlvdXIga2VybmVs
IC5jb25maWcgZmlsZToNCj4gICAgICAgaHR0cHM6Ly9naXRodWIuY29tL1pvcmFuU3RvanNhdmxq
ZXZpYy9iYmIteW9jdG8vYmxvYi9tYXN0ZXIvY3VzdG9tL2NvbmZpZy0NCj4gaW5pdHJhbWZzDQo+
IFszXSBUaGUgY29tbWFuZCBsaW5lIGlzIGZvcm1lZCBpbiB1LWJvb3Qgb3IgaW4gZ3J1YjIsIG9y
IGluDQo+ICAgICAgIHlvdXIgTGludXggYm9vdCBsb2FkZXIgKHlvdSBuZWVkIHRvIGFkZCBzb21l
IGxpbmVzDQo+ICAgICAgIGluIGFzaCB1LWJvb3QgY29uZmlnIHNjcmlwdCwgYXMgdGhlIGZvbGxv
d2luZyBleGFtcGxlKToNCj4gICAgICAgaHR0cHM6Ly9naXRodWIuY29tL1pvcmFuU3RvanNhdmxq
ZXZpYy9iYmIteW9jdG8vYmxvYi9tYXN0ZXIvY3VzdG9tL3UtYm9vdC5hc2gNCj4gDQo+IEdvb2Qg
THVjaywNCj4gWm9yYW4NCj4gX19fX19fXw0KPiANCj4gDQo+IE9uIFdlZCwgQXVnIDI4LCAyMDE5
IGF0IDc6MjYgUE0gR3JlZyBXaWxzb24tTGluZGJlcmcNCj4gPEdXaWxzb25Ac2FrdXJhdXMuY29t
PiB3cm90ZToNCj4gPg0KPiA+IEknbSB0cnlpbmcgdG8gZ2VuZXJhdGUgYW4gaW5pdHJhbWZzIGZv
ciBhIHJhc3BiZXJyeSBwaSAzIGZvciBhIHN1bW8gYnVpbGQuIFdlIGFyZQ0KPiBiYXNlZCBvZmYg
b2YgdGhlIFF0IGJvb3QycXQgc3lzdGVtLg0KPiA+DQo+ID4gSSBoYXZlIGZvbGxvd2VkIHRoZSBp
bnN0cnVjdGlvbnMgaW4gdGhlIG1ldGEtcmFzcGJlcnJ5cGkucGRmIGRvY3VtZW50YXRpb24sDQo+
IHNlY3Rpb24gMy4xNCBJbWFnZSB3aXRoIEluaXRyYW1mcy4NCj4gPg0KPiA+IEkgZWRpdGVkIHRo
ZSBtZXRhLXJhc3BiZXJyeXBpL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXJhc3BiZXJyeS5p
bmMgZmlsZSBhbmQNCj4gYWRkZWQgdGhlIHZhcmlhYmxlcyBpbnRvIG15IGxvY2FsLmNvbmYgZmls
ZS4gSSBjcmVhdGVkIGEgcnBpLW1pbmltYWwtaW5pdHJhbWZzLmJiDQo+IHJlY2lwZSBhbmQgaXQg
aXMgY3JlYXRlZCB3aGVuIEkgYnVpbGQgdGhlIHN5c3RlbS4gQnV0IHRoZSBjb21tYW5kIGxpbmUg
dGhhdCBpcyBwdXQNCj4gaW50byB0aGUgYm9vdCBwYXJ0aXRpb24gaXM6DQo+ID4NCj4gPiBkd2Nf
b3RnLmxwbV9lbmFibGU9MCAgcm9vdD0vZGV2L21tY2JsazBwMiByb290ZnN0eXBlPWV4dDQgcm9v
dHdhaXQNCj4gZmJjb249bWFwOjEwIGZiY29uPWZvbnQ6VkdBOHg4DQo+ID4NCj4gPiBObyBpbml0
cmFtZnMuDQo+ID4NCj4gPiBJbiB0aGUgbGludXgtcmFzcGJlcnJ5LmluYyBmaWxlLCBhZnRlciB0
aGUgaW5zZXJ0aW9uIHBvaW50IGZvciB0aGUgbmV3IGtlcm5lbCB2YXJpYWJsZXMsDQo+IHRoZXJl
IGlzIGEgdGVzdCBmb3IgS0VSTkVMX0lOSVRSQU1GUy4gSSB0cmllZCBzZXR0aW5nIHRoaXMgaW4g
bXkgbG9jYWwuY29uZiBmaWxlLCBidXQNCj4gd2hlbiBJIGRvIEkgZ2V0IGFuIGVycm9yIGZvciBh
IG1pc3NpbmcgZmlsZToNCj4gPg0KPiA+IHwgL2hvbWUvLi4uLi90bXAvZGVwbG95L2ltYWdlcy9y
YXNwYmVycnlwaTMvdUltYWdlMS1yYXNwYmVycnlwaTMuYmluOg0KPiA+IHwgTm8gc3VjaCBmaWxl
IG9yIGRpcmVjdG9yeQ0KPiA+DQo+ID4gU28sIGFwcGFyZW50bHkgdGhhdCBjYW4ndCBiZSBzZXQg
ZGlyZWN0bHkuDQo+ID4NCj4gPiBUaGVyZSBzZWVtcyB0byBiZSBzb21ldGhpbmcgbWlzc2luZyBp
biB0aGUgaW5zdHJ1Y3Rpb25zIGluIHRoZSBtZXRhLQ0KPiByYXNwYmVycnlwaS5wZGYgZG9jdW1l
bnRhdGlvbi4gQW55b25lIHRoYXQgaGFzIGFueSBleHBlcmllbmNlIHdpdGggc2V0dGluZyB0aGlz
IHVwDQo+IGFuZCBjYW4gaGVscCBtZSBmaWd1cmUgb3V0IHdoYXQgSSdtIG1pc3NpbmcsIEkgd291
bGQgZ3JlYXRseSBhcHByZWNpYXRlIHRoZSBoZWxwLg0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBH
cmVnIFdpbHNvbi1MaW5kYmVyZw0KPiA+DQo+ID4NCj4gPg0KPiA+DQo+ID4NCj4gPg0KPiA+DQo+
ID4NCj4gPg0KPiA+DQo+ID4NCj4gPiAtLQ0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+ID4geW9jdG8gbWFpbGluZyBsaXN0DQo+ID4geW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0
aW5mby95b2N0bw0K

