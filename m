Return-Path: <SANDEEPG@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09559E00851; Mon, 11 Sep 2017 10:46:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=unavailable
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.46 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 955 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Sep 2017 10:46:54 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0046.outbound.protection.outlook.com [104.47.38.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 182B3E0078E
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 10:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=K8Vy4Op/dYUmZwsX6p3/nz5YpXZcXaKacSCgpflVHtE=;
	b=P+JQ2MHJLkfeVtmDp9D32LGEipvrbtzDvElYtFa1khKB2/5G6UN89MM7B2BAI7OTvTTRLW5eCtPXlW2mQSvUeEfMt9QhFWRGklAkTnDAO9t8hiH7zZCq4WR2Ltmd3fwlHtMIui2cC0dMtJF17jjHd6cBmbsAv+g20m/jT+TGGVc=
Received: from BY2PR02MB1362.namprd02.prod.outlook.com (10.162.80.14) by
	BY2PR02MB505.namprd02.prod.outlook.com (10.141.142.16) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.35.12; Mon, 11 Sep 2017 17:30:55 +0000
Received: from BY2PR02MB1362.namprd02.prod.outlook.com ([10.162.80.14]) by
	BY2PR02MB1362.namprd02.prod.outlook.com ([10.162.80.14]) with mapi id
	15.20.0035.020; Mon, 11 Sep 2017 17:30:55 +0000
From: Sandeep Gundlupet Raju <SANDEEPG@xilinx.com>
To: Fan Zhang <fzhang@sgl.com>, Robert Berger
	<yocto.user.mailinglist@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "meta-xilinx@yoctoproject.org"
	<meta-xilinx@yoctoproject.org>
Thread-Topic: [meta-xilinx] [yocto]  How to include Xilinx DMA driver
Thread-Index: AQHTKxQNWC+rNbqw0UafMCRzqBPfgqKv762g
Date: Mon, 11 Sep 2017 17:30:55 +0000
Message-ID: <BY2PR02MB1362AD89F4477A79EF90A4EAB8680@BY2PR02MB1362.namprd02.prod.outlook.com>
References: <b2971216-bfa5-20d3-9cdd-ceee0afffb76@sgl.com>
	<2169f5a0-7166-1ff0-6b43-611167a8cacf@gmail.com>
	<eac81ff8-3b9b-7307-11f5-eae0dba0e4b5@sgl.com>
In-Reply-To: <eac81ff8-3b9b-7307-11f5-eae0dba0e4b5@sgl.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=SANDEEPG@xilinx.com; 
x-originating-ip: [149.199.90.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY2PR02MB505;
	6:7DiKrJ75r1sFJqslCAsvIJRBY+womtYvxO//NSgZkdmE83uxthGuzHpfvdL77DMmjJTUVTa76F2n0mvfC/tB2QvAjc9qMfQw+7iH0RVMDJllv5XblKAdR/vD4CiJrbs5uDCL7X97BQbtQFKA3YKpc0bLM7TcE1gb1QzimokbnTfXO1n63uDy0bavXusPijelHLlRO7HwIxmrlt9WdaTJ/taxfovj2Iu25p5rsQ4FXp9McdtjKaTZVBb36KtowDFH6VEfMZNJmvm+7SY5MY3VniNgjkLQn3Mop7k/F2yuafvA7xrrhEKJzPkR76CgO6B0OzD+ufs2+9Bx577jyQlkvw==;
	5:/Cr8ve9yXe+/q6RjkoXhVZ6VvMwU8ecXZ9TTjye/95H3nbihZzZOPKZYUAVsyNGRlLPzBdhDVksM8VFB9ytqItlnYf9hviNm68IPgMTON9csyHFB7XQDR+olWgkoKEL/ccOvYNts64J3kTqOMB+ALw==;
	24:M3TnuAk/Pw56takfZzySTZUugzl4qaKB9IwFEiN+IqyXBPvMq0J4PtshiJG8Lp26ghzjsTDDyMhIF4xSBDX/qFLv0aIGAPKVQsJ5sEpIKkA=;
	7:OXArZD1UyEnO3NeamtEBwK4hhO13ueLTg2HcAJ5ZTOOvmUUsGhsx5kHncsqVnVw1G5lsMH5UKzuJEULoJ6t6d4RLzsGypvCfKgdjOuE4EaAVhonCO2dBcEw0+1PaRwCUO+y9fXG6x4mcaURuSLbTMfB29RmF8IeYf2AavhKwbwcuQcoBBtT5/N2jR80NnjzZ7XaR3dnspeTL3jHqz+xkiMVDSilY3EUMPcpHOYPQK+k=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: bdea0337-6f03-41f2-e502-08d4f93adbea
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(48565401081)(300000503095)(300135400095)(2017052603199)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:BY2PR02MB505; 
x-ms-traffictypediagnostic: BY2PR02MB505:
x-exchange-antispam-report-test: UriScan:(166708455590820)(192813158149592);
x-microsoft-antispam-prvs: <BY2PR02MB5051B49091985A4DDC22358B8680@BY2PR02MB505.namprd02.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(3002001)(6055026)(6041248)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123562025)(20161123564025)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BY2PR02MB505; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BY2PR02MB505; 
x-forefront-prvs: 04270EF89C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(199003)(377454003)(53754006)(24454002)(377424004)(189002)(13464003)(102836003)(53936002)(33656002)(68736007)(2906002)(2501003)(86362001)(2950100002)(39060400002)(6246003)(55016002)(3846002)(25786009)(99286003)(6116002)(6306002)(3660700001)(3280700002)(9686003)(77096006)(2201001)(6506006)(53546010)(6436002)(50986999)(229853002)(54356999)(76176999)(97736004)(5660300001)(74316002)(305945005)(7736002)(66066001)(7696004)(189998001)(966005)(2900100001)(45080400002)(72206003)(478600001)(14454004)(101416001)(8676002)(81156014)(81166006)(106356001)(8936002)(105586002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR02MB505;
	H:BY2PR02MB1362.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2017 17:30:55.7387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR02MB505
X-Mailman-Approved-At: Thu, 14 Sep 2017 13:41:14 -0700
Subject: Re: [meta-xilinx] How to include Xilinx DMA driver
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
X-List-Received-Date: Mon, 11 Sep 2017 17:46:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRmFuLA0KDQpUaGFua3MsDQpTYW5kZWVwDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IG1ldGEteGlsaW54LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOm1l
dGEteGlsaW54LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIEZhbiBaaGFu
Zw0KU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgMTEsIDIwMTcgOTozOCBBTQ0KVG86IFJvYmVydCBC
ZXJnZXIgPHlvY3RvLnVzZXIubWFpbGluZ2xpc3RAZ21haWwuY29tPjsgeW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZzsgbWV0YS14aWxpbnhAeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFttZXRh
LXhpbGlueF0gW3lvY3RvXSBIb3cgdG8gaW5jbHVkZSBYaWxpbnggRE1BIGRyaXZlcg0KDQpIaSBh
bGwNCg0KVGhhbmsgeW91IFJvYmVydCBmb3IgdGhlIGd1aWRlLiBJIHRyaWVkIG9wdGlvbiBbMV0g
b3V0IG9mIHRyZWUgZHJpdmVyLiANCkdvdCBpdCBjb21waWxlZCwgYW5kIGxvYWRlZCB3aGVuIGlt
YWdlIGJvb3QgdXAuIE15IHVuZGVyc3RhbmQgb2YgdGhlIGRtYSBkcml2ZXIgaXMgdGhhdCBMaW51
eCBETUEgZW5naW5lIGRlcGVuZHMgb24gdGhlIFhpbGlueCBkZXZpY2UgZHJpdmVyDQooeGlsaW54
X2NkbWEuYykgYW5kIHRoZW4gZG1hX3Byb3h5LmMgZHJpdmVyIGRlcGVuZHMgb24gdGhlIExpbnV4
IERNQSBlbmdpbmUuIEFtIEkgY29ycmVjdD8NClllcw0KSXQgZG9lcyBzZWVtcyBYaWxpbnhfY2Rt
YSBpcyBsb2FkZWQgc3VjY2VmdWxseSwgYnV0IGRtYXRlc3QgZGlkbid0LiBIZXJlIGlzIHRoZSBt
ZXNzYWdlIEkndmUgZ290Og0KDQpJbiBvcmRlciB0byB1c2UgRE1BVEVTVCBJUCBhc3N1bWVzIEFY
SV9ETUEgSVAgc3RyZWFtaW5nIGludGVyZmFjZXMgYXJlIGNvbm5lY3RlZCBiYWNrIHRvIGJhY2sg
aW4gdGhlIEhXIGRlc2lnbi4gUmVmZXIgaHR0cDovL3d3dy53aWtpLnhpbGlueC5jb20vRE1BK0Ry
aXZlcnMrLStTb2Z0K0lQcyANCg0Kcm9vdEBtaWNyb3plZC16eW5xNzp+IyBkbWVzZyB8IGdyZXAg
ZG1hDQpbwqDCoMKgIDAuMjAyMzQ4XSBkbWEtcGwzMzAgZjgwMDMwMDAuZG1hYzogTG9hZGVkIGRy
aXZlciBmb3IgUEwzMzAgRE1BQy0yNDEzMzANClvCoMKgwqAgMC4yMDIzNzBdIGRtYS1wbDMzMCBm
ODAwMzAwMC5kbWFjOsKgwqDCoMKgwqDCoMKgwqAgREJVRkYtMTI4eDhieXRlcyANCk51bV9DaGFu
cy04IE51bV9QZXJpLTQgTnVtX0V2ZW50cy0xNg0KW8KgwqDCoCAwLjIwMjY1NF0geGlsaW54LXZk
bWEgN2UyMDAwMDAuZG1hOiBmYWlsZWQgdG8gZ2V0IGF4aV9jbGsgKDQyOTQ5NjcyOTQpDQpbwqDC
oMKgIDAuMjAyNjc5XSB4aWxpbngtdmRtYTogcHJvYmUgb2YgN2UyMDAwMDAuZG1hIGZhaWxlZCB3
aXRoIGVycm9yIC0yDQpbwqDCoMKgIDIuNjA5NDE3XSB4aWxpbngtY2RtYSA3ZTIwMDAwMC5kbWE6
IFhpbGlueCBBWEkgQ0RNQSBFbmdpbmUgZHJpdmVyIA0KUHJvYmVkISENClvCoMKgwqAgMi42MzU1
NTJdIE1vZHVsZXMgbGlua2VkIGluOiBheGlkbWF0ZXN0KE8rKSB4aWxpbnhfY2RtYShPKQ0KW8Kg
wqDCoCAyLjY1OTI3MV0gUEMgaXMgYXQgeGlsaW54X2F4aWRtYXRlc3RfcHJvYmUrMHhkOC8weDQx
OCBbYXhpZG1hdGVzdF0NClvCoMKgwqAgMi45MTY2NDZdIFs8YmYwMDUyMmM+XSAoeGlsaW54X2F4
aWRtYXRlc3RfcHJvYmUgW2F4aWRtYXRlc3RdKSBmcm9tIA0KWzxjMDM5MDVjOD5dIChwbGF0Zm9y
bV9kcnZfcHJvYmUrMHg1MC8weGIwKQ0KW8KgwqDCoCAzLjAyODgxMl0gdWRldmRbNjc0XTogd29y
a2VyIFs2ODddIGZhaWxlZCB3aGlsZSBoYW5kbGluZyANCicvZGV2aWNlcy9zb2MwL2RtYXRlc3RA
MCcNCg0KIEZyb20gdGhlc2UgbWVzc2FnZSwgSSdtIGd1ZXNzaW5nIHRoZXJlIGlzIGFuIGlzc3Vl
IGluIGNvbmZpZ3VyYXRpb24gb2YgDQp0aGUgY29tbW9uIGNsb2NrIGZyYW1ld29yay4gSXMgdGhl
IGNsa2MuYyBuZWVkcyB0byBiZSBidWlsdCBhcyBhbiBvdXQgb2YgDQp0cmVlIG1vZHVsZSB0byBi
ZSB1c2VkIGluIFlvY3RvPw0KDQpGcm9tIDIwMTcuMSBvbndhcmRzIENDRiBpcyBtYW5kYXRvcnkg
Zm9yIGFsbCBYaWxpbnggZHJpdmVycy4NCkZhbg0KDQpPbiAwOC8wOS8yMDE3IDEyOjIwIFBNLCBS
b2JlcnQgQmVyZ2VyIHdyb3RlOg0KPiBIaSwNCj4NCj4gT24gMjAxNy0wOS0wOCAxOTowMCwgRmFu
IFpoYW5nIHdyb3RlOg0KPj4gSGkgQWxsLA0KPj4NCj4+IDEuIEhvdyB0byBpbmNsdWRlIHhpbGlu
eF9kbWEuYyBkcml2ZXIgaW4gdG8gdGhlIHBva3kgaW1hZ2UgYnVpbGQ/DQo+DQo+IEluIGNhc2Ug
eW91IHdhbnQgdG8gaW5jbHVkZSBvdXQtb2YgdHJlZSBkcml2ZXJzIGl0IGNvdWxkIHdvcmsgbGlr
ZSANCj4gdGhpc1sxXSBpbiBjYXNlIHlvdSB3YW50IGluLXRyZWUgaXQncyBqdXN0IGEga2VybmVs
IHBhdGNoIHNpbWlsYXIgdG9bMl0uDQo+DQo+IEFwcGFyZW50bHkgeW91IHdpbGwgbmVlZCB0byB0
dXJuIG9uIGtlcm5lbCBjb25maWcgZmVhdHVyZXMuIFlvdSBtaWdodCANCj4gdHJ5IHNvbWV0aGlu
ZyBsaWtlIHRoaXNbM10uDQo+DQo+IEZvciBZb2N0by9YaWxpbnggc3BlY2lmaWMgcXVlc3Rpb25z
IHlvdSBtaWdodCB3YW50IHRvIGFzayBvbiB0aGUgDQo+IFhpbGlueCBtYWlsaW5nIGxpc3RbNF0u
DQo+DQo+IFsxXSANCj4gaHR0cHM6Ly9naXRodWIuY29tL1JvYmVydEJlcmdlci9tZXRhLW1haW5s
aW5lL3RyZWUvcHlyby10cmFpbmluZy12NC45LngvbXVsdGktdjctbWwvcmVjaXBlcy16ZWRib2Fy
ZC94aWxpbngtZG1hDQo+DQo+IFsyXSANCj4gaHR0cHM6Ly9naXRodWIuY29tL1JvYmVydEJlcmdl
ci9tZXRhLW1haW5saW5lL2Jsb2IvcHlyby10cmFpbmluZy12NC45LngvbXVsdGktdjctbWwvcmVj
aXBlcy1rZXJuZWwvbGludXgvcGF0Y2gvNC45LngvcGF0Y2hlcy96ZWRib2FyZC16eW5xNy96eW5x
LXFzcGkvMDAwMS16eW5xLXplZGJvYXJkLW5vbi1tYWlubGluZS1xc3BpLXN1cHBvcnQucGF0Y2gN
Cj4NCj4gWzNdIA0KPiBodHRwczovL2dpdGh1Yi5jb20vUm9iZXJ0QmVyZ2VyL21ldGEtbWFpbmxp
bmUvdHJlZS9weXJvLXRyYWluaW5nLXY0LjkueC9tdWx0aS12Ny1tbC9yZWNpcGVzLWtlcm5lbC9s
aW51eC9jb25maWcvbXVsdGktdjctbWwtYmFzZS9mZWF0dXJlcy96eW5xLXFzcGkNCj4NCj4gWzRd
IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby9tZXRhLXhpbGlueA0KPg0K
PiBSZWdhcmRzLA0KPg0KPiBSb2JlcnQNCj4NCj4NCg0K

