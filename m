Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B27C5AE59
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 21:15:14 +0000 (UTC)
Subject: Re: [yocto] Native recipe still contains non-native compilation flags #bitbake
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Shakopee, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Jun 2025 14:15:05 -0700
References: <1BA2343D-4316-4CAC-96CB-A5FA200240B3@arm.com>
In-Reply-To: <1BA2343D-4316-4CAC-96CB-A5FA200240B3@arm.com>
Message-ID: <15723.1749158105861491410@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9T0pMiGtdCWQLCCUbXTD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 21:15:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65482

--9T0pMiGtdCWQLCCUbXTD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Well so long as I'm not the only one.....

I'm guessing my higher-level layer(s) aren't configured for native builds??=
??

ERROR: app-1.0+git-r0 do_collect_spdx_deps: The sstate manifest for task 'g=
ettext-minimal-native:populate_sysroot' (multilib variant '') could not be =
found.
The pkgarchs considered were: openbmc-arm, openbmc-arm_linuxmint-21.3.
But none of these manifests exists:
/home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/sstate-control/manifest-=
openbmc-arm-gettext-minimal-native.populate_sysroot
/home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/sstate-control/manifest-=
openbmc-arm_linuxmint-21.3-gettext-minimal-native.populate_sysroot

--9T0pMiGtdCWQLCCUbXTD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Well so long as I'm not the only one.....</div>
<div>&nbsp;</div>
<div>I'm guessing my higher-level layer(s) aren't configured for native bui=
lds????<br /><br />ERROR: app-1.0+git-r0 do_collect_spdx_deps: The sstate m=
anifest for task 'gettext-minimal-native:populate_sysroot' (multilib varian=
t '') could not be found.<br />The pkgarchs considered were: openbmc-arm, o=
penbmc-arm_linuxmint-21.3.<br />But none of these manifests exists:<br />&n=
bsp; &nbsp; /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/sstate-contr=
ol/manifest-openbmc-arm-gettext-minimal-native.populate_sysroot<br />&nbsp;=
 &nbsp; /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/sstate-control/m=
anifest-openbmc-arm_linuxmint-21.3-gettext-minimal-native.populate_sysroot<=
/div>

--9T0pMiGtdCWQLCCUbXTD--

