Return-Path: <JPETERS6@steelcase.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52869E00E96; Tue, 16 Aug 2016 09:51:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 943 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Aug 2016 09:51:55 PDT
Received: from gw141.fortimail.com (gw141.fortimail.com [173.243.135.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF8CE00E88
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 09:51:55 -0700 (PDT)
Received: from GRREXFES01.na.steelcase.net (gateway.steelcase.com
	[198.105.65.197])
	by gw141.fortimail.com  with ESMTP id u7GGZu7U024765-u7GGZu7V024765
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 12:35:56 -0400
Received: from GRREXHYBRID02.na.steelcase.net (10.80.121.30) by
	GRREXFES01.na.steelcase.net (10.80.88.101) with Microsoft SMTP Server
	(TLS) id 8.3.213.0; Tue, 16 Aug 2016 12:35:55 -0400
Received: from GRREXMBX05.na.steelcase.net ([fe80::8041:4693:91a2:1660]) by
	GRREXHYBRID02.na.steelcase.net ([::1]) with mapi id 14.03.0294.000;
	Tue, 16 Aug 2016 12:35:55 -0400
From: "Peters, Johnnie" <JPETERS6@steelcase.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Computing transaction...error: Can't install
	azure-test-1.0-r0@armv5e: no package provides libumock.so
Thread-Index: AQHR99xCRvc7DhMxnEqEhN3QhDvgNw==
Date: Tue, 16 Aug 2016 16:35:54 +0000
Message-ID: <8B902475-4975-478B-88ED-53AA41AF243F@steelcase.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.129.20]
MIME-Version: 1.0
X-FEAS-SYSTEM-SAFE-LIST: 198.105.65.197 / 198.105.65.197
Subject: Computing transaction...error: Can't install azure-test-1.0-r0@armv5e: no package provides libumock.so
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
X-List-Received-Date: Tue, 16 Aug 2016 16:51:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <3AC86C446BB4304694A735C29965955C@steelcase.com>
Content-Transfer-Encoding: base64

SSBoYXZlIGNyZWF0ZWQgYSByZWNpcGUgZm9yIHRvIGFkZCB0aGUgQXp1cmUgbGlicmFyaWVzIHRv
IGEgWW9jdG8gaW1hZ2UuICBJIHNlZSB0aGUgbGlicmFyaWVzIGFyZSBpbmNsdWRlZCBpbiB0aGUg
dGhlIEF6dXJlIHJwbSBmaWxlIGFuZCB0aGUgLnNv4oCZcyBhbmQgaW5jbHVkZSBmaWxlcyBpbiB0
aGUgZGV2IHJwbS4gIEkgc2Vjb25kIHJlY2lwZSB0byB0ZXN0IGJlaW5nIGFibGUgdG8gbGluayB0
byB0aGUgbGlicmFyaWVzIGFsc28gYnVpbGRzIGFuZCBsaW5rcyBjb3JyZWN0bHkuICBIb3dldmVy
LCBpbiB0aGUgZG9fcm9vdGZzIHN0YWdlIEkgZ2V0IHRoZSBhYm92ZSBlcnJvciBtZXNzYWdlLg0K
DQpJIGhhdmUgYWxzbyBsb29rZWQgaW4gdGhlIGF6dXJlIGxvZy5kb19wYWNrYWdlIGZpbGUgYW5k
IGZpbmQgdGhlc2UgbGluZXM6DQoNCkluIHRoZSBidWlsZC90bXAvd29yay/igKYvYXp1cmUvMS4w
LXIwL3BhY2thZ2UvdXNyL2xpYiBkaXJlY3RvcnkgSSBzZWU6DQoNCmxyd3hyd3hyd3guIDEganBl
dGVycyBqcGV0ZXJzICAgICAxNSAgQXVnIDE2IDA5OjI0IGxpYnVhbXFwLnNvIC0+IGxpYnVhbXFw
LnNvLjEuMQ0KbHJ3eHJ3eHJ3eC4gMSBqcGV0ZXJzIGpwZXRlcnMgICAgIDE1ICBBdWcgMTYgMDk6
MjQgbGlidWFtcXAuc28uMSAtPiBsaWJ1YW1xcC5zby4xLjENCi1yd3hyLXhyLXguIDIganBldGVy
cyBqcGV0ZXJzIDY5OTU4OCBBdWcgMTYgMDk6MjQgbGlidWFtcXAuc28uMS4xDQpscnd4cnd4cnd4
LiAxIGpwZXRlcnMganBldGVycyAgICAgMTUgIEF1ZyAxNiAwOToyNCBsaWJ1bW9jay5zbyAtPiBs
aWJ1bW9jay5zby4xLjENCmxyd3hyd3hyd3guIDEganBldGVycyBqcGV0ZXJzICAgICAxNSAgQXVn
IDE2IDA5OjI0IGxpYnVtb2NrLnNvLjEgLT4gbGlidW1vY2suc28uMS4xDQotcnd4ci14ci14LiAy
IGpwZXRlcnMganBldGVycyAzOTA3MzYgQXVnIDE2IDA5OjI0IGxpYnVtb2NrLnNvLjEuMQ0KbHJ3
eHJ3eHJ3eC4gMSBqcGV0ZXJzIGpwZXRlcnMgICAgIDE1ICBBdWcgMTYgMDk6MjQgbGlidW1xdHQu
c28gLT4gbGlidW1xdHQuc28uMS4xDQpscnd4cnd4cnd4LiAxIGpwZXRlcnMganBldGVycyAgICAg
MTUgIEF1ZyAxNiAwOToyNCBsaWJ1bXF0dC5zby4xIC0+IGxpYnVtcXR0LnNvLjEuMQ0KLXJ3eHIt
eHIteC4gMiBqcGV0ZXJzIGpwZXRlcnMgIDc3NzA0IEF1ZyAxNiAwOToyNCBsaWJ1bXF0dC5zby4x
LjENCg0KV2hpY2ggd291bGQgc2VlbSB0byBiZSBjb3JyZWN0IGJ1dCBpbiBsb2cuZG9fcGFja2Fn
ZSBJIHNlZSBzb21lIGxpbmVzIEkgZG8gbm90IGZpbmQgY29ycmVjdDoNCg0KREVCVUc6IGF6dXJl
LWRldiBjb250YWlucyBkYW5nbGluZyBsaW5rIC91c3IvbGliL2xpYnVtcXR0LnNvLjEuMQ0KREVC
VUc6IHRhcmdldCBmb3VuZCBpbiBhenVyZQ0KREVCVUc6IGF6dXJlLWRldiBjb250YWlucyBkYW5n
bGluZyBsaW5rIC91c3IvbGliL2xpYnVhbXFwLnNvLjEuMQ0KREVCVUc6IHRhcmdldCBmb3VuZCBp
biBhenVyZQ0KREVCVUc6IGF6dXJlLWRldiBjb250YWlucyBkYW5nbGluZyBsaW5rIC91c3IvbGli
L2xpYnVtb2NrLnNvLjEuMQ0KREVCVUc6IHRhcmdldCBmb3VuZCBpbiBhenVyZQ0KDQpERUJVRzog
TElCTkFNRVM6IHBrZyBhenVyZS1zdGF0aWNkZXYgbGlicyAwIGJpbnMgMCBzb25hbWVzIFtdDQpE
RUJVRzogTElCTkFNRVM6IHBrZyBhenVyZS1sb2NhbGUgbGlicyAwIGJpbnMgMCBzb25hbWVzIFtd
DQpERUJVRzogTElCTkFNRVM6IHBrZyBhenVyZS1kb2MgbGlicyAwIGJpbnMgMCBzb25hbWVzIFtd
DQpERUJVRzogTElCTkFNRVM6IHBrZyBhenVyZS1kZXYgbGlicyAxIGJpbnMgMCBzb25hbWVzIFtd
DQpERUJVRzogTElCTkFNRVM6IHBrZyBhenVyZS1kYmcgbGlicyAwIGJpbnMgMCBzb25hbWVzIFtd
DQpERUJVRzogTElCTkFNRVM6IHBrZyBhenVyZSBsaWJzIDEgYmlucyAwIHNvbmFtZXMgW10NCg0K
QW5kIGZpbmFsbHkgaGVyZSBpcyBteSBhenVyZS5iYiBmaWxlOg0KDQpTVU1NQVJZID0gIk1pc2Ny
b3NvZnQgQXp1cmUiDQoNCkxJQ0VOU0UgPSAiTUlUIg0KTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxl
Oi8vTElDRU5TRTttZDU9NDI4MzY3MTU5NGVkZWM0YzEzYWViMDczYzIxOTIzN2EiDQoNClNSQ1JF
Vl9iYXNlID0gImJlZjM5OTVmNjRkYTMzZjNhZWI1Yjk4ZDM1OWNmOGZlZWJlZWU5MDMiDQoNClNS
Q19VUkkgPSAiIFwNCiAgICBnaXQ6Ly9naXRodWIuY29tL0F6dXJlL2F6dXJlLWlvdC1zZGtzLmdp
dDtkZXN0c3VmZml4PSR7U307bmFtZT1iYXNlIFwNCiAgICBmaWxlOi8vTWFrZWZpbGUgXA0KICAg
IGZpbGU6Ly9NYWtlZmlsZS51bXF0dCBcDQogICAgZmlsZTovL01ha2VmaWxlLnVhbXFwIFwNCiAg
ICBmaWxlOi8vTWFrZWZpbGUudW1vY2sgXA0KIg0KDQppbmhlcml0IGF1dG90b29scyBwa2djb25m
aWcNCg0KQiA9ICIke1N9Ig0KDQpkb19jb21waWxlX3ByZXBlbmQgKCkgew0KICAgIGNkICR7Qn07
IGdpdCBzdWJtb2R1bGUgdXBkYXRlIC0taW5pdCAtLXJlY3Vyc2l2ZQ0KICAgIGNwICR7V09SS0RJ
Un0vTWFrZWZpbGUgJHtTfS9NYWtlZmlsZQ0KICAgIGNwICR7V09SS0RJUn0vTWFrZWZpbGUudW1x
dHQgJHtTfS9jL2F6dXJlLXVtcXR0LWMvc3JjL01ha2VmaWxlDQogICAgY3AgJHtXT1JLRElSfS9N
YWtlZmlsZS51YW1xcCAke1N9L2MvYXp1cmUtdWFtcXAtYy9zcmMvTWFrZWZpbGUNCiAgICBjcCAk
e1dPUktESVJ9L01ha2VmaWxlLnVtb2NrICR7U30vYy9henVyZS11YW1xcC1jL2F6dXJlLWMtc2hh
cmVkLXV0aWxpdHkvc3JjL01ha2VmaWxlDQp9DQoNCklOSElCSVRfUEFDS0FHRV9TVFJJUCA9IOKA
nDEiDQoNCiNGSUxFU18ke1BOfSA9ICIke2xpYmRpcn0vbGliKiR7U09MSUJTfSINCiNGSUxFU18k
e1BOfS1kZXYgPSAiJHtsaWJkaXJ9L2xpYioke1NPTElCU0RFVn0gJHtpbmNsdWRlZGlyfS9henVy
ZS8qLyrigJ0NCg0KT25lIGFkZGl0aW9uYWwgbm90ZSwgSSBhZGRlZCB0aGUgSU5ISUJJVF9QQUNL
QUdFX1NUUklQIGJlY2F1c2UgSSBmb3VuZCB0aGUgbGlicmFyaWVzIGhhZCBiZWVuIHN0cmlwcGVk
Lg0KDQpXaGF0IGRvaSBJIG5lZWQgdG8gZG8gdG8gY29ycmVjdCB0aGlzIHNpdHVhdGlvbj8NCg0K
Sm9obm5pZQ0KDQoNCg==

