Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7FFC83F1A
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 15:14:04 +0000 (UTC)
Subject: Generating 32-bit x86 native lib while MACHINE is set to ARM(essentially) #bitbake
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Jul 2025 08:14:03 -0700
Message-ID: <kueP.1753110843037649744.XxuE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8hL1MFqCBFnBHSlwuTJi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 15:14:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65690

--8hL1MFqCBFnBHSlwuTJi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So the instructions here ( https://docs.yoctoproject.org/next/dev-manual/li=
braries.html#using-multilib ) are very explicit about using the local.conf =
in my build directory.

I tried adding only:

require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE:virtclass-multilib-lib32 =3D "x86"
BASELIB:virtclass-multilib-lib32 =3D "lib32-openssl-native"

Since the MACHINE is already set at the top with:

MACHINE ??=3D "exos-x-vanadium-bmc"
DISTRO ?=3D "openbmc-phosphor"

Which leads to the following error:

*ERROR: =C2=A0OE-core's config sanity checker detected a potential misconfi=
guration.*
*Either fix the cause of this error or at your own risk disable the checker=
 (see sanity.conf).*
*Following is the list of potential problems / advisories:*
*Toolchain tunings invalid:*
*Tuning 'x86' has no defined features, and cannot be used.*

If I try to add a machine such as MACHINE =3D "x86-base", or "qemux86-64", =
or "arch-x86", all of which have configurations in /meta/conf/machine, I ge=
t an error such as:

*ERROR: =C2=A0OE-core's config sanity checker detected a potential misconfi=
guration.*
*Either fix the cause of this error or at your own risk disable the checker=
 (see sanity.conf).*
*Following is the list of potential problems / advisories:*
*MACHINE=3Dx86-base is invalid. Please set a valid MACHINE in your local.co=
nf, environment or other configuration file.*

The openssl library present is openssl_3.2.1, and looking at its .bb, it ap=
pears to be compatible with all of the necessary targets I'm trying to work=
 with.

Full-ish local.conf

MACHINE ??=3D "exos-x-vanadium-bmc"
DISTRO ?=3D "openbmc-phosphor"
PACKAGE_CLASSES ?=3D "package_rpm"
SANITY_TESTED_DISTROS:append ?=3D " *"
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
USER_CLASSES ?=3D "buildstats"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS ??=3D "\
STOPTASKS,${TMPDIR},1G,100K \
STOPTASKS,${DL_DIR},1G,100K \
STOPTASKS,${SSTATE_DIR},1G,100K \
STOPTASKS,/tmp,100M,100K \
HALT,${TMPDIR},100M,1K \
HALT,${DL_DIR},100M,1K \
HALT,${SSTATE_DIR},100M,1K \
HALT,/tmp,10M,1K"
CONF_VERSION =3D "2"

....

# MACHINE =3D "qemux86-64"
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE: virtclass-multilib-lib32 =3D "x86"
BASELIB: virtclass-multilib-lib32 =3D "lib32-openssl-native"

--8hL1MFqCBFnBHSlwuTJi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So the instructions <a href=3D"https://docs.yoctoproject.org/next/dev-=
manual/libraries.html#using-multilib" target=3D"_blank" rel=3D"noopener">he=
re </a>are very explicit about using the local.conf in my build directory.<=
/div>
<div>&nbsp;</div>
<div>I tried adding only:</div>
<div>&nbsp;</div>
<div>require conf/multilib.conf<br />MULTILIBS =3D "multilib:lib32"<br />DE=
FAULTTUNE:virtclass-multilib-lib32 =3D "x86"<br />BASELIB:virtclass-multili=
b-lib32 =3D "lib32-openssl-native"<br /><br />Since the MACHINE is already =
set at the top with:</div>
<div>&nbsp;</div>
<div>MACHINE ??=3D "exos-x-vanadium-bmc"<br />DISTRO ?=3D "openbmc-phosphor=
"</div>
<div>&nbsp;</div>
<div>Which leads to the following error:<br /><br />
<div><strong>ERROR: &nbsp;OE-core's config sanity checker detected a potent=
ial misconfiguration.</strong><br /><strong>&nbsp; &nbsp; Either fix the ca=
use of this error or at your own risk disable the checker (see sanity.conf)=
.</strong><br /><strong>&nbsp; &nbsp; Following is the list of potential pr=
oblems / advisories:</strong></div>
<div><strong>&nbsp; &nbsp; Toolchain tunings invalid:</strong><br /><strong=
>Tuning 'x86' has no defined features, and cannot be used.</strong></div>
<div>&nbsp;</div>
<div>If I try to add a machine such as MACHINE =3D "x86-base", or "qemux86-=
64", or "arch-x86", all of which have configurations in /meta/conf/machine,=
 I get an error such as:<br /><br />
<div><strong>ERROR: &nbsp;OE-core's config sanity checker detected a potent=
ial misconfiguration.</strong><br /><strong>&nbsp; &nbsp; Either fix the ca=
use of this error or at your own risk disable the checker (see sanity.conf)=
.</strong><br /><strong>&nbsp; &nbsp; Following is the list of potential pr=
oblems / advisories:</strong></div>
<div><strong>&nbsp; &nbsp; MACHINE=3Dx86-base is invalid. Please set a vali=
d MACHINE in your local.conf, environment or other configuration file.</str=
ong></div>
</div>
<div>&nbsp;</div>
<div>The openssl library present is openssl_3.2.1, and looking at its .bb, =
it appears to be compatible with all of the necessary targets I'm trying to=
 work with.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Full-ish local.conf<br /><br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Conso=
las, 'Courier New', monospace; font-weight: normal; font-size: 14px; line-h=
eight: 19px; white-space: pre;">
<div><span style=3D"color: #cccccc;">MACHINE ??=3D </span><span style=3D"co=
lor: #ce9178;">"exos-x-vanadium-bmc"</span></div>
<div><span style=3D"color: #cccccc;">DISTRO ?=3D </span><span style=3D"colo=
r: #ce9178;">"openbmc-phosphor"</span></div>
<div><span style=3D"color: #cccccc;">PACKAGE_CLASSES ?=3D </span><span styl=
e=3D"color: #ce9178;">"package_rpm"</span></div>
<div><span style=3D"color: #cccccc;">SANITY_TESTED_DISTROS:append ?=3D </sp=
an><span style=3D"color: #ce9178;">" *"</span></div>
<div><span style=3D"color: #cccccc;">EXTRA_IMAGE_FEATURES ?=3D </span><span=
 style=3D"color: #ce9178;">"debug-tweaks"</span></div>
<div><span style=3D"color: #cccccc;">USER_CLASSES ?=3D </span><span style=
=3D"color: #ce9178;">"buildstats"</span></div>
<div><span style=3D"color: #569cd6;">PATCHRESOLVE</span><span style=3D"colo=
r: #cccccc;"> =3D </span><span style=3D"color: #ce9178;">"noop"</span></div=
>
<div><span style=3D"color: #cccccc;">BB_DISKMON_DIRS ??=3D </span><span sty=
le=3D"color: #ce9178;">"\</span></div>
<div><span style=3D"color: #ce9178;">&nbsp; &nbsp; STOPTASKS,${TMPDIR},1G,1=
00K \</span></div>
<div><span style=3D"color: #ce9178;">&nbsp; &nbsp; STOPTASKS,${DL_DIR},1G,1=
00K \</span></div>
<div><span style=3D"color: #ce9178;">&nbsp; &nbsp; STOPTASKS,${SSTATE_DIR},=
1G,100K \</span></div>
<div><span style=3D"color: #ce9178;">&nbsp; &nbsp; STOPTASKS,/tmp,100M,100K=
 \</span></div>
<div><span style=3D"color: #ce9178;">&nbsp; &nbsp; HALT,${TMPDIR},100M,1K \=
</span></div>
<div><span style=3D"color: #ce9178;">&nbsp; &nbsp; HALT,${DL_DIR},100M,1K \=
</span></div>
<div><span style=3D"color: #ce9178;">&nbsp; &nbsp; HALT,${SSTATE_DIR},100M,=
1K \</span></div>
<div><span style=3D"color: #ce9178;">&nbsp; &nbsp; HALT,/tmp,10M,1K"</span>=
</div>
<div><span style=3D"color: #569cd6;">CONF_VERSION</span><span style=3D"colo=
r: #cccccc;"> =3D </span><span style=3D"color: #ce9178;">"2"</span></div>
<br />
<div><span style=3D"color: #cccccc;">....</span></div>
<br />
<div><span style=3D"color: #6a9955;"># MACHINE =3D "qemux86-64"</span></div=
>
<div><span style=3D"color: #cccccc;">require conf/multilib.conf</span></div=
>
<div><span style=3D"color: #569cd6;">MULTILIBS</span><span style=3D"color: =
#cccccc;"> =3D </span><span style=3D"color: #ce9178;">"multilib:lib32"</spa=
n></div>
<div><span style=3D"color: #cccccc;">DEFAULTTUNE:</span><span style=3D"colo=
r: #569cd6;">virtclass-multilib-lib32</span><span style=3D"color: #cccccc;"=
> =3D </span><span style=3D"color: #ce9178;">"x86"</span></div>
<div><span style=3D"color: #cccccc;">BASELIB:</span><span style=3D"color: #=
569cd6;">virtclass-multilib-lib32</span><span style=3D"color: #cccccc;"> =
=3D </span><span style=3D"color: #ce9178;">"lib32-openssl-native"</span></d=
iv>
</div>
</div>
<div>&nbsp;</div>
</div>

--8hL1MFqCBFnBHSlwuTJi--

