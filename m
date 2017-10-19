Return-Path: <alinur.caglayan@accenture.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB10E00D3A; Thu, 19 Oct 2017 02:00:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 900 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Oct 2017 02:00:01 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0101.outbound.protection.outlook.com [104.47.41.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C89E00CFF
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 02:00:01 -0700 (PDT)
Received: from DM3P114MB0172.NAMP114.PROD.OUTLOOK.COM (129.75.51.151) by
	DM3P114MB0171.NAMP114.PROD.OUTLOOK.COM (129.75.51.150) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Thu, 19 Oct 2017 08:45:00 +0000
Received: from DM3P114MB0172.NAMP114.PROD.OUTLOOK.COM
	([fe80::78ce:2bad:2407:c24d]) by DM3P114MB0172.NAMP114.PROD.OUTLOOK.COM
	([fe80::78ce:2bad:2407:c24d%13]) with mapi id 15.20.0077.022;
	Thu, 19 Oct 2017 08:45:00 +0000
From: "Caglayan, Alinur" <alinur.caglayan@accenture.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Plain package isn't built for alsa-lib in Poky
Thread-Index: AdNIsgu5ppm9xJf8TOSUw0KrrIBubQ==
Date: Thu, 19 Oct 2017 08:45:00 +0000
Message-ID: <DM3P114MB0172CE6E27987CF07583B295F4420@DM3P114MB0172.NAMP114.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alinur.caglayan@accenture.com; 
x-originating-ip: [81.214.38.25]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3P114MB0171;
	6:xNEYlnuaENRd+acvkEtWerIc84xbvJZICXQhOFnfUkJ9M6tv/K89Nt5iaTh7M0vGocPQjHFDOYIa7uGe32GwRWkRKWQ3PaI10pnXGNDJmNmeKoTRHBbi8/HlITym4AUoD6yK3eeD9knMuWvx15ccPEDPn5/+BBl/KCtUHZ9ImmzNt/Rb9jw0Ky1MQufOsclsUydmONFzYHMusBevDyxY/WcrEcK9COHXo2gD+eQUDlu3qs8DYKIuK057pMxw3UAwyMbbAWAYHJlHUimOw7gpjc3FHuchb5nNwNAgLg49/xf2SSrc4SEV830PViwN3jU0GOPr2g0qMPYjd1XExXrZ2g==;
	5:YviJvjfIr+2WBj/h1lgBY3D2sO1OqUy1Uac2fjFR+ga9Iy3dTGsmjzeP48wn236WTSkFPdzzr4DAeC1VdjeD1F8VIxixclEqbYiWwOHFOsLMNfNULrTvoGOGG4L45ovvKPTAky9ojCU8IZG42mGYiw==;
	24:EFqRAhG3zT303+DXir/sKV3WvEbH8auiyN2vIQBMszgwmVJAJ4iiFGEb8rTYST4YSe5Dgy7bjPdF7uuEF+77w36DuUUmDWaisq7BFtiMESE=;
	7:n+PFs6ieWkk54DyMguUczVVFIKLRNAKKaKAebnZvPuVCieisWSKT6/UX5oWL/fXXKf8KrNVKkYC/7PqpaPNS3zvFXnWVIDKmLDcNqpBFhoIepQq2i6GDQi7Rc+hmnau5uld8hOokLMax8qsBt6DsVQ8SsiejIPbuIxzopBq2aIXGF9JyU4fl59I0OsK6nJemv16qi2I/PGoPNhTP8xyNfxaluWOIjIdAQ4kUO9bYoMU=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: d952e181-c75a-4ab4-1e87-08d516cdaef9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(48565401081)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM3P114MB0171; 
x-ms-traffictypediagnostic: DM3P114MB0171:
x-exchange-antispam-report-test: UriScan:(169223907730125)(192374486261705)(191869523173324)(21748063052155);
x-microsoft-antispam-prvs: <DM3P114MB01714948C255C658A36E68B7F4420@DM3P114MB0171.NAMP114.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(61425038)(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(100000703101)(100105400095)(6055026)(61426038)(61427038)(6041248)(20161123555025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123564025)(20161123562025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM3P114MB0171; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM3P114MB0171; 
x-forefront-prvs: 0465429B7F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(39860400002)(346002)(189002)(199003)(2906002)(790700001)(6116002)(66066001)(3846002)(86362001)(102836003)(3280700002)(606006)(14454004)(53936002)(2501003)(6306002)(3660700001)(55016002)(9686003)(236005)(54896002)(2900100001)(68736007)(478600001)(74316002)(8676002)(5630700001)(81166006)(33656002)(25786009)(106356001)(105586002)(1730700003)(81156014)(15974865002)(189998001)(8936002)(7736002)(5250100002)(2351001)(97736004)(966005)(50986999)(316002)(54356999)(6506006)(5640700003)(6436002)(101416001)(5660300001)(6916009)(7696004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM3P114MB0171;
	H:DM3P114MB0172.NAMP114.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: accenture.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: accenture.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2017 08:45:00.1836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0793d39-0939-496d-b129-198edd916feb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3P114MB0171
Subject: Plain package isn't built for alsa-lib in Poky
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
X-List-Received-Date: Thu, 19 Oct 2017 09:00:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM3P114MB0172CE6E27987CF07583B295F4420DM3P114MB0172NAMP_"

--_000_DM3P114MB0172CE6E27987CF07583B295F4420DM3P114MB0172NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to build a custom image. Alsa-lib is being compiled and package=
d successfully, so Bitbake says. However, it only generates -dbg and -dev p=
ackages. So while in function do_rootfs, I get "Unable to install packages,=
 Collected errors: opkg_prepare_url_for_install: Couldn't find anything to =
satisfy 'alsa-lib'." error. I've done some research and found this: https:/=
/lists.yoctoproject.org/pipermail/yocto/2013-July/014975.html

I tried to add FILES_${PN} to alsa-lib.bb since it doesn't have it, but it =
didn't work out. In /build/tmp/work/machine/alsa-lib/version/pkgdata/runtim=
e/, there are informations about packages. Even though FILES_* and FILES_IN=
FO are filled with file information for -dbg and -dev, plain doesn't contai=
n anything.

Here's my package data for plain package:
PN: alsa-lib
PV: 1.1.3
PR: r0
PKGV: 1.1.3
PKGR: r0
LICENSE: LGPLv2.1 & GPLv2+
DESCRIPTION: ALSA sound library.
SUMMARY: ALSA sound library
SECTION: libs/multimedia
PKG_alsa-lib: alsa-lib
FILES_alsa-lib: /usr/bin/* /usr/sbin/*
FILES_INFO: {}
PKGSIZE_alsa-lib: 0

Here's my package data for debug package:
PN: alsa-lib
PV: 1.1.3
PR: r0
PKGV: 1.1.3
PKGR: r0
LICENSE: LGPLv2.1 & GPLv2+
DESCRIPTION_alsa-lib-dbg: ALSA sound library.  This package contains ELF sy=
mbols and related sources for debugging purposes.
SUMMARY_alsa-lib-dbg: ALSA sound library - Debugging files
RRECOMMENDS_alsa-lib-dbg: glibc-dbg libasound-dbg
SECTION_alsa-lib-dbg: devel
PKG_alsa-lib-dbg: alsa-lib-dbg
ALLOW_EMPTY_alsa-lib-dbg: 1
FILES_alsa-lib-dbg: /usr/lib/debug /usr/src/debug
FILES_INFO: {"/usr/src/debug/alsa-lib/1.1.3-r0/alsa-lib-1.1.3/src/seq/seq_h=
w.c": 15085, ...} # It's pretty long
PKGSIZE_alsa-lib-dbg: 6174238

Thanks.

________________________________

This message is for the designated recipient only and may contain privilege=
d, proprietary, or otherwise confidential information. If you have received=
 it in error, please notify the sender immediately and delete the original.=
 Any other use of the e-mail by you is prohibited. Where allowed by local l=
aw, electronic communications with Accenture and its affiliates, including =
e-mail and instant messaging (including content), may be scanned by our sys=
tems for the purposes of information security and assessment of internal co=
mpliance with Accenture policy.
___________________________________________________________________________=
___________

www.accenture.com

--_000_DM3P114MB0172CE6E27987CF07583B295F4420DM3P114MB0172NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"TR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to build a custom image. Alsa-lib is bei=
ng compiled and packaged successfully, so Bitbake says. However, it only ge=
nerates -dbg and -dev packages. So while in function do_rootfs, I get &#822=
0;Unable to install packages, Collected
 errors: opkg_prepare_url_for_install: Couldn't find anything to satisfy 'a=
lsa-lib'.&#8221; error. I&#8217;ve done some research and found this:
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2013-July/014975.=
html">https://lists.yoctoproject.org/pipermail/yocto/2013-July/014975.html<=
/a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried to add FILES_${PN} to alsa-lib.bb since it d=
oesn&#8217;t have it, but it didn&#8217;t work out. In /build/tmp/work/mach=
ine/alsa-lib/version/pkgdata/runtime/, there are informations about package=
s. Even though FILES_* and FILES_INFO are filled
 with file information for -dbg and -dev, plain doesn&#8217;t contain anyth=
ing.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here&#8217;s my package data for plain package:<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PN: alsa-lib<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PV: 1.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PR: r0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGV: 1.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGR: r0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">LICENSE: LGPLv2.1 &amp; GPLv2&#43;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">DESCRIPTION: ALSA sound library.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">SUMMARY: ALSA sound library<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">SECTION: libs/multimedia<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKG_alsa-lib: alsa-lib<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">FILES_alsa-lib: /usr/bin/* /usr/sbin/*<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">FILES_INFO: {}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGSIZE_alsa-lib: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">Here&#8217;s my package data for debug package:<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PN: alsa-lib<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PV: 1.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PR: r0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGV: 1.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGR: r0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">LICENSE: LGPLv2.1 &amp; GPLv2&#43;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">DESCRIPTION_alsa-lib-dbg: ALSA sound library.&nbsp; This pac=
kage contains ELF symbols and related sources for debugging purposes.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">SUMMARY_alsa-lib-dbg: ALSA sound library - Debugging files<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">RRECOMMENDS_alsa-lib-dbg: glibc-dbg libasound-dbg<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">SECTION_alsa-lib-dbg: devel<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKG_alsa-lib-dbg: alsa-lib-dbg<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">ALLOW_EMPTY_alsa-lib-dbg: 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">FILES_alsa-lib-dbg: /usr/lib/debug /usr/src/debug<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">FILES_INFO: {&quot;/usr/src/debug/alsa-lib/1.1.3-r0/alsa-lib=
-1.1.3/src/seq/seq_hw.c&quot;: 15085, ...} # It&#8217;s pretty long<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas">PKGSIZE_alsa-lib-dbg: 6174238<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:Consolas"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Thanks.<o:p></o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This message is for the designated recipient only and may contain privilege=
d, proprietary, or otherwise confidential information. If you have received=
 it in error, please notify the sender immediately and delete the original.=
 Any other use of the e-mail by
 you is prohibited. Where allowed by local law, electronic communications w=
ith Accenture and its affiliates, including e-mail and instant messaging (i=
ncluding content), may be scanned by our systems for the purposes of inform=
ation security and assessment of
 internal compliance with Accenture policy. <br>
___________________________________________________________________________=
___________<br>
<br>
www.accenture.com<br>
</font>
</body>
</html>

--_000_DM3P114MB0172CE6E27987CF07583B295F4420DM3P114MB0172NAMP_--
