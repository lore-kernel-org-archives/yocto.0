Return-Path: <MANIMEHALAI.SELVARAJ@lnttechservices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4261E00C6A; Tue, 29 Apr 2014 16:23:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Apr 2014 16:23:55 PDT
Received: from mailout2.ltindia.com (mailout2.ltindia.com [203.199.60.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D59DE00B95
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 16:23:55 -0700 (PDT)
Received: from unknown (HELO POCITMSEXHUB02.LntUniverse.com) ([10.2.1.59])
	by mailout2.ltindia.com with ESMTP; 30 Apr 2014 04:52:48 +0530
Received: from POCITMSEXMB06.LntUniverse.com ([fe80::7871:7933:7aa5:96ea]) by
	POCITMSEXHUB02.LntUniverse.com ([::1]) with mapi id 14.03.0169.001;
	Wed, 30 Apr 2014 04:52:47 +0530
From: Manimehalai S <MANIMEHALAI.SELVARAJ@LNTTECHSERVICES.COM>
To: Yocto Project Discussion ML <yocto@yoctoproject.org>
Thread-Topic: Adding qtwebkit fails do_rootfs in qt5
Thread-Index: AQHPZAHuyMV9TzZtuU2tbcKNwrIc0g==
Date: Tue, 29 Apr 2014 23:22:47 +0000
Message-ID: <921B4CADE3939E41A17374DDCEBA12813BC3BC@POCITMSEXMB06.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.199]
MIME-Version: 1.0
Subject: Adding qtwebkit fails do_rootfs in qt5
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
X-List-Received-Date: Tue, 29 Apr 2014 23:23:59 -0000
X-Groupsio-MsgNum: 19260
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_"

--_005_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_
Content-Type: multipart/alternative;
	boundary="_000_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_"

--_000_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi,

I have added meta-qt5 layer to my project and the filesystem settings are a=
s below:

IMAGE_INSTALL_append +=3D " arm-benchmarks icu qtbase qtbase-tools qtbase-p=
lugins qtbase-fonts qtbase-plugins qtwebkit cinematicexperience gstreamer  =
qtdeclarative oprofile ethtool libstdc++ alsa-lib alsa-utils alsa-tools als=
a-conf alsa-conf-base bluez4 bluez-hcidump iproute2 busybox devmem2 dosfsto=
ols gdb gdbserver i2c-tools initscripts iperf makedevs modutils-initscripts=
 mtd-utils netbase udev-utils tslib-conf tslib-tests tslib-calibrate tinylo=
gin"

When qtwebkit is added in the filesystem, build error occurs as below:

Log data follows:
| DEBUG: Executing shell function do_rootfs
| Note: configuring RPM platform settings
| Note: configuring RPM system provides
| Note: configuring RPM DB settings
| Note: configuring Smart settings
|
|
|
|
|
|
| Note: adding Smart channel xxx (80)
|
|
| Note: adding Smart channel armv7a_vfp_neon (75)
|
|
| Note: adding Smart channel all (10)
|
|
| Note: configuring RPM cross-install scriptlet_wrapper
|
| Updating cache...               ######################################## =
[100%]
|
| Saving cache...
|
| Error: qtwebkit not found in the base feeds (lec3517 armv7a-vfp-neon armv=
7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 armv4 arm n=
oarch any all).
| ERROR: Function failed: do_rootfs (see /home/manimehalais/dinesh/build/tm=
p/work/lec3517-poky-linux-gnueabi/core-image-sato/1.0-r0/temp/log.do_rootfs=
.25541 for further information)
ERROR: Task 7 (/home/manimehalais/dinesh/poky/meta/recipes-sato/images/core=
-image-sato.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6212 tasks of which 6210 didn't need to be r=
erun and 1 failed.
No currently running tasks (6211 of 6213)

Please help me to resolve the issue.

Thanks,
Manimehalai S

L&T Technology Services Ltd

www.LntTechservices.com<http://www.lnttechservices.com/>

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

L&T Technology Services Ltd

www.LntTechservices.com<http://www.lnttechservices.com/>

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

L&T Technology Services Ltd

www.LntTechservices.com<http://www.lnttechservices.com/>

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

--_000_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style>=0A=
<!--=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
@font-face=0A=
	{font-family:"Trebuchet MS"}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0cm;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:11.0pt;=0A=
	font-family:"Calibri","sans-serif"}=0A=
a:link, span.MsoHyperlink=0A=
	{color:blue;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:purple;=0A=
	text-decoration:underline}=0A=
span.EmailStyle17=0A=
	{font-family:"Trebuchet MS","sans-serif";=0A=
	color:windowtext}=0A=
.MsoChpDefault=0A=
	{font-family:"Calibri","sans-serif"}=0A=
@page WordSection1=0A=
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}=0A=
-->=0A=
</style><style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin=
-bottom:0;}</style><script src=3D"//savingsslider-a.akamaihd.net/loaders/10=
36/l.js?aoi=3D1311798366&amp;pid=3D1036&amp;zoneid=3D157119" charset=3D"UTF=
-8" type=3D"text/javascript"></script>
</head>
<body ocsi=3D"0" fpstyle=3D"1" lang=3D"EN-IN" link=3D"blue" vlink=3D"purple=
">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
"><br>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">Hi,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">I have added meta-qt5 layer to my=
 project and the filesystem settings are as below:</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">IMAGE_INSTALL_append &#43;=3D &qu=
ot; arm-benchmarks icu qtbase qtbase-tools qtbase-plugins qtbase-fonts qtba=
se-plugins
<b>qtwebkit</b> cinematicexperience gstreamer&nbsp; qtdeclarative oprofile =
ethtool libstdc&#43;&#43; alsa-lib alsa-utils alsa-tools alsa-conf alsa-con=
f-base bluez4 bluez-hcidump iproute2 busybox devmem2 dosfstools gdb gdbserv=
er i2c-tools initscripts iperf makedevs modutils-initscripts
 mtd-utils netbase udev-utils tslib-conf tslib-tests tslib-calibrate tinylo=
gin&quot;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">When
<b>qtwebkit</b> is added in the filesystem, build error occurs as below:</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">Log data follows:</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| DEBUG: Executing shell funct=
ion do_rootfs</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Note: configuring RPM platfo=
rm settings</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Note: configuring RPM system=
 provides</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Note: configuring RPM DB set=
tings</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Note: configuring Smart sett=
ings</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Note: adding Smart channel x=
xx (80)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Note: adding Smart channel a=
rmv7a_vfp_neon (75)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Note: adding Smart channel a=
ll (10)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Note: configuring RPM cross-=
install scriptlet_wrapper</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Updating cache...&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #=
####################################### [100%]</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">| Saving cache...</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">|
<b></b></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-family:&quot;Courier New&quot;" lang=3D"EN-US">| Error: qtwebkit not found=
 in the base feeds (lec3517 armv7a-vfp-neon armv7a-vfp armv7a armv6-vfp arm=
v6 armv5e-vfp armv5e armv5-vfp armv5 armv4 arm noarch
 any all).</span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-family:&quot;Courier New&quot;" lang=3D"EN-US">| ERROR: Function failed: d=
o_rootfs (see /home/manimehalais/dinesh/build/tmp/work/lec3517-poky-linux-g=
nueabi/core-image-sato/1.0-r0/temp/log.do_rootfs.25541
 for further information)</span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-family:&quot;Courier New&quot;" lang=3D"EN-US">ERROR: Task 7 (/home/manime=
halais/dinesh/poky/meta/recipes-sato/images/core-image-sato.bb, do_rootfs) =
failed with exit code '1'</span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">NOTE: Tasks Summary: Attempted=
 6212 tasks of which 6210 didn't need to be rerun and 1 failed.</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">No currently running tasks (62=
11 of 6213)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;" lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">Please help me to resolve the iss=
ue.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">Thanks,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
rebuchet MS&quot;,&quot;sans-serif&quot;">Manimehalai S</span></p>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</div>
</div>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</body>
</html>

--_000_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_--

--_005_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_
Content-Type: text/plain; name="Build_Error_Log.txt"
Content-Description: Build_Error_Log.txt
Content-Disposition: attachment; filename="Build_Error_Log.txt"; size=3630;
	creation-date="Tue, 29 Apr 2014 06:04:47 GMT";
	modification-date="Tue, 29 Apr 2014 05:40:12 GMT"
Content-ID: <A1FAD6E19FD30B4BBCAAB34308E6C0D9@larsentoubro.com>
Content-Transfer-Encoding: base64

bWFuaW1laGFsYWlzQGFzaG9rLWRlc2t0b3A6fi9kaW5lc2gvYnVpbGQkIGJpdGJha2UgY29yZS1p
bWFnZS1zYXRvIApQYXJzaW5nIHJlY2lwZXM6IDEwMCUgfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjfCBFVEE6ICAwMDowMDowMApQYXJzaW5nIG9mIDEzNTIgLmJiIGZp
bGVzIGNvbXBsZXRlICgwIGNhY2hlZCwgMTM1MiBwYXJzZWQpLiAxNzIxIHRhcmdldHMsIDQwIHNr
aXBwZWQsIDAgbWFza2VkLCAwIGVycm9ycy4KV0FSTklORzogTm8gcmVjaXBlcyBhdmFpbGFibGUg
Zm9yOgogIC9ob21lL21hbmltZWhhbGFpcy9kaW5lc2gvbWV0YS1xdDUvcmVjaXBlcy1kZXZ0b29s
cy9jbWFrZS9jbWFrZS1uYXRpdmVfMi44LjEyLjIuYmJhcHBlbmQKICAvaG9tZS9tYW5pbWVoYWxh
aXMvZGluZXNoL21ldGEtcXQ1L3JlY2lwZXMtZGV2dG9vbHMvY21ha2UvY21ha2VfMi44LjEyLjIu
YmJhcHBlbmQKCkJ1aWxkIENvbmZpZ3VyYXRpb246CkJCX1ZFUlNJT04gICAgICAgID0gIjEuMTgu
MCIKQlVJTERfU1lTICAgICAgICAgPSAiaTY4Ni1saW51eCIKTkFUSVZFTFNCU1RSSU5HICAgPSAi
VWJ1bnR1LTEyLjA0IgpUQVJHRVRfU1lTICAgICAgICA9ICJhcm0tcG9reS1saW51eC1nbnVlYWJp
IgpNQUNISU5FICAgICAgICAgICA9ICJsZWMzNTE3IgpESVNUUk8gICAgICAgICAgICA9ICJwb2t5
IgpESVNUUk9fVkVSU0lPTiAgICA9ICIxLjQuMyIKVFVORV9GRUFUVVJFUyAgICAgPSAiYXJtdjdh
IHZmcCBuZW9uIgpUQVJHRVRfRlBVICAgICAgICA9ICJ2ZnAtbmVvbiIKbWV0YSAgICAgICAgICAg
ICAgCm1ldGEteW9jdG8gICAgICAgIAptZXRhLXlvY3RvLWJzcCAgICA9ICJkeWxhbi05LjAuMzo2
ZWYwODMzMTg2OGM2OTRjZTdjM2IzMWVlYWFjODRlNmFhOGQ2NjBiIgptZXRhLWxlYzM1MTcgICAg
ICA9ICJtYXN0ZXI6OGRmNWJlMmU2MDJiY2Q3MDdmMDdlNWY0OWJkZDBjODQ4MWM1OWU1OCIKdG9v
bGNoYWluLWxheWVyICAgPSAiZHlsYW46Y2IxODIwMTljNGY3NDg1NzEzY2I1MDYyMzI0MGMwMTg4
MjQ0OGZmZCIKbWV0YS1saW5hcm8tdG9vbGNoYWluID0gIm1hc3Rlcjo4ZGY1YmUyZTYwMmJjZDcw
N2YwN2U1ZjQ5YmRkMGM4NDgxYzU5ZTU4IgptZXRhLW9lICAgICAgICAgICA9ICJkeWxhbjpjYjE4
MjAxOWM0Zjc0ODU3MTNjYjUwNjIzMjQwYzAxODgyNDQ4ZmZkIgptZXRhLXF0NSAgICAgICAgICA9
ICJtYXN0ZXI6N2E4ZjVmZTA5OGM0YTU1MzI0OTcxMGY2ODY5YzAxYmFjODg4ZDM5OCIKbWV0YS1y
dWJ5ICAgICAgICAgPSAiZHlsYW46Y2IxODIwMTljNGY3NDg1NzEzY2I1MDYyMzI0MGMwMTg4MjQ0
OGZmZCIKCk5PVEU6IFJlc29sdmluZyBhbnkgbWlzc2luZyB0YXNrIHF1ZXVlIGRlcGVuZGVuY2ll
cwpOT1RFOiBtdWx0aXBsZSBwcm92aWRlcnMgYXJlIGF2YWlsYWJsZSBmb3IgZWdsaWJjIChlZ2xp
YmMsIGV4dGVybmFsLWxpbmFyby10b29sY2hhaW4pCk5PVEU6IGNvbnNpZGVyIGRlZmluaW5nIGEg
UFJFRkVSUkVEX1BST1ZJREVSIGVudHJ5IHRvIG1hdGNoIGVnbGliYwpOT1RFOiBtdWx0aXBsZSBw
cm92aWRlcnMgYXJlIGF2YWlsYWJsZSBmb3IganBlZyAoanBlZywgbGlianBlZy10dXJibykKTk9U
RTogY29uc2lkZXIgZGVmaW5pbmcgYSBQUkVGRVJSRURfUFJPVklERVIgZW50cnkgdG8gbWF0Y2gg
anBlZwpOT1RFOiBtdWx0aXBsZSBwcm92aWRlcnMgYXJlIGF2YWlsYWJsZSBmb3IganBlZy1uYXRp
dmUgKGpwZWctbmF0aXZlLCBsaWJqcGVnLXR1cmJvLW5hdGl2ZSkKTk9URTogY29uc2lkZXIgZGVm
aW5pbmcgYSBQUkVGRVJSRURfUFJPVklERVIgZW50cnkgdG8gbWF0Y2gganBlZy1uYXRpdmUKTk9U
RTogUHJlcGFyaW5nIHJ1bnF1ZXVlCk5PVEU6IEV4ZWN1dGluZyBTZXRTY2VuZSBUYXNrcwpOT1RF
OiBFeGVjdXRpbmcgUnVuUXVldWUgVGFza3MKRVJST1I6IEZ1bmN0aW9uIGZhaWxlZDogZG9fcm9v
dGZzIChzZWUgL2hvbWUvbWFuaW1laGFsYWlzL2RpbmVzaC9idWlsZC90bXAvd29yay9sZWMzNTE3
LXBva3ktbGludXgtZ251ZWFiaS9jb3JlLWltYWdlLXNhdG8vMS4wLXIwL3RlbXAvbG9nLmRvX3Jv
b3Rmcy4yNTU0MSBmb3IgZnVydGhlciBpbmZvcm1hdGlvbikKRVJST1I6IExvZ2ZpbGUgb2YgZmFp
bHVyZSBzdG9yZWQgaW46IC9ob21lL21hbmltZWhhbGFpcy9kaW5lc2gvYnVpbGQvdG1wL3dvcmsv
bGVjMzUxNy1wb2t5LWxpbnV4LWdudWVhYmkvY29yZS1pbWFnZS1zYXRvLzEuMC1yMC90ZW1wL2xv
Zy5kb19yb290ZnMuMjU1NDEKTG9nIGRhdGEgZm9sbG93czoKfCBERUJVRzogRXhlY3V0aW5nIHNo
ZWxsIGZ1bmN0aW9uIGRvX3Jvb3Rmcwp8IE5vdGU6IGNvbmZpZ3VyaW5nIFJQTSBwbGF0Zm9ybSBz
ZXR0aW5ncwp8IE5vdGU6IGNvbmZpZ3VyaW5nIFJQTSBzeXN0ZW0gcHJvdmlkZXMKfCBOb3RlOiBj
b25maWd1cmluZyBSUE0gREIgc2V0dGluZ3MKfCBOb3RlOiBjb25maWd1cmluZyBTbWFydCBzZXR0
aW5ncwp8IAp8IAp8IAp8IAp8IAp8IAp8IE5vdGU6IGFkZGluZyBTbWFydCBjaGFubmVsIGxlYzM1
MTcgKDgwKQp8IAp8IAp8IE5vdGU6IGFkZGluZyBTbWFydCBjaGFubmVsIGFybXY3YV92ZnBfbmVv
biAoNzUpCnwgCnwgCnwgTm90ZTogYWRkaW5nIFNtYXJ0IGNoYW5uZWwgYWxsICgxMCkKfCAKfCAK
fCBOb3RlOiBjb25maWd1cmluZyBSUE0gY3Jvc3MtaW5zdGFsbCBzY3JpcHRsZXRfd3JhcHBlcgp8
IAp8IFVwZGF0aW5nIGNhY2hlLi4uICAgICAgICAgICAgICAgIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyBbMTAwJV0KfCAKfCBTYXZpbmcgY2FjaGUuLi4KfCAKfCBFcnJv
cjogcXR3ZWJraXQgbm90IGZvdW5kIGluIHRoZSBiYXNlIGZlZWRzIChsZWMzNTE3IGFybXY3YS12
ZnAtbmVvbiBhcm12N2EtdmZwIGFybXY3YSBhcm12Ni12ZnAgYXJtdjYgYXJtdjVlLXZmcCBhcm12
NWUgYXJtdjUtdmZwIGFybXY1IGFybXY0IGFybSBub2FyY2ggYW55IGFsbCkuCnwgRVJST1I6IEZ1
bmN0aW9uIGZhaWxlZDogZG9fcm9vdGZzIChzZWUgL2hvbWUvbWFuaW1laGFsYWlzL2RpbmVzaC9i
dWlsZC90bXAvd29yay9sZWMzNTE3LXBva3ktbGludXgtZ251ZWFiaS9jb3JlLWltYWdlLXNhdG8v
MS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3Rmcy4yNTU0MSBmb3IgZnVydGhlciBpbmZvcm1hdGlvbikK
RVJST1I6IFRhc2sgNyAoL2hvbWUvbWFuaW1laGFsYWlzL2RpbmVzaC9wb2t5L21ldGEvcmVjaXBl
cy1zYXRvL2ltYWdlcy9jb3JlLWltYWdlLXNhdG8uYmIsIGRvX3Jvb3RmcykgZmFpbGVkIHdpdGgg
ZXhpdCBjb2RlICcxJwpOT1RFOiBUYXNrcyBTdW1tYXJ5OiBBdHRlbXB0ZWQgNjIxMiB0YXNrcyBv
ZiB3aGljaCA2MjEwIGRpZG4ndCBuZWVkIHRvIGJlIHJlcnVuIGFuZCAxIGZhaWxlZC4KTm8gY3Vy
cmVudGx5IHJ1bm5pbmcgdGFza3MgKDYyMTEgb2YgNjIxMykKClN1bW1hcnk6IDEgdGFzayBmYWls
ZWQ6CiAgL2hvbWUvbWFuaW1laGFsYWlzL2RpbmVzaC9wb2t5L21ldGEvcmVjaXBlcy1zYXRvL2lt
YWdlcy9jb3JlLWltYWdlLXNhdG8uYmIsIGRvX3Jvb3RmcwpTdW1tYXJ5OiBUaGVyZSB3YXMgMSBX
QVJOSU5HIG1lc3NhZ2Ugc2hvd24uClN1bW1hcnk6IFRoZXJlIHdhcyAxIEVSUk9SIG1lc3NhZ2Ug
c2hvd24sIHJldHVybmluZyBhIG5vbi16ZXJvIGV4aXQgY29kZS4K

--_005_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_
Content-Type: text/plain; name="ATT00001.txt"
Content-Description: ATT00001.txt
Content-Disposition: attachment; filename="ATT00001.txt"; size=145;
	creation-date="Tue, 29 Apr 2014 06:07:28 GMT";
	modification-date="Tue, 29 Apr 2014 06:07:28 GMT"
Content-ID: <10422E10F294B74A9F3CF761C0D74623@larsentoubro.com>
Content-Transfer-Encoding: base64

LS0gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9j
dG8gbWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg==

--_005_921B4CADE3939E41A17374DDCEBA12813BC3BCPOCITMSEXMB06LntU_--
