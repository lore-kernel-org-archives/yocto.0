Return-Path: <landervanloock@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6547AC021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 21:32:20 +0000 (UTC)
Subject: Btrfs Root Filesystem Remount Issue with systemd on Yocto
To: yocto@lists.yoctoproject.org
From: landervanloock@gmail.com
X-Originating-Location: Antwerp, Flanders, BE (94.110.112.215)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Feb 2025 13:32:15 -0800
Message-ID: <8cDU.1740519135015977787.rlM0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XYoAl0jKfV4mJHfiV3Uo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 21:32:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64870

--XYoAl0jKfV4mJHfiV3Uo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I'm experiencing an issue on my custom Yocto-built system where my Btrfs ro=
ot filesystem (mounted as root using Btrfs) ends up being mounted read-only=
 during boot. It appears that the systemd-remount-fs.service fails to prope=
rly remount the filesystem, even though the initial kernel mount succeeds.

*System details:*

* Yocto project build (using meta-tegra layer for Jetson Orin Nano)
* Kernel: linux-yocto 6.12.11
* Systemd: 257.3
* Root filesystem type: Btrfs

*Issue description:* During boot, the kernel mounts the Btrfs root filesyst=
em correctly. However, later in the boot process, systemd-remount-fs attemp=
ts to remount the root and other filesystems with modified mount options, a=
nd fails with errors like =E2=80=9Cmust be superuser to use mount=E2=80=9D.=
 This failure forces the system into maintenance mode because subsequent mo=
unts (e.g. /tmp) also fail.

I have increased the debug log levels (using kernel parameters such as syst=
emd.log_level=3Ddebug and udev.log_priority=3Ddebug ) to gather more detail=
ed logs, but I=E2=80=99m still trying to pinpoint the exact reason for the =
failure. It seems likely that the new remount method introduced in systemd =
257 (and later) doesn=E2=80=99t play well with Btrfs once the filesystem is=
 already mounted.

*Steps already taken:*

* Verified that the initial kernel mount of Btrfs is successful.
* Confirmed that /etc/fstab contains the correct options.
* Enabled extra logging for systemd and udev to capture more debug output.
* Considered workarounds such as disabling systemd-remount-fs or adjusting =
mount options to avoid a remount.

*Questions:*

* Does anyone have experience with a similar issue on Yocto systems using B=
trfs and systemd 257+?
* Are there any known workarounds or configuration tweaks (in fstab or syst=
emd) that can prevent systemd-remount-fs from attempting a problematic remo=
unt?
* What additional debug steps would you recommend to isolate the issue furt=
her?

Any help or pointers to relevant documentation or similar issues would be g=
reatly appreciated.

Thank you!

--XYoAl0jKfV4mJHfiV3Uo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p data-start=3D"1172" data-end=3D"1197">Hello everyone,</p>
<p data-start=3D"1199" data-end=3D"1500">I'm experiencing an issue on my cu=
stom Yocto-built system where my Btrfs root filesystem (mounted as root usi=
ng Btrfs) ends up being mounted read-only during boot. It appears that the =
<code data-start=3D"1383" data-end=3D"1411">systemd-remount-fs.service</cod=
e> fails to properly remount the filesystem, even though the initial kernel=
 mount succeeds.</p>
<p data-start=3D"1502" data-end=3D"1521"><strong data-start=3D"1502" data-e=
nd=3D"1521">System details:</strong></p>
<ul data-start=3D"1522" data-end=3D"1666">
<li data-start=3D"1522" data-end=3D"1589">Yocto project build (using meta-t=
egra layer for Jetson Orin Nano)</li>
<li data-start=3D"1590" data-end=3D"1619">Kernel: linux-yocto 6.12.11</li>
<li data-start=3D"1620" data-end=3D"1636">Systemd: 257.3</li>
<li data-start=3D"1637" data-end=3D"1666">Root filesystem type: Btrfs</li>
</ul>
<p data-start=3D"1668" data-end=3D"2056"><strong data-start=3D"1668" data-e=
nd=3D"1690">Issue description:</strong> During boot, the kernel mounts the =
Btrfs root filesystem correctly. However, later in the boot process, system=
d-remount-fs attempts to remount the root and other filesystems with modifi=
ed mount options, and fails with errors like &ldquo;must be superuser to us=
e mount&rdquo;. This failure forces the system into maintenance mode becaus=
e subsequent mounts (e.g. /tmp) also fail.</p>
<p data-start=3D"2058" data-end=3D"2433">I have increased the debug log lev=
els (using kernel parameters such as <code data-start=3D"2129" data-end=3D"=
2154">systemd.log_level=3Ddebug</code> and <code data-start=3D"2159" data-e=
nd=3D"2184">udev.log_priority=3Ddebug</code>) to gather more detailed logs,=
 but I&rsquo;m still trying to pinpoint the exact reason for the failure. I=
t seems likely that the new remount method introduced in systemd 257 (and l=
ater) doesn&rsquo;t play well with Btrfs once the filesystem is already mou=
nted.</p>
<p data-start=3D"2435" data-end=3D"2459"><strong data-start=3D"2435" data-e=
nd=3D"2459">Steps already taken:</strong></p>
<ul data-start=3D"2460" data-end=3D"2766">
<li data-start=3D"2460" data-end=3D"2524">Verified that the initial kernel =
mount of Btrfs is successful.</li>
<li data-start=3D"2525" data-end=3D"2582">Confirmed that /etc/fstab contain=
s the correct options.</li>
<li data-start=3D"2583" data-end=3D"2657">Enabled extra logging for systemd=
 and udev to capture more debug output.</li>
<li data-start=3D"2658" data-end=3D"2766">Considered workarounds such as di=
sabling systemd-remount-fs or adjusting mount options to avoid a remount.</=
li>
</ul>
<p data-start=3D"2768" data-end=3D"2782"><strong data-start=3D"2768" data-e=
nd=3D"2782">Questions:</strong></p>
<ol data-start=3D"2783" data-end=3D"3118">
<li data-start=3D"2783" data-end=3D"2881">Does anyone have experience with =
a similar issue on Yocto systems using Btrfs and systemd 257+?</li>
<li data-start=3D"2882" data-end=3D"3037">Are there any known workarounds o=
r configuration tweaks (in fstab or systemd) that can prevent systemd-remou=
nt-fs from attempting a problematic remount?</li>
<li data-start=3D"3038" data-end=3D"3118">What additional debug steps would=
 you recommend to isolate the issue further?</li>
</ol>
<p data-start=3D"3120" data-end=3D"3214">Any help or pointers to relevant d=
ocumentation or similar issues would be greatly appreciated.</p>
<p data-start=3D"3216" data-end=3D"3226">Thank you!</p>
</div>

--XYoAl0jKfV4mJHfiV3Uo--

