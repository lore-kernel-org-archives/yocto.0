Return-Path: <winsdenny@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA25AE00DD8; Tue, 11 Oct 2016 19:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winsdenny[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.210 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Oct 2016 19:22:39 PDT
Received: from BAY004-OMC4S8.hotmail.com (bay004-omc4s8.hotmail.com
	[65.54.190.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36213E00DCA
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 19:22:39 -0700 (PDT)
Received: from APC01-HK2-obe.outbound.protection.outlook.com ([65.54.190.200])
	by BAY004-OMC4S8.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 11 Oct 2016 19:21:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=1p7tnjtaz7C3bXdUmpGjsrFKX4S4tyP54Km/7V6YGec=;
	b=hkVimGiy299Xn12Bb5wwgNN8P096FTjbCf3J7bS7He7gCIJ4O0DtufAasL8JGpU5gE0slUqSzvw0S6L9fr64eFZqO+GG3lq6v0NQyMgZhei26K6wCYhkXA93+zQon5qY5+7NfW9cYCU8cRNBirFRny9AfSTvvgFnrRAfvvjqMFYLO+KuitPnZ+Y+jU7ZMT+ExpQG+jFPPOJLNsS7S2PF4f79Qn8QbiqVT3f18k8gY0Ni1gvrN6aiNetqul2JNeyUm4aLMX8TjOk71ieZTCPmZSvvQ5BDIHdhKBli/IAEhceFkiV1xj3I5mKeyB6+fbAATleOwyVkh/5kUe7NwWNanA==
Received: from SG2APC01FT017.eop-APC01.prod.protection.outlook.com
	(10.152.250.52) by SG2APC01HT107.eop-APC01.prod.protection.outlook.com
	(10.152.251.126) with Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id 15.1.629.5;
	Wed, 12 Oct 2016 02:21:37 +0000
Received: from SG2PR04MB1055.apcprd04.prod.outlook.com (10.152.250.54) by
	SG2APC01FT017.mail.protection.outlook.com (10.152.250.203) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.619.6 via
	Frontend Transport; Wed, 12 Oct 2016 02:21:37 +0000
Received: from SG2PR04MB1055.apcprd04.prod.outlook.com ([10.169.56.145]) by
	SG2PR04MB1055.apcprd04.prod.outlook.com ([10.169.56.145]) with mapi id
	15.01.0659.020; Wed, 12 Oct 2016 02:21:36 +0000
From: =?gb2312?B?wu0gwNo=?= <winsdenny@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto compiles raspi kernel with 'bcm2709_defconfig' error.
Thread-Index: AQHSJCw141yrb5t5z0WvAseZy0B8hQ==
Date: Wed, 12 Oct 2016 02:21:35 +0000
Message-ID: <SG2PR04MB10557196ECD7C5F104C851D8A7DD0@SG2PR04MB1055.apcprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=outlook.com;
x-tmn: [V6cEvij0EZomhhPNjSE/hZIOrwvQJhdk/SJJqk+6PzA=]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; SG2APC01HT107;
	6:sN0vTpy95lwd7eS7qKzVi6dsCjoM2WdLjVMQupRq6P398nDJIQSYJRgBubA9YUadRHL+/W1KEsqjRlvRCWbdMzGmTlVdg6ZblH0Vhc/bbxDitZ4g4HHcpWnUSlRugQhVgAYjCBExNQzo/ffGorRH5VOrFHTzb9TOqBbuAfLiRWaozm9Zet8kt/aHlyksv1GXZL6MnX4l8+yuQnkPwg9ofCJXnOFweX5PzxvE9lr0xNyH8xlEqaCcvTRlBegbNKSVz0kyLybPPCYNT1DRy1sXKl5tuIpYr4uQqrinbOyY6NU=;
	5:MHhcEoqe6yELNGOFmdr0bY9uD36t+oE7fqzXx9990GHDSPdDIf6AQJTIxKZ3pfLKgc7hBDYHPSLgGS26if/EB/S4EunBwC+eHn0kC4gHCI1+LOd+npkX8yxOFGDNjfSYUd6kfBZ/DhkXd1Kb3GrEqw==;
	24:p4prLydqt/2ZFd0WEDGRYb+rbplUj2JxaZbVTlpehA6GtmyNODZ01Amf++B0dUCNIUdo0WJdLODZ2cudMu1nRxSVIc+BY4CDi2KynrXFNlg=;
	7:KcL/FXbhlJ6WQ0mgoCKQlAfiSctZPCdZl3XMEHMC26jWEgvgkDKV2iDOtG5B8atYv4+uCLp7DI+5xJg2FbKFKKwkOC07dVMPuUN1OBoFKCrcL70hdb8IYC69leuw+5Gxx4quE3dopdwbJzjSzJNnD0hwidRdTNfFBG2n8OalkOQG8t2tiEqFjZhff64098rx+xqM/TM0fVISa/aUtVf+xi5WFbvWHdnDgbw/tsSDNnsq38Fu3i5ZOeXFpFaO1dLpUHE991QSbbsx28vcSDEdoV8sfWq4m0/t33Ny5HsW9Ce0tqg3B4P04ueRdoASWgNbZA0PIbstpVBRkIQ7P6xrRw==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SG2APC01HT107;
	H:SG2PR04MB1055.apcprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: a8077a57-5899-4cca-5d6a-08d3f2467dcc
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:SG2APC01HT107;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:SG2APC01HT107; BCL:0; PCL:0; RULEID:; SRVR:SG2APC01HT107; 
x-forefront-prvs: 0093C80C01
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2016 02:21:35.3953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT107
X-OriginalArrivalTime: 12 Oct 2016 02:21:38.0426 (UTC)
	FILETIME=[5CAFE5A0:01D2242F]
Subject: Yocto compiles raspi kernel with 'bcm2709_defconfig' error.
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
X-List-Received-Date: Wed, 12 Oct 2016 02:22:41 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_SG2PR04MB10557196ECD7C5F104C851D8A7DD0SG2PR04MB1055apcp_"

--_000_SG2PR04MB10557196ECD7C5F104C851D8A7DD0SG2PR04MB1055apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SSB3YW50IHRvIHVzZSB0aGUgJ0tCVUlMRF9ERUZDT05GSUcnIHRvIGJ1aWxkIHRoZSBrZXJuZWws
IGJ1dCBhbiBjb21waWxlIGVycm9yIGhhcHBlbnMsIGhlcmUgaXMgdGhlIHBpZWNlIG9mIHRoZSBs
b2c6DQoNCg0KDQpOT1RFOiBtYWtlIC1qIDIgekltYWdlIENDPWFybS1wb2t5LWxpbnV4LWdudWVh
YmktZ2NjICAtbW5vLXRodW1iLWludGVyd29yayAtbWFybSAtZnVzZS1sZD1iZmQgTEQ9YXJtLXBv
a3ktbGludXgtZ251ZWFiaS1sZC5iZmQNCg0KLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4NCg0KLi4uLi4uLi4NCg0KIENDICAgICAgYXJjaC9hcm0va2VybmVsL3BhdGNoLm8NCiAgQ0Mg
ICAgICBhcmNoL2FybS9tbS9wcm9jLXN5bXMubw0KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC9ob21l
L21heC9wcm9qZWN0L3lvY3RvLWJ1aWxkL3RtcC93b3JrLXNoYXJlZC9teXJwaTIva2VybmVsLXNv
dXJjZS9hcmNoL2FybS9rZXJuZWwvcGF0Y2guYzo4OjA6DQovaG9tZS9tYXgvcHJvamVjdC95b2N0
by1idWlsZC90bXAvd29yay1zaGFyZWQvbXlycGkyL2tlcm5lbC1zb3VyY2UvYXJjaC9hcm0va2Vy
bmVsL3BhdGNoLmM6IEluIGZ1bmN0aW9uICdwYXRjaF9tYXAnOg0KL2hvbWUvbWF4L3Byb2plY3Qv
eW9jdG8tYnVpbGQvdG1wL3dvcmstc2hhcmVkL215cnBpMi9rZXJuZWwtc291cmNlL2FyY2gvYXJt
L2luY2x1ZGUvYXNtL2ZpeG1hcC5oOjI1OjI5OiBlcnJvcjogJ0xfUFRFX1lPVU5HJyB1bmRlY2xh
cmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbikNCiAjZGVmaW5lIEZJWE1BUF9QQUdFX0NP
TU1PTiAoTF9QVEVfWU9VTkcgfCBMX1BURV9QUkVTRU5UIHwgTF9QVEVfWE4gfCBMX1BURV9ESVJU
WSkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXg0KL2hvbWUvbWF4L3Byb2plY3QveW9j
dG8tYnVpbGQvdG1wL3dvcmstc2hhcmVkL215cnBpMi9rZXJuZWwtc291cmNlL2FyY2gvYXJtL2lu
Y2x1ZGUvYXNtL2ZpeG1hcC5oOjI3OjI5OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ0ZJ
WE1BUF9QQUdFX0NPTU1PTicNCiAjZGVmaW5lIEZJWE1BUF9QQUdFX05PUk1BTCAoRklYTUFQX1BB
R0VfQ09NTU9OIHwgTF9QVEVfTVRfV1JJVEVCQUNLKQ0KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBeDQoNCkJ1dCB3aGVuIEkgY29tcGlsZSB0aGUga2VybmVsIG1hbnVhbGx5IHdpdGggImJj
bTI3MDlfZGVmY29uZmlnIiBldmVyeXRoaW5nIGlzIG9rLg0KSSBjb21wYXJlICAiYmNtMjcwOV9k
ZWZjb25maWciIGZpbGUgd2l0aCAiLmNvbmZpZyIgb3V0cHV0IGJ5IHlvY3RvLCB0aGVyZSBhcmUg
c29tZSBkaWZmZXJlbmNlcywgZS5nLiA6DQoiQ09ORklHX1NNUD15IiBhbmQgIkNPTkZJR19DTUE9
eSIgYXJlIGdvbmUgaW4gdGhlICIuY29uZmlnIi4NCkFuZCBJIHN0aWNrIGludG8geW9jdG8gc291
cmNlIGNvZGUgSSBmb3VuZCBzb21lIHJlbGF0ZWQgY29kZSBoZXJlKGluIHRoZSBmdW5jdGlvbiAi
ZG9fa2VybmVsX2NvbmZpZ21lIiBmcm9tIHRoZSBmaWxlICIvbWV0YS9jbGFzc2VzL2tlcm5lbC15
b2N0by5iYmNsYXNzIik6DQoNClBBVEg9JHtQQVRIfToke1N9L3NjcmlwdHMvdXRpbA0KY29uZmln
bWUgJHtjb25maWdtZWZsYWdzfSAtLXJlY29uZmlnIC0tb3V0cHV0ICR7Qn0gJHtMSU5VWF9LRVJO
RUxfVFlQRX0gJHtLTUFDSElORX0NCg0KKEJUVywgSSdtIG5ldyB0byBtYWlsIGxpc3QpDQoNCg==

--_000_SG2PR04MB10557196ECD7C5F104C851D8A7DD0SG2PR04MB1055apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I want to&nbsp;use the '<span>KBUILD_DEFCONFIG' to build the kernel, but=
 an compile error happens, here is the piece of the log:</span></p>
<p><span></span></p>
<pre style=3D"box-sizing: border-box; font-family: Consolas, &quot;Liberati=
on Mono&quot;, Menlo, Courier, monospace; font-size: 12px; margin-top: 0px;=
 font-stretch: normal; line-height: 1.45; word-wrap: normal; padding: 16px;=
 overflow: auto; background-color: rgb(247, 247, 247); border-radius: 3px; =
color: rgb(51, 51, 51); margin-bottom: 0px !important;"><code style=3D"box-=
sizing: border-box; font-family: Consolas, &quot;Liberation Mono&quot;, Men=
lo, Courier, monospace; padding: 0px; margin: 0px; background: transparent;=
 border-radius: 3px; word-break: normal; border: 0px; display: inline; over=
flow: visible; line-height: inherit; word-wrap: normal;">  </code></pre>
<pre style=3D"box-sizing: border-box; font-family: Consolas, &quot;Liberati=
on Mono&quot;, Menlo, Courier, monospace; font-size: 12px; margin-top: 0px;=
 font-stretch: normal; line-height: 1.45; word-wrap: normal; padding: 16px;=
 overflow: auto; background-color: rgb(247, 247, 247); border-radius: 3px; =
color: rgb(51, 51, 51); margin-bottom: 0px !important;"><code style=3D"box-=
sizing: border-box; font-family: Consolas, &quot;Liberation Mono&quot;, Men=
lo, Courier, monospace; padding: 0px; margin: 0px; background: transparent;=
 border-radius: 3px; word-break: normal; border: 0px; display: inline; over=
flow: visible; line-height: inherit; word-wrap: normal;"><span>NOTE: make -=
j 2 zImage CC=3Darm-poky-linux-gnueabi-gcc &nbsp;-mno-thumb-interwork -marm=
 -fuse-ld=3Dbfd LD=3Darm-poky-linux-gnueabi-ld.bfd &nbsp;</span></code></pr=
e>
<pre style=3D"box-sizing: border-box; font-family: Consolas, &quot;Liberati=
on Mono&quot;, Menlo, Courier, monospace; font-size: 12px; margin-top: 0px;=
 font-stretch: normal; line-height: 1.45; word-wrap: normal; padding: 16px;=
 overflow: auto; background-color: rgb(247, 247, 247); border-radius: 3px; =
color: rgb(51, 51, 51); margin-bottom: 0px !important;"><code style=3D"box-=
sizing: border-box; font-family: Consolas, &quot;Liberation Mono&quot;, Men=
lo, Courier, monospace; padding: 0px; margin: 0px; background: transparent;=
 border-radius: 3px; word-break: normal; border: 0px; display: inline; over=
flow: visible; line-height: inherit; word-wrap: normal;">..................=
..............</code></pre>
<pre style=3D"box-sizing: border-box; font-family: Consolas, &quot;Liberati=
on Mono&quot;, Menlo, Courier, monospace; font-size: 12px; margin-top: 0px;=
 font-stretch: normal; line-height: 1.45; word-wrap: normal; padding: 16px;=
 overflow: auto; background-color: rgb(247, 247, 247); border-radius: 3px; =
color: rgb(51, 51, 51); margin-bottom: 0px !important;"><code style=3D"box-=
sizing: border-box; font-family: Consolas, &quot;Liberation Mono&quot;, Men=
lo, Courier, monospace; padding: 0px; margin: 0px; background: transparent;=
 border-radius: 3px; word-break: normal; border: 0px; display: inline; over=
flow: visible; line-height: inherit; word-wrap: normal;">........ </code></=
pre>
<pre style=3D"box-sizing: border-box; font-family: Consolas, &quot;Liberati=
on Mono&quot;, Menlo, Courier, monospace; font-size: 12px; margin-top: 0px;=
 font-stretch: normal; line-height: 1.45; word-wrap: normal; padding: 16px;=
 overflow: auto; background-color: rgb(247, 247, 247); border-radius: 3px; =
color: rgb(51, 51, 51); margin-bottom: 0px !important;"><code style=3D"box-=
sizing: border-box; font-family: Consolas, &quot;Liberation Mono&quot;, Men=
lo, Courier, monospace; padding: 0px; margin: 0px; background: transparent;=
 border-radius: 3px; word-break: normal; border: 0px; display: inline; over=
flow: visible; line-height: inherit; word-wrap: normal;"> CC      arch/arm/=
kernel/patch.o=0A=
  CC      arch/arm/mm/proc-syms.o=0A=
In file included from /home/max/project/yocto-build/tmp/work-shared/myrpi2/=
kernel-source/arch/arm/kernel/patch.c:8:0:=0A=
/home/max/project/yocto-build/tmp/work-shared/myrpi2/kernel-source/arch/arm=
/kernel/patch.c: In function 'patch_map':=0A=
/home/max/project/yocto-build/tmp/work-shared/myrpi2/kernel-source/arch/arm=
/include/asm/fixmap.h:25:29: error: 'L_PTE_YOUNG' undeclared (first use in =
this function)=0A=
 #define FIXMAP_PAGE_COMMON (L_PTE_YOUNG | L_PTE_PRESENT | L_PTE_XN | L_PTE=
_DIRTY)=0A=
                             ^=0A=
/home/max/project/yocto-build/tmp/work-shared/myrpi2/kernel-source/arch/arm=
/include/asm/fixmap.h:27:29: note: in expansion of macro 'FIXMAP_PAGE_COMMO=
N'=0A=
 #define FIXMAP_PAGE_NORMAL (FIXMAP_PAGE_COMMON | L_PTE_MT_WRITEBACK)=0A=
                             ^</code></pre>
But when I compile the kernel manually with &quot;bcm2709_defconfig&quot; e=
verything is ok.
<div>I compare &nbsp;&quot;<span style=3D"font-family: Calibri, Arial, Helv=
etica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot=
;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, =
EmojiSymbols; font-size: 16px;">bcm2709_defconfig&quot; file&nbsp;with &quo=
t;.config&quot; output by yocto,
 there are some differences, e.g. :</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;">&quot;<span>CONFIG_SMP=3Dy&quot; and &quot;<span>CONFIG_CMA=3Dy&q=
uot; are</span>&nbsp;gone in
 the &quot;.config&quot;.</span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span>And I stick into yocto source code I found some related cod=
e
 here(in the function &quot;<span>do_kernel_configme&quot; from&nbsp;</span=
>the file &quot;<span>/meta/classes/kernel-yocto.bbclass&quot;)</span>:</sp=
an></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span>
<div>
<pre style=3D"background-image: initial; background-position: initial; back=
ground-size: initial; background-repeat: initial; background-attachment: in=
itial; background-origin: initial; background-clip: initial;"><span style=
=3D"color: rgb(0, 95, 210);">PATH=3D</span><span style=3D"color: rgb(121, 1=
21, 151);">${PATH}</span><span style=3D"color: rgb(0, 0, 230);">:</span><sp=
an style=3D"color: rgb(121, 121, 151);">${S}</span><span style=3D"color: rg=
b(0, 0, 230);">/scripts/util</span>=0A=
<span style=3D"color: rgb(0, 95, 210);">configme</span> <span style=3D"colo=
r: rgb(121, 121, 151);">${configmeflags}</span> <span style=3D"color: rgb(0=
, 0, 230);">--reconfig</span> <span style=3D"color: rgb(0, 0, 230);">--outp=
ut</span> <span style=3D"color: rgb(121, 121, 151);">${B}</span> <span styl=
e=3D"color: rgb(121, 121, 151);">${LINUX_KERNEL_TYPE}</span> <span style=3D=
"color: rgb(121, 121, 151);">${KMACHINE}</span></pre>
</div>
<div>(BTW, I'm new to mail list)</div>
<br>
</span></span></div>
</div>
</body>
</html>

--_000_SG2PR04MB10557196ECD7C5F104C851D8A7DD0SG2PR04MB1055apcp_--
