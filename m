Return-Path: <prvs=114292462=Thomas.Koeller@baslerweb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D8A8E00C25; Tue,  6 Aug 2019 07:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [80.156.24.166 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Aug 2019 07:05:47 PDT
Received: from mail01.baslerweb.com (mail01.baslerweb.com [80.156.24.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A12F9E00B8F
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 07:05:47 -0700 (PDT)
Received: from unknown (HELO ahr205s.basler.corp) ([172.16.20.205])
	by mail01-out.baslerweb.com with ESMTP; 06 Aug 2019 16:04:43 +0200
From: "Koeller, Thomas" <Thomas.Koeller@baslerweb.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: -staticdev packages not in sdk
Thread-Index: AQHVTFWso6fd5X0pbUaUbh5PH0TYwg==
Date: Tue, 6 Aug 2019 14:04:41 +0000
Message-ID: <1565100281929.57461@baslerweb.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.16.20.16]
x-c2processedorg: edc209ba-7b98-423a-8e4d-b8fa22bc0743
MIME-Version: 1.0
Subject: -staticdev packages not in sdk
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
X-List-Received-Date: Tue, 06 Aug 2019 14:05:49 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCmJyb3dzaW5nIHRoZSBsaXN0IGFyY2hpdmVzIEkgY2FtZSBhY3Jvc3MgYW4gb2xkZXIg
dGhyZWFkIHRoYXQgZXhhY3RseSBkZXNjcmliZXMgdGhlIHByb2JsZW0gSSBhbSBjdXJyZW50bHkg
c3RydWdnbGluZyB3aXRoOg0KDQpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvcGlwZXJt
YWlsL3lvY3RvLzIwMTgtRmVicnVhcnkvMDM5OTUwLmh0bWwNCg0KSW4gc2hvcnQsIEkgaGF2ZSBh
IHJlY2lwZSB0aGF0IHByb2R1Y2VzIG9ubHkgYSBjb3VwbGUgb2YgaGVhZGVyIGZpbGVzIGFuZCBh
IHNpbmdsZSBzdGF0aWMgbGlicmFyeSwgbm90aGluZyB0byBiZSBpbnN0YWxsZWQgb24gdGhlIHRh
cmdldC4gU28gdGhlIGJhc2UgcGFja2FnZSBpcyBlbXB0eSwgd2hpY2ggaXMgd2h5IEkgaGF2ZSAn
QUxMT1dfRU1QVFlfJHtQTn0gPSAiMSInIGluIGl0cyByZWNpcGUuIEluIG15IGltYWdlIGRlZmlu
aXRpb24gSSBoYXZlICdTREtJTUFHRV9GRUFUVVJFU19hcHBlbmQgPSAiIHN0YXRpY2Rldi1wa2dz
IicsIHNvIEkgZXhwZWN0IHRoZSAtc3RhdGljZGV2IHBhY2thZ2UgdG8gYmUgaW5jbHVkZWQgd2hl
biBnZW5lcmF0aW5nIHRoZSBTREsuIFRoaXMgaXMsIGhvd2V2ZXIsIG5vdCB0aGUgY2FzZS4gV2hp
bGUgYSBsYXJnZSBudW1iZXIgb2YgLXN0YXRpY2RldiBwYWNrYWdlcyBmcm9tIGRpZmZlcmVudCBy
ZWNpcGVzIGlzIG5vdyBpbmNsdWRlZCBpbiB0aGUgU0RLLCBvbmx5IHRoZSAtZGV2IHBhY2thZ2Ug
aXMgaW5jbHVkZWQgZm9yIG15IHJlY2lwZSwgbm90IHRoZSAtc3RhdGljZGV2ICh0aG91Z2ggdGhl
IGNvcnJlc3BvbmRpbmcgcnBtIGlzIGFjdHVhbGx5IGJ1aWx0IGFuZCBjb250YWlucyB0aGUgbGli
cmFyeSBhcyBleHBlY3RlZCwgaXQganVzdCBpcyBub3QgaW5zdGFsbGVkKS4NCg0KVGhlIGFyY2hp
dmVkIG1haWwgdGhyZWFkIHJlZmVyZW5jZWQgYWJvdmUgc3VnZ2VzdHMgYWRkaW5nIHRoZSBiYXNl
IHBhY2thZ2UgJHtQTn0gdG8gSU1BR0VfSU5TVEFMTCwgd2hpY2ggaW5kZWVkIGRvZXMgd29yayBm
b3IgbWUuIEhvd2V2ZXIsIEkgZG8gbm90IHVuZGVyc3RhbmQgd2h5IHRoaXMgaXMgbmVjZXNzYXJ5
IGF0IGFsbCwgYXMgbXkgcGFja2FnZSBpcyBhbHJlYWR5IHJlZmVyZW5jZWQgZnJvbSBhbm90aGVy
IHJlY2lwZSBieSBiZWluZyBsaXN0ZWQgaW4gdGhhdCByZWNpcGUncyBERVBFTkRTIHZhcmlhYmxl
LCBzaG91bGRuJ3QgdGhhdCBiZSBlbm91Z2g/IEFsc28sIHRoZSAtZGV2IHBhY2thZ2UgZ2V0cyBp
bnN0YWxsZWQgaW50byB0aGUgU0RLIGV2ZW4gd2l0aG91dCBzdWNoIGNydWZ0LiBBcyBmYXIgYXMg
SSBjYW4gc2VlLCBpZGVudGljYWwgbG9naWMgaXMgYXBwbGllZCB0byBib3RoIC1kZXYgYW5kIC1z
dGF0aWNkZXYgcGFja2FnZXMsIHNvIHdoYXQgaXMgdGhlIGRpZmZlcmVuY2U/DQoNCkkgYWxzbyBm
b3VuZCBhIGRpZmZlcmVudCB3b3JrYXJvdW5kIGZvciB0aGUgcHJvYmxlbTogbGlzdGluZyB0aGUg
LXN0YXRpY2RldiBwYWNrYWdlIGluIFRPT0xDSEFJTl9UQVJHRVRfVEFTSy4gTmVlZGxlc3MgdG8g
c2F5LCB0aGlzIHdvcmthcm91bmQgaXMganVzdCBhcyB1bmRlc2lyYWJsZSBhcyB0aGUgZm9ybWVy
IG9uZS4NCg0KSSBhbSB1c2luZyB0aGUgc3VtbyBicmFuY2guDQoNClRob21hcw0KDQoNClRob21h
cyBLb2VsbGVyDQpTZW5pb3IgU29mdHdhcmUgRGV2ZWxvcGVyDQoNCg0KQmFzbGVyIEFHDQpBbiBk
ZXIgU3RydXNiZWsgNjAtNjINCjIyOTI2IEFocmVuc2J1cmcNCkdlcm1hbnkNCg0KVGVsLiArNDkg
NDEwMiA0NjMgMzkwDQpGYXggKzQ5IDQxMDIgNDYzIDQ2IDM5MA0KDQoNClRob21hcy5Lb2VsbGVy
QGJhc2xlcndlYi5jb20NCnd3dy5iYXNsZXJ3ZWIuY29tDQoNCk1hbmFnZW1lbnQgYm9hcmQ6IERy
Li1JbmcuIERpZXRtYXIgTGV5IChDRU8pIMK3IEpvaG4gUC4gSmVubmluZ3MgwrcgQXJuZHQgQmFr
ZSDCtyBIYXJkeSBNZWhsDQpDaGFpcm1hbiBvZiB0aGUgc3VwZXJ2aXNvcnkgYm9hcmQ6IE5vcmJl
cnQgQmFzbGVyDQpCYXNsZXIgQUcgwrcgQW10c2dlcmljaHQgTMO8YmVjayBIUkIgNDA5MCDCtyBV
c3QtSWROci46IERFIDEzNSAwOTggMTIxIMK3IFN0ZXVlci1Oci46IDMwIDI5MiAwNDQ5NyDCtyBX
RUVFLVJlZy4tTnIuIERFIDgzODg4MDQ1DQo=

