Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3C33E00D2D; Mon,  9 Oct 2017 18:20:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE, SPF_HELO_PASS, T_FILL_THIS_FORM_SHORT,
	URI_HEX, URI_NOVOWEL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.126 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
X-Greylist: delayed 895 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Oct 2017 18:20:20 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0126.outbound.protection.outlook.com [104.47.33.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 079DDE00CFF
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 18:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=keysighttech.onmicrosoft.com; s=selector1-keysight-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=G6BrfAppjtqVTU12A6BzeUvOi/KQzDopAbW0Bvt6la4=;
	b=eP5v66WKuse4bPr0+Lq0Ll5qWOIEhlMQSyAC6xF05T7sELqH5mJxsu7cb38q03EB3eKb2buzjAcP781WHq/rYrYx+XoqaxA64WAqokOysXCeK08JVRldN3SYsYW7bmVJn9/PeXTVI1KGsmBWl2Emo3xQEMftVcIWYcdT+S25JMQ=
Received: from BY1PR17MB0120.namprd17.prod.outlook.com (10.161.97.144) by
	BY1PR17MB0118.namprd17.prod.outlook.com (10.161.97.142) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Tue, 10 Oct 2017 01:05:23 +0000
Received: from BY1PR17MB0120.namprd17.prod.outlook.com
	([fe80::b900:a916:c67f:6871]) by
	BY1PR17MB0120.namprd17.prod.outlook.com
	([fe80::b900:a916:c67f:6871%15]) with mapi id 15.20.0077.020;
	Tue, 10 Oct 2017 01:05:22 +0000
From: <richard_allen@keysight.com>
To: <ayoub.zaki@embexus.com>, <yocto@yoctoproject.org>
Thread-Topic: [yocto] read-only-rootfs causes systemd-tmpfiles-setup.service
	failure ( symlink(../run/lock, /var/lock) failed: Read-only file system)
Thread-Index: AdM+p9w+fxAOzQ72S7OviBTAOqJF6gAFvnQAAKk8bdA=
Date: Tue, 10 Oct 2017 01:05:22 +0000
Message-ID: <BY1PR17MB012014F555DDBC7CCA754528F1750@BY1PR17MB0120.namprd17.prod.outlook.com>
References: <BY1PR17MB012060F2B72863B46932C421F1710@BY1PR17MB0120.namprd17.prod.outlook.com>
	<60625f12-854c-0390-bcd5-935650f089ce@embexus.com>
In-Reply-To: <60625f12-854c-0390-bcd5-935650f089ce@embexus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard_allen@keysight.com; 
x-originating-ip: [206.49.107.132]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY1PR17MB0118;
	6:LYk4K3DWLXbZQwJoOUdB+0T/D5lpjj3a9TgKYKGpKUOKaiG0UubeLEbLV+Nc85maSiXAWdl6oX0ZdE1MCkEDWhx3paozs2rIjRYTkh8LZ44JdQ8wZJqeBsaY2W22JuF5EYTToS55ld01tvX9QV4uD/6hRiziy+OQsBXpkXZQOMW3qBEki6BRlKhSpLBFR+L5Tu2bn/SOmRvqAmOgKIo5yFru3GVIuAhyKnmrZUJHdhgzItTooqR67vi+Ldwa0HlKYD7SdHpux0NNIJsYQvS5j2vwZOlROEBqbfRZ+QeDD54DicSUPx1eeGoNE8MZzihfbPtMoneGfxr6sqUDf+vqLQ==;
	5:ncSi+2kzUVrA/hzwjmCGnV4OqSbHDmW9NaSvm75Z1JG1wfmNMADIxeEQTR7sZDAJLv1iUOlmylUQY9MM1uokqacE1w2+RohZADEzlvLcZq0GvFBCAexGxET1TmHX8/bOxrNFYElabnBBpZU6fO/H4EOaHeTLpKYObMav+d0/Wrs=;
	24:DyqYfxWVkgKVzEFwLiR4BlQLL98gzfvNPFmU7+VMXD4CMSGKC7Xl7V6WbgrWRgX1tKF7tjebnWjYcJplAlYaYGTejgt526rCMYZhJaUouWs=;
	7:UwDLLF0HTWNixTOT4KrH6A8M5aOWuckJinH87U3kvb8HveaukL2MuO1FdBLMcPtNdwbpHeep4zqlTa12it4zC+RInuRE0h9Ve1MB1TS69/K5ZArV001g/ZrxmrsOCWY7AcTfeNMPO++BuyqtCFVOTaHSMvku+tGVRlSFAIOtNKuMCjBL+zt42OnnvcACX6aUBX2BCNYN9LBc1eGesYmMPCd2uSC4Xk/Y3YGU2imAS0Y=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: a4b73c8f-74e5-439e-7f76-08d50f7afbea
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:BY1PR17MB0118; 
x-ms-traffictypediagnostic: BY1PR17MB0118:
x-exchange-antispam-report-test: UriScan:(189930954265078)(219752817060721);
x-microsoft-antispam-prvs: <BY1PR17MB01184C699DDBBAC7C9F76A82F1750@BY1PR17MB0118.namprd17.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(93006095)(93001095)(10201501046)(3002001)(6041248)(20161123562025)(20161123555025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BY1PR17MB0118; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BY1PR17MB0118; 
x-forefront-prvs: 04569283F9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(346002)(376002)(199003)(189002)(24454002)(13464003)(377454003)(377424004)(97736004)(305945005)(2906002)(7736002)(106356001)(966005)(6506006)(7696004)(6436002)(53936002)(105586002)(2950100002)(25786009)(74316002)(478600001)(45080400002)(6246003)(6116002)(229853002)(101416001)(8936002)(9686003)(3660700001)(33656002)(2900100001)(68736007)(66066001)(230783001)(102836003)(76176999)(54356999)(55016002)(99286003)(50986999)(3280700002)(5660300001)(6306002)(14454004)(189998001)(5250100002)(53546010)(86362001)(3846002)(316002)(2501003)(8676002)(81156014)(81166006)(575784001)(110136005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY1PR17MB0118;
	H:BY1PR17MB0120.namprd17.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: keysight.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: keysight.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2017 01:05:22.7481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63545f27-3232-4d74-a44d-cdd457063402
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR17MB0118
Subject: Re: read-only-rootfs causes systemd-tmpfiles-setup.service failure ( symlink(../run/lock, /var/lock) failed: Read-only file system)
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
X-List-Received-Date: Tue, 10 Oct 2017 01:20:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBpcyB3aGF0IEkgaGF2ZSwNCg0KDQokIGNhdCBldGMvZnN0YWIgDQojIHN0b2NrIGZzdGFi
IC0geW91IHByb2JhYmx5IHdhbnQgdG8gb3ZlcnJpZGUgdGhpcyB3aXRoIGEgbWFjaGluZSBzcGVj
aWZpYyBvbmUNCg0KL2Rldi9yb290ICAgICAgICAgICAgLyAgICAgICAgICAgICAgICAgICAgYXV0
byAgICAgICBybyAgICAgICAgICAgICAgMSAgMA0KcHJvYyAgICAgICAgICAgICAgICAgL3Byb2Mg
ICAgICAgICAgICAgICAgcHJvYyAgICAgICBkZWZhdWx0cyAgICAgICAgICAgICAgMCAgMA0KZGV2
cHRzICAgICAgICAgICAgICAgL2Rldi9wdHMgICAgICAgICAgICAgZGV2cHRzICAgICBtb2RlPTA2
MjAsZ2lkPTUgICAgICAgMCAgMA0KdG1wZnMgICAgICAgICAgICAgICAgL3J1biAgICAgICAgICAg
ICAgICAgdG1wZnMgICAgICBtb2RlPTA3NTUsbm9kZXYsbm9zdWlkLHN0cmljdGF0aW1lIDAgIDAN
CnRtcGZzICAgICAgICAgICAgICAgIC92YXIvdm9sYXRpbGUgICAgICAgIHRtcGZzICAgICAgZGVm
YXVsdHMgICAgICAgICAgICAgIDAgIDANCg0KIyB1bmNvbW1lbnQgdGhpcyBpZiB5b3VyIGRldmlj
ZSBoYXMgYSBTRC9NTUMvVHJhbnNmbGFzaCBzbG90DQojL2Rldi9tbWNibGswcDEgICAgICAgL21l
ZGlhL2NhcmQgICAgICAgICAgYXV0byAgICAgICBkZWZhdWx0cyxzeW5jLG5vYXV0byAgMCAgMA0K
DQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvLWJvdW5jZXNAeW9j
dG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24g
QmVoYWxmIE9mIEF5b3ViIFpha2kNClNlbnQ6IEZyaWRheSwgT2N0b2JlciAwNiwgMjAxNyA5OjE5
IEFNDQpUbzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gcmVh
ZC1vbmx5LXJvb3RmcyBjYXVzZXMgc3lzdGVtZC10bXBmaWxlcy1zZXR1cC5zZXJ2aWNlIGZhaWx1
cmUgKCBzeW1saW5rKC4uL3J1bi9sb2NrLCAvdmFyL2xvY2spIGZhaWxlZDogUmVhZC1vbmx5IGZp
bGUgc3lzdGVtKQ0KDQoNCkhpLA0KDQpPbiAwNi4xMC4yMDE3IDE1OjQwLCByaWNoYXJkX2FsbGVu
QGtleXNpZ2h0LmNvbSB3cm90ZToNCj4gSSBhbSBidWlsZCBhbiBpbWFnZSB3aXRoIHJlYWQtb25s
eS1yb290ZnMgV2hlbiBlbmFibGVkLCBkdXJpbmcgc3RhcnR1cCANCj4gSSBnZXQgYQ0KPg0KPiBb
RkFJTEVEXSBGYWlsZWQgdG8gc3RhcnQgQ3JlYXRlIFZvbGF0aWxlIEZpbGVzIGFuZCBEaXJlY3Rv
cmllcy4NCj4gU2VlICdzeXN0ZW1jdGwgc3RhdHVzIHN5c3RlbWQtdG1wZmlsZXMtc2V0dXAuc2Vy
dmljZScgZm9yIGRldGFpbHMuDQo+DQo+DQo+DQo+IOKXjyBzeXN0ZW1kLXRtcGZpbGVzLXNldHVw
LnNlcnZpY2UgLSBDcmVhdGUgVm9sYXRpbGUgRmlsZXMgYW5kIERpcmVjdG9yaWVzDQo+ICAgICBM
b2FkZWQ6IGxvYWRlZCANCj4gKC9saWIvc3lzdGVtZC9zeXN0ZW0vc3lzdGVtZC10bXBmaWxlcy1z
ZXR1cC5zZXJ2aWNlOyBzdGF0aWM7IHZlbmRvciANCj4gcHJlDQo+IHNldDogZW5hYmxlZCkNCj4g
ICAgIEFjdGl2ZTogZmFpbGVkIChSZXN1bHQ6IGV4aXQtY29kZSkgc2luY2UgRnJpIDIwMTctMDkt
MDEgMTk6MTY6MjcgVVRDOyAzbWluIDUycyBhZ28NCj4gICAgICAgRG9jczogbWFuOnRtcGZpbGVz
LmQoNSkNCj4gICAgICAgICAgICAgbWFuOnN5c3RlbWQtdG1wZmlsZXMoOCkNCj4gICAgUHJvY2Vz
czogOTQ1IEV4ZWNTdGFydD0vYmluL3N5c3RlbWQtdG1wZmlsZXMgLS1jcmVhdGUgLS1yZW1vdmUg
DQo+IC0tYm9vdCAtLWV4Y2x1ZGUtcHJlZml4PSAvZGV2IChjb2RlPWV4aXRlZCwgc3RhdHVzPTEv
RkFJTFVSRSkNCj4gICBNYWluIFBJRDogOTQ1IChjb2RlPWV4aXRlZCwgc3RhdHVzPTEvRkFJTFVS
RSkNCj4NCj4gU2VwIDAxIDE5OjE2OjI3IGRzbyBzeXN0ZW1kWzFdOiBTdGFydGluZyBDcmVhdGUg
Vm9sYXRpbGUgRmlsZXMgYW5kIERpcmVjdG9yaWVzLi4uDQo+IFNlcCAwMSAxOToxNjoyNyBkc28g
c3lzdGVtZC10bXBmaWxlc1s5NDVdOiBzeW1saW5rKC4uL3J1bi9sb2NrLCANCj4gL3Zhci9sb2Nr
KSBmYWlsZWQ6IFJlYWQtb25seSBmaWxlIHN5c3RlbSBTZXAgMDEgMTk6MTY6MjcgZHNvIHN5c3Rl
bWQtdG1wZmlsZXNbOTQ1XTogIi92YXIvdG1wIiBhbHJlYWR5IGV4aXN0cyBhbmQgaXMgbm90IGEg
ZGlyZWN0b3J5Lg0KPiBTZXAgMDEgMTk6MTY6MjcgZHNvIHN5c3RlbWQtdG1wZmlsZXNbOTQ1XTog
Ii92YXIvbG9nIiBhbHJlYWR5IGV4aXN0cyBhbmQgaXMgbm90IGEgZGlyZWN0b3J5Lg0KPiBTZXAg
MDEgMTk6MTY6MjcgZHNvIHN5c3RlbWRbMV06IHN5c3RlbWQtdG1wZmlsZXMtc2V0dXAuc2Vydmlj
ZTogTWFpbiANCj4gcHJvY2VzcyBleGl0ZWQsIGNvZGU9ZXhpdGVkLCBzdGF0dXM9MS9GQUlMVVJF
IFNlcCAwMSAxOToxNjoyNyBkc28gc3lzdGVtZFsxXTogRmFpbGVkIHRvIHN0YXJ0IENyZWF0ZSBW
b2xhdGlsZSBGaWxlcyBhbmQgRGlyZWN0b3JpZXMuDQo+IFNlcCAwMSAxOToxNjoyNyBkc28gc3lz
dGVtZFsxXTogc3lzdGVtZC10bXBmaWxlcy1zZXR1cC5zZXJ2aWNlOiBVbml0IGVudGVyZWQgZmFp
bGVkIHN0YXRlLg0KPiBTZXAgMDEgMTk6MTY6MjcgZHNvIHN5c3RlbWRbMV06IHN5c3RlbWQtdG1w
ZmlsZXMtc2V0dXAuc2VydmljZTogRmFpbGVkIHdpdGggcmVzdWx0ICdleGl0LWNvZGUnLg0KPg0K
Pg0KPiBOb3QgY2xlYXIgaWYgSSBzaG91bGQgYmUgd29ycmllZCBhYm91dCB0aGlzLg0KPiBJZiBz
bywgd2hhdCBzaG91bGQgYmUgZG9uZT8NCj4gVGhhbmtzDQo+DQo+DQo+IFJpY2hhcmQgQy4gQWxs
ZW4NCj4gS2V5c2lnaHQgVGVjaG5vbG9naWVzDQo+IHJpY2hhcmRfYWxsZW5AS2V5c2lnaHQuY29t
DQo+DQpjYW4geW91IHNob3cgeW91ciAvZXRjL2ZzdGFiID8NCg0KLS0NCkF5b3ViIFpha2kNCkVt
YmVkZGVkIFN5c3RlbXMgQ29uc3VsdGFudA0KDQpWYWloaW5nZXIgU3RyYcOfZSAyLzENCkQtNzE2
MzQgTHVkd2lnc2J1cmcNCg0KVGVsLiAgICAgOiArNDk3MTQxNTA3NDU0Ng0KTW9iaWxlICAgOiAr
NDkxNzY2MjkwMTU0NQ0KRW1haWwgICAgOiBheW91Yi56YWtpQGVtYmV4dXMuY29tDQpIb21lcGFn
ZSA6IGh0dHBzOi8vbmEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0
dHBzJTNBJTJGJTJGZW1iZXh1cy5jb20mZGF0YT0wMiU3QzAxJTdDJTdDNDQ5YzNmYzM5MzdlNGRj
ZDg5YTkwOGQ1MGNkNjA0Y2QlN0M2MzU0NWYyNzMyMzI0ZDc0YTQ0ZGNkZDQ1NzA2MzQwMiU3QzEl
N0MwJTdDNjM2NDI5MDM1Njk2NzU4MDEwJnNkYXRhPUMlMkJXRWZ6WUJLT2N3Q1NTbXNaanhzeU5K
alJRQ1RNOGFRaG5tMHJlJTJCWWRzJTNEJnJlc2VydmVkPTANCg0KLS0NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp5b2N0byBtYWlsaW5nIGxpc3QNCnlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vbmEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyUyRmxp
c3RpbmZvJTJGeW9jdG8mZGF0YT0wMiU3QzAxJTdDJTdDNDQ5YzNmYzM5MzdlNGRjZDg5YTkwOGQ1
MGNkNjA0Y2QlN0M2MzU0NWYyNzMyMzI0ZDc0YTQ0ZGNkZDQ1NzA2MzQwMiU3QzElN0MwJTdDNjM2
NDI5MDM1Njk2NzU4MDEwJnNkYXRhPTVqdkg0WklzV3R2YnhTV09JakxJcmF6SWtteUQ5ak9lRXkl
MkZscCUyQk4lMkZCa1UlM0QmcmVzZXJ2ZWQ9MA0K

