Return-Path: <pascal.ouyang@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CDFBE00C1C; Thu, 18 Feb 2016 00:00:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pascal.ouyang[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.34.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Feb 2016 00:00:44 PST
Received: from COL004-OMC1S12.hotmail.com (col004-omc1s12.hotmail.com
	[65.55.34.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AB42E00C0F
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2016 00:00:44 -0800 (PST)
Received: from APC01-SG2-obe.outbound.protection.outlook.com ([65.55.34.8]) by
	COL004-OMC1S12.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Wed, 17 Feb 2016 23:59:41 -0800
Received: from KL1PR06MB1046.apcprd06.prod.outlook.com (10.169.30.140) by
	KL1PR06MB1047.apcprd06.prod.outlook.com (10.169.30.141) with Microsoft
	SMTP Server (TLS) id 15.1.409.15; Thu, 18 Feb 2016 07:59:38 +0000
Received: from KL1PR06MB1046.apcprd06.prod.outlook.com ([10.169.30.140]) by
	KL1PR06MB1046.apcprd06.prod.outlook.com ([10.169.30.140]) with mapi id
	15.01.0409.017; Thu, 18 Feb 2016 07:59:37 +0000
From: =?gb2312?B?xbfR9CD2zg==?= <pascal.ouyang@hotmail.com>
To: Joe MacDonald <joe_macdonald@mentor.com>
Thread-Topic: [yocto] [meta-selinux][PATCH] MAINTAINERS: Update maintainers
	file
Thread-Index: AQHRaiJQcvAw6flUwEquuudXngfLEg==
Date: Thu, 18 Feb 2016 07:59:37 +0000
Message-ID: <KL1PR06MB1046F8565B6F55E1C1408CD3E6AF0@KL1PR06MB1046.apcprd06.prod.outlook.com>
References: <1455763309-9622-1-git-send-email-joe_macdonald@mentor.com>
In-Reply-To: <1455763309-9622-1-git-send-email-joe_macdonald@mentor.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-microsoft-exchange-diagnostics: 1; KL1PR06MB1047;
	23:TLOx04wQVH+9OzgcLX6Ijv1j6RUNmdcI84Nv1g4eR3cbJAbQEi1DOkqgj6u2Mgm546+ojlra/xnhkR5pZ7u20jE72uHNVSNkv0M8xVHZA0xmLY/nL7OUadz7/Ke8ogkG34Z6kdEXjXwV7MmslB80VbfZaVpgs29e5/N+KGtlfrv4k827jOmbF82Rcb4XKofq8uSY7LAO6RfWzxkzY3nPaQ==;
	5:rAf8afqVlC3+tt1w/nqYGP6re2NL3q6hJ1CJTKbo6MMNmA3gfnQBeS7s3JwyL7mqXIOTsYO6CAND+hH4GblsR1hGnlGCL1IhawKW56wVxas90t7CenqDNr39tyGK9Ft/A7DcrnFGHJniL+lnU5x5fA==;
	24:GhctV5vCBi1GFH4Q5ImW7p/gVci533nscBk+nm647wZPzDHuWUtyew7dyOJl8kSUGsopVgS3kSpzvia/aTsrRJb/MSg+hmBk3ANW7Z45CbY=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:KL1PR06MB1047;
x-ms-office365-filtering-correlation-id: 84a44454-98bd-4630-ee9a-08d3383970bd
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:KL1PR06MB1047; BCL:0; PCL:0; RULEID:; SRVR:KL1PR06MB1047; 
x-forefront-prvs: 085634EFF4
x-forefront-antispam-report: SFV:NSPM; SFS:(7070004)(98900003); DIR:OUT;
	SFP:1901; SCL:1; SRVR:KL1PR06MB1047;
	H:KL1PR06MB1046.apcprd06.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: sct-15-1-409-15-msonline-outlook-10cb2.templateTenant
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2016 07:59:37.5472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB1047
X-OriginalArrivalTime: 18 Feb 2016 07:59:41.0420 (UTC)
	FILETIME=[52646AC0:01D16A22]
X-Mailman-Approved-At: Thu, 18 Feb 2016 09:21:36 -0800
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] MAINTAINERS: Update maintainers file
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
X-List-Received-Date: Thu, 18 Feb 2016 08:00:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-ID: <7BFA7358FAEF4E44B92E619B4E2BA10D@apcprd06.prod.outlook.com>
Content-Transfer-Encoding: base64

SGkgSm9lLA0KDQpJIGhhdmVuoa90IGRvbmUgc2VsaW51eCB3b3JrcyBmb3IgYSBsb25nIHRpbWUs
IHNvIHBsZWFzZSByZW1vdmUgbXkgbmFtZSBmcm9tIHRoZSBtYWludGFpbmVyIGxpc3QuDQpTaW5j
ZSBXZW56b25nIGRvZXMgbW9zdCBzZWxpbnV4IHdvcmtzIGF0IFdpbmRyaXZlciwgSSB0aGluayB3
ZSBjb3VsZCBhZGQgaGltIGlmIHlvdSBhbGwgd2lzaGVzLg0KDQpUaGFuayB5b3UgZm9yIG5vdGlm
eWluZyBtZS4gOikNCg0KLSBQYXNjYWwNCg0KDQo+INTaIDIwMTbE6jLUwjE4yNWjrMnPzucxMDo0
MaOsSm9lIE1hY0RvbmFsZCA8am9lX21hY2RvbmFsZEBtZW50b3IuY29tPiDQtLXAo7oNCj4gDQo+
IEFkZGluZyBQaGlsaXAgVHJpY2NhIGFzIGEgY29tbW9uIGxheWVyIG1haW50YWluZXIgYW5kIG1h
cmtpbmcgUGFzY2FsIGFzDQo+IGF3YXkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb2UgTWFjRG9u
YWxkIDxqb2VfbWFjZG9uYWxkQG1lbnRvci5jb20+DQo+IC0tLQ0KPiBNQUlOVEFJTkVSUyB8IDcg
KysrKysrLQ0KPiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+IA0KPiBQYXNjYWw6ICBpZiB5b3UncmUgc3RpbGwgd2F0Y2hpbmcgdGhlIGxpc3QsIGl0IGxv
b2tzIGxpa2UgeW91ciBlbWFpbCBpcw0KPiBib3VuY2luZywgY2FuIHlvdSBjb250YWN0IGVpdGhl
ciBNYXJrIG9yIG15c2VsZiBzbyB3ZSBjYW4gdXBkYXRlIHlvdXIgY29udGFjdA0KPiBpbmZvIGlm
IHlvdSdyZSBzdGlsbCBhYmxlIHRvIC8gaW50ZXJlc3RlZCBpbiBhY3RpbmcgYXMgYSBtYWludGFp
bmVyPw0KPiANCj4gQWxzbywgaWYgc29tZW9uZSBlbHNlIGhhcyBhbiBhbHRlcm5hdGl2ZSBjb250
YWN0IGZvciBQYXNjYWwgKFhpbikgcGxlYXNlIHNlbmQNCj4gaGltIGEgcGluZyBmb3IgdXMuICBU
aGFua3MgYWxsLg0KPiANCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMN
Cj4gaW5kZXggYjIyOGUyMS4uM2M0OTU0OCAxMDA2NDQNCj4gLS0tIGEvTUFJTlRBSU5FUlMNCj4g
KysrIGIvTUFJTlRBSU5FUlMNCj4gQEAgLTI0LDcgKzI0LDEyIEBAIEY6CWNvbmYNCj4gRjoJY2xh
c3Nlcw0KPiBGOglyZWNpcGVzLSoNCj4gDQo+IC1NOglYaW4gT3V5YW5nIDx4aW4ub3V5YW5nQHdp
bmRyaXZlci5jb20+DQo+ICtNOglQaGlsaXAgVHJpY2NhIDxmbGlocEB0d29iaXQudXM+DQo+ICtG
Ogljb25mDQo+ICtGOgljbGFzc2VzDQo+ICtGOglyZWNpcGVzLSoNCj4gKw0KPiArTToJKGF3YXkp
IFhpbiBPdXlhbmcgPHhpbi5vdXlhbmdAd2luZHJpdmVyLmNvbT4NCj4gRjoJY29uZg0KPiBGOglj
bGFzc2VzDQo+IEY6CXJlY2lwZXMtKg0KPiAtLSANCj4gMi4xLjQNCj4gDQo+IC0tIA0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBtYWls
aW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlvY3Rv
cHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4gDQoNCg==

