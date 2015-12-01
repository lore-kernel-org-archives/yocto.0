Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1473FE009D7; Mon, 30 Nov 2015 23:48:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.5 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 410 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 Nov 2015 23:48:11 PST
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B88EFE0088C
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 23:48:11 -0800 (PST)
Received: from [216.82.251.39] by server-5.bemta-12.messagelabs.com id
	FB/86-02526-12F4D565; Tue, 01 Dec 2015 07:41:21 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-7.tower-164.messagelabs.com!1448955680!2414708!1
X-Originating-IP: [207.250.73.121]
X-StarScan-Received: 
X-StarScan-Version: 7.19.2; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 33544 invoked from network); 1 Dec 2015 07:41:21 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.121)
	by server-7.tower-164.messagelabs.com with AES256-SHA encrypted SMTP;
	1 Dec 2015 07:41:21 -0000
Received: from AMDTCEX11.actuant.pri ([fe80::f86b:7a40:d71b:bb92]) by
	AMDTCEX10.actuant.pri ([fe80::40f6:8682:1d1f:3805%17]) with mapi id
	14.03.0174.001; Tue, 1 Dec 2015 01:41:19 -0600
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [prelink-cross] Prelinking to wrong library ld-linux.so.3
	instead ld-linux-armhf.so.3
Thread-Index: AdEsA66Z0K5aj1c1QQSl+x22G41JXQ==
Date: Tue, 1 Dec 2015 07:41:18 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD3FFC3194@AMDTCEX11.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
Subject: [prelink-cross] Prelinking to wrong library ld-linux.so.3 instead ld-linux-armhf.so.3
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
X-List-Received-Date: Tue, 01 Dec 2015 07:48:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD3FFC3194AMDTCEX11actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD3FFC3194AMDTCEX11actuan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

As the subject states, I'm having that problem with Yocto. I'm using Yocto =
1.7 and already updated the prelink-cross to latest version.  This happens =
only on the applications I've added myself. The actual Yocto applications c=
ompiles just fine. I don't have any autoconf in use with my applications so=
 I'm not sure if that has anything to do with the prelink issue.

As a workaround I've made symbolic link from /lib/ld-linux-armhf.so.3 to /l=
ib/ld-linux.so.3, but I would like to solve the actual problem.

With Yocto 1.7 default prelink I get following errors to log.do_rootfs:

build/tmp/sysroots/i686-linux/usr/sbin/prelink: /usr/bin/weston-terminal: U=
sing /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker

With latest prelink I get following errors in that log:

/build/tmp/sysroots/i686-linux/usr/sbin/prelink: /usr/bin/testapplication: =
Could not parse ` /build/tmp/sysroots/i686-linux/usr/sbin//prelink-rtld: er=
ror while loading shared libraries: ld-linux-armhf.so.3'

So with old version the prelink is using the proper library for existing Yo=
cto applications, but my application is missing from that list. And with la=
test application only my application is listed with not founding the librar=
y it should.  Why it's only on those recipes I've created? I've looked some=
 existing recipes and they don't have any prelink references. In local.conf=
 I have "image-prelink" defined in USER_CLASSES.

I found someone else having issues with prelink as well, but didn't find an=
y solution that would work for me since it seems to happen only on applicat=
ions/recipes that I've made.

Here is the recipe for testapplication:

--
LICENSE =3D "LGPLv2"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552=
"
PR =3D "r15"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

inherit localapp

EXTRA_OEMAKE =3D " \
CC_PREFIX=3Darm-poky-linux-gnueabi- \
"

--


Localapp changes the source directory so sources can be locally.

--
inherit base externalsrc

EXTERNALSRC =3D "${COREBASE}/../apps/${PN}"
EXTERNALSRC_BUILD =3D "${EXTERNALSRC}"
--

Teemu Keskinarkaus
Software system engineer



________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

--_000_83DB4EC8FADD45428E3CC4E3664761FD3FFC3194AMDTCEX11actuan_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Century Gothic";
	panose-1:2 11 5 2 2 2 2 2 2 4;}
@font-face
	{font-family:Georgia;
	panose-1:2 4 5 2 5 4 5 2 3 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As the subject states, I&#8217;m having that problem=
 with Yocto. I&#8217;m using Yocto 1.7 and already updated the prelink-cros=
s to latest version. &nbsp;This happens only on the applications I&#8217;ve=
 added myself. The actual Yocto applications compiles just
 fine. I don&#8217;t have any autoconf in use with my applications so I&#82=
17;m not sure if that has anything to do with the prelink issue.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As a workaround I&#8217;ve made symbolic link from /=
lib/ld-linux-armhf.so.3 to /lib/ld-linux.so.3, but I would like to solve th=
e actual problem.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With Yocto 1.7 default prelink I get following error=
s to log.do_rootfs:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">build/tmp/sysroots/i686-linux/usr/sbin/prelink: /usr=
/bin/weston-terminal: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.=
3 as dynamic linker<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With latest prelink I get following errors in that l=
og:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/build/tmp/sysroots/i686-linux/usr/sbin/prelink: /us=
r/bin/testapplication: Could not parse ` /build/tmp/sysroots/i686-linux/usr=
/sbin//prelink-rtld: error while loading shared libraries: ld-linux-armhf.s=
o.3'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So with old version the prelink is using the proper =
library for existing Yocto applications, but my application is missing from=
 that list. And with latest application only my application is listed with =
not founding the library it should.
 &nbsp;Why it&#8217;s only on those recipes I&#8217;ve created? I&#8217;ve =
looked some existing recipes and they don&#8217;t have any prelink referenc=
es. In local.conf I have &#8220;image-prelink&#8221; defined in USER_CLASSE=
S.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I found someone else having issues with prelink as w=
ell, but didn&#8217;t find any solution that would work for me since it see=
ms to happen only on applications/recipes that I&#8217;ve made.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the recipe for testapplication:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;LGPLv2&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D5953=
0bdf33659b29e73d4adb9f9f6552&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PR =3D &quot;r15&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">inherit localapp<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">EXTRA_OEMAKE =3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">CC_PREFIX=3Darm-poky-linux-gnueabi- \<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Localapp changes the source directory so sources can=
 be locally.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal">inherit base externalsrc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">EXTERNALSRC =3D &quot;${COREBASE}/../apps/${PN}&quot=
;<o:p></o:p></p>
<p class=3D"MsoNormal">EXTERNALSRC_BUILD =3D &quot;${EXTERNALSRC}&quot;<o:p=
></o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:9.0pt;mso-line-height-rule:exac=
tly"><b><span style=3D"font-size:10.0pt;font-family:&quot;Century Gothic&qu=
ot;,&quot;sans-serif&quot;">Teemu Keskinarkaus<br>
</span></b><span style=3D"font-size:7.5pt;font-family:&quot;Century Gothic&=
quot;,&quot;sans-serif&quot;">Software system engineer</span><b><span style=
=3D"font-size:10.0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-seri=
f&quot;"><br>
<br>
</span></b><span style=3D"font-size:7.5pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
Actuant Corporation Email Notice<br>
<br>
This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.<br>
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly
 prohibited.<br>
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.<br>
<br>
Thank you.<br>
</font>
</body>
</html>

--_000_83DB4EC8FADD45428E3CC4E3664761FD3FFC3194AMDTCEX11actuan_--
