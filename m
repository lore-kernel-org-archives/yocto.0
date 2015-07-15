Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42809E009BE; Wed, 15 Jul 2015 07:52:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 887FFE00978
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 07:52:39 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0224.002; Wed, 15 Jul 2015 16:52:35 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [LXCR-5218][PATCH 1/1] perl: update recipe for Perl 5.22
	compatibility
Thread-Index: AQHQvwuU8+MqcbVYjUOyimg6PXMSqp3cnUIQ
Date: Wed, 15 Jul 2015 14:52:34 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D8C78F1@SESTOEX04.enea.se>
References: <1436970962-43346-1-git-send-email-nora.bjorklund@enea.com>
	<1436970962-43346-2-git-send-email-nora.bjorklund@enea.com>
In-Reply-To: <1436970962-43346-2-git-send-email-nora.bjorklund@enea.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.208]
MIME-Version: 1.0
Subject: FW: [LXCR-5218][PATCH 1/1] perl: update recipe for Perl 5.22 compatibility
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
X-List-Received-Date: Wed, 15 Jul 2015 14:52:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXBkYXRpbmcgVGVzdCBQb2QgcmVjaXBlIHRvIGJlIGNvbXBhdGlibGUgd2l0aCB0aGUgbmV3IHBl
cmwgdmVyc2lvbiA1LjIyIHdoZXJlIE1vZHVsZTo6QnVpbGQgaGFzIGJlZW4gcmVtb3ZlZC4NCg0K
U2VlIGFsc286IGh0dHA6Ly9wZXJsdHJpY2tzLmNvbS9hcnRpY2xlLzE2NS8yMDE1LzQvMTAvQS1w
cmV2aWV3LW9mLVBlcmwtNS0yMg0KDQpTaWduZWQtb2ZmLWJ5OiBOb3JhIEJqw7Zya2x1bmQgPG5v
cmEuYmpvcmtsdW5kQGVuZWEuY29tPg0KLS0tDQogLi4uL3JlY2lwZXMtcGVybC9wZXJsL2xpYnRl
c3QtcG9kLXBlcmxfMS40Mi5iYiAgICAgIHwgMTcgLS0tLS0tLS0tLS0tLS0tLS0NCiAuLi4vcmVj
aXBlcy1wZXJsL3BlcmwvbGlidGVzdC1wb2QtcGVybF8xLjUxLmJiICAgICAgfCAyMSArKysrKysr
KysrKysrKysrKysrKysNCiAyIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDE3IGRl
bGV0aW9ucygtKSAgZGVsZXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLXBl
cmwvcGVybC9saWJ0ZXN0LXBvZC1wZXJsXzEuNDIuYmINCiBjcmVhdGUgbW9kZSAxMDA2NDQgbWV0
YS1jZ2wtY29tbW9uL3JlY2lwZXMtcGVybC9wZXJsL2xpYnRlc3QtcG9kLXBlcmxfMS41MS5iYg0K
DQpkaWZmIC0tZ2l0IGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtcGVybC9wZXJsL2xpYnRlc3Qt
cG9kLXBlcmxfMS40Mi5iYiBiL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLXBlcmwvcGVybC9saWJ0
ZXN0LXBvZC1wZXJsXzEuNDIuYmINCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0KaW5kZXggNGVi
NDBiYy4uMDAwMDAwMA0KLS0tIGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtcGVybC9wZXJsL2xp
YnRlc3QtcG9kLXBlcmxfMS40Mi5iYg0KKysrIC9kZXYvbnVsbA0KQEAgLTEsMTcgKzAsMCBAQA0K
LURFU0NSSVBUSU9OID0gIlRlc3Q6OlBvZCAtIGNoZWNrIGZvciBQT0QgZXJyb3JzIGluIGZpbGVz
Ig0KLVNFQ1RJT04gPSAibGlicyINCi1MSUNFTlNFID0gIkdQTHYyIg0KLUxJQ19GSUxFU19DSEtT
VU0gPSAiZmlsZTovLyR7Q09SRUJBU0V9L0xJQ0VOU0U7bWQ1PTRkOTJjZDM3M2FiZGEzOTM3YzJi
YzQ3ZmJjNDlkNjkwIg0KLUJCQ0xBU1NFWFRFTkQgPSAibmF0aXZlIg0KLVJERVBFTkRTXyR7UE59
ICs9ICJwZXJsLW1vZHVsZS10ZXN0LW1vcmUgcGVybC1tb2R1bGUtZmlsZS1zcGVjIHBlcmwtbW9k
dWxlLW1vZHVsZS1idWlsZCBwZXJsLW1vZHVsZS1wb2Qtc2ltcGxlIg0KLVBSID0gInIxIg0KLQ0K
LVNSQ19VUkkgPSAiaHR0cDovL3NlYXJjaC5jcGFuLm9yZy9DUEFOL2F1dGhvcnMvaWQvRC9EVy9E
V0hFRUxFUi9UZXN0LVBvZC0ke1BWfS50YXIuZ3o7bmFtZT10ZXN0LXBvZC1wZXJsLSR7UFZ9Ig0K
LVNSQ19VUklbdGVzdC1wb2QtcGVybC0xLjQyLm1kNXN1bV0gPSAiOWM5YjdmZjUyZWEzMzlhZWNi
ZjI0N2NkNTczZGYyMzgiDQotU1JDX1VSSVt0ZXN0LXBvZC1wZXJsLTEuNDIuc2hhMjU2c3VtXSA9
ICJlYTZkZTQ2OWE4ZGI2NTQ5MzgxZTQxMDk1MDU1YmMzNzQxYWFkZjBkMzUzYWExYmQ1YjZlNDQx
YmM1MDBhNzljIg0KLQ0KLVMgPSAiJHtXT1JLRElSfS9UZXN0LVBvZC0ke1BWfSINCi0NCi1pbmhl
cml0IGNwYW5fYnVpbGQNCi0NCi1QQUNLQUdFX0FSQ0ggPSAiYWxsIg0KZGlmZiAtLWdpdCBhL21l
dGEtY2dsLWNvbW1vbi9yZWNpcGVzLXBlcmwvcGVybC9saWJ0ZXN0LXBvZC1wZXJsXzEuNTEuYmIg
Yi9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1wZXJsL3BlcmwvbGlidGVzdC1wb2QtcGVybF8xLjUx
LmJiDQpuZXcgZmlsZSBtb2RlIDEwMDY0NA0KaW5kZXggMDAwMDAwMC4uNzU4NjcyNQ0KLS0tIC9k
ZXYvbnVsbA0KKysrIGIvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtcGVybC9wZXJsL2xpYnRlc3Qt
cG9kLXBlcmxfMS41MS5iYg0KQEAgLTAsMCArMSwyMSBAQA0KK0RFU0NSSVBUSU9OID0gIlRlc3Q6
OlBvZCAtIGNoZWNrIGZvciBQT0QgZXJyb3JzIGluIGZpbGVzIg0KK1NFQ1RJT04gPSAibGlicyIN
CitMSUNFTlNFID0gIkdQTHYyIg0KK0xJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7Q09SRUJB
U0V9L0xJQ0VOU0U7bWQ1PTRkOTJjZDM3M2FiZGEzOTM3YzJiYzQ3ZmJjNDlkNjkwIg0KK0hPTUVQ
QUdFID0gImh0dHBzOi8vZ2l0aHViLmNvbS9wZXJsLXBvZC90ZXN0LXBvZC8iDQorQkJDTEFTU0VY
VEVORCA9ICJuYXRpdmUiDQorUkRFUEVORFNfJHtQTn0gKz0gIiBwZXJsLW1vZHVsZS10ZXN0LW1v
cmUgXA0KKyAgICAgICAgICAgICAgICAgICAgcGVybC1tb2R1bGUtZmlsZS1zcGVjIFwNCisgICAg
ICAgICAgICAgICAgICAgIHBlcmwtbW9kdWxlLXBvZC1zaW1wbGUgXA0KKyAgICAgICAgICAgICAg
ICAgICAgcGVybC1tb2R1bGUtdGVzdC1idWlsZGVyLXRlc3RlciBcDQorICAgICAgICAgICAgICAg
ICAgICAiDQorUFIgPSAicjEiDQorDQorU1JDX1VSSSA9Imh0dHA6Ly9zZWFyY2guY3Bhbi5vcmcv
Q1BBTi9hdXRob3JzL2lkL0UvRVQvRVRIRVIvVGVzdC1Qb2QtJHtQVn0udGFyLmd6O25hbWU9dGVz
dC1wb2QtcGVybC0ke1BWfSINCitTUkNfVVJJW3Rlc3QtcG9kLXBlcmwtMS41MS5tZDVzdW1dID0g
ImY4MDZhYTg0ZGUyZjBjMGZiYTQ4YjNhNWE4YTRhZWNmIg0KK1NSQ19VUklbdGVzdC1wb2QtcGVy
bC0xLjUxLnNoYTI1NnN1bV0gPSAiYzFhMWQzY2VkZjRhNTc5ZTNhYWQ4OWMzNmY5ODc4YTg1NDJi
NjY1NmRiZTcxZjE1ODE0MjBmNDk1ODJkN2VmYiINCitTID0gIiR7V09SS0RJUn0vVGVzdC1Qb2Qt
JHtQVn0iDQorDQoraW5oZXJpdCBjcGFuDQorDQorUEFDS0FHRV9BUkNIID0gImFsbCINCi0tDQox
LjkuMQ0KDQo=

