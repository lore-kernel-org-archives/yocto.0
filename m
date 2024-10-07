Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08A9FCFB43C
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 05:04:01 +0000 (UTC)
Subject: Yocto Binary Distro
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: Erlangen, Bavaria, DE (147.161.171.73)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 06 Oct 2024 22:03:56 -0700
Message-ID: <fvqD.1728277436421735973.T2Af@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WlvEjKzbLkCsrPKVPtmN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 05:04:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63944

--WlvEjKzbLkCsrPKVPtmN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings!

After watching a talk from Michael Opdenacker from this year's OSS Europe a=
bout Yocto Binary Distros (see [1]), I've been experimenting with installin=
g pre-built packages directly onto the target and I have a few questions re=
garding this topic, maybe someone more experienced could chime in:

1) When I build a recipe previously not installed in my image and want to i=
nstall it during runtime, the dnf install command fails, saying that the pa=
ckage's dependencies are not met (see [2] for more info). This is fine, as =
I can see that the tmp/deploy/rpm directory does not contain all of the pac=
kage's dependencies nor the dependencies' WORKDIRs contain the deploy-rpms =
directory. Is this behavior correct? Shouldn't building a recipe also lead =
that all of its dependencies are not just built but also packaged and put i=
nto the tpm/deploy/rpm directory (the same as with building the image conta=
ining the package in question)?

2) Is there an official, stable, and not some hacky way to install already =
pre-built packages during the build and not later during runtime? So instea=
d of building from source or from the sstate-cache, to provide a URL to a w=
ebserver holding packages, which would then be pulled and installed (if I a=
m not wrong Isar does this)?

3) Is enabling and using the package runtime management recommended and enc=
ouraged when it comes to Yocto running on actual devices and not during a d=
evelopment phase? IMHO we are talking about embedded devices here, with lit=
tle or no user interaction, with secure boot enabled, atomic updates, etc. =
and having a package management system such as dnf or apt is cool, but is a=
lso kind of brittle (a simple power off during apt update can break the sys=
tem).

Thanks.
Aleksandar

[1] Building and Maintaining Binary Distributions with Yocto - Michael Opde=
nacker, Root Commit - YouTube ( https://www.youtube.com/watch?v=3DUdJZ0xz-Q=
Lk&list=3DPLbzoR-pLrL6rC7SpO7MJCZm22Qp5ns3p-&index=3D66 )

[2]
# building the image
bitbake core-image-minimal
bitbake package-index

# building the recipe which is not in the image
bitbake vim
bitbake package-index

# trying to install the recipe in core-image-minimal fails
root@qemux86-64:~# dnf install vim
OE Remote Repo: rpm core2_64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 970 kB/s | 476 kB =C2=A0 =C2=A0 00:00
OE Remote Repo: rpm qemux86_64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 238 kB/s | =C2=A062 kB =C2=A0 =C2=A0 00:00
Error:
Problem: conflicting requests
- nothing provides libXt.so.6()(64bit) needed by vim-9.1.0698-r0.core2_64 f=
rom oe-remote-repo-rpm-core2_64
- nothing provides libgdk-3.so.0()(64bit) needed by vim-9.1.0698-r0.core2_6=
4 from oe-remote-repo-rpm-core2_64
- nothing provides libgdk_pixbuf-2.0.so.0()(64bit) needed by vim-9.1.0698-r=
0.core2_64 from oe-remote-repo-rpm-core2_64
- nothing provides libgtk-3.so.0()(64bit) needed by vim-9.1.0698-r0.core2_6=
4 from oe-remote-repo-rpm-core2_64
- nothing provides libpango-1.0.so.0()(64bit) needed by vim-9.1.0698-r0.cor=
e2_64 from oe-remote-repo-rpm-core2_64
- nothing provides libpangocairo-1.0.so.0()(64bit) needed by vim-9.1.0698-r=
0.core2_64 from oe-remote-repo-rpm-core2_64
- nothing provides libgdk-pixbuf-2.0-0 >=3D 2.42.12 needed by vim-9.1.0698-=
r0.core2_64 from oe-remote-repo-rpm-core2_64
- nothing provides libgtk-3.0 >=3D 3.24.43 needed by vim-9.1.0698-r0.core2_=
64 from oe-remote-repo-rpm-core2_64
- nothing provides libxt6 >=3D 1.3.0 needed by vim-9.1.0698-r0.core2_64 fro=
m oe-remote-repo-rpm-core2_64
- nothing provides pango >=3D 1.54.0 needed by vim-9.1.0698-r0.core2_64 fro=
m oe-remote-repo-rpm-core2_64
(try to add '--skip-broken' to skip uninstallable packages)

--WlvEjKzbLkCsrPKVPtmN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Greetings!</div>
<div>&nbsp;</div>
<div>After watching a talk from Michael Opdenacker from this year's OSS Eur=
ope about Yocto Binary Distros (see [1]), I've been experimenting with inst=
alling pre-built packages directly onto the target and I have a few questio=
ns regarding this topic, maybe someone more experienced could chime in:</di=
v>
<div>&nbsp;</div>
<div>1) When I build a recipe previously not installed in my image and want=
 to install it during runtime, the dnf install command fails, saying that t=
he package's dependencies are not met (see [2] for more info). This is fine=
, as I can see that the tmp/deploy/rpm directory does not contain all of th=
e package's dependencies nor the dependencies' WORKDIRs contain the deploy-=
rpms directory. Is this behavior correct? Shouldn't building a recipe also =
lead that all of its dependencies are not just built but also packaged and =
put into the tpm/deploy/rpm directory (the same as with building the image =
containing the package in question)?</div>
<div>&nbsp;</div>
<div>2) Is there an official, stable, and not some hacky way to install alr=
eady pre-built packages during the build and not later during runtime? So i=
nstead of building from source or from the sstate-cache, to provide a URL t=
o a webserver holding packages, which would then be pulled and installed (i=
f I am not wrong Isar does this)?</div>
<div>&nbsp;</div>
<div>3) Is enabling and using the package runtime management recommended an=
d encouraged when it comes to Yocto running on actual devices and not durin=
g a development phase? IMHO we are talking about embedded devices here, wit=
h little or no user interaction, with secure boot enabled, atomic updates, =
etc. and having a package management system such as dnf or apt is cool, but=
 is also kind of brittle (a simple power off during apt update can break th=
e system).&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks.</div>
<div>Aleksandar&nbsp;&nbsp;</div>
<div>&nbsp;</div>
<div>[1] <a href=3D"https://www.youtube.com/watch?v=3DUdJZ0xz-QLk&amp;list=
=3DPLbzoR-pLrL6rC7SpO7MJCZm22Qp5ns3p-&amp;index=3D66">Building and Maintain=
ing Binary Distributions with Yocto - Michael Opdenacker, Root Commit - You=
Tube</a></div>
<div>&nbsp;</div>
<div>[2]</div>
<div># building the image</div>
<div>bitbake core-image-minimal</div>
<div>bitbake package-index</div>
<div>&nbsp;</div>
<div># building the recipe which is not in the image</div>
<div>bitbake vim</div>
<div>bitbake package-index</div>
<div>&nbsp;</div>
<div># trying to install the recipe in core-image-minimal fails</div>
<div>root@qemux86-64:~# dnf install vim<br />OE Remote Repo: rpm core2_64 &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 970 kB/s | 476 kB &nbsp=
; &nbsp; 00:00<br />OE Remote Repo: rpm qemux86_64 &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; 238 kB/s | &nbsp;62 kB &nbsp; &nbsp; 00:00<br />Error=
:<br />&nbsp;Problem: conflicting requests<br />&nbsp; - nothing provides l=
ibXt.so.6()(64bit) needed by vim-9.1.0698-r0.core2_64 from oe-remote-repo-r=
pm-core2_64<br />&nbsp; - nothing provides libgdk-3.so.0()(64bit) needed by=
 vim-9.1.0698-r0.core2_64 from oe-remote-repo-rpm-core2_64<br />&nbsp; - no=
thing provides libgdk_pixbuf-2.0.so.0()(64bit) needed by vim-9.1.0698-r0.co=
re2_64 from oe-remote-repo-rpm-core2_64<br />&nbsp; - nothing provides libg=
tk-3.so.0()(64bit) needed by vim-9.1.0698-r0.core2_64 from oe-remote-repo-r=
pm-core2_64<br />&nbsp; - nothing provides libpango-1.0.so.0()(64bit) neede=
d by vim-9.1.0698-r0.core2_64 from oe-remote-repo-rpm-core2_64<br />&nbsp; =
- nothing provides libpangocairo-1.0.so.0()(64bit) needed by vim-9.1.0698-r=
0.core2_64 from oe-remote-repo-rpm-core2_64<br />&nbsp; - nothing provides =
libgdk-pixbuf-2.0-0 &gt;=3D 2.42.12 needed by vim-9.1.0698-r0.core2_64 from=
 oe-remote-repo-rpm-core2_64<br />&nbsp; - nothing provides libgtk-3.0 &gt;=
=3D 3.24.43 needed by vim-9.1.0698-r0.core2_64 from oe-remote-repo-rpm-core=
2_64<br />&nbsp; - nothing provides libxt6 &gt;=3D 1.3.0 needed by vim-9.1.=
0698-r0.core2_64 from oe-remote-repo-rpm-core2_64<br />&nbsp; - nothing pro=
vides pango &gt;=3D 1.54.0 needed by vim-9.1.0698-r0.core2_64 from oe-remot=
e-repo-rpm-core2_64<br />(try to add '--skip-broken' to skip uninstallable =
packages)</div>

--WlvEjKzbLkCsrPKVPtmN--

