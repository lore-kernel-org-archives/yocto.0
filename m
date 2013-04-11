Return-Path: <jonas.l.jonsson@ericsson.com>
Received: from mailgw7.ericsson.se (mailgw7.ericsson.se [193.180.251.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE43FE014AD
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 06:19:36 -0700 (PDT)
X-AuditID: c1b4fb30-b7f266d000000cb5-30-5166b8666be5
Received: from ESESSHC006.ericsson.se (Unknown_Domain [153.88.253.125])
	by mailgw7.ericsson.se (Symantec Mail Security) with SMTP id
	00.0D.03253.668B6615; Thu, 11 Apr 2013 15:19:35 +0200 (CEST)
Received: from ESESSMB305.ericsson.se ([169.254.5.61]) by
	ESESSHC006.ericsson.se ([153.88.183.36]) with mapi id 14.02.0318.004;
	Thu, 11 Apr 2013 15:19:34 +0200
From: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
To: "Yocto Mailinglist (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Thread-Topic: SSTATE_MIRRORS problems, libpthread.so.0 not found ...
Thread-Index: Ac42rJkEkKAXSqW7TdqCiG6ESQwhpQ==
Date: Thu, 11 Apr 2013 13:19:34 +0000
Message-ID: <0342A6AD36648742A199353A51DDC70311546C9C@ESESSMB305.ericsson.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [153.88.183.19]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKLMWRmVeSWpSXmKPExsUyM+JvrW76jrRAg1mnmSwmvVzD5sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoEro23vDfaCD1YVJ27sYmpg3GPcxcjJISFgIrFow3x2CFtM4sK9
	9WxdjFwcQgKHGSU+zNrGCJIQEljMKPGzwxnEZgNqmLDyJlCcg0NEwFPiygNdkLCwgL3E35kX
	WUBsEQEXiZ0Lr7BD2HoSs/8tZAKxWQRUJabc72cDsXkFfCWmzTwOFmcUkJW4//0eWC+zgLjE
	rSfzmSDuEZBYsuc8M4QtKvHy8T9WCFtRov1pAyNEfb7EhfeXmSBmCkqcnPmEZQKj0Cwko2Yh
	KZuFpAwiriOxYPcnNghbW2LZwtfMMPaZA4+ZkMUXMLKvYmTPTczMSS8338QIDPqDW34b7GDc
	dF/sEKM0B4uSOG+464UAIYH0xJLU7NTUgtSi+KLSnNTiQ4xMHJxSDYzHxLZmnio6y/nPMi98
	5ab2qo5T84RlPHLkOHzdv4cVWj85OV3FSPrL4qPTvs/8x7AkTj6zIK3L6oJW5qmzW+tPM4kf
	S5M78m7lmy+3GYo+Tvbft7I3lOPeE9nNvCqcxXdlTbbcmhd62zCU3dbIL3yeyrr090vM7Hce
	uvRWNm63vtienWVycoeVWIozEg21mIuKEwHOLtieSAIAAA==
Subject: SSTATE_MIRRORS problems, libpthread.so.0 not found ...
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
X-List-Received-Date: Thu, 11 Apr 2013 13:19:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0342A6AD36648742A199353A51DDC70311546C9CESESSMB305erics_"

--_000_0342A6AD36648742A199353A51DDC70311546C9CESESSMB305erics_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi!

I'm building several different Raspberry Pi images that are almost the same=
, some configuration issues (ip-address, hostnames etc) differs on those di=
fferent images.  My solution was to simply build a 'clean' image without an=
y tweaking, then use all the packages from the 'clean' image via SSTATE_MIR=
RORS and build my images with their own peculiarities.  The 'clean' image i=
s basically a 'core-image-minimal' image (rpi-hwup-image for Raspberry Pi).

So in 'clean' I have the sstate-cache, and in the other configurations, I s=
et up
SSTATE_MIRRORS ?=3D "file://.* file:///home/foobar/clean/sstate-cache/PATH<=
file:///\\.*%20file:\home\foobar\clean\sstate-cache\PATH>"
in my local.conf ....  It works like a charm with regards to speed and disk=
-space.

The package that I've built builds clean without any warnings in the 'clean=
' build.  However, if I don't build my package in the clean image, but in o=
ne of my 'configured' images, it fails.  All of a sudden, the linker can't =
find neither /lib/libpthread.so.0 nor /usr/lib/libpthread_nonshared.a :(

buildfolder/tmp/sysroots/raspberrypi > ls -ll lib/libpthread.so.0 usr/lib/l=
ibpthread_nonshared.a lib/libpthread-2.17.so
-rwxr-xr-x 1 foobar bitbakers 960802 Apr 11 12:47 lib/libpthread-2.17.so
lrwxrwxrwx 1 foobar bitbakers     18 Apr 11 12:47 lib/libpthread.so.0 -> li=
bpthread-2.17.so
-rw-r--r-- 1 foobar bitbakers   3376 Apr 11 12:47 usr/lib/libpthread_nonsha=
red.a

What's going on here?  The sysroot (for the GNU tools) points to the correc=
t folder, and the project is a standard autotools project, thus no magic in=
volved.  Is there any particular dependency that I must set up in order to =
use pthreads?

Any ideas?  By the way, I'm on poky/master (march 7:th), 'git log -n 1' sho=
ws '6d9a3ac0515380d0789ee3d316c08212592a6f9a' (if that's interesting...)

Best regards,
Jonas Jonsson

--_000_0342A6AD36648742A199353A51DDC70311546C9CESESSMB305erics_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m building several different Raspberry Pi im=
ages that are almost the same, some configuration issues (ip-address, hostn=
ames etc) differs on those different images.&nbsp; My solution was to simpl=
y build a &#8216;clean&#8217; image without any tweaking,
 then use all the packages from the &#8216;clean&#8217; image via SSTATE_MI=
RRORS and build my images with their own peculiarities.&nbsp; The &#8216;cl=
ean&#8217; image is basically a &#8216;core-image-minimal&#8217; image (rpi=
-hwup-image for Raspberry Pi).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So in &#8216;clean&#8217; I have the sstate-cache, a=
nd in the other configurations, I set up
<o:p></o:p></p>
<p class=3D"MsoNormal">SSTATE_MIRRORS ?=3D &#8220;<a href=3D"file:///\\.*%2=
0file:\home\foobar\clean\sstate-cache\PATH">file://.* file:///home/foobar/c=
lean/sstate-cache/PATH</a>&#8221;
<o:p></o:p></p>
<p class=3D"MsoNormal">in my local.conf &#8230;.&nbsp; It works like a char=
m with regards to speed and disk-space.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The package that I&#8217;ve built builds clean witho=
ut any warnings in the &#8216;clean&#8217; build.&nbsp; However, if I
<u>don&#8217;t</u> build my package in the clean image, but in one of my &#=
8216;configured&#8217; images, it fails.&nbsp; All of a sudden, the linker =
can&#8217;t find neither /lib/libpthread.so.0 nor /usr/lib/libpthread_nonsh=
ared.a
<span style=3D"font-family:Wingdings">L</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">buildfolder/tmp/sysroots/raspberrypi &gt; ls -ll lib/libpth=
read.so.0 usr/lib/libpthread_nonshared.a lib/libpthread-2.17.so
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">-rwxr-xr-x 1 foobar bitbakers 960802 Apr 11 12:47 lib/libpt=
hread-2.17.so<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">lrwxrwxrwx 1 foobar bitbakers&nbsp;&nbsp;&nbsp;&nbsp; 18 Ap=
r 11 12:47 lib/libpthread.so.0 -&gt; libpthread-2.17.so<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">-rw-r--r-- 1 foobar bitbakers&nbsp;&nbsp; 3376 Apr 11 12:47=
 usr/lib/libpthread_nonshared.a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">What&#8217;s going on here?&nbsp; The sysroot (for t=
he GNU tools) points to the correct folder, and the project is a standard a=
utotools project, thus no magic involved.&nbsp; Is there any particular dep=
endency that I must set up in order to use pthreads?&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any ideas?&nbsp; By the way, I&#8217;m on poky/maste=
r (march 7:th), &#8216;git log &#8211;n 1&#8217; shows &#8216;6d9a3ac051538=
0d0789ee3d316c08212592a6f9a&#8217; (if that&#8217;s interesting&#8230;)<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jonas Jonsson<o:p></o:p></p>
</div>
</body>
</html>

--_000_0342A6AD36648742A199353A51DDC70311546C9CESESSMB305erics_--
