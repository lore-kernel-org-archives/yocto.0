Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03C58E008F5; Thu, 28 Jan 2016 04:31:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17600E00838
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 04:31:21 -0800 (PST)
Received: from serv031.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Thu, 28 Jan 2016 10:31:13 -0200
Received: from serv031.corp.eldorado.org.br (192.168.4.31) by
	serv031.corp.eldorado.org.br (192.168.4.31) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Thu, 28 Jan 2016 10:31:16 -0200
Received: from serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3]) by
	serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3%14]) with mapi
	id 15.00.0775.031; Thu, 28 Jan 2016 10:31:15 -0200
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] do_compile fails in Jethro
Thread-Index: AdFZHE6PhGmOY0MWROSiCB021ANIZAAK9/AAAB+saoA=
Date: Thu, 28 Jan 2016 12:31:15 +0000
Message-ID: <8e51c824353f4708921c79356987a837@serv031.corp.eldorado.org.br>
References: <14d020d8b9fa445d8094c9a4a7825750@serv031.corp.eldorado.org.br>
	<CAMKF1spKdbHLRKmdFbzQRPCcq99OVHRkWcd6=4uWX_pA7W6kFw@mail.gmail.com>
In-Reply-To: <CAMKF1spKdbHLRKmdFbzQRPCcq99OVHRkWcd6=4uWX_pA7W6kFw@mail.gmail.com>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [177.220.10.3]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAC+NgFrrKIsWRWlGSWpSXmKPExsVyYsojJl1BrlVhBrMerF7AZdF2fRajxaSXa9gcmDx2zrrL7tF+oo8tgCmKNTMvKb8igTVj3sEVzAXfpCpWfzvD1sA4R6qLkYtDSGAno8Tm8+/ZIZx9jBKN594xQjinGSU+HFkIlOHkYBPwlLj+to0ZxBYRUJRobvkNZjMLmEpMntECZgsL6Ev827GYDaLGQOLZ1MlMELaVxOZV7WA1LAKqErd7t7KA2LwC3hJdBxuZIJZNYpTY/3wFI0iCUyBQ4sCVn2ANjAKyEnP/7GWHWCYucevJfLChEgLaEttf7WOFsHUkNl1bxQJhO0v8fP+WGcIWkFiy5zyUrSTRe/sdVK+oxMvH/6B69SSOvj0LZHMA2YES79sjIMKmEm+WXIIaaStxYu1fZpjxP7begGqVl/h/7z5UjYPEjUPvoWoUJA48+wq1KkDix4JfUPXBEv8fL2KDsMslejub2CYwGs9C8tksoCuYBTQl1u/ShwgrSkzpfsg+CxxaghInZz5hWcDIsopRqji3pMBQLzm/qEAvNSclvygxJV8vvyhdL6loEyMwaez2WH11B+OF1e6HGJk4OG8xSnMcYBLiSEssLilILC4WYsnLz0uVgiYhqQbGjU8TSsuTz/zb1cuSNbPmY1RqmVppwM7o1a941p2z/2XNFNJ+6FzEhoA1aWxSxnwNSvn8RQ9P/OC5/W9WlKdssH2Yamf0AsPP05nd3Z35Hn1YJnmyNGidtEGNg/YWHuMy4YNsWgy+U/e271Gz1ud1ePGqQ5e35tG3FJeY/0d8JaevnsUU7a/EUpyRaKjFXFScCACgo5g86AIAAA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_compile fails in Jethro
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
X-List-Received-Date: Thu, 28 Jan 2016 12:31:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

S2hlbSwNCg0KWWVzLCB5b3VyIHN1Z2dlc3Rpb24gc29sdmVzIHRoZSBwcm9ibGVtLCBJIGp1c3Rv
IGRvbid0IGtub3cgd2h5IHRoaXMgd2FzIG5vdCBuZWVkZWQgaW4gRmlkby4gVGhhbmtzIGZvciB5
b3VyIGhlbHAhDQoNCkJ1dCBub3cgSSdtIGZhY2luZyBhIG5ldyBlcnJvcjoNCg0KPiBiaXRiYWtl
IGNvcmUtaW1hZ2UtbHNiDQoNCkVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX3Jvb3Rmcw0KDQpF
UlJPUjogVW5hYmxlIHRvIGluc3RhbGwgcGFja2FnZXMuDQoNCkNvbXB1dGluZyB0cmFuc2FjdGlv
bi4uLndhcm5pbmc6IENhbid0IGluc3RhbGwgbGlidGV2ZW50LWRldi0wLjkuMjEtcjBAY29yZTJf
NjQ6IENhbid0IGluc3RhbGwgdGFsbG9jLWRldi0yLjEuMS1yMEBjb3JlMl82NDogbm8gcGFja2Fn
ZSBwcm92aWRlcyB0YWxsb2MgPSAyLjEuMS1yMA0KDQoNCkRvIHlvdSBoYXZlIGFuIGlkZWEgb2Yg
d2hhdCBjb3VsZCBiZSBoYXBwZW5lZD8NCg0KUmVnYXJkcywNCkFsZXhhbmRyZQ0KDQoNCg0KDQot
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hl
bUBnbWFpbC5jb21dIA0KU2VudDogcXVhcnRhLWZlaXJhLCAyNyBkZSBqYW5laXJvIGRlIDIwMTYg
MTc6MTgNClRvOiBBbGV4YW5kcmUgRnJlaXJlIGRhIFNpbHZhIE9zb3JpbyA8YWxleGFuZHJlLm9z
b3Jpb0BlbGRvcmFkby5vcmcuYnI+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVj
dDogUmU6IFt5b2N0b10gZG9fY29tcGlsZSBmYWlscyBpbiBKZXRocm8NCg0KT24gV2VkLCBKYW4g
MjcsIDIwMTYgYXQgMTE6MTEgQU0sIEFsZXhhbmRyZSBGcmVpcmUgZGEgU2lsdmEgT3NvcmlvIDxh
bGV4YW5kcmUub3NvcmlvQGVsZG9yYWRvLm9yZy5icj4gd3JvdGU6DQo+IEhpIQ0KPg0KPiBUaGUg
Zmlyc3QgdGltZSBJIHRyaWVkIHRvIHVwZ3JhZGUgbXkgYnVpbGQgdG8gSmV0aHJvIEkgcmVjZWl2
ZWQgdGhlIGZvbGxvd2luZyBlcnJvciBtZXNzYWdlIHdoaWxlIGRvX2NvbXBpbGluZyBrcmI1Og0K
Pg0KPiAoLi4uKQ0KPiB8IC5idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9saWJl
eGVjL3g4Nl82NC1wb2t5LWxpbnV4L2djYy94DQo+IHwgODZfNjQtcG9reS1saW51eC81LjIuMC9s
ZDogcGx1Z2lucy5zbzogcmVsb2NhdGlvbiBSX1g4Nl82NF9QQzMyIA0KPiB8IGFnYWluc3Qgc3lt
Ym9sIGBrcmI1aW50X29wZW5fcGx1Z2luJyBjYW4gbm90IGJlIHVzZWQgd2hlbiBtYWtpbmcgYSAN
Cj4gfCBzaGFyZWQgb2JqZWN0OyByZWNvbXBpbGUgd2l0aCAtZlBJQw0KPiB8IC5idWlsZC90bXAv
c3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9saWJleGVjL3g4Nl82NC1wb2t5LWxpbnV4L2djYy94
DQo+IHwgODZfNjQtcG9reS1saW51eC81LjIuMC9sZDogZmluYWwgbGluayBmYWlsZWQ6IEJhZCB2
YWx1ZQ0KPiB8IGNvbGxlY3QyOiBlcnJvcjogbGQgcmV0dXJuZWQgMSBleGl0IHN0YXR1cw0KPiB8
IG1ha2VbMl06ICoqKiBbbGlia3JiNXN1cHBvcnQuc28uMC4xXSBFcnJvciAxDQo+IHwgbWFrZVsy
XTogTGVhdmluZyBkaXJlY3RvcnkgYC5idWlsZC90bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4
L2tyYjUvMS4xMy4yLXIwL2tyYjUtMS4xMy4yL3NyYy91dGlsL3N1cHBvcnQnDQo+IHwgbWFrZVsx
XTogKioqIFthbGwtcmVjdXJzZV0gRXJyb3IgMQ0KPiB8IG1ha2VbMV06IExlYXZpbmcgZGlyZWN0
b3J5IGAuYnVpbGQvdG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC9rcmI1LzEuMTMuMi1yMC9r
cmI1LTEuMTMuMi9zcmMvdXRpbCcNCj4gfCBtYWtlOiAqKiogW2FsbC1yZWN1cnNlXSBFcnJvciAx
DQo+IHwgRVJST1I6IG9lX3J1bm1ha2UgZmFpbGVkDQo+IHwgRVJST1I6IEZ1bmN0aW9uIGZhaWxl
ZDogZG9fY29tcGlsZSAobG9nIGZpbGUgaXMgbG9jYXRlZCBhdCANCj4gfCAuYnVpbGQvdG1wL3dv
cmsvY29yZTItNjQtcG9reS1saW51eC9rcmI1LzEuMTMuMi1yMC90ZW1wL2xvZy5kb19jb21waQ0K
PiB8IGxlLjkwNDMpDQo+IEVSUk9SOiBUYXNrIDE3NjQgKC5tZXRhLW9wZW5lbWJlZGRlZC9tZXRh
LW9lL3JlY2lwZXMtY29ubmVjdGl2aXR5L2tyYjUva3JiNV8xLjEzLjIuYmIsIGRvX2NvbXBpbGUp
IGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCj4NCj4NCj4gVGhpcyBlcnJvciBkb2Vzbid0IG9j
Y3VyIHdoZW4gSSB3YXMgdXNpbmcgRmlkby4gUGxlYXNlLCBjb3VsZCBhbnlvbmUgZ2l2ZSBtZSBh
IGhlbHA/DQoNCndoYXQgaGFwcGVucyBpZiB5b3UgYWRkDQoNCkNGTEFHUyArPSAiLWZQSUMgLURQ
SUMiIHRvIGNvbmNlcm5lZCAuYmIgZmlsZS4NCg0KPg0KPiBUaGFua3MgaW4gYWR2YW5jZS4NCj4N
Cj4gUmVnYXJkcywNCj4gQWxleGFuZHJlDQo+IC0tDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5m
by95b2N0bw0K

