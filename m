Return-Path: <christian.leeb@hitachienergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557A2D2A552
	for <webhook@archiver.kernel.org>; Thu,  4 Dec 2025 21:41:50 +0000 (UTC)
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo is found in DL_DIR
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: christian.leeb@hitachienergy.com
X-Originating-Location: Zurich, CH (147.161.246.94)
X-Originating-Platform: Windows Edge 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Dec 2025 13:41:45 -0800
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org> <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com>
In-Reply-To: <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com>
Message-ID: <96936.1764884505239996619@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="k97tyyMpfPdOo5WAmzzu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Dec 2025 21:41:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66090

--k97tyyMpfPdOo5WAmzzu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using Yocto 4.0, kirkstone.

We set
URI is git://dev.azure.com/PG-CT/PGLinux/_git/pg-linux;protocol=3Dhttps;bra=
nch=3Dpg-am57xx-ti-rt-linux-5.4.106
SRCREV=3D"7818dfe57e1d1e2d2eaf039d1231560611811d67"
BRANCH=3D"pg-am57xx-ti-rt-linux-5.4.106"

The DL_DIR contains above repo (git2/dev.azure.com.PG-CT.PGLinux._git.pg-li=
nux) and above branch but just not the latest commit of this branch.
Also, between
recipe linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10: task =
do_fetch: Started
and
recipe linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10: task =
do_fetch: Succeeded
there is only a few seconds. Another proof IMHO that there was no network a=
ccess.

Fetch works properly if the repo is not present at all in the DL_DIR.

I also check if shallow clone is set: seems that this is not the case unles=
s there is some other setting to consider.

bitbake virtual/kernel -e | grep ^BB_GIT_SHALLOW
BB_GIT_SHALLOW:pn-binutils=3D"1"
BB_GIT_SHALLOW:pn-binutils-cross-arm=3D"1"
BB_GIT_SHALLOW:pn-binutils-cross-canadian-arm=3D"1"
BB_GIT_SHALLOW:pn-binutils-cross-testsuite=3D"1"
BB_GIT_SHALLOW:pn-binutils-crosssdk-x86_64-spark-linux=3D"1"
BB_GIT_SHALLOW:pn-binutils-native=3D"1"
BB_GIT_SHALLOW:pn-glibc=3D"1"

In addition I got this info from the internet:
Why do_fetch didn=E2=80=99t update the repo:
BitBake=E2=80=99s fetcher logic:
If the repo exists in DL_DIR and the SRCREV is marked as available (based o=
n metadata), it skips network fetch.
It doesn=E2=80=99t *verify the actual commit presence during do_fetch* =E2=
=80=94that check happens in do_unpack.
So the 2-second fetch means it reused the cached repo without pulling new c=
ommits.

I wonder what it means " SRCREV is marked as available (based on metadata) =
". It's obviously not there.

Thanks a lot for your support.

Chris

--k97tyyMpfPdOo5WAmzzu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm using Yocto 4.0, kirkstone.</div>
<div>&nbsp;</div>
<div>We set<br />URI is git://dev.azure.com/PG-CT/PGLinux/_git/pg-linux;pro=
tocol=3Dhttps;branch=3Dpg-am57xx-ti-rt-linux-5.4.106</div>
<div>SRCREV=3D"7818dfe57e1d1e2d2eaf039d1231560611811d67"</div>
<div>BRANCH=3D"pg-am57xx-ti-rt-linux-5.4.106"</div>
<div><br />The DL_DIR contains above repo (git2/dev.azure.com.PG-CT.PGLinux=
._git.pg-linux) and above branch but just not the latest commit of this bra=
nch.</div>
<div>Also, between&nbsp;</div>
<div><span style=3D"color: #242424; font-family: courier; font-size: 14px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial; display: inline !important; float: none;">recipe=
 linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10: task do_fet=
ch: Started</span></div>
<div><span style=3D"color: #242424; font-family: system-ui, 'helvetica neue=
'; font-size: 14px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial; float: none; display: inline=
 !important;">and</span></div>
<div><span style=3D"color: #242424; font-family: courier; font-size: 14px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial; display: inline !important; float: none;"><span =
style=3D"color: #242424; font-family: courier; font-size: 14px; font-style:=
 normal; font-variant-ligatures: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; white-space: normal; background-color: #ffffff; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoration-=
color: initial; display: inline !important; float: none;">recipe linux-ti-s=
taging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10: task do_fetch: Succeed=
ed</span></span></div>
<div><span style=3D"color: #242424; font-family: system-ui, 'helvetica neue=
'; font-size: 14px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial; float: none; display: inline=
 !important;"><span style=3D"color: #242424; font-size: 14px; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; white-space: normal; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial; float: none; display: inline !important;">there is only a few=
 seconds. Another proof IMHO that there was no network access.<br /><br />F=
etch works properly if the repo is not present at all in the DL_DIR.<br /><=
br />I also check if shallow clone is set: seems that this is not the case =
unless there is some other setting to consider.<br /><br />bitbake virtual/=
kernel -e | grep ^BB_GIT_SHALLOW<br />BB_GIT_SHALLOW:pn-binutils=3D"1"<br /=
>BB_GIT_SHALLOW:pn-binutils-cross-arm=3D"1"<br />BB_GIT_SHALLOW:pn-binutils=
-cross-canadian-arm=3D"1"<br />BB_GIT_SHALLOW:pn-binutils-cross-testsuite=
=3D"1"<br />BB_GIT_SHALLOW:pn-binutils-crosssdk-x86_64-spark-linux=3D"1"<br=
 />BB_GIT_SHALLOW:pn-binutils-native=3D"1"<br />BB_GIT_SHALLOW:pn-glibc=3D"=
1"<br /></span></span></div>
<div><span style=3D"color: #242424; font-family: system-ui, 'helvetica neue=
'; font-size: 14px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial; float: none; display: inline=
 !important;"><span style=3D"color: #242424; font-family: system-ui, 'helve=
tica neue'; font-size: 14px; font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: norm=
al; background-color: #ffffff; text-decoration-thickness: initial; text-dec=
oration-style: initial; text-decoration-color: initial; float: none; displa=
y: inline !important;"><span style=3D"color: #242424; font-size: 14px; font=
-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; te=
xt-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; te=
xt-decoration-thickness: initial; text-decoration-style: initial; text-deco=
ration-color: initial; float: none; display: inline !important;"><br />In a=
ddition I got this info from the internet:<br /></span></span></span>
<div><em>Why do_fetch didn&rsquo;t update the repo:</em><br /><em>BitBake&r=
squo;s fetcher logic:</em></div>
<div><em>If the repo exists in DL_DIR and the SRCREV is marked as available=
 (based on metadata), it skips network fetch.</em><br /><em>It doesn&rsquo;=
t <strong>verify the actual commit presence during do_fetch</strong>&mdash;=
that check happens in do_unpack.</em></div>
<div><em>So the 2-second fetch means it reused the cached repo without pull=
ing new commits.</em></div>
<span style=3D"color: #242424; font-family: system-ui, 'helvetica neue'; fo=
nt-size: 14px; font-style: normal; font-variant-ligatures: normal; font-var=
iant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; te=
xt-align: start; text-indent: 0px; text-transform: none; widows: 2; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background=
-color: #ffffff; text-decoration-thickness: initial; text-decoration-style:=
 initial; text-decoration-color: initial; float: none; display: inline !imp=
ortant;"><span style=3D"color: #242424; font-size: 14px; font-style: normal=
; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px; white-space: normal; background-color: #ffffff; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color: =
initial; float: none; display: inline !important;"><br />I wonder what it m=
eans "<em>SRCREV is marked as available (based on metadata)</em>". It's obv=
iously not there.<br /><br />Thanks a lot for your support.<br /><br />Chri=
s<br /><br /></span></span></div>

--k97tyyMpfPdOo5WAmzzu--

