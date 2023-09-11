Return-Path: <lakshaypiplani77@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4340EE57DF
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 10:22:19 +0000 (UTC)
Subject: kernel panic error after enabling dm-verity.
To: yocto@lists.yoctoproject.org
From: lakshaypiplani77@gmail.com
X-Originating-Location: New Delhi, National Capital Territory of Delhi, IN (165.225.125.65)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Sep 2023 03:22:18 -0700
Message-ID: <9xAi.1694427738255968336.LypG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="v8vgEIGKtnUd9YBxdBwV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 10:22:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60971

--v8vgEIGKtnUd9YBxdBwV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have two yocto recipes.

base image and advanced image.

base image have support for dm-verity. i just have to include one line in l=
ocal.conf to enable dm-verity with initramfs support.

*DISTRO_FEATURES_append +=3D "dm-verity" (creating wic image only)*

*
* and image gets loaded successfully as follows.

[=C2=A0 =C2=A0 1.366192] Run /init as init process

Starting version 246

realpath: /dev/disk/by-partuuid//dev: No such file or directory

[=C2=A0 =C2=A0 2.971331] random: veritysetup: uninitialized urandom read (2=
 bytes read)

[=C2=A0 =C2=A0 2.973479] device-mapper: verity: sha256 using implementation=
 "sha256-generic"

[=C2=A0 =C2=A0 3.106633] EXT4-fs (dm-0): mounting ext3 file system using th=
e ext4 subsystem

[=C2=A0 =C2=A0 3.113899] EXT4-fs (dm-0): mounted filesystem with ordered da=
ta mode. Opts: (null). Quota mode: disabled.

[=C2=A0 =C2=A0 3.449425] systemd[1]: System time before build time, advanci=
ng clock.

[=C2=A0 =C2=A0 3.481321] systemd[1]: systemd 246 running in system mode. (+=
PAM -AUDIT -SELINUX +IMA -APPARMOR -SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP -G=
CRYPT -GNUTLS +ACL +XZ -LZ4 -ZSTD -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -ID=
N -PCRE2 default-hierarchy=3Dhybrid)

[=C2=A0 =C2=A0 3.481828] systemd[1]: Detected architecture arm64.

But when i am trying to replicate it for advanced image, i am getting kerne=
l panic error as follows.

Starting version 246

realpath: /dev/disk/by-partuuid//dev: No such file or directory

Device /dev/mmcblk0p2 is not a valid VERITY device.

mount: /rootfs: special device /dev/mapper/rootfs[=C2=A0 =C2=A0 2.935967] K=
ernel panic - not syncing:

[=C2=A0 =C2=A0 2.935983] Attempted to kill init! exitcode=3D0x00000200

does not exist.

[=C2=A0 =C2=A0 3.043274] SMP: stopping secondary CPUs

[=C2=A0 =C2=A0 3.046769] Kernel Offset: disabled

[=C2=A0 =C2=A0 3.050233] CPU features: 0x90002001,20000842

[=C2=A0 =C2=A0 3.054573] Memory Limit: none

[=C2=A0 =C2=A0 3.057616] ---[ end Kernel panic - not syncing: Attempted to =
kill init! exitcode=3D0x00000200 ]---

What could be the issue??

*How to resolve it?*

--v8vgEIGKtnUd9YBxdBwV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I have two yocto recipes.</p>
<p>base image and advanced image.</p>
<p>base image have support for dm-verity. i just have to include one line i=
n local.conf to enable dm-verity with initramfs support.</p>
<p>&nbsp;</p>
<p><strong>DISTRO_FEATURES_append +=3D "dm-verity" (creating wic image only=
)</strong></p>
<p><strong><br /></strong>and image gets loaded successfully as follows.</p=
>
<p>[&nbsp; &nbsp; 1.366192] Run /init as init process</p>
<p>Starting version 246</p>
<p>realpath: /dev/disk/by-partuuid//dev: No such file or directory</p>
<p>[&nbsp; &nbsp; 2.971331] random: veritysetup: uninitialized urandom read=
 (2 bytes read)</p>
<p>[&nbsp; &nbsp; 2.973479] device-mapper: verity: sha256 using implementat=
ion "sha256-generic"</p>
<p>[&nbsp; &nbsp; 3.106633] EXT4-fs (dm-0): mounting ext3 file system using=
 the ext4 subsystem</p>
<p>[&nbsp; &nbsp; 3.113899] EXT4-fs (dm-0): mounted filesystem with ordered=
 data mode. Opts: (null). Quota mode: disabled.</p>
<p>[&nbsp; &nbsp; 3.449425] systemd[1]: System time before build time, adva=
ncing clock.</p>
<p>[&nbsp; &nbsp; 3.481321] systemd[1]: systemd 246 running in system mode.=
 (+PAM -AUDIT -SELINUX +IMA -APPARMOR -SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP=
 -GCRYPT -GNUTLS +ACL +XZ -LZ4 -ZSTD -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 =
-IDN -PCRE2 default-hierarchy=3Dhybrid)</p>
<p>&nbsp;</p>
<p>[&nbsp; &nbsp; 3.481828] systemd[1]: Detected architecture arm64.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>But when i am trying to replicate it for advanced image, i am getting ke=
rnel panic error as follows.</p>
<p>&nbsp;</p>
<p>Starting version 246</p>
<p>realpath: /dev/disk/by-partuuid//dev: No such file or directory</p>
<p>Device /dev/mmcblk0p2 is not a valid VERITY device.</p>
<p>mount: /rootfs: special device /dev/mapper/rootfs[&nbsp; &nbsp; 2.935967=
] Kernel panic - not syncing:</p>
<p>[&nbsp; &nbsp; 2.935983] Attempted to kill init! exitcode=3D0x00000200</=
p>
<p>does not exist.</p>
<p>[&nbsp; &nbsp; 3.043274] SMP: stopping secondary CPUs</p>
<p>[&nbsp; &nbsp; 3.046769] Kernel Offset: disabled</p>
<p>[&nbsp; &nbsp; 3.050233] CPU features: 0x90002001,20000842</p>
<p>[&nbsp; &nbsp; 3.054573] Memory Limit: none</p>
<p>[&nbsp; &nbsp; 3.057616] ---[ end Kernel panic - not syncing: Attempted =
to kill init! exitcode=3D0x00000200 ]---</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>What could be the issue??</p>
<p>&nbsp;</p>
<p><strong>How to resolve it?</strong></p>

--v8vgEIGKtnUd9YBxdBwV--

