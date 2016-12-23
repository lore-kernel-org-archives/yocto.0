Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F699E011DA; Thu, 22 Dec 2016 17:34:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.102 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 931 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Dec 2016 17:34:22 PST
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0102.outbound.protection.outlook.com
	[104.47.37.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E391DE011C2
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 17:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Ercnd55j/YZnelYdiNFF1+YSAJOKEDLNHMj1XewrG6M=;
	b=gUynEDPMzC5OEgem2FmfF6+fP/X8yP+cBjXgzIwISJ3YJ/f60rUfBn/w5O/Q9755m8I4g42KRB9B0Y9Of9IIkEf2FB4iJeh9w6Shk/J+y3+3Dl3zsDCyVpY32AICJN3lLhNRXC+kGyp//f0yYQYCUZO+QXYJ4n35Z+7sz8rQiMs=
Received: from CY4PR12MB1880.namprd12.prod.outlook.com (10.175.81.23) by
	CY4PR12MB1879.namprd12.prod.outlook.com (10.175.80.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.789.14; Fri, 23 Dec 2016 01:18:49 +0000
Received: from CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) by
	CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) with mapi id
	15.01.0789.018; Fri, 23 Dec 2016 01:18:49 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] how to use a kernel build path in developing libs
Thread-Index: AQHSXCu1QK/r9p+zHUaII/KpJ+jl2aEUMJSAgACDyGc=
Date: Fri, 23 Dec 2016 01:18:49 +0000
Message-ID: <CY4PR12MB1880E430B0D2EFD8F320413DA5950@CY4PR12MB1880.namprd12.prod.outlook.com>
References: <CY4PR12MB1880B54FDAEE0F03B00ECA30A5910@CY4PR12MB1880.namprd12.prod.outlook.com>,
	<027229CB-5E4B-4F03-A114-8455817BD720@gmail.com>
In-Reply-To: <027229CB-5E4B-4F03-A114-8455817BD720@gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [25.172.122.132]
x-ms-office365-filtering-correlation-id: 04616078-2132-4641-c340-08d42ad1a63d
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR12MB1879;
x-microsoft-exchange-diagnostics: 1; CY4PR12MB1879;
	7:CiMwhP6G1Llal01ReDcD4bCBHN2MTdl298u8TI2VC2bFMX8omVk4VokGvXOqgvyrFR6rY1TLsv0NkrO74JCExEVq10iPqm52LTKBxXtkh83HRGoi0j7sDAscnZEdsMtKsIrpQnDrnw8oyhyHlT1BvrvVANmqv5d91DoRKXlApwVhIZz2XfVO3qhSCd9SsUVGvkMd6m6ip/myxuM7ktfL1e5A6SysCCQ5XWsmaM1axyEBUSQqcljgIYM3anAG+cLpbc7lq3M4e1qGvUFTO931R5LN6e3VM/PwLBbDU68QeELtBMx3xMQIAT7c0nxj1czWX41ESHpODwzjmc6zidHGW/DHH/zdU8IJ86+0HRUAc8iIkHHAic9tDdz+AC9Ja8q/YniWDDCebiNl21k2TnVEAu8jqSiAjAiXY1jeunKFG62+PuEEhHmYbkZn9jXThdxpDtL0+rhIsC+3SUZDAPdLUA==
x-microsoft-antispam-prvs: <CY4PR12MB1879E8CBC842D897F1824064A5950@CY4PR12MB1879.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(20161123564025)(20161123560025)(20161123555025)(20161123562025)(2016111802025)(6072148)(6043046);
	SRVR:CY4PR12MB1879; BCL:0; PCL:0; RULEID:; SRVR:CY4PR12MB1879; 
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(39410400002)(39830400002)(39450400003)(377454003)(24454002)(199003)(53754006)(189002)(7696004)(6916009)(39060400001)(33656002)(5660300001)(110136003)(122556002)(2950100002)(101416001)(66066001)(3660700001)(224303003)(106116001)(76176999)(106356001)(97736004)(54356999)(19627405001)(7736002)(102836003)(99286002)(3280700002)(92566002)(4326007)(16234385003)(76576001)(2906002)(68736007)(8936002)(81156014)(9686002)(81166006)(50986999)(38730400001)(2900100001)(105586002)(3846002)(7906003)(189998001)(74316002)(6116002)(86362001)(606005)(6436002)(25786008)(6506006)(77096006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR12MB1879;
	H:CY4PR12MB1880.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2016 01:18:49.0268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1879
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?562U5aSNOiBob3cgdG8gdXNlIGEga2VybmVsIGJ1aWxkIHBhdGggaW4gZGV2ZWxvcGluZyBsaWJz?=
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
X-List-Received-Date: Fri, 23 Dec 2016 01:34:27 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR12MB1880E430B0D2EFD8F320413DA5950CY4PR12MB1880namp_"

--_000_CY4PR12MB1880E430B0D2EFD8F320413DA5950CY4PR12MB1880namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

dGhhbmtzDQoNCg0KICAgICBJIGFtIHRyeWluZyB0byBwb3J0IHNvbWUga2VybmVsIG1vZHVsZXMg
dG8geW9jdG8sIHRvIGFkZCBvdXIgbGlicy4NCg0KICAgICBTbyBzaG91bGQgdXNlIGxpbnV4LWxp
YmMtaGVhZGVycyB0byBnZXQgaW5jbHVkZT8NCg0KDQoNClJlZ2FyZCwNCg0KUmljaGFyZA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0Kt6K8/sjLOiBLaGVtIFJhaiA8cmFqLmto
ZW1AZ21haWwuY29tPg0Kt6LLzcqxvOQ6IDIwMTbE6jEy1MIyM8jVIDA6NTc6MjENCsrVvP7Iyzog
UmljaGFyZCBaaGFuZw0Ks63LzTogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K1vfM4jogUmU6IFt5
b2N0b10gaG93IHRvIHVzZSBhIGtlcm5lbCBidWlsZCBwYXRoIGluIGRldmVsb3BpbmcgbGlicw0K
DQoNCk9uIERlYyAyMiwgMjAxNiwgYXQgMTI6MjMgQU0sIFJpY2hhcmQgWmhhbmcgPHJpY2hhcmQu
emhhbmdAcGljYTguY29tPG1haWx0bzpyaWNoYXJkLnpoYW5nQHBpY2E4LmNvbT4+IHdyb3RlOg0K
DQpoaSBhbGw6DQoNCkkgYW0gdHJ5aW5nIHRvIGFkZCBzb21lIGxpYiByZWxhdGVkIHdpdGgga2Vy
bmVsLg0KDQpVbmxlc3MgeW91IGFyZSB3cml0aW5nIGEga2VybmVsIG1vZHVsZSwgdXNpbmcgcmF3
IGtlcm5lbCBoZWFkZXJzIGFuZCBzb3VyY2VzIGlzIGdlbmVyYWxseSBub3QgYSBnb29kIGNob2lj
ZS4gTW9yZW92ZXINCmtlcm5lbCBkb2VzIG5vdCBoYXZlIEFQSXMgYmV5b25kIGhlYWRlcnMgaXQg
ZXhwb3J0cyBmb3IgdXNlciBzcGFjZSB0byB1c2UuIFNvIEkgd291bGQgc3VnZ2VzdCB0byByZXRo
aW5rIHdoYXQgeW91IGFyZSB0cnlpbmcNCnRvIGRvIGFuZCBtYXkgYmUgeW91IGNhbiB1c2UgdGhl
IGV4cG9zZWQga2VybmVsIEFQSXMgdGhyb3VnaCBrZXJuZWwgaGVhZGVycw0KDQpXaGVuIEkgdHJ5
IHRvIGluY2x1ZGUgdGhlIGtlcm5lbCBidWlsZCBkaXIgdG8gdGhlIGxpYiwgaSBhbSBub3Qgc3Vy
ZSB3aXRjaCBrZXJuZWwgYnVpbGQgcGF0aCBzaG91bGQgdG8gYmUgdXNlZCA6DQpidWlsZC90bXAv
d29yay9nZW5lcmljeDg2XzY0LXBva3ktbGludXgvbGludXgteW9jdG8vNC40LjMvbGludXgtZ2Vu
ZXJpY3g4Nl82NC1zdGFuZGFyZC1idWlsZC8NCg0KDQpBbm90aGVyIHF1ZXN0aW9uOg0KDQpXaGVu
IEkgd2FudCB0byBkZXZlbG9wIGFuIGFwcGxpY2F0aW9uICB1c2UgeW9jdG8gU0RLLg0KQWZ0ZXIg
SSBkZXBsb3kgYSB5b2N0byBTREsgdG9vbGNoYWluIHRoYXQgaW1hZ2UgaW5jbHVkZSBmdWxsIHRh
cmdldCwgIGNvdWxkIEkgdXNlIHRoZSBrZXJuZWwgYnVpbGQgcGF0aCBmb3IgY29tcGlsZSBzb2Z0
d2FyZT8NCg0KTm8sIHVubGVzcyBpdHMgYSBrZXJuZWwgbW9kdWxlLg0KDQoNCg0KUmVnYXJkLA0K
UmljaGFyZCBaaGFuZw0KLS0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQp5b2N0byBtYWlsaW5nIGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmc8bWFp
bHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvbGlzdGluZm8veW9jdG8NCg0K

--_000_CY4PR12MB1880E430B0D2EFD8F320413DA5950CY4PR12MB1880namp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space;" class=3D"">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>thanks </p>
<p><br>
</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; I am trying to port some kernel modules to yoct=
o, to add our libs.</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; So should use linux-libc-headers to get include=
?<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Regard,</p>
<p>Richard<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Khem Ra=
j &lt;raj.khem@gmail.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2016=C4=EA12=D4=C223=C8=D5 0:57:21<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Richard Zhang<br>
<b>=B3=AD=CB=CD:</b> yocto@yoctoproject.org<br>
<b>=D6=F7=CC=E2:</b> Re: [yocto] how to use a kernel build path in developi=
ng libs</font>
<div>&nbsp;</div>
</div>
<div><br class=3D"">
<div>
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On Dec 22, 2016, at 12:23 AM, Richard Zhang &lt;<a href=3D"=
mailto:richard.zhang@pica8.com" class=3D"">richard.zhang@pica8.com</a>&gt; =
wrote:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-style: normal; f=
ont-variant-caps: normal; font-weight: normal; letter-spacing: normal; orph=
ans: auto; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; font-size: 12pt; font-family: Calibri, Arial, Helvetica, sans-serif;"=
 class=3D"">
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">hi all:</div=
>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br class=3D=
"">
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">I am trying =
to add some lib related with kernel.</div>
</div>
</div>
</blockquote>
<div><br class=3D"">
</div>
<div>Unless you are writing a kernel module, using raw kernel headers and s=
ources is generally not a good choice. Moreover</div>
<div>kernel does not have APIs beyond headers it exports for user space to =
use. So I would suggest to rethink what you are trying</div>
<div>to do and may be you can use the exposed kernel APIs through kernel he=
aders &nbsp;</div>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-style: normal; f=
ont-variant-caps: normal; font-weight: normal; letter-spacing: normal; orph=
ans: auto; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; font-size: 12pt; font-family: Calibri, Arial, Helvetica, sans-serif;"=
 class=3D"">
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">When I try t=
o include the kernel build dir to the lib, i am not sure witch kernel build=
 path should to be used :</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">build/tmp/wo=
rk/genericx86_64-poky-linux/linux-yocto/4.4.3/linux-genericx86_64-standard-=
build/</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br class=3D=
"">
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br class=3D=
"">
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Another ques=
tion:</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br class=3D=
"">
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">When I want =
to develop an application&nbsp; use yocto SDK.</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">After I depl=
oy a yocto SDK<span class=3D"Apple-converted-space">&nbsp;</span><span clas=
s=3D"">toolchain</span><span class=3D"Apple-converted-space">&nbsp;</span>t=
hat image include full target,&nbsp; could I use the kernel
 build path for compile software?</div>
</div>
</div>
</blockquote>
<div><br class=3D"">
</div>
No, unless its a kernel module.</div>
<div>
<blockquote type=3D"cite" class=3D"">
<div class=3D"">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-style: normal; f=
ont-variant-caps: normal; font-weight: normal; letter-spacing: normal; orph=
ans: auto; text-align: start; text-indent: 0px; text-transform: none; white=
-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; font-size: 12pt; font-family: Calibri, Arial, Helvetica, sans-serif;"=
 class=3D"">
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br class=3D=
"">
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br class=3D=
"">
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><br class=3D=
"">
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Regard,</div=
>
<div style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D"">Richard Zhan=
g<br class=3D"">
</div>
</div>
<span style=3D"font-family: Times-Roman; font-size: 14px; font-style: norma=
l; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; float: none; display: inline !important;" class=3D"">--<span clas=
s=3D"Apple-converted-space">&nbsp;</span></span><br style=3D"font-family: T=
imes-Roman; font-size: 14px; font-style: normal; font-variant-caps: normal;=
 font-weight: normal; letter-spacing: normal; orphans: auto; text-align: st=
art; text-indent: 0px; text-transform: none; white-space: normal; widows: a=
uto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
<span style=3D"font-family: Times-Roman; font-size: 14px; font-style: norma=
l; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; float: none; display: inline !important;" class=3D"">____________=
___________________________________</span><br style=3D"font-family: Times-R=
oman; font-size: 14px; font-style: normal; font-variant-caps: normal; font-=
weight: normal; letter-spacing: normal; orphans: auto; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; widows: auto; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
<span style=3D"font-family: Times-Roman; font-size: 14px; font-style: norma=
l; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; float: none; display: inline !important;" class=3D"">yocto
 mailing list</span><br style=3D"font-family: Times-Roman; font-size: 14px;=
 font-style: normal; font-variant-caps: normal; font-weight: normal; letter=
-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-=
transform: none; white-space: normal; widows: auto; word-spacing: 0px; -web=
kit-text-stroke-width: 0px;" class=3D"">
<a href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Times-Roman=
; font-size: 14px; font-style: normal; font-variant-caps: normal; font-weig=
ht: normal; letter-spacing: normal; orphans: auto; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: auto; word-=
spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0p=
x;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Times-Ro=
man; font-size: 14px; font-style: normal; font-variant-caps: normal; font-w=
eight: normal; letter-spacing: normal; orphans: auto; text-align: start; te=
xt-indent: 0px; text-transform: none; white-space: normal; widows: auto; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"font-fam=
ily: Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: n=
ormal; font-weight: normal; letter-spacing: normal; orphans: auto; text-ali=
gn: start; text-indent: 0px; text-transform: none; white-space: normal; wid=
ows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-=
stroke-width: 0px;" class=3D"">https://lists.yoctoproject.org/listinfo/yoct=
o</a></div>
</blockquote>
</div>
<br class=3D"">
</div>
</body>
</html>

--_000_CY4PR12MB1880E430B0D2EFD8F320413DA5950CY4PR12MB1880namp_--
