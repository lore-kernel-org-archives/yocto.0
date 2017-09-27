Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6580E00CC2; Wed, 27 Sep 2017 13:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.66 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4795 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Sep 2017 13:46:51 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0066.outbound.protection.outlook.com [104.47.40.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E82E00C89
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 13:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=j6xrXFPakVDSBDKKOjjokhRvRa+PTwcTDBKpKzrH3l0=;
	b=o+skPn7BmY+1S8wVgh8SYuqJvst2KuUWemC489rjlZrHqnH5sCLvLGsR3bBVG+jwF/KuaOFmiiCbzcWfMmlDmBvsWjgYveH/hw4KWmqwnjqhfgyvQRvqaLNgcvFUXQ+80Msa3Q3hBxfzXlNgNOjpo+eDvK4ASfP66yf0f3773i8=
Received: from BL2PR02MB2163.namprd02.prod.outlook.com (10.167.97.25) by
	BL2PR02MB2163.namprd02.prod.outlook.com (10.167.97.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Wed, 27 Sep 2017 20:14:05 +0000
Received: from BL2PR02MB2163.namprd02.prod.outlook.com
	([fe80::4ef:27af:14e7:a903]) by BL2PR02MB2163.namprd02.prod.outlook.com
	([fe80::4ef:27af:14e7:a903%14]) with mapi id 15.20.0077.011;
	Wed, 27 Sep 2017 20:14:05 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Thread-Topic: [yocto] [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS
	support"
Thread-Index: AQHTN8X6TFwHpSM980q1kkWsSPBqkqLJKfCw
Date: Wed, 27 Sep 2017 20:14:04 +0000
Message-ID: <BL2PR02MB21636A8AABF61EEF27F2C046B9780@BL2PR02MB2163.namprd02.prod.outlook.com>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAMKF1sp4NnABqktpOHtRuaZ3QEsfrY1xWKpHyVfGguHr20pTAw@mail.gmail.com>
	<CAP9ODKpOBsDoOiHnzXiYOMUBU+yEsHBF+6dUjPTTkoyuMPeqXA@mail.gmail.com>
	<BL2PR02MB2163605452880372FE03671BB9780@BL2PR02MB2163.namprd02.prod.outlook.com>
	<CAP9ODKpcuKs9qp+UtWf28s72oht09Px_jhpTDkKNKqgCpB2keQ@mail.gmail.com>
In-Reply-To: <CAP9ODKpcuKs9qp+UtWf28s72oht09Px_jhpTDkKNKqgCpB2keQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2PR02MB2163;
	6:l+rpUCYERFesHG6UhIMLRWfaKvTmTr0UGGHKGiG3w1tfDZCZDSyZiRtLz7k2qNlrBWKJbu+625wsw7TjBxzk9e6tRFpUHuli3g7IoL+t/MxPkiYNXYn5K/HqymlTOHQ17pdTwJ98Lnoje2qaIXulc3vfGZhtut3jo7wqq0kLbs2+W+yX5aYXtOpHgB+qIvah3gaI6hNWSRZ5dfAg+w+NVbZDBimDwm4SriXjt0WwLQqSUrPCnnW0okRtFXwCI4mFAa0kwavqHUccrRcIc6cTNYkumgs01YhfLIYTDnoo2RwrBrPJxmiSLrEZSRS97TqFNQzWg4DaGI7YjnbLIIDfGA==;
	5:T1OpSCp+NO4OQbHCrZdfk1xDMC9Qi1L5ZT1OMBvJPihdzAmnsbA/1ohPn+r3tFchBcfAaPtivyFaNFbLmvyvgtk/x6FFRBbnvmQNXhysGGS1d1AhJ4ZWcljN7ofwEpyJKvTDbMkZb61+hrS0WoAcPQ==;
	24:r9P7CIn2cvccoMiPJ1Vs/hWYqlHYTVoWIDaTJeZUHESJFFssWpjfP66Ctr/zzzC7McMPa1a0KjwgRSZxE7MoA6UOn4x145QYvf86OIfY20E=;
	7:dxTomp8ORq9rM+VkXqqooIgP64dcZHFTYyLm8l8hHouodNDjGZuyRlHU06Ju3xyeAEY04Y9FDzlRccZzriTJCtYu1riyH/Hqehx25S4oiEX3ieLLa3Xhqv7PHdVR4OYtZVW8K9GexreGnP6hH6VjMC0T65tBhAsTo0nKVkHJeTYCc0bEzF4//9zulfEPAm77KWfEjcsPiotxTpnonuWnD/IntR8ZNGwVDl7gme7TZwE=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 8573f41b-5e5c-4448-c011-08d505e44d7f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(48565401081)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:BL2PR02MB2163; 
x-ms-traffictypediagnostic: BL2PR02MB2163:
x-exchange-antispam-report-test: UriScan:(166708455590820)(166494164430575)(192813158149592); 
x-microsoft-antispam-prvs: <BL2PR02MB216334E698DD49F6A91CEEF4B9780@BL2PR02MB2163.namprd02.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(100000703101)(100105400095)(10201501046)(6055026)(6041248)(20161123562025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123558100)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BL2PR02MB2163; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BL2PR02MB2163; 
x-forefront-prvs: 04433051BF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(39860400002)(346002)(51914003)(189002)(24454002)(13464003)(377454003)(199003)(81156014)(6506006)(3660700001)(76176999)(99286003)(101416001)(105586002)(66066001)(575784001)(305945005)(5250100002)(25786009)(55016002)(6246003)(9686003)(54356999)(6306002)(8676002)(50986999)(93886005)(53546010)(39060400002)(4326008)(7736002)(189998001)(2950100002)(106356001)(68736007)(6116002)(97736004)(102836003)(14454004)(74316002)(966005)(86362001)(81166006)(2900100001)(53936002)(72206003)(316002)(229853002)(3846002)(478600001)(2906002)(33656002)(5660300001)(7696004)(8936002)(54906003)(6916009)(3280700002)(6436002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL2PR02MB2163;
	H:BL2PR02MB2163.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2017 20:14:05.1974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR02MB2163
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 20:46:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgT3RhdmlvLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE90YXZp
byBTYWx2YWRvciBbbWFpbHRvOm90YXZpby5zYWx2YWRvckBvc3N5c3RlbXMuY29tLmJyXQ0KPiBT
ZW50OiBXZWRuZXNkYXksIFNlcHRlbWJlciAyNywgMjAxNyAxMjoyMyBQTQ0KPiBUbzogTWFuanVr
dW1hciBIYXJ0aGlrb3RlIE1hdGhhIDxNQU5KVUtVTUB4aWxpbnguY29tPg0KPiBDYzogS2hlbSBS
YWogPHJhai5raGVtQGdtYWlsLmNvbT47IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IE90
YXZpbw0KPiBTYWx2YWRvciA8b3RhdmlvQG9zc3lzdGVtcy5jb20uYnI+DQo+IFN1YmplY3Q6IFJl
OiBbeW9jdG9dIFttZXRhLXJhc3BiZXJyeXBpXVtQQVRDSF0gUmV2ZXJ0ICJxdGJhc2U6IEVuYWJs
ZSBFR0xGUw0KPiBzdXBwb3J0Ig0KPiANCj4gT24gV2VkLCBTZXAgMjcsIDIwMTcgYXQgMzo1MyBQ
TSwgTWFuanVrdW1hciBIYXJ0aGlrb3RlIE1hdGhhDQo+IDxNQU5KVUtVTUB4aWxpbnguY29tPiB3
cm90ZToNCj4gLi4uDQo+ID4+IGh0dHBzOi8vZ2l0aHViLmNvbS9GcmVlc2NhbGUvbWV0YS1mcmVl
c2NhbGUvYmxvYi9tYXN0ZXIvY2xhc3Nlcy9mc2wtZHluYW1pYy0NCj4gPj4gcGFja2FnZWFyY2gu
YmJjbGFzcw0KPiA+Pg0KPiA+PiBTb21ldGhpbmcgbGlrZSB0aGlzPw0KPiA+Pg0KPiA+DQo+ID4g
VGhpcyBpcyB2ZXJ5IHVzZWZ1bCwgY2FuIHRoaXMgY29uY2VwdCBiZSB1cHN0cmVhbWVkIHRvIE9F
LUNvcmU/DQo+IA0KPiBJIHRoaW5rIHNvOyBpZiBwZW9wbGUgYWdyZWUgd2l0aCB0aGlzIGNvbmNl
cHQgSSBjYW4gd29yayBpbiB1cHN0cmVhbWluZyBpdC4NCj4gDQo+IFRoZXJlIGlzIGFsc28gdGhl
IG1hY2hpbmUtb3ZlcnJpZGVzLWV4dGVuZGVyLmJiY2xhc3NbMV0gd2hpY2ggYWxsb3dzDQo+IGZv
ciBvdmVycmlkZXMgdG8gYmUgYWRkZWQvcmVtb3ZlZCBiYXNlZCBvbiBvdGhlciBvdmVycmlkZXMu
DQo+IA0KPiAxLiBodHRwczovL2dpdGh1Yi5jb20vRnJlZXNjYWxlL21ldGEtZnJlZXNjYWxlL2Js
b2IvbWFzdGVyL2NsYXNzZXMvbWFjaGluZS0NCj4gb3ZlcnJpZGVzLWV4dGVuZGVyLmJiY2xhc3MN
Cj4gDQo+IFRoaXMgd2FzIGhvdyBJIGNvdWxkIGdlbmVyYWxpemUgdGhlIEJTUCBpbiBhIGtpbmQg
b2YgU29DIGZlYXR1cmUgc2V0Lg0KPiANCj4gWW91IGNhbiBzZWUgdGhlIG9yaWdpbmFsIGNvbW1p
dCB3aGVyZSBJIGVuYWJsZSBpdDoNCj4gDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9GcmVlc2NhbGUv
bWV0YS0NCj4gZnJlZXNjYWxlL2NvbW1pdC9hZDQ2MTFhYjE2YmNkMDllZWYxMWQ2MzAxNTkyNTNh
MTJjNWVjY2VkI2RpZmYtDQo+IDdiYWM3NzU1YTI4OTFhOTRlODYzZWQwYTdhZjE4NzZhDQo+IA0K
VGhhbmtzIGZvciB0aGUgcGF0Y2guDQoNCldlIHdlcmUgdGhpbmtpbmcgb24gc2ltaWxhciBsaW5l
cyBmb3IgU09DIHZhcmlhbnRzIGFuZCBNQUNISU5FIHZhcmlhbnRzIChiYXNpY2FsbHkgYm9hcmRz
IHN1cHBvcnRpbmcgZGlmZmVyZW50IGZlYXR1cmVzIGxpa2UgR1BVLCBWQ1UgZXRjKS4gIFRoZXNl
IGNvbmZpZ3VyYXRpb24gbWVjaGFuaXNtIHdpbGwgaGVscCByZXNvbHZlIHRoZXNlIGNhc2VzLiAN
ClNPQVJDSCBjYW4gYWxzbyBoZWxwIGluIHBhY2thZ2UtZmVlZCBtZWNoYW5pc20gZm9yIGJvYXJk
cw0KDQpZb3Ugc2hvdWxkIGRlZmluaXRlbHkgY29uc2lkZXJpbmcgdXAgc3RyZWFtaW5nIHRoZXNl
IHRvIE9FLWNvcmUNCg0KVGhhbmtzLA0KTWFuanUNCg==

