Return-Path: <Mark.Clark2@nov.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA2D3E00C88; Fri, 16 Sep 2016 07:47:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0073.outbound.protection.outlook.com [104.47.41.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C96E00B74
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 07:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nov.onmicrosoft.com;
	s=selector1-nov-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=6n5YV7mNhmBKoQga4sufNz7A63YuDQwDisBxQobWwmo=;
	b=Nu9RwtvDA1bsEmFvZnrRZ9o50dITz9ncFCkKNE7AH/32jx8stLZxNztA+fFzdO3dTX0vNGx9kN6CwSsnFReXADTKBBLLu1kDfpb/ctaHhgJE+/CDPISSV2cthf9GBxtfx44Vm5Qvx3dMbbR6g7oMx87W0zHQiD2ie2KawthnU2Y=
Received: from BY1PR15MB0038.namprd15.prod.outlook.com (10.161.96.28) by
	BY1PR15MB0039.namprd15.prod.outlook.com (10.161.97.11) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.609.9; Fri, 16 Sep 2016 14:47:35 +0000
Received: from BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) by
	BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) with mapi id
	15.01.0609.019; Fri, 16 Sep 2016 14:47:35 +0000
From: "Clark, Mark A" <Mark.Clark2@nov.com>
To: Claudius Heine <ch@denx.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL] [yocto] [meta-intel][Galileo] Kernel configuration
	isn't applied on linux-yocto-rt
Thread-Index: AQHSD+nNfCDhdmah8UCkXH2OKDBBk6B8MQLg
Date: Fri, 16 Sep 2016 14:47:35 +0000
Message-ID: <BY1PR15MB0038975261282F52E50A6526BCF30@BY1PR15MB0038.namprd15.prod.outlook.com>
References: <1474009943.32095.52.camel@denx.de>
In-Reply-To: <1474009943.32095.52.camel@denx.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Mark.Clark2@nov.com; 
x-originating-ip: [165.225.34.100]
x-ms-office365-filtering-correlation-id: 4f990512-4bac-41fb-e726-08d3de4065d2
x-microsoft-exchange-diagnostics: 1; BY1PR15MB0039;
	6:tUIJ5MKtuPb3answ6NzJ4tSSHdkOoqIszAMgMPedH6I/cXHw+s7mkuWv0valku13EhM/NuPmULBU0+R40/mKsH3gHJk5PB5q010paHu3wW8fNT9rq5aFV6HUz2dIo+m4pG8AKsljUQ2R6rLqcq9g3AAFCE3gvSrzmHsGqlfJ29tMezDPQ7eZJUxRSW8wzSoiHuONobEg1Nywi43IDQ9sQkIwKI81XO4vLtFdBwBbizHk6eaUG6hDSRf4sgehIaqcggbOCIB1vzezvhVYFH9shZsTxAtZxQXIn7gCpJrNhyApAM82oLp5KHMe3bwgQogQ;
	5:VtuECP+CunX+BiWjwMv5w70feRaLDumaz488b63V6p5/5moaIQGRcp+ZWxZ5l1Q5wszHwEmog4JmFHAF+xbZC+5vkKJGMDB4yX4RKESDgkWtbNajasX6JhR+LU4rSW1IFUHES3n1p+BEBzy609yHoQ==;
	24:JelY0oVMTqIQK3vD1wEcJhk/lRdDtPbU1HFWbAryRzrfDvPZipnGy1PX7zbyhAGTAU5+EE88qAa56D53xR7QqIBynq3fT5m20U8yzUvWBKw=;
	7:oMhZwsSKveZJnt/tahFu6uSAJTmYlABCtgjSci9bf7V6+yRdEaczbvIPMs3dGWNiWqmv4PUfAP/+xUN2UrFB5DPe2v+LDSzyx736ItCROdPxubeIklSm2fRRZG0MjtYNWmK2I7W7QG+DER1ENBS1ooq9kKZ7TohwHB9IG8E/Jl7YKv2TvIpysb8XIC8J7UXUlr6S2TjZGwrbJlK8oC/N6RdNL0uvUqps1ycsKrvI1hjH8Xdkc5ohIHg51vCdq6Pi
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR15MB0039;
x-microsoft-antispam-prvs: <BY1PR15MB0039CDF93D8BD88E65D0A2EBBCF30@BY1PR15MB0039.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(10436049006162)(126837547833334);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6043046)(6042046);
	SRVR:BY1PR15MB0039; BCL:0; PCL:0; RULEID:; SRVR:BY1PR15MB0039; 
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(13464003)(377454003)(189002)(199003)(252514010)(575784001)(230783001)(7846002)(102836003)(6116002)(3846002)(7736002)(586003)(2501003)(7696004)(33656002)(5660300001)(9686002)(87936001)(66066001)(19580405001)(101416001)(76576001)(4326007)(3280700002)(5001770100001)(97736004)(2906002)(19580395003)(50986999)(54356999)(106356001)(92566002)(76176999)(105586002)(99286002)(8676002)(2950100001)(2900100001)(106116001)(11100500001)(86362001)(189998001)(305945005)(3660700001)(10400500002)(122556002)(74316002)(68736007)(81166006)(81156014)(5002640100001)(8936002)(15975445007)(77096005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR15MB0039;
	H:BY1PR15MB0038.namprd15.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nov.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nov.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2016 14:47:35.5464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ebe82bb-f23f-4bb6-b7d0-b038c066ad05
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR15MB0039
Cc: Jan Kiszka <jan.kiszka@siemens.com>
Subject: Re: [EXTERNAL] [meta-intel][Galileo] Kernel configuration isn't applied on linux-yocto-rt
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
X-List-Received-Date: Fri, 16 Sep 2016 14:47:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2xhdWRpdXMsIEkgYW0gcnVubmluZyBpbnRvIHNpbWlsYXIgaXNzdWVzIHdpdGggbGludXgteW9j
dG8tcnQuICBJIGFtIHdvcmtpbmcgb3V0IG9mIHBva3kva3JvZ290aC4NCg0KSSBoYXZlIHRoZSBm
b2xsb3dpbmcgdHdvIGxpbmVzIHNldCBhdCB0aGUgZW5kIG9mICBsb2NhbC5jb25mDQoNCkNPTVBB
VElCTEVfTUFDSElORV9nZW5lcmljeDg2ID0gImdlbmVyaWN4ODYiDQpQUkVGRVJSRURfUFJPVklE
RVJfdmlydHVhbC9rZXJuZWwgPSAibGludXgteW9jdG8tcnQiDQoNCkkgYWxzbyBoYXZlIE1BQ0hJ
TkUgPz0gImdlbmVyaWN4ODYiICB3aGljaCBJIHRoaW5rIHNob3VsZCBiZSBzdWZmaWNpZW50IGZv
ciBhIDMyYml0IGJ1aWxkLg0KU0RLTUFDSElORSA/PSAiaTY4NiIgYXMgd2VsbCBmb3IgdGhlIFNE
Sy4NCg0KSSBoYXZlIGJlZW4gdW5hYmxlIHRvIG9idGFpbiBhIGJ1aWxkLiAgSSBoYXZlIG5vIGlk
ZWEgd2hhdCBlbHNlIG5lZWRzIHRvIGJlIHNldC4gIElmIHlvdSBmaWd1cmUgaXQgb3V0IGxldCBt
ZSBrbm93Lg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogeW9jdG8tYm91bmNl
c0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3Jn
XSBPbiBCZWhhbGYgT2YgQ2xhdWRpdXMgSGVpbmUNClNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDE2
LCAyMDE2IDI6MTIgQU0NClRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpDYzogSmFuIEtpc3pr
YSA8amFuLmtpc3prYUBzaWVtZW5zLmNvbT4NClN1YmplY3Q6IFtFWFRFUk5BTF0gW3lvY3RvXSBb
bWV0YS1pbnRlbF1bR2FsaWxlb10gS2VybmVsIGNvbmZpZ3VyYXRpb24gaXNuJ3QgYXBwbGllZCBv
biBsaW51eC15b2N0by1ydA0KDQpIaSwNCg0KSSBhbSBjdXJyZW50bHkgdHJ5aW5nIHRvIGNvbXBp
bGUgdGhlIGxpbnV4LXlvY3RvLXJ0IGtlcm5lbCBmb3IgYSBjdXN0b20gYm9hcmQgKGNhbGxlZCBp
b3QyMDAwIGhlcmUpIGJhc2VkIG9uIHRoZSBJbnRlbCBHYWxpbGVvIHBsYXRmb3JtLg0KDQpUaGUg
YnVpbGQgZmFpbHMsIGJlY2F1c2UgdGhlIGtlcm5lbCBjb25maWd1cmF0aW9uIGlzbid0IGFwcGxp
ZWQuDQoNCkhvd2V2ZXIsIHRoZSBiaXRiYWtlIGVudmlyb25tZW50IG9mIHRoZSBsaW51eC15b2N0
by1ydCB0YXJnZXQgbG9va3MgZ29vZCB0byBtZSBhbmQgZXZlcnl0aGluZyB3b3JrcyB3aGVuIEkg
c3dpdGNoIHRvIHRoZSBsaW51eC15b2N0byBrZXJuZWwsIHdoZXJlIHRoZSBzYW1lIGNvbmZpZ3Vy
YXRpb24gaXMgYXBwbGllZC4NCg0KQW55IGhlbHAgd291bGQgYmUgYXBwcmVjaWF0ZWQuDQoNClRo
YW5rcywgYW5kIGhhdmUgYSBuaWNlIGRheSwNCkNsYXVkaXVzIEhlaW5lDQoNCiQgYml0YmFrZSBs
aW51eC15b2N0by1ydA0KWy4uLl0NCkJ1aWxkIENvbmZpZ3VyYXRpb246DQpCQl9WRVJTSU9OwqDC
oMKgwqDCoMKgwqDCoD0gIjEuMzAuMCINCkJVSUxEX1NZU8KgwqDCoMKgwqDCoMKgwqDCoD0gIng4
Nl82NC1saW51eCINCk5BVElWRUxTQlNUUklOR8KgwqDCoD0gInVuaXZlcnNhbCINClRBUkdFVF9T
WVPCoMKgwqDCoMKgwqDCoMKgPSAiaTU4Ni1wb2t5LWxpbnV4Ig0KTUFDSElORcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqA9ICJpb3QyMDAwIg0KRElTVFJPwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgPSAi
cG9reSINCkRJU1RST19WRVJTSU9OwqDCoMKgwqA9ICIyLjEuMSINClRVTkVfRkVBVFVSRVPCoMKg
wqDCoMKgPSAibTMyIGk1ODYtbmxwIg0KVEFSR0VUX0ZQVcKgwqDCoMKgwqDCoMKgwqA9ICIiDQpt
ZXRhLW11bHRpbWVkaWENCm1ldGEtbmV0d29ya2luZw0KbWV0YS1weXRob24NCm1ldGEtb2XCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgPSAia3JvZ290aDoyNDdiMTI2N2JiZTk1NzE5Y2Q0ODc3ZDJkM2Nm
YmFmMmEyZjQ4NjVhIg0KbWV0YQ0KbWV0YS1wb2t5DQptZXRhLXlvY3RvLWJzcMKgwqDCoMKgPSAi
a3JvZ290aDphYWQ3MTY2NzA0MDIxZDgyYWQzYTVlYzQ2ODU1MmY4ZjEwMzYwZDQxIg0KbWV0YS1p
bnRlbMKgwqDCoMKgwqDCoMKgwqA9ICJIRUFEOjE0MWU3MWFmM2M1OWY5YmQ1ZDQ1MDI5YTQxOGRl
MmUxY2U5MGFhY2QiDQptZXRhLWludGVsLWlvdC1taWRkbGV3YXJlID0NCiJtYXN0ZXI6ODIxY2Yx
NGM4MzA0NjY5ZDljZTBjNWI4N2I5YmU1YTZlZWNmZjZlNSINCm1ldGEtaW90MjAwMC1ic3ANCm1l
dGEtaW90MjAwMC1leGFtcGxlID0NCiJqYW4vcGF0Y2hlczpkOTE3N2UwOTAyZGJkOTA3YTk1Mjhl
ZGYzOGQ1MjJlZWNkOGRjM2I5Ig0KbWV0YS1qYXZhwqDCoMKgwqDCoMKgwqDCoMKgPSAibWFzdGVy
OjhjNjYzZWZhNGY4ZWZjY2Y1MGQwOTRkYmM2MWM3Yjc4MDMxYjNiN2QiDQoNCk5PVEU6IFByZXBh
cmluZyBSdW5RdWV1ZQ0KTk9URTogRXhlY3V0aW5nIFNldFNjZW5lIFRhc2tzDQpOT1RFOiBFeGVj
dXRpbmcgUnVuUXVldWUgVGFza3MNCkVSUk9SOiBsaW51eC15b2N0by1ydC00LjQuMTgrZ2l0QVVU
T0lOQys1OTI5MGM1ZjYxX2I1ZTIxYWE5ODgtcjANCmRvX3BhY2thZ2VfcWE6IFFBIElzc3VlOiBB
cmNoaXRlY3R1cmUgZGlkIG5vdCBtYXRjaCAoMyB0byA2Mikgb24NCndvcmsvaTU4Ni1ubHAtMzIt
aW50ZWwtY29tbW9uLXBva3ktbGludXgvbGludXgteW9jdG8tDQpydC80LjQuMTgrZ2l0QVVUT0lO
Qys1OTI5MGM1ZjYxX2I1ZTIxYWE5ODgtcjAvcGFja2FnZXMtc3BsaXQva2VybmVsLQ0Kdm1saW51
eC9ib290L3ZtbGludXgtNC40LjIwLXJ0MTkteW9jdG8tcHJlZW1wdC1ydCBbYXJjaF0NCkVSUk9S
OiBsaW51eC15b2N0by1ydC00LjQuMTgrZ2l0QVVUT0lOQys1OTI5MGM1ZjYxX2I1ZTIxYWE5ODgt
cjANCmRvX3BhY2thZ2VfcWE6IFFBIHJ1biBmb3VuZCBmYXRhbCBlcnJvcnMuIFBsZWFzZSBjb25z
aWRlciBmaXhpbmcgdGhlbS4NCkVSUk9SOiBsaW51eC15b2N0by1ydC00LjQuMTgrZ2l0QVVUT0lO
Qys1OTI5MGM1ZjYxX2I1ZTIxYWE5ODgtcjANCmRvX3BhY2thZ2VfcWE6IEZ1bmN0aW9uIGZhaWxl
ZDogZG9fcGFja2FnZV9xYQ0KRVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBzdG9yZWQgaW46IC9o
b21lL2J1aWxkL2Zhc3QvdG1wL3dvcmsvaTU4Ni0NCm5scC0zMi1pbnRlbC1jb21tb24tcG9reS1s
aW51eC9saW51eC15b2N0by0NCnJ0LzQuNC4xOCtnaXRBVVRPSU5DKzU5MjkwYzVmNjFfYjVlMjFh
YTk4OC0NCnIwL3RlbXAvbG9nLmRvX3BhY2thZ2VfcWEuNTIxMg0KRVJST1I6IFRhc2sgMTYgKC9o
b21lL2J1aWxkL3lvY3RvL21ldGEvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgtDQp5b2N0by1y
dF80LjQuYmIsIGRvX3BhY2thZ2VfcWEpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCk5PVEU6
IFRhc2tzIFN1bW1hcnk6IEF0dGVtcHRlZCAzODkgdGFza3Mgb2Ygd2hpY2ggMzg4IGRpZG4ndCBu
ZWVkIHRvIGJlIHJlcnVuIGFuZCAxIGZhaWxlZC4NCk5vIGN1cnJlbnRseSBydW5uaW5nIHRhc2tz
ICgzODggb2YgMzkwKQ0KDQpTdW1tYXJ5OiAxIHRhc2sgZmFpbGVkOg0KwqAgL2hvbWUvYnVpbGQv
eW9jdG8vbWV0YS9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0by1ydF80LjQuYmIsDQpk
b19wYWNrYWdlX3FhDQpTdW1tYXJ5OiBUaGVyZSB3ZXJlIDMgRVJST1IgbWVzc2FnZXMgc2hvd24s
IHJldHVybmluZyBhIG5vbi16ZXJvIGV4aXQgY29kZS4NCg0KbG9jYWwuY29uZjogaHR0cHM6Ly91
cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHAtM0FfX3Bhc3RlYmluLmNvbV9Q
UUpadmd0dCZkPURRSUdhUSZjPW9UWkp4V2pYQTk3VTVlZmJESlpHRWcmcj11TkRkTWlzZ08xVGVL
MEhMcXNwa0RWeHRfZjNPaDZtdDZiVG02VERMRmRJJm09aGIzVjlTNGllLTluWG9vN2lQblpZYlpp
U1lWbWttWm5sa3RVdzd3UG4wMCZzPTV0TjFQT25yX19HQTAxQ213QndDVmhidHNQTFRYSUhvdFpN
Tno1Z1JiUDQmZT0NCmlvdDIwMDAuY29uZjogaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQu
Y29tL3YyL3VybD91PWh0dHAtM0FfX3Bhc3RlYmluLmNvbV9ITFhYM0VqMiZkPURRSUdhUSZjPW9U
Wkp4V2pYQTk3VTVlZmJESlpHRWcmcj11TkRkTWlzZ08xVGVLMEhMcXNwa0RWeHRfZjNPaDZtdDZi
VG02VERMRmRJJm09aGIzVjlTNGllLTluWG9vN2lQblpZYlppU1lWbWttWm5sa3RVdzd3UG4wMCZz
PURId045Nnd2TEFqcFRRYUE0QU9FcXZ3RDBUYm9zT0NJTGFkUWxzOTF6eWsmZT0NCmxpbnV4LXlv
Y3RvLXJ0IGZpbGVzOiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9
aHR0cC0zQV9fYml0Lmx5XzJjc0pYdVYmZD1EUUlHYVEmYz1vVFpKeFdqWEE5N1U1ZWZiREpaR0Vn
JnI9dU5EZE1pc2dPMVRlSzBITHFzcGtEVnh0X2YzT2g2bXQ2YlRtNlRETEZkSSZtPWhiM1Y5UzRp
ZS05blhvbzdpUG5aWWJaaVNZVm1rbVpubGt0VXc3d1BuMDAmcz1sZlJ0OWktLVFtbFBlWS1JM0RZ
LXhNYzJVUTJoNFEzaVBta0cyN1Ffc2dJJmU9DQpsaW51eC15b2N0by1ydCBlbnZpcm9ubWVudDog
aHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHAtM0FfX2JpdC5s
eV8yY05HRjI1JmQ9RFFJR2FRJmM9b1RaSnhXalhBOTdVNWVmYkRKWkdFZyZyPXVORGRNaXNnTzFU
ZUswSExxc3BrRFZ4dF9mM09oNm10NmJUbTZURExGZEkmbT1oYjNWOVM0aWUtOW5Yb283aVBuWlli
WmlTWVZta21abmxrdFV3N3dQbjAwJnM9TFJpRktBNENpUHlQZ1NndkhsMXhnOHYxdGxEZE9IMG5O
SVZQOXJDOHNqbyZlPQ0KbGludXgteW9jdG8tcnQgcmVzdWx0aW5nIGNvbmZpZzogaHR0cHM6Ly91
cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHAtM0FfX2JpdC5seV8yZDRCU3Yz
JmQ9RFFJR2FRJmM9b1RaSnhXalhBOTdVNWVmYkRKWkdFZyZyPXVORGRNaXNnTzFUZUswSExxc3Br
RFZ4dF9mM09oNm10NmJUbTZURExGZEkmbT1oYjNWOVM0aWUtOW5Yb283aVBuWlliWmlTWVZta21a
bmxrdFV3N3dQbjAwJnM9aHladU9LRkdSeF9lRTF4YnZHdm13NThVbEtZM1JwOGwxZzJZczhzZ2pk
MCZlPSANCg0KLS0gDQpERU5YIFNvZnR3YXJlIEVuZ2luZWVyaW5nIEdtYkgswqDCoMKgwqDCoCBN
YW5hZ2luZyBEaXJlY3RvcjogV29sZmdhbmcgRGVuaw0KSFJCIDE2NTIzNSBNdW5pY2gsIE9mZmlj
ZTogS2lyY2hlbnN0ci41LCBELTgyMTk0IEdyb2ViZW56ZWxsLCBHZXJtYW55DQpQaG9uZTogKCs0
OSktODE0Mi02Njk4OS01NCBGYXg6ICgrNDkpLTgxNDItNjY5ODktODAgRW1haWw6wqBjaEBkZW54
LmRlDQotLSANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQp5b2N0byBtYWlsaW5nIGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vdXJs
ZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZ19saXN0aW5mb195b2N0byZkPURRSUdhUSZjPW9UWkp4V2pYQTk3VTVlZmJESlpHRWcm
cj11TkRkTWlzZ08xVGVLMEhMcXNwa0RWeHRfZjNPaDZtdDZiVG02VERMRmRJJm09aGIzVjlTNGll
LTluWG9vN2lQblpZYlppU1lWbWttWm5sa3RVdzd3UG4wMCZzPU9jaFpPbVltTjVIaHUxdDNhd0JU
UUZoZ2V4VXlBV2VKWFM0RVpRUUxmSlEmZT0gDQo=

