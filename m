Return-Path: <gjp1g21@soton.ac.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C7F8C4167B
	for <webhook@archiver.kernel.org>; Thu, 30 Nov 2023 17:36:44 +0000 (UTC)
Subject: help: gobject-introspection build error #raspberrypi
To: yocto@lists.yoctoproject.org
From: gjp1g21@soton.ac.uk
X-Originating-Location: Southampton, England, GB (152.78.0.22)
X-Originating-Platform: Mac Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 30 Nov 2023 09:36:40 -0800
Message-ID: <HMgc.1701365800369767064.kgta@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bz6QcyDlfMn5Webmdhj4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 17:36:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61781

--bz6QcyDlfMn5Webmdhj4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am at a loss as to why my build is failing. I am building core-image-mini=
mal (for the Raspberry Pi 4) in the Poky Docker container and every time th=
e build for gobject-introspection fails with the following error(s):

FAILED: gir/GLib-2.0.gir
/workdir/poky/build/tmp/work/cortexa72-poky-linux/gobject-introspection/1.7=
8.1/recipe-sysroot/usr/include/glib-2.0/glib/gutils.h:378: syntax error, un=
expected INTEGER, expecting identifier in ' =C2=A0if ((__builtin_expect (__=
extensio.....

A full log file for this can be found at https://pastebin.com/iuavxeJs

If anyone knows why this may be happening - or even where to start looking =
- I would be very thankful!

Many thanks,
George

---
George Peppard (he/they)
Undergraduate, MEng Computer Science
Electronics and Computer Science
University of Southampton

PGP: DC54 E1A7 336D CA37 DD35 CC89 8EA6 B970 558D 5F59 at the Ubuntu keyser=
ver ( https://keyserver.ubuntu.com/ )

--bz6QcyDlfMn5Webmdhj4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"border: 0px; font-variant-numeric: inherit; font-variant-eas=
t-asian: inherit; font-variant-alternates: inherit; font-variant-position: =
inherit; font-stretch: inherit; font-size: 11pt; line-height: inherit; font=
-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing: inheri=
t; font-kerning: inherit; font-feature-settings: inherit; font-variation-se=
ttings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color=
: black;">Hi all,</span><span style=3D"color: #242424; font-family: 'Segoe =
UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-system, 'system-ui'=
, Roboto, 'Helvetica Neue', sans-serif; font-size: 15px;"></span>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">I am at a loss as to why my build is failing. I am buildin=
g core-image-minimal (for the Raspberry Pi 4) in the Poky Docker container =
and every time the build for gobject-introspection fails with the following=
 error(s):</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">FAILED: gir/GLib-2.0.gir</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">/workdir/poky/build/tmp/work/cortexa72-poky-linux/gobject-=
introspection/1.78.1/recipe-sysroot/usr/include/glib-2.0/glib/gutils.h:378:=
 syntax error, unexpected INTEGER, expecting identifier in ' &nbsp;if ((__b=
uiltin_expect (__extensio.....</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">A full log file for this can be found at&nbsp;<a id=3D"LPl=
nkOWAb1f05056-c86f-2f3b-12a4-b278ebf85fda" style=3D"border: 0px; font: inhe=
rit; margin: 0px; padding: 0px; vertical-align: baseline;" href=3D"https://=
pastebin.com/iuavxeJs" target=3D"_blank" rel=3D"noopener noreferrer" data-a=
uth=3D"NotApplicable" data-linkindex=3D"0">https://pastebin.com/iuavxeJs</a=
></span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; line-height: inherit; font-family: i=
nherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-s=
ettings: inherit; font-variation-settings: inherit; margin: 0px; padding: 0=
px; vertical-align: baseline;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">If anyone knows why this may be happening - or even where =
to start looking - I would be very thankful!</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">Many thanks,</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: #242424;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-stretch: inherit; font-size: 11pt; line-height: inheri=
t; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing:=
 inherit; font-kerning: inherit; font-feature-settings: inherit; font-varia=
tion-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline=
; color: black;">George</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 11pt; line-height: inherit; font-=
family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizing: inherit=
; font-kerning: inherit; font-feature-settings: inherit; font-variation-set=
tings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color:=
 black;">&nbsp;</div>
<div id=3D"x_Signature" style=3D"border: 0px; font-variant-numeric: inherit=
; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-=
variant-position: inherit; font-stretch: inherit; font-size: 15px; line-hei=
ght: inherit; font-family: 'Segoe UI', 'Segoe UI Web (West European)', 'Seg=
oe UI', -apple-system, 'system-ui', Roboto, 'Helvetica Neue', sans-serif; f=
ont-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: =
inherit; font-variation-settings: inherit; margin: 0px; padding: 0px; verti=
cal-align: baseline; color: #242424;">
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-weight: inherit; font-stretch: inherit; font-size: 11pt; line-height: inhe=
rit; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizin=
g: inherit; font-kerning: inherit; font-feature-settings: inherit; font-var=
iation-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseli=
ne; color: black;">---</div>
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-weight: inherit; font-stretch: inherit; font-size: 12pt; line-height: inhe=
rit; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizin=
g: inherit; font-kerning: inherit; font-feature-settings: inherit; font-var=
iation-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseli=
ne; color: black;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11p=
t; line-height: inherit; font-family: inherit; font-optical-sizing: inherit=
; font-kerning: inherit; font-feature-settings: inherit; font-variation-set=
tings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color:=
 inherit;">George Peppard (he/they)</span></div>
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-weight: inherit; font-stretch: inherit; font-size: 12pt; line-height: inhe=
rit; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizin=
g: inherit; font-kerning: inherit; font-feature-settings: inherit; font-var=
iation-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseli=
ne; color: black;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11p=
t; line-height: inherit; font-family: inherit; font-optical-sizing: inherit=
; font-kerning: inherit; font-feature-settings: inherit; font-variation-set=
tings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color:=
 inherit;">Undergraduate, MEng Computer Science</span></div>
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-weight: inherit; font-stretch: inherit; font-size: 12pt; line-height: inhe=
rit; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizin=
g: inherit; font-kerning: inherit; font-feature-settings: inherit; font-var=
iation-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseli=
ne; color: black;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11p=
t; line-height: inherit; font-family: inherit; font-optical-sizing: inherit=
; font-kerning: inherit; font-feature-settings: inherit; font-variation-set=
tings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color:=
 inherit;">Electronics and Computer Science</span></div>
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-weight: inherit; font-stretch: inherit; font-size: 12pt; line-height: inhe=
rit; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizin=
g: inherit; font-kerning: inherit; font-feature-settings: inherit; font-var=
iation-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseli=
ne; color: black;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11p=
t; line-height: inherit; font-family: inherit; font-optical-sizing: inherit=
; font-kerning: inherit; font-feature-settings: inherit; font-variation-set=
tings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color:=
 inherit;">University of Southampton</span></div>
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-weight: inherit; font-stretch: inherit; font-size: 12pt; line-height: inhe=
rit; font-family: Calibri, Arial, Helvetica, sans-serif; font-optical-sizin=
g: inherit; font-kerning: inherit; font-feature-settings: inherit; font-var=
iation-settings: inherit; margin: 0px; padding: 0px; vertical-align: baseli=
ne; color: black;"><span style=3D"border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11p=
t; line-height: inherit; font-family: inherit; font-optical-sizing: inherit=
; font-kerning: inherit; font-feature-settings: inherit; font-variation-set=
tings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color:=
 inherit;">&nbsp;</span></div>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;"><span style=3D"border: 0px; font-style=
: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inher=
it; font-size: 11pt; line-height: inherit; font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; fo=
nt-feature-settings: inherit; font-variation-settings: inherit; margin: 0px=
; padding: 0px; vertical-align: baseline; color: black;">PGP:&nbsp;</span><=
span style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-weight: inherit; font-stretch: inherit; font-size: 11pt; line-height: inhe=
rit; font-family: Consolas, Courier, monospace; font-optical-sizing: inheri=
t; font-kerning: inherit; font-feature-settings: inherit; font-variation-se=
ttings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color=
: black;">DC54 E1A7 336D CA37 DD35 CC89 8EA6 B970 558D 5F59</span><span sty=
le=3D"border: 0px; font-style: inherit; font-variant: inherit; font-weight:=
 inherit; font-stretch: inherit; font-size: 11pt; line-height: inherit; fon=
t-family: Calibri, Helvetica, sans-serif; font-optical-sizing: inherit; fon=
t-kerning: inherit; font-feature-settings: inherit; font-variation-settings=
: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color: blac=
k;">&nbsp;</span><span style=3D"border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11pt;=
 line-height: inherit; font-family: Calibri, Arial, Helvetica, sans-serif; =
font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings:=
 inherit; font-variation-settings: inherit; margin: 0px; padding: 0px; vert=
ical-align: baseline; color: black;">at the&nbsp;<a style=3D"border: 0px; f=
ont: inherit; margin: 0px; padding: 0px; vertical-align: baseline;" title=
=3D"https://keyserver.ubuntu.com" href=3D"https://keyserver.ubuntu.com/" ta=
rget=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" dat=
a-linkindex=3D"1">Ubuntu keyserver</a></span></div>
</div>

--bz6QcyDlfMn5Webmdhj4--

