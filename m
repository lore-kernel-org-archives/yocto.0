Return-Path: <christian.leeb@hitachienergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE559D2069B
	for <webhook@archiver.kernel.org>; Thu,  4 Dec 2025 13:57:06 +0000 (UTC)
Subject: Bitbake fetch does not re-fetch from network if gitrepo is found in DL_DIR
To: yocto@lists.yoctoproject.org
From: christian.leeb@hitachienergy.com
X-Originating-Location: Zurich, CH (147.161.246.94)
X-Originating-Platform: Windows Edge 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Dec 2025 05:56:58 -0800
Message-ID: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Haw58kXBo47TlRMnH453"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Dec 2025 13:57:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66088

--Haw58kXBo47TlRMnH453
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I did a bitbake virtual/kernel --runall=3Dfetch, with a DL_DIR containing k=
ernel git repo. This git repo does not contain the SRCREV 7818dfe57e reques=
ted.

Log suggests the fetch ran fine with the 7818dfe57e
recipe linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10: task =
do_fetch: Succeeded

At this point I would have expected the fetch found the repo in DL_DIR but =
the requested commit is t's not up-to-date hence it would reach out to the =
network.

Later I call bitbake again to build the kernel and I'm getting this error.

ERROR: linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10 do_unp=
ack: Bitbake Fetcher Error: UnpackError('No up to date source found: clone =
directory not available or not up to date: /home/vsts-agent/azagents/build-=
1/_work/_temp/localdl//git2/dev.azure.com.PG-CT.PGLinux._git.pg-linux; shal=
low clone not enabled', 'git://dev.azure.com/PG-CT/PGLinux/_git/pg-linux;pr=
otocol=3Dhttps;branch=3Dpg-am57xx-ti-rt-linux-5.4.106')

This suggests that fetch was happy finding the repo in DL_DIR but did not c=
are that the requested commit was missing.
Is this the intended behavior?

BR, Chris

--Haw58kXBo47TlRMnH453
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,<br /><br />I did a bitbake virtual/kernel --runall=3Dfetch, with a=
 DL_DIR containing kernel git repo. This git repo does not contain the SRCR=
EV <span style=3D"color: #242424; font-family: 'Cascadia Mono', Consolas, u=
i-monospace, Menlo, Monaco, monospace; font-size: 14px; font-style: normal;=
 font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: normal; background-color: #ffffff; text-decoration-t=
hickness: initial; text-decoration-style: initial; text-decoration-color: i=
nitial; display: inline !important; float: none;">7818dfe57e </span>request=
ed.<br /><br />Log suggests the fetch ran fine with the <span style=3D"colo=
r: #242424; font-family: 'Cascadia Mono', Consolas, ui-monospace, Menlo, Mo=
naco, monospace; font-size: 14px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 normal; background-color: #ffffff; text-decoration-thickness: initial; tex=
t-decoration-style: initial; text-decoration-color: initial; display: inlin=
e !important; float: none;">7818dfe57e</span><br /><span style=3D"color: #2=
42424; font-family: 'Cascadia Mono', Consolas, ui-monospace, Menlo, Monaco,=
 monospace; font-size: 14px; font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: norm=
al; background-color: #ffffff; text-decoration-thickness: initial; text-dec=
oration-style: initial; text-decoration-color: initial; display: inline !im=
portant; float: none;"><span style=3D"font-family: 'courier new', courier;"=
>recipe linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10: task=
 do_fetch: Succeeded</span><br /></span></div>
<div>&nbsp;</div>
<div>At this point I would have expected the fetch found the repo in DL_DIR=
 but the requested commit is t's not up-to-date hence it would reach out to=
 the network.</div>
<div>&nbsp;</div>
<div>Later I call bitbake again to build the kernel and I'm getting this er=
ror.<br /><br /><span data-teams=3D"true"><span style=3D"font-family: 'cour=
ier new', courier;">ERROR: linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57=
e-r7a.spark10 do_unpack: Bitbake Fetcher Error: UnpackError('No up to date =
source found: clone directory not available or not up to date: /home/vsts-a=
gent/azagents/build-1/_work/_temp/localdl//git2/dev.azure.com.PG-CT.PGLinux=
._git.pg-linux; shallow clone not enabled', 'git://dev.azure.com/PG-CT/PGLi=
nux/_git/pg-linux;protocol=3Dhttps;branch=3Dpg-am57xx-ti-rt-linux-5.4.106')=
</span><br /><br />This suggests that fetch was happy finding the repo in D=
L_DIR but did not care that the requested commit was missing.<br />Is this =
the intended behavior?<br /><br />BR, Chris<br /><br /></span></div>

--Haw58kXBo47TlRMnH453--

