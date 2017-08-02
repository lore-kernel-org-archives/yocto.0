Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F28DAE00C9E; Wed,  2 Aug 2017 02:29:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Aug 2017 02:29:13 PDT
Received: from debemgw001.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 527E6E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 02:29:12 -0700 (PDT)
Received: from DEBEMAIL002.kostal.int ([10.20.2.182]) by 
	debemgw001.kostal.com (8.14.7/8.14.7) with ESMTP id v729O636021349 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL) for 
	<yocto@yoctoproject.org>; Wed, 2 Aug 2017 11:24:07 +0200
Received: from DEBEMAIL001.kostal.int (10.20.2.181) by DEBEMAIL002.kostal.int 
	(10.20.2.182) with Microsoft SMTP Server (TLS) id 15.0.1293.2;
	Wed, 2 Aug 2017 11:24:06 +0200
Received: from DEBEMAIL001.kostal.int ([fe80::709d:54a:e7ef:38eb]) by 
	DEBEMAIL001.kostal.int ([fe80::709d:54a:e7ef:38eb%12]) with mapi id 
	15.00.1293.004; Wed, 2 Aug 2017 11:24:06 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: postinstall intercept hooks fail because of missing qemuwrapper
Thread-Index: AdMLcG4rnYX7FD19RKSJOkSo1XZxbQ==
Date: Wed, 2 Aug 2017 09:24:06 +0000
Message-ID: <45217eb6b5da40db93f9a86af0436077@DEBEMAIL001.kostal.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
Subject: postinstall intercept hooks fail because of missing qemuwrapper
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
X-List-Received-Date: Wed, 02 Aug 2017 09:29:15 -0000
Content-Language: de-DE
Content-Type: multipart/alternative; 
	boundary="_000_45217eb6b5da40db93f9a86af0436077DEBEMAIL001kostalint_"

--_000_45217eb6b5da40db93f9a86af0436077DEBEMAIL001kostalint_
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

we are using the current version of pyro. When building an image recipe we =
get some warnings, that some postinstall intercept hooks failed. The log-fi=
le of do_rootfs shows:

NOTE: Running intercept scripts:
NOTE: > Executing update_gio_module_cache intercept ...
/home/anders05/Dev/build-puck/build/tmp/work/abc-def-linux-gnueabi/puck-ima=
ge-basic/1.0-r0/intercept_scripts/update_gio_module_cache: 9: /home/anders0=
5/Dev/build-puck/build/tmp/work/abc-def-linux-gnueabi/puck-image-basic/1.0-=
r0/intercept_scripts/update_gio_module_cache: qemuwrapper: not found
WARNING: The postinstall intercept hook 'update_gio_module_cache' failed (e=
xit code: 127)! See log for details! (Output: b'')
WARNING: The postinstalls for the following packages will be postponed for =
first boot: libglib-2.0-0
NOTE: > Executing update_font_cache intercept ...
/home/anders05/Dev/build-puck/build/tmp/work/abc-def-linux-gnueabi/puck-ima=
ge-basic/1.0-r0/intercept_scripts/update_font_cache: 11: /home/anders05/Dev=
/build-puck/build/tmp/work/abc-def-linux-gnueabi/puck-image-basic/1.0-r0/in=
tercept_scripts/update_font_cache: qemuwrapper: not found
WARNING: The postinstall intercept hook 'update_font_cache' failed (exit co=
de: 127)! See log for details! (Output: b'')
WARNING: The postinstalls for the following packages will be postponed for =
first boot: ttf-sazanami-mincho ttf-arphic-uming ttf-dejavu-sans ttf-dejavu=
-sans-mono ttf-devanagari

So qemuwrapper is missing. How can I fix this?

Kind regards
Christian


KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing. =
Marwin Kinzl, Dipl.-Oec. Andreas Kostal


--_000_45217eb6b5da40db93f9a86af0436077DEBEMAIL001kostalint_
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<META http-equiv=3D"Content-Type" content=3D"text/html; charset=3DISO-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">we are using the current version of py=
ro. When building an image recipe we get some warnings, that some postinsta=
ll intercept hooks failed. The log-file of do_rootfs
 shows:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">NOTE: Running intercept scripts:<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">NOTE: &gt; Executing update_gio_module=
_cache intercept ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">/home/anders05/Dev/build-puck/build/tm=
p/work/abc-def-linux-gnueabi/puck-image-basic/1.0-r0/intercept_scripts/upda=
te_gio_module_cache: 9: /home/anders05/Dev/build-puck/build/tmp/work/abc-de=
f-linux-gnueabi/puck-image-basic/1.0-r0/intercept_scripts/update_gio_module=
_cache:
 qemuwrapper: not found<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">WARNING: The postinstall intercept hoo=
k 'update_gio_module_cache' failed (exit code: 127)! See log for details! (=
Output: b'')<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">WARNING: The postinstalls for the foll=
owing packages will be postponed for first boot: libglib-2.0-0<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">NOTE: &gt; Executing update_font_cache=
 intercept ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">/home/anders05/Dev/build-puck/build/tm=
p/work/abc-def-linux-gnueabi/puck-image-basic/1.0-r0/intercept_scripts/upda=
te_font_cache: 11: /home/anders05/Dev/build-puck/build/tmp/work/abc-def-lin=
ux-gnueabi/puck-image-basic/1.0-r0/intercept_scripts/update_font_cache:
 qemuwrapper: not found<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">WARNING: The postinstall intercept hoo=
k 'update_font_cache' failed (exit code: 127)! See log for details! (Output=
: b'')<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">WARNING: The postinstalls for the foll=
owing packages will be postponed for first boot: ttf-sazanami-mincho ttf-ar=
phic-uming ttf-dejavu-sans ttf-dejavu-sans-mono
 ttf-devanagari<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">So qemuwrapper is missing. How can I f=
ix this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Kind regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Christian</span><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
=0A<table>=0A<tbody><tr valign=3D"bottom">=0A<td valign=3D"bottom">=0A<img =
border=3D"0" src=3D"http://www.kostal-solar-electric.com/~/media/Industrie%=
20Elektrik/Header_Logos%20und%20Bilder/blue_Quadrat_Intelligent.ashx" />=0A=
</td>=0A<td width=3D"5"></td>=0A<td valign=3D"bottom" style=3D"font-size: 8=
pt;">=0AKOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergerich=
t Iserlohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170=0A<br />=0APostansch=
rift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2351 16-0 =
* Telefax: +49  2351 16-2400=0A<br />=0AWerksanschrift: Lange Eck 11, D-580=
99 Hagen * Tel. +49 2331 8040-800 * Fax +49 2331 8040-602=0A<br />=0AGesch=
=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing. Marwi=
n Kinzl, Dipl.-Oec. Andreas Kostal=0A</td>=0A</tr>=0A</tbody></table>=0A=0A=
=0A=0A=0A</body>
</html>

--_000_45217eb6b5da40db93f9a86af0436077DEBEMAIL001kostalint_--
