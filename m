Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41BD6E01479
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 07:30:12 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id f12so8106471wgh.14
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 07:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1/RW1KibRj/uxwRoF9qG/PS5c2rmpq82p38Gk9RFt+Y=;
	b=VpuTyyuhxlEZjRmPZGZ/s36yFbYgZOFp7aK49MaBuUVgBQXeT5SFY++Ed58nCyGDm+
	Yx/AlHv1ZGwnxcZBAPN9/r+A73ABs0ErJ7NbwuGRb5RsWNUSGRrCNdKT0sfhZhiL+Lmj
	oGII6t4kOX7/R93KFqb7pfEJhyFgG9PcTkUX/KWgoFsw28135DSsj4cEP+2WQLe0t8q9
	o1zBRmJDB0NyPF6OcA02+YztD0XaaTpkJH6L0CP7oYkRR5NocoQVR55n74LP6j0zdz/F
	5xo2HQm26UaRbSlPdgzlVRjf3Y9Xb5fchG8qNwQAN8k34TqBf95YxEMn8QZVwbjXXur0
	RMbQ==
MIME-Version: 1.0
X-Received: by 10.194.110.138 with SMTP id ia10mr1825644wjb.3.1378909810494;
	Wed, 11 Sep 2013 07:30:10 -0700 (PDT)
Received: by 10.227.144.138 with HTTP; Wed, 11 Sep 2013 07:30:10 -0700 (PDT)
Date: Wed, 11 Sep 2013 20:00:10 +0530
Message-ID: <CABHD4K9QJO=OOojPX4KmHXBMgfDK1wX-nWasJ82CL3m1ZzoZUg@mail.gmail.com>
From: amit tomer <amittomer25@gmail.com>
To: yocto@yoctoproject.org
Subject: How to change machine name in yocto
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
X-List-Received-Date: Wed, 11 Sep 2013 14:30:13 -0000
Content-Type: multipart/alternative; boundary=047d7bf10aa86e955104e61c7599

--047d7bf10aa86e955104e61c7599
Content-Type: text/plain; charset=ISO-8859-1

 I am new to opensource build framework Yocto and have a requirement
wherein wanted to change the machine name ,when I do BITBAKE image-name

Build Configuration:

BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "RedHatEnterpriseServer-5.6"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "pyp-ii"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa15"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "(nobranch):beda5013e46da16a3d76f095869a5a5c5b1bc08a"
meta-linaro-toolchain = "(nobranch):0f679485b945c1b929a44d1865eb517a096ac4ef"
meta-ti           = "(nobranch):3eb71003af3ebb025285493721332111ac581a42

Now MACHIEN name I wanted to change something like k2 from pyp-ii ,I tried
changing it in local.conf file but I am getting error like

ERROR: OE-core's config sanity checker detected a potential
misconfiguration. Either fix the cause of this error or at your own risk
disable the checker (see sanity.conf). Following is the list of potential
problems / advisories:

Please set a valid MACHINE in your local.conf or environment

ERROR: Execution of event handler 'check_sanity_eventhandler' failed

I also tried setting up export MACHINE="k2" but I am getting the same error
message

In my /var/fpwork/tomar_yocto1/snz-yocto/meta-xyz/conf/machine there exist
a pyp-ii.conf file.

I tried renaming it to k2.conf but it also didn't work out.


Can anybody let me know what needs to be done in order to change MACHINE
name here.


Thanks

Amit Singh Tomar

--047d7bf10aa86e955104e61c7599
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin-top:0px;margin-right:0px;margin-bottom:=
1em;margin-left:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;pa=
dding-left:0px;border-top-width:0px;border-right-width:0px;border-bottom-wi=
dth:0px;border-left-width:0px;border-style:initial;border-color:initial;fon=
t-size:14px;vertical-align:baseline;background-image:initial;clear:both;wor=
d-wrap:break-word;color:rgb(0,0,0);font-family:Arial,&#39;Liberation Sans&#=
39;,&#39;DejaVu Sans&#39;,sans-serif;line-height:18px;text-align:left">
=A0I=A0am new to opensource build framework Yocto and have a requirement wh=
erein wanted to change the machine name ,when I do BITBAKE image-name</p><p=
re style=3D"margin-top:0px;margin-bottom:10px;padding-top:5px;padding-right=
:5px;padding-bottom:5px;padding-left:5px;border-top-width:0px;border-right-=
width:0px;border-bottom-width:0px;border-left-width:0px;border-style:initia=
l;border-color:initial;font-size:14px;vertical-align:baseline;background-im=
age:initial;background-color:rgb(238,238,238);font-family:Consolas,Menlo,Mo=
naco,&#39;Lucida Console&#39;,&#39;Liberation Mono&#39;,&#39;DejaVu Sans Mo=
no&#39;,&#39;Bitstream Vera Sans Mono&#39;,&#39;Courier New&#39;,monospace,=
serif;width:auto;max-height:600px;color:rgb(0,0,0);line-height:18px;text-al=
ign:left">
<code style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px=
;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border=
-left-width:0px;border-style:initial;border-color:initial;vertical-align:ba=
seline;background-image:initial;font-family:Consolas,Menlo,Monaco,&#39;Luci=
da Console&#39;,&#39;Liberation Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;B=
itstream Vera Sans Mono&#39;,&#39;Courier New&#39;,monospace,serif">Build C=
onfiguration:

BB_VERSION        =3D &quot;1.18.0&quot;
BUILD_SYS         =3D &quot;x86_64-linux&quot;
NATIVELSBSTRING   =3D &quot;RedHatEnterpriseServer-5.6&quot;
TARGET_SYS        =3D &quot;arm-poky-linux-gnueabi&quot;
MACHINE           =3D &quot;pyp-ii&quot;
DISTRO            =3D &quot;poky&quot;
DISTRO_VERSION    =3D &quot;1.4.1&quot;
TUNE_FEATURES     =3D &quot;armv7a vfp neon callconvention-hard cortexa15&q=
uot;
TARGET_FPU        =3D &quot;vfp-neon&quot;
meta
meta-yocto
meta-yocto-bsp    =3D &quot;(nobranch):beda5013e46da16a3d76f095869a5a5c5b1b=
c08a&quot;
meta-linaro-toolchain =3D &quot;(nobranch):0f679485b945c1b929a44d1865eb517a=
096ac4ef&quot;
meta-ti           =3D &quot;(nobranch):3eb71003af3ebb025285493721332111ac58=
1a42
</code></pre><p style=3D"margin-top:0px;margin-right:0px;margin-bottom:1em;=
margin-left:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;paddin=
g-left:0px;border-top-width:0px;border-right-width:0px;border-bottom-width:=
0px;border-left-width:0px;border-style:initial;border-color:initial;font-si=
ze:14px;vertical-align:baseline;background-image:initial;clear:both;word-wr=
ap:break-word;color:rgb(0,0,0);font-family:Arial,&#39;Liberation Sans&#39;,=
&#39;DejaVu Sans&#39;,sans-serif;line-height:18px;text-align:left">
Now MACHIEN name I wanted to change something like k2 from pyp-ii ,I tried =
changing it in local.conf file but I am getting error like</p><p style=3D"m=
argin-top:0px;margin-right:0px;margin-bottom:1em;margin-left:0px;padding-to=
p:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;border-top-widt=
h:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;=
border-style:initial;border-color:initial;font-size:14px;vertical-align:bas=
eline;background-image:initial;clear:both;word-wrap:break-word;color:rgb(0,=
0,0);font-family:Arial,&#39;Liberation Sans&#39;,&#39;DejaVu Sans&#39;,sans=
-serif;line-height:18px;text-align:left">
ERROR: OE-core&#39;s config sanity checker detected a potential misconfigur=
ation. Either fix the cause of this error or at your own risk disable the c=
hecker (see sanity.conf). Following is the list of potential problems / adv=
isories:</p>
<pre style=3D"margin-top:0px;margin-bottom:10px;padding-top:5px;padding-rig=
ht:5px;padding-bottom:5px;padding-left:5px;border-top-width:0px;border-righ=
t-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:init=
ial;border-color:initial;font-size:14px;vertical-align:baseline;background-=
image:initial;background-color:rgb(238,238,238);font-family:Consolas,Menlo,=
Monaco,&#39;Lucida Console&#39;,&#39;Liberation Mono&#39;,&#39;DejaVu Sans =
Mono&#39;,&#39;Bitstream Vera Sans Mono&#39;,&#39;Courier New&#39;,monospac=
e,serif;width:auto;max-height:600px;color:rgb(0,0,0);line-height:18px;text-=
align:left">
<code style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-lef=
t:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px=
;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border=
-left-width:0px;border-style:initial;border-color:initial;vertical-align:ba=
seline;background-image:initial;font-family:Consolas,Menlo,Monaco,&#39;Luci=
da Console&#39;,&#39;Liberation Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;B=
itstream Vera Sans Mono&#39;,&#39;Courier New&#39;,monospace,serif">Please =
set a valid MACHINE in your local.conf or environment
</code></pre><blockquote style=3D"margin-top:0px;margin-right:0px;margin-bo=
ttom:10px;margin-left:0px;padding-top:10px;padding-right:10px;padding-botto=
m:1px;padding-left:10px;border-top-width:0px;border-right-width:0px;border-=
bottom-width:0px;border-left-width:0px;border-style:initial;border-color:in=
itial;font-size:14px;vertical-align:baseline;background-image:initial;backg=
round-color:rgb(238,238,238);quotes:none;color:rgb(0,0,0);font-family:Arial=
,&#39;Liberation Sans&#39;,&#39;DejaVu Sans&#39;,sans-serif;line-height:18p=
x;text-align:left">
<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:1em;margin-left:0=
px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;bo=
rder-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-le=
ft-width:0px;border-style:initial;border-color:initial;vertical-align:basel=
ine;background-image:initial;background-color:transparent;clear:both;word-w=
rap:break-word">
ERROR: Execution of event handler &#39;check_sanity_eventhandler&#39; faile=
d</p></blockquote><p style=3D"margin-top:0px;margin-right:0px;margin-bottom=
:1em;margin-left:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;p=
adding-left:0px;border-top-width:0px;border-right-width:0px;border-bottom-w=
idth:0px;border-left-width:0px;border-style:initial;border-color:initial;fo=
nt-size:14px;vertical-align:baseline;background-image:initial;clear:both;wo=
rd-wrap:break-word;color:rgb(0,0,0);font-family:Arial,&#39;Liberation Sans&=
#39;,&#39;DejaVu Sans&#39;,sans-serif;line-height:18px;text-align:left">
I also tried setting up=A0<code style=3D"margin-top:0px;margin-right:0px;ma=
rgin-bottom:0px;margin-left:0px;padding-top:1px;padding-right:5px;padding-b=
ottom:1px;padding-left:5px;border-top-width:0px;border-right-width:0px;bord=
er-bottom-width:0px;border-left-width:0px;border-style:initial;border-color=
:initial;vertical-align:baseline;background-image:initial;background-color:=
rgb(238,238,238);font-family:Consolas,Menlo,Monaco,&#39;Lucida Console&#39;=
,&#39;Liberation Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera S=
ans Mono&#39;,&#39;Courier New&#39;,monospace,serif">export MACHINE=3D&quot=
;k2&quot;</code>=A0but I am getting the same error message</p>
<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:1em;margin-left:0=
px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;bo=
rder-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-le=
ft-width:0px;border-style:initial;border-color:initial;font-size:14px;verti=
cal-align:baseline;background-image:initial;clear:both;word-wrap:break-word=
;color:rgb(0,0,0);font-family:Arial,&#39;Liberation Sans&#39;,&#39;DejaVu S=
ans&#39;,sans-serif;line-height:18px;text-align:left">
In my /var/fpwork/tomar_yocto1/snz-yocto/meta-xyz/conf/machine there exist =
a pyp-ii.conf file.</p><p style=3D"margin-top:0px;margin-right:0px;margin-b=
ottom:1em;margin-left:0px;padding-top:0px;padding-right:0px;padding-bottom:=
0px;padding-left:0px;border-top-width:0px;border-right-width:0px;border-bot=
tom-width:0px;border-left-width:0px;border-style:initial;border-color:initi=
al;font-size:14px;vertical-align:baseline;background-image:initial;clear:bo=
th;word-wrap:break-word;color:rgb(0,0,0);font-family:Arial,&#39;Liberation =
Sans&#39;,&#39;DejaVu Sans&#39;,sans-serif;line-height:18px;text-align:left=
">
I tried renaming it to k2.conf but it also didn&#39;t work out.</p><p style=
=3D"margin-top:0px;margin-right:0px;margin-bottom:1em;margin-left:0px;paddi=
ng-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;border-top=
-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width=
:0px;border-style:initial;border-color:initial;font-size:14px;vertical-alig=
n:baseline;background-image:initial;clear:both;word-wrap:break-word;color:r=
gb(0,0,0);font-family:Arial,&#39;Liberation Sans&#39;,&#39;DejaVu Sans&#39;=
,sans-serif;line-height:18px;text-align:left">
<br></p><p style=3D"margin-top:0px;margin-right:0px;margin-bottom:1em;margi=
n-left:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-lef=
t:0px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;b=
order-left-width:0px;border-style:initial;border-color:initial;font-size:14=
px;vertical-align:baseline;background-image:initial;clear:both;word-wrap:br=
eak-word;color:rgb(0,0,0);font-family:Arial,&#39;Liberation Sans&#39;,&#39;=
DejaVu Sans&#39;,sans-serif;line-height:18px;text-align:left">
Can anybody let me know what needs to be done in order to change MACHINE na=
me here.</p><p style=3D"margin-top:0px;margin-right:0px;margin-bottom:1em;m=
argin-left:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding=
-left:0px;border-top-width:0px;border-right-width:0px;border-bottom-width:0=
px;border-left-width:0px;border-style:initial;border-color:initial;font-siz=
e:14px;vertical-align:baseline;background-image:initial;clear:both;word-wra=
p:break-word;color:rgb(0,0,0);font-family:Arial,&#39;Liberation Sans&#39;,&=
#39;DejaVu Sans&#39;,sans-serif;line-height:18px;text-align:left">
<br></p><p style=3D"margin-top:0px;margin-right:0px;margin-bottom:1em;margi=
n-left:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-lef=
t:0px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;b=
order-left-width:0px;border-style:initial;border-color:initial;font-size:14=
px;vertical-align:baseline;background-image:initial;clear:both;word-wrap:br=
eak-word;color:rgb(0,0,0);font-family:Arial,&#39;Liberation Sans&#39;,&#39;=
DejaVu Sans&#39;,sans-serif;line-height:18px;text-align:left">
Thanks</p><p style=3D"margin-top:0px;margin-right:0px;margin-bottom:1em;mar=
gin-left:0px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-l=
eft:0px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px=
;border-left-width:0px;border-style:initial;border-color:initial;font-size:=
14px;vertical-align:baseline;background-image:initial;clear:both;word-wrap:=
break-word;color:rgb(0,0,0);font-family:Arial,&#39;Liberation Sans&#39;,&#3=
9;DejaVu Sans&#39;,sans-serif;line-height:18px;text-align:left">
Amit Singh Tomar</p></div>

--047d7bf10aa86e955104e61c7599--
