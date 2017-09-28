Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AD23E00D05; Thu, 28 Sep 2017 06:29:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.94 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 158242 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Sep 2017 06:28:57 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0094.outbound.protection.outlook.com [104.47.34.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3572EE00CD4
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 06:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=WYPx3z8OrGi6ieGKRgvbnSRl38JU20r2KP4kdocYl6c=;
	b=naPeLXqLPEYTY/wQkIuEbT6apnB61UV71jYtywozWX2XMClfSYAirlBi9sNUcfTt4YM+zVCK8Sn+hla6Fk1r7BNm8rq+jwl2wJi2kRFhlc1dgYVsq4vzJtqGW567CxdcJ3i6DGFDRAiSGUb53jvZBrTy0Bne5xNwUREuJUNpEKs=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2953.namprd05.prod.outlook.com (10.168.176.141) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.5; Thu, 28 Sep 2017 13:28:56 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.20.0077.016; Thu, 28 Sep 2017 13:28:56 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Errors building with Windows Subsystem for Linux (aka
	Bash on Ubuntu on Windows)
Thread-Index: AdM2vvT/ayFgE6oJRBOg0n7smNXIyQAPHqMAAADZbQAABYZmgAAcwVjQAAJWj4AADyAMsAAFCDqAABtPSLA=
Date: Thu, 28 Sep 2017 13:28:56 +0000
Message-ID: <DM5PR05MB2954E147CAF6959E26148F2BBB790@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LYWJFAChPkcOeU4ESOzCZ0XkrVswRnsh7jz=4QnKZ6uWA@mail.gmail.com>
	<DM5PR05MB29543B944CF11354749DE3C6BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LZ3+prEXi4eJH-0qcg_mp7CShyVzGg2=nY3c3s585CQ9A@mail.gmail.com>
	<DM5PR05MB2954E471F11F1ADF08E544CABB780@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LavAJr8D+kuQ_6FkjA-D-XotT7BcrCA3W7bv_HL2EpuxA@mail.gmail.com>
	<DM5PR05MB2954EF4777E6EB3AE7C36815BB780@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LaoXqf700W4wHMwfCJAK3B5xOTuFm-7ug3DWscFpcF=sg@mail.gmail.com>
In-Reply-To: <CAJTo0LaoXqf700W4wHMwfCJAK3B5xOTuFm-7ug3DWscFpcF=sg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2953;
	6:y2AdzUuM+G5pv9J7SPMt94tEE3ZpER4YqQYML7nKwZDyu9LHKmq717g46ktdiV8REnQ6RNp2lbj3rVMBzBNP/c3as+fgEDCjFfFmQwAk7+AGeSQnQcAX5JKUQZdeXqZPgBpnKtQyhpe6QEqZFSCGqn70qRjINICCgyBbfwJJr2kB1cvK6vGCIZ8hepwt+qG/gfueUPHt+gYERc2TGeZo5MNWRc8d1yfxfONh8cfD6WlIXne/0xlpK6kzfDD5HY1V4XntXTFRHbhz/dVrdEC/baF1cQvFIPyceBi3MkiD3QyOVCmFQ4X0g3HPTptkB/7wAe4Jz6piNQr4mrsNCmyU4Q==;
	5:616dFjkWVUfFZaj/QFUaPZoJHxzgGh291ixS8nwsqHFiaMYD4jHYrDLazpZLkN0aV7TqUCrTW1YRGFBflGt2EPjoXHmFIFOMqAO2ArQL0bprMNv908wPnshpir3/ZhkwzDTJrUp/gd5ug2uStrPYkA==;
	24:OoXm0bMAKzGY3JB/2v+k99j8pu+mzuF+LXhQIo5oWOTjUjV7Sjnlwdhq9m0N6UJPqqGwSdoUvHMMs3bC0c3vA6TRT2XoHjh6tateInbLeX8=;
	7:7+6n/ezUSzd6deHjvxkhrND6MUIKv8lE+Y4M4TaAyTISuX1hFxyjtA3Cdq6MzwUrIuN1GUI1/PVVzvQP6ZX13HKg0bcGdvURY9NSxwTJEJ6orne8WFcmaev1ShW8SwFG38q/yrHY4q5Az28P13DhHbTvykCt68Dc7icwOSo4hUHntAtn7FxPpwGvGA6zJVgZZwZuprOHrCkIzFqLYaer9cQY4832n6l10zDvHxDinu8=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: d090b2c1-a8ab-41c3-45cf-08d50674de83
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM5PR05MB2953; 
x-ms-traffictypediagnostic: DM5PR05MB2953:
x-exchange-antispam-report-test: UriScan:(176295241369792)(21748063052155)(228905959029699); 
x-microsoft-antispam-prvs: <DM5PR05MB2953DD40B5CA6669A2BB1740BB790@DM5PR05MB2953.namprd05.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(100000703101)(100105400095)(10201501046)(6041248)(20161123562025)(20161123555025)(20161123558100)(20161123564025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM5PR05MB2953; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM5PR05MB2953; 
x-forefront-prvs: 0444EB1997
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39830400002)(346002)(376002)(199003)(189002)(24454002)(3905003)(377454003)(55016002)(189998001)(6916009)(101416001)(7736002)(8676002)(2950100002)(966005)(74316002)(86362001)(81156014)(93886005)(606006)(33656002)(478600001)(8936002)(68736007)(14454004)(81166006)(53546010)(5660300001)(54356999)(99286003)(25786009)(50986999)(236005)(7696004)(2900100001)(6246003)(66066001)(2906002)(316002)(77096006)(76176999)(9686003)(19609705001)(3280700002)(105586002)(6306002)(3660700001)(54896002)(4326008)(6436002)(97736004)(102836003)(106356001)(3846002)(790700001)(6506006)(53936002)(229853002)(6116002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2953;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2017 13:28:56.0661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2953
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Thu, 28 Sep 2017 13:29:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR05MB2954E147CAF6959E26148F2BBB790DM5PR05MB2954namp_"

--_000_DM5PR05MB2954E147CAF6959E26148F2BBB790DM5PR05MB2954namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9zcywNCg0KRnJvbTogQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29t
XQ0KU2VudDogV2VkbmVzZGF5LCBTZXB0ZW1iZXIgMjcsIDIwMTcgNjo0MyBQTQ0KVG86IEJyeWFu
IEV2ZW5zb24gPGJldmVuc29uQG1lbGlua2NvcnAuY29tPg0KQ2M6IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIEVycm9ycyBidWlsZGluZyB3aXRoIFdpbmRvd3Mg
U3Vic3lzdGVtIGZvciBMaW51eCAoYWthIEJhc2ggb24gVWJ1bnR1IG9uIFdpbmRvd3MpDQoNCk9u
IDI3IFNlcHRlbWJlciAyMDE3IGF0IDIxOjU5LCBCcnlhbiBFdmVuc29uIDxiZXZlbnNvbkBtZWxp
bmtjb3JwLmNvbTxtYWlsdG86YmV2ZW5zb25AbWVsaW5rY29ycC5jb20+PiB3cm90ZToNCg0KSSB0
aGluayBJIGZvdW5kIHRoZSBwcm9ibGVtLiAgSSBzdGFydGVkIGxvb2tpbmcgYXQgbW9yZSBmaWxl
IHByb3BlcnRpZXMgZm9yIHRoZSBmaWxlcyB0aGF0IHdvcmtlZCBhbmQgdGhlIG9uZXMgdGhhdCBk
aWRu4oCZdCwgYW5kIEkgbm90aWNlZCB0aGF0IGFsbCB0aGUgb25lcyB0aGF0IGZhaWxlZCBzaG93
IGEgbGluayBjb3VudCBvZiAxMDI0LiAgVGhlIFdpbmRvd3MgZmlsZXN5c3RlbSBoYXMgYSBsaW5r
IGxpbWl0IG9mIDEwMjMgbGlua3MgcGVyIGZpbGUgKGF0IGxlYXN0IGFzIHJlcG9ydGVkIGhlcmU6
IGh0dHBzOi8vbXNkbi5taWNyb3NvZnQuY29tL2VuLXVzL2xpYnJhcnkvd2luZG93cy9kZXNrdG9w
L2FhMzYzODYwKHY9dnMuODUpLmFzcHgpLCBzbyBJIHRoaW5rIHRoZSBoYXJkIGxpbmsgaXMgZmFp
bGluZyBkdWUgdG8gdGhlIFdpbmRvd3MgbGluayBsaW1pdC4gIElmIHRoYXQgaXMgdGhlIGNhc2Us
IHRoZW4gSSBkb27igJl0IHRoaW5rIGl04oCZbGwgYmUgYSBxdWljayBmaXggdG8gZ2V0IGEgd29y
a2luZyBzb2x1dGlvbiB1bmRlciBXU0wuDQoNClRoYXQgbGluayBjb3VudCBkb2Vzbid0IHNlZW0g
ZmVhc2libGUgdGhvdWdoLi4uICB3ZSBoYXJkbGluayBmcmVxdWVudGx5IGR1cmluZyBhIHJlY2lw
ZSBidWlsZCwgYnV0IEknZCBleHBlY3QgdG8gc2VlIDEwIGxpbmtzLCBub3Qgb3ZlciBhIHRob3Vz
YW5kLiAgWW91J3ZlIGRlZmluaXRlbHkgZm91bmQgdGhlIHByb2JsZW0sIGp1c3QgbmVlZCB0byBm
aWd1cmUgb3V0IHdoYXQgaXMgY2F1c2luZyBzdWNoIGV4Y2Vzc2l2ZSBsaW5raW5nLA0KDQpUd28g
ZmlsZXMsIExDX01FQVNVUkVNRU5UIGFuZCBMQ19QQVBFUiwgc2VlbSB0byBiZSBpZGVudGljYWwg
dGhyb3VnaCBtb3N0IHRoZSBsb2NhbGVzLiAgSeKAmW0gbm90IHN1cmUgd2hpY2ggYXJlIGNvcGll
cyBhbmQgd2hpY2ggYXJlIGhhcmQgbGlua3MsIGJ1dCBJIGRpZCBhIG1kNXN1bSBjb21wYXJpc29u
IGFuZCBmb3VuZCBvdmVyIDEyMDAgaWRlbnRpY2FsIExDX01FQVNVUkVNRU5UIGZpbGVzIGluIHRo
ZSBnbGliYy1sb2NhbGUgd29ya2luZyBkaXJlY3RvcnkuICBJIGRvbuKAmXQgbmVlZCBhbGwgdGhl
IGxvY2FsZXMsIHNvIEkgc2V0IEdMSUJDX0dFTkVSQVRFX0xPQ0FMRVMgPSAiZW5fR0IuVVRGLTgg
ZW5fVVMuVVRGLTgiIGluIG15IGxvY2FsLmNvbmYgYW5kIG5vdyBnbGliYy1sb2NhbGUgY29tcGxl
dGVzIGJ1aWxkaW5nLg0KDQpJ4oCZbGwgcmVwb3J0IGJhY2sgaWYgdGhlIHJlc3Qgb2YgdGhlIGJ1
aWxkIGNvbXBsZXRlcy4NCg0KQnJ5YW4NCg0K

--_000_DM5PR05MB2954E147CAF6959E26148F2BBB790DM5PR05MB2954namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9
DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCglj
b2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpw
dXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwLm1zb25vcm1hbDAsIGxpLm1z
b25vcm1hbDAsIGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCglt
c28tbWFyZ2luLXRvcC1hbHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGluOw0KCW1zby1tYXJnaW4t
Ym90dG9tLWFsdDphdXRvOw0KCW1hcmdpbi1sZWZ0OjBpbjsNCglmb250LXNpemU6MTIuMHB0Ow0K
CWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4iLHNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4
DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsOw0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5z
LXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTkNCgl7bXNvLXN0
eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1z
ZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10
eXBlOmV4cG9ydC1vbmx5O30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWluIDExLjBp
bjsNCgltYXJnaW46MS4waW4gMS4waW4gMS4waW4gMS4waW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0K
CXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1s
Pg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1s
PjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpl
eHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVs
YXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGlu
az0iYmx1ZSIgdmxpbms9InB1cnBsZSI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1p
bHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj5Sb3NzLDxvOnA+PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+PG86cD4mbmJzcDs8
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbi1sZWZ0
Oi41aW4iPjxiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90
O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+RnJvbTo8L3NwYW4+PC9iPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJp
ZiI+IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NCjxicj4NCjxi
PlNlbnQ6PC9iPiBXZWRuZXNkYXksIFNlcHRlbWJlciAyNywgMjAxNyA2OjQzIFBNPGJyPg0KPGI+
VG86PC9iPiBCcnlhbiBFdmVuc29uICZsdDtiZXZlbnNvbkBtZWxpbmtjb3JwLmNvbSZndDs8YnI+
DQo8Yj5DYzo8L2I+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc8YnI+DQo8Yj5TdWJqZWN0OjwvYj4g
UmU6IFt5b2N0b10gRXJyb3JzIGJ1aWxkaW5nIHdpdGggV2luZG93cyBTdWJzeXN0ZW0gZm9yIExp
bnV4IChha2EgQmFzaCBvbiBVYnVudHUgb24gV2luZG93cyk8bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luLWxlZnQ6LjVpbiI+PG86cD4mbmJz
cDs8L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbi1s
ZWZ0Oi41aW4iPk9uIDI3IFNlcHRlbWJlciAyMDE3IGF0IDIxOjU5LCBCcnlhbiBFdmVuc29uICZs
dDs8YSBocmVmPSJtYWlsdG86YmV2ZW5zb25AbWVsaW5rY29ycC5jb20iIHRhcmdldD0iX2JsYW5r
Ij5iZXZlbnNvbkBtZWxpbmtjb3JwLmNvbTwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0K
PGRpdj4NCjxkaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6
c29saWQgI0NDQ0NDQyAxLjBwdDtwYWRkaW5nOjBpbiAwaW4gMGluIDYuMHB0O21hcmdpbi1sZWZ0
OjQuOHB0O21hcmdpbi1yaWdodDowaW4iPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0
OmF1dG87bWFyZ2luLWxlZnQ6LjVpbiI+DQo8bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1h
cmdpbi1ib3R0b20tYWx0OmF1dG87bWFyZ2luLWxlZnQ6LjVpbiI+DQo8c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYi
PkkgdGhpbmsgSSBmb3VuZCB0aGUgcHJvYmxlbS4mbmJzcDsgSSBzdGFydGVkIGxvb2tpbmcgYXQg
bW9yZSBmaWxlIHByb3BlcnRpZXMgZm9yIHRoZSBmaWxlcyB0aGF0IHdvcmtlZCBhbmQgdGhlIG9u
ZXMgdGhhdCBkaWRu4oCZdCwgYW5kIEkgbm90aWNlZCB0aGF0IGFsbCB0aGUgb25lcyB0aGF0IGZh
aWxlZCBzaG93IGEgbGluayBjb3VudCBvZiAxMDI0LiZuYnNwOw0KIFRoZSBXaW5kb3dzIGZpbGVz
eXN0ZW0gaGFzIGEgbGluayBsaW1pdCBvZiAxMDIzIGxpbmtzIHBlciBmaWxlIChhdCBsZWFzdCBh
cyByZXBvcnRlZCBoZXJlOg0KPGEgaHJlZj0iaHR0cHM6Ly9tc2RuLm1pY3Jvc29mdC5jb20vZW4t
dXMvbGlicmFyeS93aW5kb3dzL2Rlc2t0b3AvYWEzNjM4NjAodj12cy44NSkuYXNweCkiIHRhcmdl
dD0iX2JsYW5rIj4NCmh0dHBzOi8vbXNkbi5taWNyb3NvZnQuY29tL2VuLXVzL2xpYnJhcnkvd2lu
ZG93cy9kZXNrdG9wL2FhMzYzODYwKHY9dnMuODUpLmFzcHgpPC9hPiwgc28gSSB0aGluayB0aGUg
aGFyZCBsaW5rIGlzIGZhaWxpbmcgZHVlIHRvIHRoZSBXaW5kb3dzIGxpbmsgbGltaXQuJm5ic3A7
IElmIHRoYXQgaXMgdGhlIGNhc2UsIHRoZW4gSSBkb27igJl0IHRoaW5rIGl04oCZbGwgYmUgYSBx
dWljayBmaXggdG8gZ2V0IGEgd29ya2luZyBzb2x1dGlvbiB1bmRlciBXU0wuPC9zcGFuPjxvOnA+
PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtYXJnaW4tbGVmdDouNWluIj48bzpwPiZuYnNw
OzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJt
YXJnaW4tbGVmdDouNWluIj5UaGF0IGxpbmsgY291bnQgZG9lc24ndCBzZWVtIGZlYXNpYmxlIHRo
b3VnaC4uLiAmbmJzcDt3ZSBoYXJkbGluayBmcmVxdWVudGx5IGR1cmluZyBhIHJlY2lwZSBidWls
ZCwgYnV0IEknZCBleHBlY3QgdG8gc2VlIDEwIGxpbmtzLCBub3Qgb3ZlciBhIHRob3VzYW5kLiZu
YnNwOyBZb3UndmUgZGVmaW5pdGVseSBmb3VuZCB0aGUgcHJvYmxlbSwganVzdCBuZWVkIHRvIGZp
Z3VyZSBvdXQgd2hhdA0KIGlzIGNhdXNpbmcgc3VjaCBleGNlc3NpdmUgbGlua2luZyw8bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEu
MHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlm
Ij5Ud28gZmlsZXMsIExDX01FQVNVUkVNRU5UIGFuZCBMQ19QQVBFUiwgc2VlbSB0byBiZSBpZGVu
dGljYWwgdGhyb3VnaCBtb3N0IHRoZSBsb2NhbGVzLiZuYnNwOyBJ4oCZbSBub3Qgc3VyZSB3aGlj
aCBhcmUgY29waWVzIGFuZCB3aGljaCBhcmUgaGFyZCBsaW5rcywgYnV0IEkgZGlkIGEgbWQ1c3Vt
IGNvbXBhcmlzb24NCiBhbmQgZm91bmQgb3ZlciAxMjAwIGlkZW50aWNhbCBMQ19NRUFTVVJFTUVO
VCBmaWxlcyBpbiB0aGUgZ2xpYmMtbG9jYWxlIHdvcmtpbmcgZGlyZWN0b3J5LiZuYnNwOyBJIGRv
buKAmXQgbmVlZCBhbGwgdGhlIGxvY2FsZXMsIHNvIEkgc2V0IEdMSUJDX0dFTkVSQVRFX0xPQ0FM
RVMgPSAmcXVvdDtlbl9HQi5VVEYtOCBlbl9VUy5VVEYtOCZxdW90OyBpbiBteSBsb2NhbC5jb25m
IGFuZCBub3cgZ2xpYmMtbG9jYWxlIGNvbXBsZXRlcyBidWlsZGluZy48bzpwPjwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBw
dDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+
SeKAmWxsIHJlcG9ydCBiYWNrIGlmIHRoZSByZXN0IG9mIHRoZSBidWlsZCBjb21wbGV0ZXMuPG86
cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlm
Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7
LHNhbnMtc2VyaWYiPkJyeWFuPC9zcGFuPjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4N
CjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luLWxlZnQ6
LjVpbiI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_DM5PR05MB2954E147CAF6959E26148F2BBB790DM5PR05MB2954namp_--
