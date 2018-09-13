Return-Path: <Jeremy.Overesch@millerwelds.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29AA9E0093B; Thu, 13 Sep 2018 08:55:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.197.156.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 777 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Sep 2018 08:55:25 PDT
Received: from mailcuda.itwwelds.com (mailcuda.itwwelds.com [206.197.156.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9019E005B1
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 08:55:25 -0700 (PDT)
X-ASG-Debug-ID: 1536853347-08979511bc1202ad0001-yzSStA
Received: from webmail.itwwelds.com (exch13mb02.itwwelds.com [10.52.121.21])
	by mailcuda.itwwelds.com with ESMTP id 8IjVeaeMaZ3pP7EG for
	<yocto@yoctoproject.org>; Thu, 13 Sep 2018 10:42:27 -0500 (CDT)
X-Barracuda-Envelope-From: Jeremy.Overesch@millerwelds.com
X-ASG-Whitelist: Client
Received: from EXCH13MB02.itwwelds.com (10.52.121.21) by
	EXCH13MB02.itwwelds.com (10.52.121.21) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Thu, 13 Sep 2018 10:42:26 -0500
Received: from EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3]) by
	EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3%20]) with mapi id
	15.00.1104.000; Thu, 13 Sep 2018 10:42:26 -0500
From: Jeremy Overesch <Jeremy.Overesch@millerwelds.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Whitelist gdbserver
X-ASG-Orig-Subj: Whitelist gdbserver
Thread-Index: AdRLdyiBIbwfdViTQ3i20DK6Qz/jow==
Date: Thu, 13 Sep 2018 15:42:26 +0000
Message-ID: <06a2ad55e4924b5982dfc2953e31a17a@EXCH13MB02.itwwelds.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.46.101.16]
MIME-Version: 1.0
X-Barracuda-Connect: exch13mb02.itwwelds.com[10.52.121.21]
X-Barracuda-Start-Time: 1536853347
X-Barracuda-URL: https://mailcuda.itwwelds.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 9816
X-Virus-Scanned: by bsmtpd at itwwelds.com
X-Barracuda-BRTS-Status: 1
Subject: Whitelist gdbserver
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
X-List-Received-Date: Thu, 13 Sep 2018 15:55:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_06a2ad55e4924b5982dfc2953e31a17aEXCH13MB02itwweldscom_"

--_000_06a2ad55e4924b5982dfc2953e31a17aEXCH13MB02itwweldscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI all,

I'm attempting to whitelist gdbserver just for SDK purposes, while keeping =
all other GPLv3 code as incompatible (therefore unbuilt).  However, everyth=
ing I've tried still results in gdbserver being removed from my SDK and the=
refore failing to build.

In my local.conf, I have the following line:

INCOMPATIBLE_LICENSE =3D "GPLv3 LGPLv3 AGPLv3"

Through the yocto documentation (https://www.yoctoproject.org/docs/2.4/mega=
-manual/mega-manual.html#license-flag-matching), it appears that adding the=
 following *should* work, yet it doesn't:

LICENSE_FLAGS_WHITELIST =3D "GPLv3_gdbserver"

I've also tried the following lines individually:
LICENSE_FLAGS_WHITELIST =3D "GPLv3_gdbserver LGPLv3_gdbserver"
INCOMPATIBLE_LICENSE_gdbserver =3D ""

But none of these seem to work.

When I build, I get the following:
---- snip ----
vagrant@buildPC:~/newroot/build$ bitbake -c populate_sdk thing4-fullImage
WARNING: Host distribution "Ubuntu-16.04" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
NOTE: /home/vagrant/newroot/sources/poky/meta/recipes-extended/libidn/libid=
n_0.6.14.bb: INCLUDING libidn as buildable despite INCOMPATIBLE_LICENSE bec=
ause it has been whitelisted
NOTE: /home/vagrant/newroot/sources/poky/meta/recipes-extended/libidn/libid=
n_1.32.bb: INCLUDING libidn as buildable despite INCOMPATIBLE_LICENSE becau=
se it has been whitelisted
Parsing recipes: 100% |####################################################=
####################################| Time: 00:00:12
Parsing of 2143 .bb files complete (0 cached, 2143 parsed). 2714 targets, 5=
82 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'gdbserver' (but /home/vagrant/newroot/sources/pok=
y/../meta-qt5/recipes-qt/packagegroups/packagegroup-qt5-qtcreator-debug.bb =
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'gdbserver' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['gdbserver']
NOTE: Runtime target 'packagegroup-qt5-qtcreator-debug' is unbuildable, rem=
oving...
Missing or unbuildable dependency chain was: ['packagegroup-qt5-qtcreator-d=
ebug', 'gdbserver']
ERROR: Required build target 'thing4-fullImage' has no buildable providers.
Missing or unbuildable dependency chain was: ['thing4-fullImage', 'packageg=
roup-qt5-qtcreator-debug', 'gdbserver']

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
---- snip ----

Is there a way to figure out what magic line I need?

Thanks in advance for any help you can give.

-Jeremy

________________________________

This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that you must delete the message without dis=
seminating, copying or taking any action in reliance upon it. If you have r=
eceived this message in error, please notify the sender via return e-mail. =
Thank you.

--_000_06a2ad55e4924b5982dfc2953e31a17aEXCH13MB02itwweldscom_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal">HI all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m attempting to whitelist gdbserver just for=
 SDK purposes, while keeping all other GPLv3 code as incompatible (therefor=
e unbuilt).&nbsp; However, everything I&#8217;ve tried still results in gdb=
server being removed from my SDK and therefore failing
 to build.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In my local.conf, I have the following line:<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">INCOMPATIBLE_LICENSE =3D &quot;GPLv3 LGPLv3 AGPLv3&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Through the yocto documentation (https://www.yoctopr=
oject.org/docs/2.4/mega-manual/mega-manual.html#license-flag-matching), it =
appears that adding the following *<b>should</b>* work, yet it doesn&#8217;=
t:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">LICENSE_FLAGS_WHITELIST =3D &#8220;GPLv3_gdbserver&#=
8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve also tried the following lines individual=
ly:<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE_FLAGS_WHITELIST =3D &#8220;GPLv3_gdbserver L=
GPLv3_gdbserver&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">INCOMPATIBLE_LICENSE_gdbserver =3D &#8220;&#8221;<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But none of these seem to work.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I build, I get the following:<o:p></o:p></p>
<p class=3D"MsoNormal">---- snip ----<o:p></o:p></p>
<p class=3D"MsoNormal">vagrant@buildPC:~/newroot/build$ bitbake -c populate=
_sdk thing4-fullImage<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: Host distribution &quot;Ubuntu-16.04&quot; =
has not been validated with this version of the build system; you may possi=
bly experience unexpected failures. It is recommended that you use a tested=
 distribution.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: /home/vagrant/newroot/sources/poky/meta/recipe=
s-extended/libidn/libidn_0.6.14.bb: INCLUDING libidn as buildable despite I=
NCOMPATIBLE_LICENSE because it has been whitelisted<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: /home/vagrant/newroot/sources/poky/meta/recipe=
s-extended/libidn/libidn_1.32.bb: INCLUDING libidn as buildable despite INC=
OMPATIBLE_LICENSE because it has been whitelisted<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
###########################################################| Time: 00:00:12=
<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing of 2143 .bb files complete (0 cached, 2143 p=
arsed). 2714 targets, 582 skipped, 1 masked, 0 errors.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Nothing RPROVIDES 'gdbserver' (but /home/vagr=
ant/newroot/sources/poky/../meta-qt5/recipes-qt/packagegroups/packagegroup-=
qt5-qtcreator-debug.bb RDEPENDS on or otherwise requires it)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Runtime target 'gdbserver' is unbuildable, rem=
oving...<o:p></o:p></p>
<p class=3D"MsoNormal">Missing or unbuildable dependency chain was: ['gdbse=
rver']<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Runtime target 'packagegroup-qt5-qtcreator-deb=
ug' is unbuildable, removing...<o:p></o:p></p>
<p class=3D"MsoNormal">Missing or unbuildable dependency chain was: ['packa=
gegroup-qt5-qtcreator-debug', 'gdbserver']<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Required build target 'thing4-fullImage' has =
no buildable providers.<o:p></o:p></p>
<p class=3D"MsoNormal">Missing or unbuildable dependency chain was: ['thing=
4-fullImage', 'packagegroup-qt5-qtcreator-debug', 'gdbserver']<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 WARNING message shown.<o:p></o:=
p></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">---- snip ----<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a way to figure out what magic line I need?=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance for any help you can give.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Jeremy<o:p></o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This message (including any attachments) is intended for the sole use of th=
e intended recipient/s and may contain material that is CONFIDENTIAL AND PR=
IVATE COMPANY INFORMATION. If you are not the intended recipient of this me=
ssage, you are hereby notified that
 you must delete the message without disseminating, copying or taking any a=
ction in reliance upon it. If you have received this message in error, plea=
se notify the sender via return e-mail. Thank you.<br>
</font>
</body>
</html>

--_000_06a2ad55e4924b5982dfc2953e31a17aEXCH13MB02itwweldscom_--
