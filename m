Return-Path: <nicolas@saliencelabs.ai>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B6C6CAC5BE
	for <webhook@archiver.kernel.org>; Mon, 29 Sep 2025 10:22:04 +0000 (UTC)
Subject: Failed to fetc qemu-project/u-boot
To: yocto@lists.yoctoproject.org
From: nicolas@saliencelabs.ai
X-Originating-Location: Reading, England, GB (2.124.203.197)
X-Originating-Platform: Windows Chrome 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 29 Sep 2025 03:21:58 -0700
Message-ID: <tPXD.1759141318077722833.29eX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Pm1RbPPoNTjv2djFVWrQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 10:22:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65880

--Pm1RbPPoNTjv2djFVWrQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Came back to work after 1 month of absence and I can't build the project an=
ymore because gitsm is failing to fetch.
It's been a week already and this is getting me stuck.
The weird thing is that the github url is definitely accessible from the br=
owser.

Yocto version: 5.0.12
OS: Ubuntu 22.04.5 LTS

>=20
> WARNING: qemu-xilinx-native-8.2.7+git-r0 do_fetch: Failed to fetch URL
> gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v20=
25.1;name=3Dqemu,
> attempting MIRRORS if available
> ERROR: qemu-xilinx-native-8.2.7+git-r0 do_fetch: Fetcher failure for URL:
> 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/=
u-boot;subpath=3Droms/u-boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=
=3D1'.
> Unable to fetch URL from any source.
> ERROR: qemu-xilinx-native-8.2.7+git-r0 do_fetch: Bitbake Fetcher Error:
> FetchError('Unable to fetch URL from any source.',
> 'gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v2=
025.1;name=3Dqemu')
>=20
> ERROR: Logfile of failure stored in:
> /home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7=
+git/temp/log.do_fetch.1878631
>=20
> ERROR: Task
> (/home/nic/ocs-app/Os/meta-xilinx/meta-xilinx-core/recipes-devtools/qemu/=
qemu-xilinx-native_8.2.7.bb:do_fetch)
> failed with exit code '1'
>

--Pm1RbPPoNTjv2djFVWrQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Came back to work after 1 month of absence and I can't build the proje=
ct anymore because gitsm is failing to fetch.</div>
<div>It's been a week already and this is getting me stuck.</div>
<div>The weird thing is that the github url is definitely accessible from t=
he browser.</div>
<div>&nbsp;</div>
<div>
<div>Yocto version: 5.0.12</div>
<div>OS: Ubuntu 22.04.5 LTS</div>
<div>&nbsp;</div>
<blockquote>
<div>WARNING: qemu-xilinx-native-8.2.7+git-r0 do_fetch: Failed to fetch URL=
 gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v202=
5.1;name=3Dqemu, attempting MIRRORS if available<br />ERROR: qemu-xilinx-na=
tive-8.2.7+git-r0 do_fetch: Fetcher failure for URL: 'gitsm://gitlab.com/qe=
mu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-=
boot;nobranch=3D1;lfs=3DTrue;bareclone=3D1;nobranch=3D1'. Unable to fetch U=
RL from any source.<br />ERROR: qemu-xilinx-native-8.2.7+git-r0 do_fetch: B=
itbake Fetcher Error: FetchError('Unable to fetch URL from any source.', 'g=
itsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v2025.=
1;name=3Dqemu')<br />ERROR: Logfile of failure stored in: /home/nic/ocs-app=
/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/temp/log.do_fe=
tch.1878631<br />ERROR: Task (/home/nic/ocs-app/Os/meta-xilinx/meta-xilinx-=
core/recipes-devtools/qemu/qemu-xilinx-native_8.2.7.bb:do_fetch) failed wit=
h exit code '1'</div>
</blockquote>
</div>
</div>

--Pm1RbPPoNTjv2djFVWrQ--

