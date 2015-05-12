Return-Path: <peter.t.smith@alstom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88FAAE0098D; Tue, 12 May 2015 05:21:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [159.245.16.223 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 604 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 May 2015 05:21:19 PDT
Received: from MCEGSMTP3.alstom.com (mcegsmtp3.alstom.com [159.245.16.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A55F8E0097D
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 05:21:19 -0700 (PDT)
Received: from mail.alstom.com (unknown [10.228.1.11]) by MCEGSMTP3.alstom.com
	with smtp (TLS: TLSv1/SSLv3,128bits,AES128-SHA)
	id 5132_e670_5e708843_d907_4558_915e_fdff68f98ea2;
	Tue, 12 May 2015 14:11:09 +0200
Received: from 041-DB3MPN1-092.041d.mgd.msft.net ([169.254.2.253]) by
	041-DB3MMR1-001.041d.mgd.msft.net ([10.228.1.11]) with mapi id
	14.03.0224.003; Tue, 12 May 2015 12:11:08 +0000
From: SMITH Peter T <peter.t.smith@alstom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Why does my bitbake build hang fetching linux-yocto-3.14.git
Thread-Index: AdCMrADmx43qIsLuT9K7Jn8+7rN9xA==
Date: Tue, 12 May 2015 12:11:07 +0000
Message-ID: <92BAB684D31DCD4A8F623A7EE7FD8C06013EE91D@041-DB3MPN1-092.041d.mgd.msft.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.32.130.85]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 12 May 2015 08:24:08 -0700
Subject: Why does my bitbake build hang fetching linux-yocto-3.14.git
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
X-List-Received-Date: Tue, 12 May 2015 12:21:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_92BAB684D31DCD4A8F623A7EE7FD8C06013EE91D041DB3MPN109204_"

--_000_92BAB684D31DCD4A8F623A7EE7FD8C06013EE91D041DB3MPN109204_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All

Fairly new to Yocto, trying to build Wind River's Linux distro (https://git=
hub.com/WindRiver-OpenSourceLabs). Everything goes to plan until bitbake ge=
ts round to fetching a clone of linux-yocto-3.14 (see output below), when b=
itbake just hangs forever (I left it overnight).

If however I try to clone manually with "git -c core.fsyncobjectfiles=3D0 c=
lone --bare --mirror http://git.yoctoproject.org/git/linux-yocto-3.14.git /=
home/user/wr-core/build-xilinx-zynq/downloads/git2/git.yoctoproject.org.git=
.linux-yocto-3.14.git" which seems to be the command line executed by bitba=
ke, everything works as expected.

Can anyone point me in the right direction?

Regards
Peter Smith

user@user-VirtualBox:~/wr-core/build-xilinx-zynq$ bitbake virtual/kernel
Loading cache: 100% |######################################################=
########################################| ETA:  00:00:00
Loaded 1603 entries from dependency cache.
Parsing recipes: 100% |####################################################=
########################################| Time: 00:00:01
Parsing of 1180 .bb files complete (1178 cached, 2 parsed). 1604 targets, 9=
4 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.24.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
DISTRO            =3D "wrlinux-small"
DISTRO_VERSION    =3D "7.0.0.2"
MACHINE           =3D "xilinx-zynq"
DEFAULTTUNE       =3D "armv7at-neon"
TARGET_SYS        =3D "arm-wrs-linux-gnueabi"
TUNE_FEATURES     =3D "arm armv7a vfp thumb neon"
TARGET_FPU        =3D "vfp-neon"
wrlinux           =3D "(detachedfrom9105011):9105011489c249abcfec7970ea584a=
b65c1dd972"
meta              =3D "(detachedfrom7cccaaf):7cccaafc69e7758d4c2cfd2b0d19e0=
6c7fbb10ee"
meta-webserver    =3D "(detachedfromef02194):ef02194433c135da983695a0201660=
ff66c96be1"
meta-perl-subset  =3D "(detachedfrom80e6f87):80e6f878aae0054e7cf00d166654f3=
a19ea14db8"
meta-python-subset =3D "(detachedfrom4f1eab3):4f1eab38f8e603de1777b7cd3db05=
34fd1400997"
meta-oe-subset    =3D "(detachedfromf777254):f77725420cd906496689e3aeb22359=
7b011f39fc"
meta-gnome-subset =3D "(detachedfromea11bab):ea11babea7de95c98efd7e45e10ea7=
82657b494c"
meta-networking   =3D "(detachedfrom7cd5080):7cd508084fb4eff70e0fe96124555b=
9ef31007de"
wr-fixes          =3D "(detachedfrom1a6a90d):1a6a90d8b68585be2385d639de67a6=
edc2f792b5"
wr-base           =3D "(detachedfromc7aae03):c7aae03c71ffc38467adfb838a57c9=
0403e5238d"
xilinx-zynq       =3D "(detachedfromf58d751):f58d751ca8372e34df39c9bb5053e6=
aac9588b04"
wr-kernel         =3D "(detachedfrom65f8f3e):65f8f3e6a6313a7c85b7ea1a42267b=
f548b3f04d"
wrlabs-integration =3D "(detachedfrom47e351d):47e351d1ed1f8c2ac5221934a7ace=
b458c41c30b"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
Currently 1 running tasks (200 of 434):
0: linux-yocto-3.14.39+gitAUTOINC+fb6271a942_db1db62eee-r0 do_fetch (pid 83=
17)



________________________________
CONFIDENTIALITY : This e-mail and any attachments are confidential and may =
be privileged. If you are not a named recipient, please notify the sender i=
mmediately and do not disclose the contents to another person, use it for a=
ny purpose or store or copy the information in any medium.

--_000_92BAB684D31DCD4A8F623A7EE7FD8C06013EE91D041DB3MPN109204_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Fairly new to Yocto, trying to build Wind River&#821=
7;s Linux distro (<a href=3D"https://github.com/WindRiver-OpenSourceLabs">h=
ttps://github.com/WindRiver-OpenSourceLabs</a>). Everything goes to plan un=
til bitbake gets round to fetching a clone
 of linux-yocto-3.14 (see output below), when bitbake just hangs forever (I=
 left it overnight).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If however I try to clone manually with &#8220;git -=
c core.fsyncobjectfiles=3D0 clone --bare --mirror http://git.yoctoproject.o=
rg/git/linux-yocto-3.14.git /home/user/wr-core/build-xilinx-zynq/downloads/=
git2/git.yoctoproject.org.git.linux-yocto-3.14.git&#8221;
 which seems to be the command line executed by bitbake, everything works a=
s expected.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone point me in the right direction?<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Smith<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">user@user-VirtualBox:~/wr-core/build-xilinx-zynq$ bi=
tbake virtual/kernel<o:p></o:p></p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
###############################################################| ETA:&nbsp;=
 00:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">Loaded 1603 entries from dependency cache.<o:p></o:p=
></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
###############################################################| Time: 00:0=
0:01<o:p></o:p></p>
<p class=3D"MsoNormal">Parsing of 1180 .bb files complete (1178 cached, 2 p=
arsed). 1604 targets, 94 skipped, 0 masked, 0 errors.<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;1.24.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Ubuntu-14.04&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =3D &quot;wrlinux-small&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;7.0.0.2&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;xilinx-zynq&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DEFAULTTUNE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;armv7at-neon&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;arm-wrs-linux-gnueabi&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm =
armv7a vfp thumb neon&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;vfp-neon&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">wrlinux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;(detachedfrom9105011):9105011489c249abcfec7970ea5=
84ab65c1dd972&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;(detachedfrom7cccaaf):7cccaafc69e7=
758d4c2cfd2b0d19e06c7fbb10ee&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-webserver&nbsp;&nbsp;&nbsp; =3D &quot;(detached=
fromef02194):ef02194433c135da983695a0201660ff66c96be1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-perl-subset&nbsp; =3D &quot;(detachedfrom80e6f8=
7):80e6f878aae0054e7cf00d166654f3a19ea14db8&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-python-subset =3D &quot;(detachedfrom4f1eab3):4=
f1eab38f8e603de1777b7cd3db0534fd1400997&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-oe-subset&nbsp;&nbsp;&nbsp; =3D &quot;(detached=
fromf777254):f77725420cd906496689e3aeb223597b011f39fc&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-gnome-subset =3D &quot;(detachedfromea11bab):ea=
11babea7de95c98efd7e45e10ea782657b494c&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta-networking&nbsp;&nbsp; =3D &quot;(detachedfrom7=
cd5080):7cd508084fb4eff70e0fe96124555b9ef31007de&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">wr-fixes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D &quot;(detachedfrom1a6a90d):1a6a90d8b68585be2385d639de67a6ed=
c2f792b5&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">wr-base&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;(detachedfromc7aae03):c7aae03c71ffc38467adfb838a5=
7c90403e5238d&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">xilinx-zynq&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;(detachedfromf58d751):f58d751ca8372e34df39c9bb5053e6aac9588b04&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal">wr-kernel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;(detachedfrom65f8f3e):65f8f3e6a6313a7c85b7ea1a42267bf548b3f=
04d&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">wrlabs-integration =3D &quot;(detachedfrom47e351d):4=
7e351d1ed1f8c2ac5221934a7aceb458c41c30b&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: Preparing runqueue<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing SetScene Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing RunQueue Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">Currently 1 running tasks (200 of 434):<o:p></o:p></=
p>
<p class=3D"MsoNormal">0: linux-yocto-3.14.39&#43;gitAUTOINC&#43;fb6271a942=
_db1db62eee-r0 do_fetch (pid 8317)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"2">CONFIDENTIALITY : This e-ma=
il and any attachments are confidential and may be privileged. If you are n=
ot a named recipient, please notify the sender immediately and do not discl=
ose the contents to another person, use
 it for any purpose or store or copy the information in any medium.<br>
</font>
</body>
</html>

--_000_92BAB684D31DCD4A8F623A7EE7FD8C06013EE91D041DB3MPN109204_--
