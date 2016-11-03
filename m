Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E933E00BB0; Thu,  3 Nov 2016 04:20:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.14 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E457E00A64
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 04:20:09 -0700 (PDT)
Received: from [216.82.251.35] by server-14.bemta-12.messagelabs.com id
	AA/C1-00585-96D1B185; Thu, 03 Nov 2016 11:20:09 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNKsWRWlGSWpSXmKPExsVySpdNUzdDVjr
	C4Pk7K4tZh3ayWUx6uYbNgclj3slAj/YTfWwBTFGsmXlJ+RUJrBn3tuxlK7igX9E34wVzA2OD
	fhcjF4eQwBZGiTnPV7JBOJsZJeZducUK4RxglDj4pImxi5GTg03AUOJKz10wW0QgVeLS86NsI
	LawQLrE8teToeIZEgsWTmfpYuQAsvUkOn5qgYRZBFQkzqy5BFbCK+AuceN7B9SyDYwSi/a+YA
	JJcAp4SPS/OAJWxCggK/GlcTUziM0sIC5x68l8sBoJAQGJJXvOM0PYohIvH/9jhbANJLYu3cc
	CYStIrOxuYIOwrSX2z1vKCnIPs4CmxPpd+hAjFSWmdD9kh7hHUOLkzCdgrUICqhJbFv5mmcAo
	PgvJ5lkI3bOQdM9C0r2AkWUVo0ZxalFZapGusaFeUlFmekZJbmJmjq6hoZFebmpxcWJ6ak5iU
	rFecn7uJkZgxNUzMDDuYPzzxfcQoyQHk5Io7+enkhFCfEn5KZUZicUZ8UWlOanFhxg1ODgErh
	w8MptRiiUvPy9VSYJXX0Y6QkiwKDU9tSItMweYEmBKJTh4lER4q0HSvMUFibnFmekQqVOMilL
	ivOEgCQGQREZpHlwbLA1dYpSVEuZlZGBgEOIpSC3KzSxBlX/FKM7BqCTMKwgyhSczrwRu+iug
	xUxAi82TJEAWlyQipKQaGJdyf39qfmmFkvJc7u97LmofcgxfrfSo4/5cnbN3ahj2crnf8NG6c
	T8/PJ59U8O3a55hJ/4+OyQ74d7DyLuRZqmuOTHLf7OK6Ogf2n1y3u/jxRcqP2q9EH1h/EDk+5
	o0X+e1s16YWWW9a3wmlfkuSVFBkl2kIvqew5IK0cv/fPMcX75PT6/V/6jEUpyRaKjFXFScCAB
	4piKQPgMAAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-8.tower-151.messagelabs.com!1478172006!39029400!1
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.0.13; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 121757 invoked from network); 3 Nov 2016 11:20:08 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-8.tower-151.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 3 Nov 2016 11:20:08 -0000
Received: from HIBDWSMB01.ad.harman.com (10.99.236.91) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Thu, 3 Nov 2016 16:50:04 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB01.ad.harman.com (10.99.236.91) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Thu, 3 Nov 2016 16:50:04 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::3834:9ec5:559f:10c2]) by
	HIBDWSMB02.ad.harman.com ([fe80::3834:9ec5:559f:10c2%16]) with mapi id
	15.00.1130.005; Thu, 3 Nov 2016 16:50:04 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: Joshua G Lock <joshua.g.lock@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Access Control List (ACL) permissions attributes not
	getting preserved in rootfs 
Thread-Index: AQHSNcQ5zT7c6VH5FEOn6UbBii7OEg==
Date: Thu, 3 Nov 2016 11:20:03 +0000
Message-ID: <d9cbb31720134bf3afa6ea392679a337@HIBDWSMB02.ad.harman.com>
References: <9eea2233da3d4fbd8722005093c1311d@HIBDWSMB02.ad.harman.com>
	<1471009925.19073.6.camel@linux.intel.com>
	<a4674febc1cd4c73ba150b4332802122@HIBDWSMB02.ad.harman.com>
In-Reply-To: <a4674febc1cd4c73ba150b4332802122@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Subject: Re: Access Control List (ACL) permissions attributes not getting preserved in rootfs
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
X-List-Received-Date: Thu, 03 Nov 2016 11:20:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gVGVhbSAsDQoNCkkgYW0gdHJ5aW5nIHRvIHNldCBleHRlbmRlZCBhdHRyaWJ1dGVzIHVz
aW5nIGJlbG93IHBvc3QgaW5zdCAuIEkgYW0gYWJsZSB0byBwcmVzZXJ2ZSB0aGUgc2V0Y2FwIGFu
ZCBzbWFjayBhdHRyaWJ1dGVzIGluIHRoZSBleHQ0IGltYWdlLiBIb3dldmVyLCBJIGFtIGdldHRp
bmcgIkludmFsaWQgYXJndW1lbnQgIiB3aGVuIEkgcnVuIGdldGZhY2wvc2V0ZmFjbCBpbiBxZW11
IHRhcmdldCAuIEFzIHNhaWQgZWFybGllciBhbGwgdGhlIDMgYXR0cmlidXRlcyBhcmUgc2VlbiB1
c2luZyBkZXZzaGVsbCBpbiB0aGUgcm9vdGZzIGZvbGRlci4NCg0KcGtnX3Bvc3RpbnN0XyR7UE59
KCkgew0KICANCiAgICBzZXRmYWNsIC1tIHU6dXNlcjI6ci0tICREJHtiaW5kaXJ9L2hlbGxvd29y
bGQNCiAgICBzZXRjYXAgY2FwX25ldF9yYXcrZXAgICREJHtiaW5kaXJ9L2hlbGxvd29ybGQNCiAg
ICBjaHNtYWNrIC1hICJoZWxsb1dvcmxkQWNjZXNzTGFiZWwiIC1lICJoZWxsb1dvcmxkRXhlY3V0
ZUxhYmVsIiAkRCR7YmluZGlyfS9oZWxsb3dvcmxkDQogDQp9DQoNCg0KV2hlbiBJIHdhcyB1c2lu
ZyAiIGUyZnNwcm9nc18xLjQyLjkuYmIgdGhlIFBPU0lYIGNhcHMgYW5kIHNtYWNrIHJ1bGVzIHdl
cmUgbm90IGdldHRpbmcgcHJlc2VydmVkIGJ1dCBhY2wgYXR0cmlidXRlcyB3ZXJlIGdldHRpbmcg
cHJlc2VydmVkIG5vdyBvcHBvc2l0ZSBpcyBoYXBwZW5pbmcgLg0KDQoNCkBKb3NodWEvVGVhbQ0K
Q2FuIHNvbWVib2R5IGhlbHAgaGVyZSA/IFRoaXMgaXMgYml0IHVyZ2VudCBhbmQgSSBoYXZlIGJl
ZW4gc3RydWdnbGluZyBmb3IgcXVpdGUgc29tZSB0aW1lLg0KDQpOb3RlIDpJIGhhdmUgc2V0IHRo
ZSBpbm9kZSBzaXplIHRvIGJlIDI1NiB3aGlsZSBjcmVhdGluZyB0aGUgZXh0NCBpbWFnZS4NCg0K
DQpUaGFua3MgYW5kIFJFZ2Fkcw0KU2hyYXdhbg0KDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCkZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3Rv
LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIEt1bWFyLCBTaHJhd2FuDQpT
ZW50OiBUaHVyc2RheSwgT2N0b2JlciAyNywgMjAxNiA2OjI2IFBNDQpUbzogSm9zaHVhIEcgTG9j
azsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gQWNjZXNzIENv
bnRyb2wgTGlzdCAoQUNMKSBwZXJtaXNzaW9ucyBhdHRyaWJ1dGVzIG5vdCBnZXR0aW5nIHByZXNl
cnZlZCBpbiByb290ZnMNCg0KSGVsbG8gQWxsLA0KDQpGdXJ0aGVyIHVwZGF0ZSBvbiB0aGlzIGlz
c3VlICwgbWlncmF0ZWQgdG8gImUyZnNwcm9nc18xLjQzLmJiIiAgZnJvbSAiZTJmc3Byb2dzXzEu
NDIuOS5iYiIgLiBJdCBpcyBvYnNlcnZlZCB0aGF0IHRoZSBBQ0wgcGVybWlzc2lvbiBzZXQgYXJl
IHZpc2libGUgb24gZGV2LXNoZWxsICBidXQgd2hlbiBxZW11IGlzIGxhdW5jaGVkIHdlIGdldCBi
ZWxvdyBlcnJvciA6DQoNCnJvb3RAcWVtdXg4NjojZ2V0ZmFjbCAvdXNyL2Jpbi9oZWxsb3dvcmxk
DQpnZXRmYWNsOiAvdXNyL2Jpbi9oZWxsb3dvcmxkOiBJbnZhbGlkIGFyZ3VtZW50DQoNCg0KQWxz
bywNCiANCnJvb3RAcWVtdXg4NjojIHNldGZhY2wgLW0gdTp1c2VyMjpyLS0gL3Vzci9iaW4vaGVs
bG93b3JsZCANCiAgICAgICAgICAgICAgIHNldGZhY2w6IC91c3IvYmluL2hlbGxvd29ybGQ6IElu
dmFsaWQgYXJndW1lbnQNCg0KDQoNCg0KVGhhbmtzIGFuZCBSZWdhcmRzDQpTaHJhd2FuDQoNCg0K
DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBKb3NodWEgRyBMb2NrIFttYWls
dG86am9zaHVhLmcubG9ja0BsaW51eC5pbnRlbC5jb21dDQpTZW50OiBGcmlkYXksIEF1Z3VzdCAx
MiwgMjAxNiA3OjIyIFBNDQpUbzogS3VtYXIsIFNocmF3YW47IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIEFjY2VzcyBDb250cm9sIExpc3QgKEFDTCkgcGVybWlz
c2lvbnMgYXR0cmlidXRlcyBub3QgZ2V0dGluZyBwcmVzZXJ2ZWQgaW4gcm9vdGZzDQoNCk9uIEZy
aSwgMjAxNi0wOC0xMiBhdCAxMjozMyArMDAwMCwgS3VtYXIsIFNocmF3YW4gd3JvdGU6DQo+IEhl
bGxvIEFsbCwNCj4gwqANCj4gSSBhbSDCoHVzaW5nIMKgcG9reSDigJwgamV0aHJv4oCdIMKgLCBh
bmQgwqB0aG91Z2ggwqBvbmUgb2YgbXkgcmVjaXBlLCBJIGhhdmUgDQo+IGNyZWF0ZWQgdXNlcjEg
JiB1c2VyMiBhbmQgdGhlbiB0cnlpbmcgdG8gc2V0IEFDTCBydWxlcyDCoG9uIA0KPiDigJxoZWxs
b3dvcmxk4oCdIGJpbiBhcyBiZWxvdyA6DQo+IMKgDQo+IMKgDQo+IGRvX2luc3RhbGwoKSB7DQo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqAgaW5zdGFsbCAtZCAke0R9JHti
aW5kaXJ9DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqAgaW5zdGFsbCAt
bSAwNzAwIGhlbGxvd29ybGQgJHtEfSR7YmluZGlyfQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIMKgwqDCoMKgIGluc3RhbGwgLWQgJHtEfS9saWIvc3lzdGVtZC9zeXN0ZW0NCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoCBpbnN0YWxsIC1tIDA3MDAgaGVsbG8u
c2VydmljZSANCj4gJHtEfS9saWIvc3lzdGVtZC9zeXN0ZW0vDQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgwqDCoMKgwqAgY2hvd27CoMKgwqAgdXNlcjE6Z3JvdXAxICR7RH0ke2JpbmRp
cn0vaGVsbG93b3JsZA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgwqDCoMKgc2V0
ZmFjbCAtbSB1OnVzZXIyOnItLSAke0R9JHtiaW5kaXJ9L2hlbGxvd29ybGQgfQ0KPiDCoA0KPiDC
oA0KPiDDqCBXaGVuIEkgc2VlwqAgwqBvbiB0aGUgZGV2c2hlbGwgKCBiaXRiYWtlIEhlbGxvV29y
bGQg4oCTYyBkZXZzaGVsbCkgwqA6DQo+IHBva3kvYnVpbGRfcWVtdXg4Ni90bXAvd29yay9xZW11
eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS0NCj4gbWluaW1hbC8xLjAtcjAvcm9vdGZzL3Vzci9i
aW4jIGdldGZhY2wgaGVsbG93b3JsZMKgwqDCoCAsIEkgY291bGQgc2VlIA0KPiB0aGF0IEFDTCBw
ZXJtaXNzaW9ucyBhcmUgc2V0IGNvcnJlY3RseSBhcyBiZWxvdyA6DQo+IC3CoMKgwqDCoMKgwqDC
oCAjIGZpbGU6IGhlbGxvd29ybGQNCj4gLcKgwqDCoMKgwqDCoMKgICMgb3duZXI6IHVzZXIxDQo+
IC3CoMKgwqDCoMKgwqDCoCAjIGdyb3VwOiBncm91cDENCj4gLcKgwqDCoMKgwqDCoMKgIHVzZXI6
OnJ3eA0KPiAtwqDCoMKgwqDCoMKgwqAgdXNlcjp1c2VyMjpyLS0NCj4gLcKgwqDCoMKgwqDCoMKg
IGdyb3VwOjotLS0NCj4gLcKgwqDCoMKgwqDCoMKgIG1hc2s6OnItLQ0KPiAtwqDCoMKgwqDCoMKg
wqAgb3RoZXI6Oi0tLQ0KPiDCoA0KPiBIb3dldmVyLCBJdCBkb2VzIG5vdCBzZWVtcyB0byBiZSBn
ZXR0aW5nIHByZXNlcnZlZCBpbiByb290ZnMuIDoNCj4gL3Bva3kvYnVpbGRfcWVtdXg4Ni90bXAv
d29yay9xZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS0NCj4gbWluaW1hbC8xLjAtcjAvcm9v
dGZzL3Vzci9iaW4jIGdldGZhY2wgaGVsbG93b3JsZCAjIGZpbGU6IGhlbGxvd29ybGQgIw0KPiBv
d25lcjogdXNlcjEgIyBncm91cDogZ3JvdXAxIHVzZXI6OnJ3eA0KPiBncm91cDo6LS0tDQo+IG90
aGVyOjotLS0NCj4gwqANCj4gcXVpY2sgaGVscCDCoGhlcmUgd291bGQgYmUgaGlnaGx5IGFwcHJl
Y2lhdGVkDQoNClRoaXMgaXMgZHVlIHRvIHRoZSBmYWN0IHRoYXQgd2UgZG9uJ3QgY3VycmVudGx5
IGhhdmUgYSBtZWNoYW5pc20gdG8gcHJlc2VydmUgeGF0dHIgdGhyb3VnaCB0byBpbWFnZSBjb25z
dHJ1Y3Rpb25bMV0uDQoNClRoZSBsYXJnZXN0IGJhcnJpZXIgZm9yIGRvaWcgc28gaXMgdGhhdCB0
aGUgcGFja2FnZSBtYW5hZ2VycyAoY2VydGFpbmx5IGRwa2cgYW5kIHJwbSkgZG9uJ3QgaGF2ZSBh
bnkgc3VwcG9ydCBmb3IgeGF0dHJzIGluIHBhY2thZ2VzIChhbiBpbWFnZSBpcyBwb3B1bGF0ZWQg
dmlhIHRoZSBwYWNrYWdlIG1hbmFnZXIpLg0KDQpUbyB0aGUgYmVzdCBvZiBteSBrbm93bGVkZ2Ug
dGhlIG9ubHkgb3B0aW9uIGZvciBhZGRpbmcgc29tZSB4YXR0ci9BQ0wgaXMgdG8gdXNlIGEgcG9z
dGluc3RbMl0gdG8gc2V0IHRoZSBhdHRyaWJ1dGVzIGFmdGVyIHRoZSBwYWNrYWdlIGhhcyBiZWVu
IGluc3RhbGxlZC4NCg0KUmVnYXJkcywNCg0KSm9zaHVhDQoNCjEuwqBodHRwczovL2J1Z3ppbGxh
LnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTk4NTgNCjIuwqBodHRwOi8vd3d3Lnlv
Y3RvcHJvamVjdC5vcmcvZG9jcy8yLjEvZGV2LW1hbnVhbC9kZXYtbWFudWFsLmh0bWwjbmV3LQ0K
cmVjaXBlLXBvc3QtaW5zdGFsbGF0aW9uLXNjcmlwdHMNCg0KLS0NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp5b2N0byBtYWlsaW5nIGxpc3QNCnlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5m
by95b2N0bw0K

