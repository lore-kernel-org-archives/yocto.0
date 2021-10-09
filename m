Return-Path: <mrkozmic@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B744DC433EF
	for <webhook@archiver.kernel.org>; Sat,  9 Oct 2021 18:02:43 +0000 (UTC)
Subject: Re: LINUX_VERSION_EXTENSION has no effect #yocto #kernel #dunfell
To: yocto@lists.yoctoproject.org
From: mrkozmic@hotmail.com
X-Originating-Location: Gullaug, Viken, NO (109.247.173.63)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 09 Oct 2021 11:02:43 -0700
References: <25113.1633793588160556369@lists.yoctoproject.org>
In-Reply-To: <25113.1633793588160556369@lists.yoctoproject.org>
Message-ID: <25113.1633802563442807101@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cHv8aDVRncRILWdReBn2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Oct 2021 18:02:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55009

--cHv8aDVRncRILWdReBn2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Bruce,
It's an honor to get help from the author himself!

I'm starting to understand why they have this:

do_configure_prepend() {
cp "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}" "${B}/.config" || bbfata=
l "CONFIG ${KBUILD_DEFCONFIG} NOT FOUND"
}

Since do_kernel_configme() creates the .config file in https://git.yoctopro=
ject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel-yocto.bbclass?h=3Ddunf=
ell#n399
(I can't figure out why it fails to merge in our defconfig)

Then the ${WORKDIR}/defconfig is not used by kernel_do_configure() https://=
git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel.bbclass#n5=
95
So they do the copy of defconfig in do_configure_prepend().

Anyway,=C2=A0 do_kernel_configme() has already been run hence no CONFIG_LOC=
ALVERSION is written to .config

I could just do this:
do_configure_prepend() {
cp "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}" "${B}/.config" || bbfata=
l "CONFIG ${KBUILD_DEFCONFIG} NOT FOUND"
echo "CONFIG_LOCALVERSION=3D\"${LINUX_VERSION_EXTENSION}\"" >> "${B}/.confi=
g"
}

BUT
Your hint make me notice that they did: KCONFIG_MODE=3D"--allnoconfig" whic=
h breaks the config merging.
After changing it to alldefconfig and removing do_configure_prepend it all =
works!

Thank you!

--cHv8aDVRncRILWdReBn2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Bruce,<br />It's an honor to get help from the author himself!<br /><br =
/>I'm starting to understand why they have this:</p>
<p><span style=3D"font-size: 14.6667px; font-family: courier_newregular, co=
urier;">do_configure_prepend() {</span><br style=3D"font-size: 14.6667px;" =
/><span style=3D"font-size: 14.6667px; font-family: courier_newregular, cou=
rier;">&nbsp; &nbsp; &nbsp;cp "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG=
}" "${B}/.config" || bbfatal "CONFIG ${KBUILD_DEFCONFIG} NOT FOUND"</span><=
br style=3D"font-size: 14.6667px;" /><span style=3D"font-size: 14.6667px; f=
ont-family: courier_newregular, courier;">}</span></p>
<p>Since do_kernel_configme() creates the .config file in&nbsp;<a href=3D"h=
ttps://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel-yoc=
to.bbclass?h=3Ddunfell#n399" target=3D"_blank" rel=3D"noopener">https://git=
.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel-yocto.bbclass=
?h=3Ddunfell#n399</a><br />(I can't figure out why it fails to merge in our=
 defconfig)<span style=3D"font-family: 'helvetica neue'; font-size: 11pt;">=
</span></p>
<p><span style=3D"font-family: 'helvetica neue'; font-size: 11pt;">Then the=
&nbsp;<span style=3D"background-color: transparent; color: inherit; white-s=
pace: pre-wrap;">${WORKDIR}/defconfig is not used by </span><span style=3D"=
background-color: transparent; color: inherit; white-space: pre-wrap;">kern=
el_do_configure() </span></span><a href=3D"https://git.yoctoproject.org/cgi=
t/cgit.cgi/poky/tree/meta/classes/kernel.bbclass#n595" target=3D"_blank" re=
l=3D"noopener">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/cl=
asses/kernel.bbclass#n595</a><br />So they do the copy of defconfig in do_c=
onfigure_prepend().&nbsp;</p>
<p>Anyway,&nbsp; do_kernel_configme() has already been run hence no CONFIG_=
LOCALVERSION is written to .config</p>
<p><br />I could just do this:<br /><span style=3D"font-size: 14.6667px; fo=
nt-family: courier_newregular, courier;">do_configure_prepend() {</span><br=
 style=3D"font-size: 14.6667px;" /><span style=3D"font-size: 14.6667px; fon=
t-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp;cp "${S}/arch/$=
{ARCH}/configs/${KBUILD_DEFCONFIG}" "${B}/.config" || bbfatal "CONFIG ${KBU=
ILD_DEFCONFIG} NOT FOUND"<br />&nbsp; &nbsp; &nbsp;<span style=3D"font-size=
: 14px;">echo "CONFIG_LOCALVERSION=3D\"${LINUX_VERSION_EXTENSION}\"" &gt;&g=
t; "${B}/.config"</span><br /></span><span style=3D"font-size: 14.6667px; f=
ont-family: courier_newregular, courier;">}</span></p>
<p>&nbsp;</p>
<div>BUT</div>
<div>Your hint make me notice that they did: KCONFIG_MODE=3D"--allnoconfig"=
 which breaks the config merging.<br />After changing it to alldefconfig an=
d removing do_configure_prepend it all works!<br /><br /></div>
<div>Thank you!</div>
<div>&nbsp;</div>
<p>&nbsp;</p>
<p>&nbsp;</p>

--cHv8aDVRncRILWdReBn2--

