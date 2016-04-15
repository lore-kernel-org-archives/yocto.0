Return-Path: <stephanie2839@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2773E00D0C; Fri, 15 Apr 2016 09:04:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stephanie2839[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.83 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Apr 2016 09:04:27 PDT
Received: from BAY004-OMC2S8.hotmail.com (bay004-omc2s8.hotmail.com
	[65.54.190.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3130E006D3
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 09:04:27 -0700 (PDT)
Received: from APC01-PU1-obe.outbound.protection.outlook.com ([65.54.190.125])
	by BAY004-OMC2S8.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 15 Apr 2016 09:03:25 -0700
Received: from PU1APC01FT019.eop-APC01.prod.protection.outlook.com
	(10.152.252.57) by PU1APC01HT221.eop-APC01.prod.protection.outlook.com
	(10.152.253.159) with Microsoft SMTP Server (TLS) id 15.1.453.6;
	Fri, 15 Apr 2016 16:03:23 +0000
Received: from KL1PR01MB1045.apcprd01.prod.exchangelabs.com (10.152.252.52) by
	PU1APC01FT019.mail.protection.outlook.com (10.152.252.222) with
	Microsoft
	SMTP Server (TLS) id 15.1.443.6 via Frontend Transport; Fri, 15 Apr 2016
	16:03:21 +0000
Received: from KL1PR01MB1045.apcprd01.prod.exchangelabs.com ([10.169.108.11])
	by KL1PR01MB1045.apcprd01.prod.exchangelabs.com ([10.169.108.11])
	with mapi id 15.01.0453.031; Fri, 15 Apr 2016 16:03:20 +0000
From: =?gb2312?B?tsUg6rs=?= <stephanie2839@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: how to install debug library into packages
Thread-Index: AQHRlzAXFXOsgEHlAkOp8BmKM+rp2A==
Date: Fri, 15 Apr 2016 16:03:20 +0000
Message-ID: <KL1PR01MB1045E9F94504640719D7CCFBB6680@KL1PR01MB1045.apcprd01.prod.exchangelabs.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 25.152.252.52)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 25.152.252.52 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [SgZjmDWKWMelAdP9J0td5+VhC7O9KXoZ]
x-eopattributedmessage: 0
x-forefront-antispam-report: CIP:25.152.252.52; IPV:NLI; CTRY:GB; EFV:NLI;
	SFV:NSPM; SFS:(10019020)(98900003); DIR:OUT; SFP:1102; SCL:1;
	SRVR:PU1APC01HT221;
	H:KL1PR01MB1045.apcprd01.prod.exchangelabs.com; FPR:;
	SPF:SoftFail; MLV:ovr; A:1; MX:1; LANG:en; 
x-ms-office365-filtering-correlation-id: 77903388-2c0d-4eaa-f6e3-08d3654776f9
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(5061506196)(5061507196);
	SRVR:PU1APC01HT221; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:PU1APC01HT221; BCL:0; PCL:0; RULEID:; SRVR:PU1APC01HT221; 
x-forefront-prvs: 0913EA1D60
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2016 16:03:20.1454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT221
X-OriginalArrivalTime: 15 Apr 2016 16:03:25.0282 (UTC)
	FILETIME=[57820C20:01D19730]
Subject: how to install debug library into packages
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
X-List-Received-Date: Fri, 15 Apr 2016 16:04:29 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_KL1PR01MB1045E9F94504640719D7CCFBB6680KL1PR01MB1045apcp_"

--_000_KL1PR01MB1045E9F94504640719D7CCFBB6680KL1PR01MB1045apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

aGVsbG8gZXZlcnlvbmUsDQpJoa9tIG5ldyBoZXJlIHVuZCBhbHNvIGEgbmV3YmllIHRvIGxlYXJu
IHlvY3RvLg0KDQpOb3cgSSBhbSB3cml0aW5nIG15IG1hc3RlciB0aGVpcyB3aGljaCBpcyByZWxh
dGVkIHRvIGVtYmVkZWQgc3lzdGVtIHVzaW5nIHlvY3RvLg0KSSBoYXZlIGFuIHVhLVNESyhzb3Vy
Y2UgY29kZSBpbmNsdWRlZCkgdW5kIGkgbmVlZCB0byBpbnN0YWxsIHRoZSB1YSBwYWNrYWdlIGlu
dG8gc2F0by1pbWFnZSwgd2hpY2ggcnVucyBvbiBhIFJhc3BiZXJyeXBpLkZpcnN0IG9mIGFsbCwg
aSB3cml0ZSBhIHJlY2lwZSAib3BjdWEiIGxpa2UgdGhpczoNCg0KICAgIFNVTU1BUlkgPSAidGhp
cyBpc3QgYSByZWNpcGUgZm9yIGJ1aWxkaW5nIG9wYy11YSBzZGsgcGFja2FnZSINCiAgICBMSUNF
TlNFID0gIk1JVCAmIFJDTCAmIE9wZW5TU0wgJiBMR1BMLTMuMCAmIEFwYWNoZS0yLjAiDQogICAg
TElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vL2hvbWUveW9jdG8vd29ya3NwYWNlL3Bva3kvcnBp
SG91c2VIZWxsby90bXAvd29yay9hcm12Ni12ZnAtcG9reS1saW51eC1nbnVlYWJpL3VhLW5ldy8x
LjAtcjAvbGljZW5zZS1kZXN0ZGlyL3VhLW5ldy9nZW5lcmljX0FwYWNoZS0yLjA7bWQ1PTg5YWVh
NGUxN2Q5OWE3Y2FjZGJlZWQ0NmEwMDk2YjEwDQogICAgU1JDX1VSSSA9ICJmaWxlOi8vL2hvbWUv
eW9jdG8vd29ya3NwYWNlL3Bva3kvcnBpSG91c2VIZWxsby9kb3dubG9hZHMvdWFzZGtjcHBjbGll
bnQtc3JjLWxpbnV4MzIteDg2LWdjYzQuNS4xLXYxLjQuMi0yNzUudGFyLmd6Ig0KICAgIFMgPSAi
JHtXT1JLRElSfS9zZGsvc3JjIg0KICAgIERFUEVORFMgKz0gImxpYnhtbDIgb3BlbnNzbCINCiAg
ICBpbmhlcml0IGNtYWtlDQogICAgSU5TQU5FX1NLSVBfdWEtbmV3ICs9ICJkZXYtZGVwcyINCg0K
VGhlIG9wY3VhIHBhY2thZ2UgaXMgaW5zdGFsbGVkIHN1Y2Nlc3NmdWxseSBhZnRlciBiaXRiYWtl
IG9wY3VhLCBhbmQgdGhlbiBpIHRyeSB0byBhZGQgdGhlIGdlbmVyYXRlZCBvcGN1YSBwYWNrYWdl
IGludG8gc2F0by1pbWFnZSBieSB3cml0aW5nIGFub3RoZXIgcmVjaXBlInNhdG8td2l0aC11YSIg
bGlrZSB0aGlzDQoNCiAgICBERVNDUklQVElPTiA9ICIiDQogICAgSU1BR0VfRkVBVFVSRVMgKz0g
InNwbGFzaCBwYWNrYWdlLW1hbmFnZW1lbnQgeDExLWJhc2UgeDExLXNhdG8gc3NoLXNlcnZlci1v
cGVuc3NoIGh3Y29kZWNzICBkYmctcGtncyB0b29scy1kZWJ1ZyBkZWJ1Zy10d2Vha3MiDQogICAg
TElDRU5TRSA9ICJNSVQiDQogICAgaW5oZXJpdCBjb3JlLWltYWdlDQogICAgSU1BR0VfSU5TVEFM
TCArPSAiIHVhIHVhLWRiZyB1YS1zdGF0aWNkZXYgdWEtZGV2Ig0KDQppdCB3YXMgYWxzbyBpbnN0
YWxsZWQgc3VjZXNzZnVsbHkuQWZ0ZXIgdGhhdCBJIGV4dHJhY3RlZCBzZGsgZnJvbSB0aGlzIGlt
YWdlIGJ5IHVzaW5nOg0KDQpiaXRiYWtlIHNhdG8td2l0aC11YSAtYyBwb3B1bGF0ZWRfc2RrDQoN
ClRoZXJlIGlzIGFsc28gbm8gcHJvYmxlbS5BZnRlciB0aGF0IEkgdHJ5IHRvIGNoZWNrIHRoZSBm
dW5jdGlvbmFsaXR5IG9mIHRoaXMgZXh0cmFjdGVkIHNkay5NeSB0dXRvciBnYXZlIG1lIGEgdGVz
dCBwcm9qZWN0IHdyaXR0ZW4gYnkgYysrLiBJIHRyeSB0byBidWlsZCB0aGlzIHByb2plY3QgaW4g
ZWNsaXBzZS4NCg0KQnV0IGhlcmUgY29tZXMgdGhlIHByb2JsZW0uIHRoZSBwb2ludCBpcyB0aGF0
IGVjbGlwc2UgY2FuIG5vdCBmb3VuZCBkZWJ1ZyBsaWJyYXJpZXMtLS1saWIqZChmb3IgZXhhbXBs
ZSBsaWJ1YWJhc2VkLmEpIGJ5IGxpbmtpbmcgbGlicmFyaWVzLkkgZm91bmQgdGhhdCB0aGVyZSBp
cyBsaWJ1YWJhc2UuYSBidXQgbm8gbGlidWFiYXNlZC5hIGluIG15IHBhY2thZ2UubG9jYXRpb24g
b2YgdGhlIHBhY2thZ2U6L2hvbWUveW9jdG8vd29ya3NwYWNlL3Bva3kvcnBpSG91c2UvdG1wL3dv
cmsvYXJtdjYtdmZwLXBva3ktbGludXgtZ251ZWFiaS9vcGN1YS8xLjAtcjAvcGFja2FnZXMtc3Bs
aXQuICBJbiBlY2xpcHNlIHdlIGRldmVsb3AgcHJvamVjdCBpbiBkZWJ1ZyB2ZXJzaW9uIHNvIGl0
IGFsc28gbmVlZHMgbGlicmFyaWVzIGluIGRlYnVnIHZlcnNpb24uDQoNCkknbSBjb25mdXNlZCB0
aGF0IHdoeSB5b2N0byBpbnN0YWxsZWQgb25seSByZWxlYXNlIGxpYnJhcnkgYnV0IG5vdCBkZWJ1
ZyBsaWJyYXJ5LiBCb3RoIGFyZSBpbmNsdWRlZCBpbiBzb3VyY2UgY29kZS4geW9jdG8gY2FuIG9u
bHkgaW5zdGFsbCBvbmUgdHlwZT8NCnNvIGkgdHJ5IHRvIG1vZGlmeSB0aGUgb3BjdWEgcmVjaXBl
IHRvIGluY2x1ZGUgdGhlIGRlYnVnIGxpYnJhcnkgaW50byBteSBwYWNrYWdlcy1zcGxpdC4gQWZ0
ZXIgcmVhZGluZyB0aGUgcmVmZXJlbmNlIG9mIHlvY3RvIEkgYWRkZWQgdGhlIGZvbGxvd3MgdG8g
bXkgcmVjaXBlICJvcGN1YSI6DQoNCiAgICBQQUNLQUdFUyA9KyAiICR7UE59LWFsaWJkICR7UE59
LXNvbGliZCINCiAgICBGSUxFU18ke1BOfS1hbGliZCA9ICIke2xpYmRpcn0vbGlic3RhY2tkLnNv
Ig0KICAgIEZJTEVTXyR7UE59LXNvbGliZCA9ICIke2xpYmRpcn0vbGlidWFiYXNlZC5hICR7bGli
ZGlyfS9saWJ1YWNsaWVudGQuYSAke2xpYmRpcn0vbGlidWFwa2lkLmEgJHtsaWJkaXJ9L2xpYnht
bHBhcnNlcmQuYSINCg0KQWZ0ZXIgYml0YmFrZSBvcGN1YSBJIGdvdCB0aGUgdHdvIG5ldyBwYWNr
YWdlcyAke1BOfS1hbGliZCBhbmQgJHtQTn0tc29saWJkIGluZGVlZCwgYnV0IGJvdGggcGFja2Fn
ZXMgYXJlIGVtcHR5LkFsbCBvZiB0aG9zZSBsaWJyYXJpZXMgd2hhdCBpIGxpc3RldCBhYm92ZSBh
cmUgbm90IGluY2x1ZGVkLiBNeSBmaXJzdCBxdWVzdGlvbiBpcyB0aGF0LCBkb2VzIHRoaXMgdmFy
aWFibGUgJHtsaWJkaXJ9IGluZGljYXRlIC91c3IvbGliIG9mIG91ciBob3N0IG1hc2NoaW5lLiBi
dXQgaSBmb3VuZCB0aGVyZSBpcyBubyBsaWIqZC5hIGZpbGUgaW4gdGhhdCBkaXJlY3RvcnkuIHNv
IGkgdGhpbmsgbWF5YmUgaSBtYWtlIGEgbWlzdGFrZSBieSB1bmRlcnN0YW5kaW5nIHRoaXMgdmFy
aWFibGUuIHdoYXQgZG9lcyB0aGlzICAke2xpYmRpcn0gcmVmZXJlZCB0bz8NCg0KTXkgc2Vjb25k
IHF1ZXN0aW9uLCBob3cgdG8gaW5zdGFsbCB0aG9zZSBkZWJ1ZyBsaWJyYXJpZXMgaW50byBteSBw
YWNrYWdlcyBhZnRlciBiaXRiYWtlIHRoZSByZWNpcGUuIG15IGdvYWwgaXMgdGhhdCBpIGNhbiBn
ZXQgdGhvc2UgZGVidWcgbGlicmFyaWVzIGluIHRoZSBzYXRvLXdpdGgtdWEgaW1hZ2UgdW5kIHRo
ZW4gZXh0cmFjdCB0aGUgc2RrIGZyb20gdGhpcyBpbWFnZS5UaGlzIHNkayBpbmNsdWRlZCB0aG9z
ZSBkZWJ1ZyBsaWJyYXJpZXMgc290aGF0IGkgY2FuIGxpbmsgdGhlbSBpbiBteSBlY2xpcHNlIHRv
IGRldmVsb3AgbXkgcHJvamVjdCBjb3JyZWN0bHkuDQoNCmkgYW0gc28gc29ycnkgdGhhdCBpIHRv
bGQgYSBsb25nIHN0b3J5LiBUaGlzIGlzIHRoZSBmaXJzdCB0aW1lIGkgbWFkZSBzb21ldGhpbmcg
cmVsYXRlZCB3aXRoIHNvZnR3YXJlLiBzbyBJIGJlZyB5b3VyIGFwcG9sb2dpc2UuDQo=

--_000_KL1PR01MB1045E9F94504640719D7CCFBB6680KL1PR01MB1045apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p><span id=3D"ms-rterangepaste-start"></span>hello everyone,<br>
I=A1=AFm new here und also a newbie to learn yocto. <br>
<br>
Now I am writing my master theis which is related to embeded system using y=
octo.<br>
I have an ua-SDK(source code included) und i need to install the ua package=
 into sato-image, which runs on a Raspberrypi.First of all, i write a recip=
e &quot;opcua&quot; like this:<br>
<br>
&nbsp;&nbsp;&nbsp; SUMMARY =3D &quot;this ist a recipe for building opc-ua =
sdk package&quot;<br>
&nbsp;&nbsp;&nbsp; LICENSE =3D &quot;MIT &amp; RCL &amp; OpenSSL &amp; LGPL=
-3.0 &amp; Apache-2.0&quot;<br>
&nbsp;&nbsp;&nbsp; LIC_FILES_CHKSUM =3D &quot;file:///home/yocto/workspace/=
poky/rpiHouseHello/tmp/work/armv6-vfp-poky-linux-gnueabi/ua-new/1.0-r0/lice=
nse-destdir/ua-new/generic_Apache-2.0;md5=3D89aea4e17d99a7cacdbeed46a0096b1=
0
<br>
&nbsp;&nbsp;&nbsp; SRC_URI =3D &quot;file:///home/yocto/workspace/poky/rpiH=
ouseHello/downloads/uasdkcppclient-src-linux32-x86-gcc4.5.1-v1.4.2-275.tar.=
gz&quot;<br>
&nbsp;&nbsp;&nbsp; S =3D &quot;${WORKDIR}/sdk/src&quot;<br>
&nbsp;&nbsp;&nbsp; DEPENDS &#43;=3D &quot;libxml2 openssl&quot;<br>
&nbsp;&nbsp;&nbsp; inherit cmake &nbsp;<br>
&nbsp;&nbsp;&nbsp; INSANE_SKIP_ua-new &#43;=3D &quot;dev-deps&quot; <br>
<br>
The opcua package is installed successfully after bitbake opcua, and then i=
 try to add the generated opcua package into sato-image by writing another =
recipe&quot;sato-with-ua&quot; like this<br>
<br>
&nbsp;&nbsp;&nbsp; DESCRIPTION =3D &quot;&quot;<br>
&nbsp;&nbsp;&nbsp; IMAGE_FEATURES &#43;=3D &quot;splash package-management =
x11-base x11-sato ssh-server-openssh hwcodecs&nbsp; dbg-pkgs tools-debug de=
bug-tweaks&quot;<br>
&nbsp;&nbsp;&nbsp; LICENSE =3D &quot;MIT&quot;<br>
&nbsp;&nbsp;&nbsp; inherit core-image<br>
&nbsp;&nbsp;&nbsp; IMAGE_INSTALL &#43;=3D &quot; ua ua-dbg ua-staticdev ua-=
dev&quot; &nbsp;<br>
<br>
it was also installed sucessfully.After that I extracted sdk from this imag=
e by using:<br>
<br>
bitbake sato-with-ua -c populated_sdk<br>
<br>
There is also no problem.After that I try to check the functionality of thi=
s extracted sdk.My tutor gave me a test project written by c&#43;&#43;. I t=
ry to build this project in eclipse.
<br>
<br>
But here comes the problem. the point is that eclipse can not found debug l=
ibraries---lib*d(for example libuabased.a) by linking libraries.I found tha=
t there is libuabase.a but no libuabased.a in my package.location of the pa=
ckage:/home/yocto/workspace/poky/rpiHouse/tmp/work/armv6-vfp-poky-linux-gnu=
eabi/opcua/1.0-r0/packages-split.&nbsp;
 In eclipse we develop project in debug version so it also needs libraries =
in debug version.
<br>
<br>
I'm confused that why yocto installed only release library but not debug li=
brary. Both are included in source code. yocto can only install one type?<b=
r>
so i try to modify the opcua recipe to include the debug library into my pa=
ckages-split. After reading the reference of yocto I added the follows to m=
y recipe &quot;opcua&quot;:<br>
<br>
&nbsp;&nbsp;&nbsp; PACKAGES =3D&#43; &quot; ${PN}-alibd ${PN}-solibd&quot;<=
br>
&nbsp;&nbsp;&nbsp; FILES_${PN}-alibd =3D &quot;${libdir}/libstackd.so&quot;=
<br>
&nbsp;&nbsp;&nbsp; FILES_${PN}-solibd =3D &quot;${libdir}/libuabased.a ${li=
bdir}/libuaclientd.a ${libdir}/libuapkid.a ${libdir}/libxmlparserd.a&quot;<=
br>
<br>
After bitbake opcua I got the two new packages ${PN}-alibd and ${PN}-solibd=
 indeed, but both packages are empty.All of those libraries what i listet a=
bove are not included. My first question is that, does this variable ${libd=
ir} indicate /usr/lib of our host
 maschine. but i found there is no lib*d.a file in that directory. so i thi=
nk maybe i make a mistake by understanding this variable. what does this&nb=
sp; ${libdir} refered to?
<br>
<br>
My second question, how to install those debug libraries into my packages a=
fter bitbake the recipe. my goal is that i can get those debug libraries in=
 the sato-with-ua image und then extract the sdk from this image.This sdk i=
ncluded those debug libraries sothat
 i can link them in my eclipse to develop my project correctly.<br>
<br>
i am so sorry that i told a long story. This is the first time i made somet=
hing related with software. so I beg your appologise.&nbsp;<span id=3D"ms-r=
terangepaste-end"></span><br>
</p>
</div>
</body>
</html>

--_000_KL1PR01MB1045E9F94504640719D7CCFBB6680KL1PR01MB1045apcp_--
