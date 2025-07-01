Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92454C7EE30
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 20:52:18 +0000 (UTC)
Subject: native/nativesdk class is not inherited last, this can result in unexpected behaviour. Classes inherited after native/nativesdk: externalsrc.bbclass  #native
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Jul 2025 13:52:12 -0700
Message-ID: <uOrF.1751403132156744154.PTOk@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yLxMHN4XIcUI1fluDJ02"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 20:52:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65585

--yLxMHN4XIcUI1fluDJ02
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm not sure how 'last' it can go(I've tried all over the file as well as '=
include cmake native').

LICENSE =3D "Apache-2.0 & Unknown"
LIC_FILES_CHKSUM =3D "file://rsrc/web/superdrive/js/maintenance/license-inf=
o.vue;beginline=3D1;endline=3D12;md5=3D7be1996bb1ef1d6d65a4ad958225c03b \
file://rsrc/web/superdrive/js/maintenance/license-widget.vue;beginline=3D1;=
endline=3D12;md5=3Dd2bdd567562ac064f86503aaee72564b \
file://rsrc/web/superdrive/js/welcome/initial-license.vue;beginline=3D1;end=
line=3D12;md5=3D2da718677e119ed1c983d7d22608223b"
SRC_URI =3D "git://git@lco-sw-github-prod.colo.seagate.com/Joseph-Maniaci/m=
clinux_yocto.git;protocol=3Dssh;branch=3Dmain"
inherit cmake
# Modify these as desired
PV =3D "1.0+git"
SRCREV =3D "${AUTOREV}"
S =3D "${WORKDIR}/git"
OECMAKE_CXX_FLAGS:remove =3D "-D_FORTIFY_SOURCE=3D2"
do_configure () {
cd ${S} && . ./sourceme.env ${MC_APP_ARGS} && cd - && cmake_do_configure
}
do_compile () {
cmake_do_compile langLookup
}
inherit =C2=A0native

FULL MSG: WARNING: /home/user/eps-yocto/build/exos-x-vanadium-bmc/workspace=
/recipes/lang-lookup-util-native/lang-lookup-util-native_git.bb: QA Issue: =
lang-lookup-util-native: native/nativesdk class is not inherited last, this=
 can result in unexpected behaviour. Classes inherited after native/natives=
dk: externalsrc.bbclass [native-last]

Clue: I found externalsrc.bbclass which gives hints to it being something '=
inherit'able. I'm just not sure why it's being inherited.

--yLxMHN4XIcUI1fluDJ02
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm not sure how 'last' it can go(I've tried all over the file as well=
 as 'include cmake native').<br /><br />
<div><br />LICENSE =3D "Apache-2.0 &amp; Unknown"<br />LIC_FILES_CHKSUM =3D=
 "file://rsrc/web/superdrive/js/maintenance/license-info.vue;beginline=3D1;=
endline=3D12;md5=3D7be1996bb1ef1d6d65a4ad958225c03b \<br />&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file://rsrc/web/super=
drive/js/maintenance/license-widget.vue;beginline=3D1;endline=3D12;md5=3Dd2=
bdd567562ac064f86503aaee72564b \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; file://rsrc/web/superdrive/js/welcome/init=
ial-license.vue;beginline=3D1;endline=3D12;md5=3D2da718677e119ed1c983d7d226=
08223b"</div>
<div>SRC_URI =3D "git://git@lco-sw-github-prod.colo.seagate.com/Joseph-Mani=
aci/mclinux_yocto.git;protocol=3Dssh;branch=3Dmain"</div>
<div>inherit cmake</div>
<div># Modify these as desired<br />PV =3D "1.0+git"<br />SRCREV =3D "${AUT=
OREV}"<br />S =3D "${WORKDIR}/git"</div>
<div>OECMAKE_CXX_FLAGS:remove =3D "-D_FORTIFY_SOURCE=3D2"</div>
<div>do_configure () {<br />&nbsp; &nbsp; cd ${S} &amp;&amp; . ./sourceme.e=
nv ${MC_APP_ARGS} &amp;&amp; cd - &amp;&amp; cmake_do_configure&nbsp;<br />=
}</div>
<div>do_compile () {<br />&nbsp; &nbsp; cmake_do_compile langLookup<br />}<=
/div>
<div>inherit &nbsp;native</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>FULL MSG: WARNING: /home/user/eps-yocto/build/exos-x-vanadium-bmc/work=
space/recipes/lang-lookup-util-native/lang-lookup-util-native_git.bb: QA Is=
sue: lang-lookup-util-native: native/nativesdk class is not inherited last,=
 this can result in unexpected behaviour. Classes inherited after native/na=
tivesdk: externalsrc.bbclass [native-last]</div>
<div>&nbsp;</div>
<div>Clue: I found externalsrc.bbclass which gives hints to it being someth=
ing 'inherit'able. I'm just not sure why it's being inherited.</div>
</div>

--yLxMHN4XIcUI1fluDJ02--

