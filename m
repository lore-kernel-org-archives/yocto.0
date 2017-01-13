Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91934E0034A; Thu, 12 Jan 2017 20:54:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 83133 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Jan 2017 20:54:23 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0136.outbound.protection.outlook.com [104.47.40.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B37CE0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 20:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=uHOzS0eH4mp1jc7fIHLd9ysDAu4CR9PM80dDaDx0VGs=;
	b=duXuFyFOZR12e0btdrbelEl10PljlGXJqwihMNbd7867FvBaK+LlqtZqzWKZKZp1EOrqjLUYDZErkiM4eJYMF7buBRUDvilTcudy4E0loIrRI+M9QepCvrrqFMrW9ERpPqIEanYc0RUUd/+U9abbJ5wQU5NuWPnm+Qt8P1Dduog=
Received: from CY4PR12MB1880.namprd12.prod.outlook.com (10.175.81.23) by
	CY4PR12MB1880.namprd12.prod.outlook.com (10.175.81.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.829.7; Fri, 13 Jan 2017 03:19:07 +0000
Received: from CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) by
	CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) with mapi id
	15.01.0829.019; Fri, 13 Jan 2017 03:19:07 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Yocto Linux kernel 4.8 boot can't login.
Thread-Index: AQHSbJbo1EE1FKOra0WRTE/MKHI5yqE1BzYAgAC3Cjs=
Date: Fri, 13 Jan 2017 03:19:06 +0000
Message-ID: <CY4PR12MB188094B40360D4EA7CC41379A5780@CY4PR12MB1880.namprd12.prod.outlook.com>
References: <CY4PR12MB1880D87F3C84CF1046AE33B8A5790@CY4PR12MB1880.namprd12.prod.outlook.com>,
	<CAMKF1sobjaJC0RZfGS9BYNG9+mOWKt64f2RotxY=D3JBwzpKiA@mail.gmail.com>
In-Reply-To: <CAMKF1sobjaJC0RZfGS9BYNG9+mOWKt64f2RotxY=D3JBwzpKiA@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: 782231e9-99a5-4db9-033c-08d43b62ef53
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR12MB1880;
x-microsoft-exchange-diagnostics: 1; CY4PR12MB1880;
	7:UMI9oIdXal5s9gTlleTODyaVYZTKQ/ziEgQ0CsxGn9xbD906NZQTe8TKUgygLX0n3GBfAs6MrMzqcocCHYT7hyx4yiUD90a1tcJL4zYCqAL/FKaNPtV4iGOZPz+9/BdCyvkJA4S5fXAjSmDKx9ZgiptCkrrsPjGopIKPLGQfDbktI8CnqT55tMMIW9FCpkvmT0kodgAf7ijM3U19Klz++xmZcfS4a0a/84iqH8g7z7aMWimKgHSMGl8ZvpSvHD3hn0m6U2rNMldV/PzlVCL1MiEuPZYG1Xi3G+2e6iCsb8TGT/ajWei9bVZXLqd9pCIL+vcH7GYcAcDquV4T5lHaLvzQYsoyY+oMsqL1FwncqMxPpUCfjkTdnL4xzjVa1+W6fZ4PaJY1OEJQGsTposaa+xkZIwzaBwtPlYdwmYq3w8oBgInh9+7lqDHdvQRHxFamg8L2XzFmRB1W3t3UHmT8zg==
x-microsoft-antispam-prvs: <CY4PR12MB1880FCCB07F564684E6CC04EA5780@CY4PR12MB1880.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123564025)(20161123560025)(20161123555025)(2016111802025)(6072148)(6043046);
	SRVR:CY4PR12MB1880; BCL:0; PCL:0; RULEID:; SRVR:CY4PR12MB1880; 
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(39410400002)(39830400002)(377454003)(189002)(24454002)(199003)(224303003)(106356001)(50986999)(106116001)(189998001)(105586002)(55016002)(68736007)(81166006)(77096006)(8936002)(81156014)(6916009)(66066001)(38730400001)(3660700001)(25786008)(39060400001)(6436002)(86362001)(74316002)(6506006)(16234385003)(3280700002)(99286003)(4326007)(110136003)(7696004)(33656002)(2906002)(2900100001)(92566002)(2950100002)(5660300001)(102836003)(122556002)(7736002)(6116002)(3846002)(97736004)(9686003)(101416001)(54356999)(54896002)(76176999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR12MB1880;
	H:CY4PR12MB1880.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2017 03:19:06.7625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1880
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?562U5aSNOiBZb2N0byBMaW51eCBrZXJuZWwgNC44IGJvb3QgY2FuJ3QgbG9naW4u?=
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
X-List-Received-Date: Fri, 13 Jan 2017 04:54:27 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR12MB188094B40360D4EA7CC41379A5780CY4PR12MB1880namp_"

--_000_CY4PR12MB188094B40360D4EA7CC41379A5780CY4PR12MB1880namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

VGhhbmtzLG5vdyB3b3JrIGZpbmUuDQoNCg0KUmljaGFyZA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0Kt6K8/sjLOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPg0Kt6LL
zcqxvOQ6IDIwMTfE6jHUwjEzyNUgMDoyMzoyNA0KytW8/sjLOiBSaWNoYXJkIFpoYW5nDQqzrcvN
OiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQrW98ziOiBSZTogW3lvY3RvXSBZb2N0byBMaW51eCBr
ZXJuZWwgNC44IGJvb3QgY2FuJ3QgbG9naW4uDQoNCk9uIFdlZCwgSmFuIDExLCAyMDE3IGF0IDk6
NDggUE0sIFJpY2hhcmQgWmhhbmcgPHJpY2hhcmQuemhhbmdAcGljYTguY29tPiB3cm90ZToNCj4g
U3RhcnRpbmcgY3JvbmQ6IHNldHVpZDogRnVuY3Rpb24gbm90IGltcGxlbWVudGVkDQoNCkxpbnV4
IGdhaW5lZCBhIG5ldyBjb25maWcgb3B0aW9uLCBDT05GSUdfTVVMVElVU0VSLCB0aGF0IG1ha2Vz
DQpzdXBwb3J0IGZvciBub24tcm9vdCB1c2VycyBvcHRpb25hbC4gVGhpcyByZXN1bHRzIGluIGEg
bnVtYmVyIG9mIHN5c2NhbGxzDQpiZWluZyBkaXNhYmxlZCBzZXR1aWQgaXMgb25lIG9mIHRoZW0u
IHNldCB0aGlzIG9wdGlvbiB0byAneScNCg==

--_000_CY4PR12MB188094B40360D4EA7CC41379A5780CY4PR12MB1880namp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Thanks,now work fine.</p>
<p><br>
</p>
<p>Richard<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>=B7=A2=BC=FE=C8=CB:</b> Khem =
Raj &lt;raj.khem@gmail.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2017=C4=EA1=D4=C213=C8=D5 0:23:24<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Richard Zhang<br>
<b>=B3=AD=CB=CD:</b> yocto@yoctoproject.org<br>
<b>=D6=F7=CC=E2:</b> Re: [yocto] Yocto Linux kernel 4.8 boot can't login.</=
font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Wed, Jan 11, 2017 at 9:48 PM, Richard Zhang &lt=
;richard.zhang@pica8.com&gt; wrote:<br>
&gt; Starting crond: setuid: Function not implemented<br>
<br>
Linux gained a new config option, CONFIG_MULTIUSER, that makes<br>
support for non-root users optional. This results in a number of syscalls<b=
r>
being disabled setuid is one of them. set this option to 'y'<br>
</div>
</span></font>
</body>
</html>

--_000_CY4PR12MB188094B40360D4EA7CC41379A5780CY4PR12MB1880namp_--
