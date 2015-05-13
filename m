Return-Path: <danro@kth.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ACB3E005B9; Wed, 13 May 2015 00:20:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [130.237.48.192 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 499 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 May 2015 00:20:18 PDT
Received: from smtp-3.sys.kth.se (smtp-3.sys.kth.se [130.237.48.192])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4AC2E0027F
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 00:20:18 -0700 (PDT)
Received: from smtp-3.sys.kth.se (localhost.localdomain [127.0.0.1])
	by smtp-3.sys.kth.se (Postfix) with ESMTP id 106592A7B
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 09:11:58 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kth.se
Received: from smtp-3.sys.kth.se ([127.0.0.1])
	by smtp-3.sys.kth.se (smtp-3.sys.kth.se [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id MeftBCK4tq8A for <yocto@yoctoproject.org>;
	Wed, 13 May 2015 09:11:57 +0200 (CEST)
Received: from exdb01.ug.kth.se (unknown [192.168.32.111])
	by smtp-3.sys.kth.se (Postfix) with ESMTPS id 18FE02A79
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 09:11:56 +0200 (CEST)
Received: from exdb04.ug.kth.se (192.168.32.114) by exdb01.ug.kth.se
	(192.168.32.111) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Wed, 13 May 2015 09:11:55 +0200
Received: from exdb04.ug.kth.se (192.168.32.114) by exdb04.ug.kth.se
	(192.168.32.114) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Wed, 13 May 2015 09:11:54 +0200
Received: from exdb04.ug.kth.se ([192.168.32.114]) by exdb04.ug.kth.se
	([192.168.32.114]) with mapi id 15.00.0995.032;
	Wed, 13 May 2015 09:11:54 +0200
From: Dan Rosenqvist <danro@kth.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minimal GPLv3-free x86 image
Thread-Index: AQHQjUwXjhZMJ22i40KGQ2dex1CMZQ==
Date: Wed, 13 May 2015 07:11:53 +0000
Message-ID: <1431501305950.98021@kth.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [136.163.44.102]
MIME-Version: 1.0
Subject: Minimal GPLv3-free x86 image
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
X-List-Received-Date: Wed, 13 May 2015 07:20:21 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative; boundary="_000_143150130595098021kthse_"

--_000_143150130595098021kthse_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I'm trying to create a minimal GPLv3-free x86 image using the yocto project=
. As I'm looking for ways around the GPLv3 license, I'm unable to use certa=
in packages (such as the live-install which depends on parted, and grub-2.0=
).


Instead I'm trying to create a minimal filesystem, stored as a tarball, whi=
ch includes grub-0.97. To install the image in the target environment (curr=
ently a virtual machine) I use a small bootable linux image used to set up =
the partitions and extracting the tarball image. After doing so, I mount pr=
oc and dev to be able to chroot into the target file system and run grub-in=
stall (to set up grub in the mbr). However, grub-install seem to segfault (=
a lot), and later prints out that the installation was successful.


This methodology has previously been working with gentoo minimal builds.


It feels like I can't be the only one who is in need of a minimalistic GPLv=
3-free x86 build, is there someone here who might be able to guide me in th=
e right direction?


Regards,
Dan

--_000_143150130595098021kthse_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} .ms-cui-menu {background-color:#ffffff;border:1px rgb(166, 166, 1=
66) solid;font-family:"Segoe UI","Segoe WP","Segoe UI WPC",Tahoma,Arial,san=
s-serif;font-size:10pt;color:rgb(51, 51, 51);} .ms-cui-menusection-title {d=
isplay:none;} .ms-cui-ctl {vertical-align:text-top;text-decoration:none;col=
or:rgb(51, 51, 51);} .ms-cui-ctl-on {background-color:rgb(205, 230, 247);op=
acity: 0.8;} .ms-cui-img-cont-float {display:inline-block;margin-top:2px} .=
ms-cui-smenu-inner {padding-top:0px;} .ms-owa-paste-option-icon {margin: 0p=
x 6px 0px 6px;vertical-align:middle!important;padding-bottom: 2px;display:i=
nline-block;} .ms-rtePasteFlyout-option:hover {background-color:rgb(205, 23=
0, 247) !important;opacity:1 !important;} .ms-rtePasteFlyout-option {paddin=
g:8px 4px 8px 4px;outline:none;} .ms-cui-menusection {float:left; width:85p=
x;height:24px;overflow:hidden}.wf {speak:none; font-weight:normal; font-var=
iant:normal; text-transform:none; -webkit-font-smoothing:antialiased; verti=
cal-align:middle; display:inline-block;}.wf-family-owa {font-family:'o365Ic=
ons'}@font-face {  font-family:'o365IconsIE8';  src:url('prem/15.0.995.34/r=
esources/styles/office365icons.ie8.eot?#iefix') format('embedded-opentype')=
,         url('prem/15.0.995.34/resources/styles/office365icons.ie8.woff') =
format('woff'),         url('prem/15.0.995.34/resources/styles/office365ico=
ns.ie8.ttf') format('truetype');  font-weight:normal;  font-style:normal;}@=
font-face {  font-family:'o365IconsMouse';  src:url('prem/15.0.995.34/resou=
rces/styles/office365icons.mouse.eot?#iefix') format('embedded-opentype'), =
        url('prem/15.0.995.34/resources/styles/office365icons.mouse.woff') =
format('woff'),         url('prem/15.0.995.34/resources/styles/office365ico=
ns.mouse.ttf') format('truetype');  font-weight:normal;  font-style:normal;=
}.wf-family-owa {font-family:'o365IconsMouse'}.ie8 .wf-family-owa {font-fam=
ily:'o365IconsIE8'}.ie8 .wf-owa-play-large:before {content:'\e254';}.notIE8=
 .wf-owa-play-large:before {content:'\e054';}.ie8 .wf-owa-play-large {color=
:#FFFFFF/*$WFWhiteColor*/;}.notIE8 .wf-owa-play-large {border-color:#FFFFFF=
/*$WFWhiteColor*/; width:1.4em; height:1.4em; border-width:.1em; border-sty=
le:solid; border-radius:.8em; text-align:center; box-sizing:border-box; -mo=
z-box-sizing:border-box; padding:0.1em; color:#FFFFFF/*$WFWhiteColor*/;}.ie=
8 .wf-size-play-large {width:40px; height:40px; font-size:30px}.notIE8 .wf-=
size-play-large {width:40px; height:40px; font-size:30px}.notIE8 .wf-owa-tr=
iangle-down-small:before {content:'\e052';}.ie8 .wf-owa-triangle-down-small=
:before { content:'\e052';}.ie8 .wf-owa-triangle-down-small {color:#666666/=
*$WFGreyColor*/;}.wf-size-x20 {font-size: 20px!important;}=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(166,166,166) solid;=0A=
	font-family:"Segoe UI","Segoe WP","Segoe UI WPC",Tahoma,Arial,sans-serif;=
=0A=
	font-size:10pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-menusection-title=0A=
	{}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(205,230,247)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:0px 6px 0px 6px;=0A=
	vertical-align:middle!important;=0A=
	padding-bottom:2px;=0A=
	display:inline-block}=0A=
.ms-rtePasteFlyout-option=0A=
	{padding:8px 4px 8px 4px;=0A=
	outline:none}=0A=
.ms-cui-menusection=0A=
	{float:left;=0A=
	width:85px;=0A=
	height:24px;=0A=
	overflow:hidden}=0A=
.wf=0A=
	{speak:none;=0A=
	font-weight:normal;=0A=
	font-variant:normal;=0A=
	text-transform:none;=0A=
	vertical-align:middle;=0A=
	display:inline-block}=0A=
.wf-family-owa=0A=
	{font-family:'o365Icons'}=0A=
@font-face=0A=
	{font-family:'o365IconsIE8';=0A=
	font-weight:normal;=0A=
	font-style:normal}=0A=
@font-face=0A=
	{font-family:'o365IconsMouse';=0A=
	font-weight:normal;=0A=
	font-style:normal}=0A=
.wf-family-owa=0A=
	{font-family:'o365IconsMouse'}=0A=
.ie8 .wf-family-owa=0A=
	{font-family:'o365IconsIE8'}=0A=
.notIE8 .wf-owa-play-large=0A=
	{border-color:#FFFFFF;=0A=
	width:1.4em;=0A=
	height:1.4em;=0A=
	border-width:.1em;=0A=
	border-style:solid;=0A=
	text-align:center;=0A=
	padding:0.1em;=0A=
	color:#FFFFFF}=0A=
.ie8 .wf-size-play-large=0A=
	{width:40px;=0A=
	height:40px;=0A=
	font-size:30px}=0A=
.notIE8 .wf-size-play-large=0A=
	{width:40px;=0A=
	height:40px;=0A=
	font-size:30px}=0A=
.wf-size-x20=0A=
	{font-size:20px!important}=0A=
-->=0A=
--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi,</p>
<p><br>
</p>
<p>I'm trying to create a minimal GPLv3-free x86 image using the yocto proj=
ect. As I'm looking for ways around the GPLv3 license, I'm unable to use ce=
rtain packages (such as the live-install&nbsp;which depends on parted, and =
grub-2.0).</p>
<p><br>
</p>
<p>Instead I'm trying to create a minimal filesystem, stored as a tarball, =
which includes grub-0.97. To install the image in the target environment (c=
urrently&nbsp;a virtual machine) I use a small bootable linux image used to=
 set up the partitions and extracting
 the tarball image. After doing so, I mount proc and dev to be able to chro=
ot into the target file system and run grub-install (to set up grub in the =
mbr). However, grub-install seem to segfault (a lot), and later prints out =
that the installation was successful.<br>
</p>
<p><br>
</p>
<p>This methodology has previously been working with gentoo minimal builds.=
</p>
<p><br>
</p>
<p>It feels like I can't be the only one who is in need of a minimalistic G=
PLv3-free x86 build, is there someone here who might be able to guide me in=
 the right direction?</p>
<p><br>
</p>
<p>Regards,<br>
Dan<br>
</p>
</body>
</html>

--_000_143150130595098021kthse_--
