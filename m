Return-Path: <vaijayanthi@silver-peak.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AF40C3A5A7
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 22:21:24 +0000 (UTC)
Subject: Re: Building a dhcp recipe separately for dhcrelay and dhclient #yocto
To: yocto@lists.yoctoproject.org
From: "Vaijayanthi" <vaijayanthi@silver-peak.com>
X-Originating-Location: Boston, Massachusetts, US (136.226.79.28)
X-Originating-Platform: Mac Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 06 Dec 2022 14:21:14 -0800
References: <CAMKF1soGfZjXEczuMTvD=kWR=Ns4RcnU0QhzJ3SkdUPQ1hJWsg@mail.gmail.com>
In-Reply-To: <CAMKF1soGfZjXEczuMTvD=kWR=Ns4RcnU0QhzJ3SkdUPQ1hJWsg@mail.gmail.com>
Message-ID: <7780.1670365274662325677@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1dv1k4siRB6l7HYoYctO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 22:21:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58744

--1dv1k4siRB6l7HYoYctO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Khem, can you please help explain or give an example of a package th=
at is doing this? If we had separate output packages, are you suggesting we=
 build 3 times- each time after applying a patch related to dhcrelay and dh=
client?

We are somewhat doing this today where binaries dhcrelay and dhclient need =
to be built with different build options and with different patch files.

git apply $WORKSPACE/git-build/dhcrelay.patch

devtool modify dhcp

devtool build dhcp

cp $WORKSPACE/work/poky/build/workspace/sources/ dhcp /relay/dhcrelay $OUR_=
WORKPSACE/ dhcp /dhcrelay

devtool reset dhcp

git apply $WORKSPACE/git-build/dhclient.patch

devtool modify dhcp

devtool build dhcp

cp $WORKSPACE/work/poky/build/workspace/sources/ dhcp /relay/dhclient $OUR_=
WORKPSACE/ dhcp /dhclient

-- Vaijayanthi

--1dv1k4siRB6l7HYoYctO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font-=
family: Calibri, sans-serif; caret-color: #000000; color: #000000; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; orphans: auto; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-=
size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none;" =
style=3D"margin:0px;">Thanks Khem, can you please help explain or give an e=
xample of a package that is doing this? If we had separate output packages,=
 are you suggesting we build 3 times- each time after applying a patch rela=
ted to dhcrelay and dhclient?</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font-=
family: Calibri, sans-serif; caret-color: #000000; color: #000000; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; orphans: auto; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-=
size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none;" =
style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font-=
family: Calibri, sans-serif; caret-color: #000000; color: #000000; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; orphans: auto; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-=
size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none;" =
style=3D"margin:0px;">We are somewhat doing this today where binaries dhcre=
lay and dhclient need to be built with different build options and with dif=
ferent patch files. </p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font-=
family: Calibri, sans-serif; caret-color: #000000; color: #000000; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; orphans: auto; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-=
size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none;" =
style=3D"margin:0px;">=C2=A0</p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span></p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span></p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span>git apply $WORKSPACE/git-build/dhcrelay.patch</p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span><span style=3D"display: inline !important; position:=
 static !important; margin: 0px !important; padding: 0px !important; opacit=
y: 1 !important; float: inherit !important; font-family: inherit !important=
; font-size: inherit !important; font-style: inherit !important; font-varia=
nt-caps: inherit !important; font-weight: inherit !important; font-stretch:=
 inherit !important; line-height: inherit !important;">devtool modify<span =
class=3D"Apple-converted-space">=C2=A0</span><span style=3D"background-colo=
r: #ffee94 !important; color: #070706 !important; display: inline !importan=
t; position: static !important; margin: 0px !important; padding: 0px !impor=
tant; opacity: 1 !important; float: inherit !important; font-family: inheri=
t !important; font-size: inherit !important; font-style: inherit !important=
; font-variant-caps: inherit !important; font-weight: inherit !important; f=
ont-stretch: inherit !important; line-height: inherit !important; backgroun=
d-position: initial initial !important; background-repeat: initial initial =
!important;">dhcp</span></span></p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span><span style=3D"display: inline !important; position:=
 static !important; margin: 0px !important; padding: 0px !important; opacit=
y: 1 !important; float: inherit !important; font-family: inherit !important=
; font-size: inherit !important; font-style: inherit !important; font-varia=
nt-caps: inherit !important; font-weight: inherit !important; font-stretch:=
 inherit !important; line-height: inherit !important;">devtool build<span c=
lass=3D"Apple-converted-space">=C2=A0</span><span style=3D"background-color=
: #ffee94 !important; color: #070706 !important; display: inline !important=
; position: static !important; margin: 0px !important; padding: 0px !import=
ant; opacity: 1 !important; float: inherit !important; font-family: inherit=
 !important; font-size: inherit !important; font-style: inherit !important;=
 font-variant-caps: inherit !important; font-weight: inherit !important; fo=
nt-stretch: inherit !important; line-height: inherit !important; background=
-position: initial initial !important; background-repeat: initial initial !=
important;">dhcp</span></span></p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span><span style=3D"display: inline !important; position:=
 static !important; margin: 0px !important; padding: 0px !important; opacit=
y: 1 !important; float: inherit !important; font-family: inherit !important=
; font-size: inherit !important; font-style: inherit !important; font-varia=
nt-caps: inherit !important; font-weight: inherit !important; font-stretch:=
 inherit !important; line-height: inherit !important;">cp $WORKSPACE/work/p=
oky/build/workspace/sources/<span style=3D"background-color: #ffee94 !impor=
tant; color: #070706 !important; display: inline !important; position: stat=
ic !important; margin: 0px !important; padding: 0px !important; opacity: 1 =
!important; float: inherit !important; font-family: inherit !important; fon=
t-size: inherit !important; font-style: inherit !important; font-variant-ca=
ps: inherit !important; font-weight: inherit !important; font-stretch: inhe=
rit !important; line-height: inherit !important; background-position: initi=
al initial !important; background-repeat: initial initial !important;">dhcp=
</span>/relay/dhcrelay $OUR_WORKPSACE/<span style=3D"background-color: #ffe=
e94 !important; color: #070706 !important; display: inline !important; posi=
tion: static !important; margin: 0px !important; padding: 0px !important; o=
pacity: 1 !important; float: inherit !important; font-family: inherit !impo=
rtant; font-size: inherit !important; font-style: inherit !important; font-=
variant-caps: inherit !important; font-weight: inherit !important; font-str=
etch: inherit !important; line-height: inherit !important; background-posit=
ion: initial initial !important; background-repeat: initial initial !import=
ant;">dhcp</span>/dhcrelay</span></p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;">=C2=A0</p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span><span style=3D"display: inline !important; position:=
 static !important; margin: 0px !important; padding: 0px !important; opacit=
y: 1 !important; float: inherit !important; font-family: inherit !important=
; font-size: inherit !important; font-style: inherit !important; font-varia=
nt-caps: inherit !important; font-weight: inherit !important; font-stretch:=
 inherit !important; line-height: inherit !important;">devtool reset<span c=
lass=3D"Apple-converted-space">=C2=A0</span><span style=3D"background-color=
: #ffee94 !important; color: #070706 !important; display: inline !important=
; position: static !important; margin: 0px !important; padding: 0px !import=
ant; opacity: 1 !important; float: inherit !important; font-family: inherit=
 !important; font-size: inherit !important; font-style: inherit !important;=
 font-variant-caps: inherit !important; font-weight: inherit !important; fo=
nt-stretch: inherit !important; line-height: inherit !important; background=
-position: initial initial !important; background-repeat: initial initial !=
important;">dhcp</span></span></p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span>git apply $WORKSPACE/git-build/dhclient.patch</p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span class=
=3D"apple-converted-space">=C2=A0 =C2=A0<span class=3D"Apple-converted-spac=
e">=C2=A0</span></span><span style=3D"display: inline !important; position:=
 static !important; margin: 0px !important; padding: 0px !important; opacit=
y: 1 !important; float: inherit !important; font-family: inherit !important=
; font-size: inherit !important; font-style: inherit !important; font-varia=
nt-caps: inherit !important; font-weight: inherit !important; font-stretch:=
 inherit !important; line-height: inherit !important;">devtool modify<span =
class=3D"Apple-converted-space">=C2=A0</span><span style=3D"background-colo=
r: #ffee94 !important; color: #070706 !important; display: inline !importan=
t; position: static !important; margin: 0px !important; padding: 0px !impor=
tant; opacity: 1 !important; float: inherit !important; font-family: inheri=
t !important; font-size: inherit !important; font-style: inherit !important=
; font-variant-caps: inherit !important; font-weight: inherit !important; f=
ont-stretch: inherit !important; line-height: inherit !important; backgroun=
d-position: initial initial !important; background-repeat: initial initial =
!important;">dhcp</span></span></p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span style=
=3D"display: inline !important; position: static !important; margin: 0px !i=
mportant; padding: 0px !important; opacity: 1 !important; float: inherit !i=
mportant; font-family: inherit !important; font-size: inherit !important; f=
ont-style: inherit !important; font-variant-caps: inherit !important; font-=
weight: inherit !important; font-stretch: inherit !important; line-height: =
inherit !important;">=C2=A0=C2=A0=C2=A0 devtool build<span class=3D"Apple-c=
onverted-space">=C2=A0</span><span style=3D"background-color: #ffee94 !impo=
rtant; color: #070706 !important; display: inline !important; position: sta=
tic !important; margin: 0px !important; padding: 0px !important; opacity: 1=
 !important; float: inherit !important; font-family: inherit !important; fo=
nt-size: inherit !important; font-style: inherit !important; font-variant-c=
aps: inherit !important; font-weight: inherit !important; font-stretch: inh=
erit !important; line-height: inherit !important; background-position: init=
ial initial !important; background-repeat: initial initial !important;">dhc=
p</span></span></p>
<p class=3D"p1" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span style=
=3D"display: inline !important; position: static !important; margin: 0px !i=
mportant; padding: 0px !important; opacity: 1 !important; float: inherit !i=
mportant; font-family: inherit !important; font-size: inherit !important; f=
ont-style: inherit !important; font-variant-caps: inherit !important; font-=
weight: inherit !important; font-stretch: inherit !important; line-height: =
inherit !important;">=C2=A0=C2=A0=C2=A0 cp $WORKSPACE/work/poky/build/works=
pace/sources/<span style=3D"background-color: #ffee94 !important; color: #0=
70706 !important; display: inline !important; position: static !important; =
margin: 0px !important; padding: 0px !important; opacity: 1 !important; flo=
at: inherit !important; font-family: inherit !important; font-size: inherit=
 !important; font-style: inherit !important; font-variant-caps: inherit !im=
portant; font-weight: inherit !important; font-stretch: inherit !important;=
 line-height: inherit !important; background-position: initial initial !imp=
ortant; background-repeat: initial initial !important;">dhcp</span>/relay/d=
hclient $OUR_WORKPSACE/<span style=3D"background-color: #ffee94 !important;=
 color: #070706 !important; display: inline !important; position: static !i=
mportant; margin: 0px !important; padding: 0px !important; opacity: 1 !impo=
rtant; float: inherit !important; font-family: inherit !important; font-siz=
e: inherit !important; font-style: inherit !important; font-variant-caps: i=
nherit !important; font-weight: inherit !important; font-stretch: inherit !=
important; line-height: inherit !important; background-position: initial in=
itial !important; background-repeat: initial initial !important;">dhcp</spa=
n>/dhclient</span></p>
<p class=3D"p2" style=3D"margin: 0in; font-size: 9pt; font-family: &#39;Hel=
vetica Neue&#39;; caret-color: #000000; color: #000000; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; or=
phans: auto; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust=
: auto; -webkit-text-stroke-width: 0px; text-decoration: none;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font-=
family: Calibri, sans-serif; caret-color: #000000; color: #000000; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; orphans: auto; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-=
size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none;" =
style=3D"margin:0px;">=C2=A0</p>
<div style=3D"caret-color: #000000; color: #000000; font-family: -webkit-st=
andard; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; widows: auto; word-spacing: 0p=
x; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-dec=
oration: none;">
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font-=
family: Calibri, sans-serif;" style=3D"margin:0px;">-- Vaijayanthi</p>
</div>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; font-size: 11pt; font-=
family: Calibri, sans-serif; caret-color: #000000; color: #000000; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; orphans: auto; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-=
size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none;" =
style=3D"margin:0px;">=C2=A0</p>

--1dv1k4siRB6l7HYoYctO--

