Return-Path: <ccasciato@21sw.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A8D4C19776
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 03:47:06 +0000 (UTC)
Subject: devtool error on "modify" with patches
To: yocto@lists.yoctoproject.org
From: "Clayton Casciato" <ccasciato@21sw.us>
X-Originating-Location: Denver, Colorado, US (174.29.216.122)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 Feb 2025 19:46:56 -0800
Message-ID: <ULf5.1740714416323187991.vYPQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bxFDTBKdGB9VlC6MJm0Y"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 03:47:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64890

--bxFDTBKdGB9VlC6MJm0Y
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have not had success using devtool against recipes with existing patches.
I do not have any modifications to these recipes and they patch and build f=
ine using bitbake.

--

poky$ devtool modify iproute2
[...]
ERROR: Execution of 'git -c user.name=3D\"OpenEmbedded\" -c user.email=3D\"=
oe.patch@oe\" commit -q -m "Initial commit from upstream at version 6.13.0"=
' failed with exit code 128:
error: cannot run ssh-keygen: No such file or directory
error:
fatal: failed to write commit object

ERROR: Logfile of failure stored in: [...]/poky/build/tmp/work/cortexa8hf-n=
eon-poky-linux-gnueabi/iproute2/6.13.0/devtooltmp-jshbjja1/temp/log.do_unpa=
ck.1777032

--

The logfile does not exist:

poky$ ls [...]/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/iprou=
te2/6.13.0/
configure.sstate =C2=A0debugsources.list =C2=A0deploy-rpms =C2=A0deploy-sou=
rce-date-epoch =C2=A0image =C2=A0iproute2-6.13.0 =C2=A0iproute2.spec =C2=A0=
license-destdir =C2=A0package =C2=A0packages-split =C2=A0pkgdata =C2=A0pkgd=
ata-pdata-input =C2=A0pkgdata-sysroot =C2=A0pseudo =C2=A0recipe-sysroot =C2=
=A0recipe-sysroot-native =C2=A0source-date-epoch =C2=A0sources-unpack =C2=
=A0spdx =C2=A0sysroot-destdir =C2=A0temp

--

When using --debug, I see this:

[...]
| DEBUG: Python function devtool_post_unpack finished
ERROR: Extracting source for iproute2 failed

--

Any suggestions?

--bxFDTBKdGB9VlC6MJm0Y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have not had success using devtool against recipes with existing pat=
ches.</div>
<div>I do not have any modifications to these recipes and they patch and bu=
ild fine using bitbake.</div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div>poky$ devtool modify iproute2</div>
<div>[...]</div>
<div>ERROR: Execution of 'git -c user.name=3D\"OpenEmbedded\" -c user.email=
=3D\"oe.patch@oe\" commit -q -m "Initial commit from upstream at version 6.=
13.0"' failed with exit code 128:<br />error: cannot run ssh-keygen: No suc=
h file or directory<br />error: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;&nbsp;<br />fatal: failed to write commit object &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;<br />ERROR: Logfile of failure stored in: [...=
]/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/iproute2/6.13.0/de=
vtooltmp-jshbjja1/temp/log.do_unpack.1777032</div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div>The logfile does not exist:</div>
<div>&nbsp;</div>
<div>poky$ ls [...]/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/=
iproute2/6.13.0/ &nbsp; &nbsp; &nbsp;&nbsp;<br />configure.sstate &nbsp;deb=
ugsources.list &nbsp;deploy-rpms &nbsp;deploy-source-date-epoch &nbsp;image=
 &nbsp;iproute2-6.13.0 &nbsp;iproute2.spec &nbsp;license-destdir &nbsp;pack=
age &nbsp;packages-split &nbsp;pkgdata &nbsp;pkgdata-pdata-input &nbsp;pkgd=
ata-sysroot &nbsp;pseudo &nbsp;recipe-sysroot &nbsp;recipe-sysroot-native &=
nbsp;source-date-epoch &nbsp;sources-unpack &nbsp;spdx &nbsp;sysroot-destdi=
r &nbsp;temp</div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div>When using --debug, I see this:</div>
<div>&nbsp;</div>
<div>[...]</div>
<div>| DEBUG: Python function devtool_post_unpack finished</div>
<div>ERROR: Extracting source for iproute2 failed</div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div>Any suggestions?</div>

--bxFDTBKdGB9VlC6MJm0Y--

