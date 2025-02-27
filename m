Return-Path: <landervanloock@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27E35C19F32
	for <webhook@archiver.kernel.org>; Thu, 27 Feb 2025 18:58:02 +0000 (UTC)
Subject: Btrfs root filesystem permission issue
To: yocto@lists.yoctoproject.org
From: "Lander0606" <landervanloock@gmail.com>
X-Originating-Location: Antwerp, Flanders, BE (94.110.112.215)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 Feb 2025 10:57:58 -0800
Message-ID: <tRtu.1740682678597454399.5171@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FHwUKTWPngoa6mLI3kaI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 18:58:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64889

--FHwUKTWPngoa6mLI3kaI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

For my project, I changed the filesystem from ext4 to btrfs. The image buil=
ds and flashes fine, but when booting the system some mount problems occur =
because the root filesystem has UID 1000 all over it. So, when creating the=
 filesystem, the directories are not created with root:root as owner. Some =
important notes:

* Currently I'm on the master branch to use the newest kernel 6.12, but whe=
n switching back to the scarthgap branch, the issue with permissions doesn'=
t exist for a btrfs image. The filesystem mounts fine.
* I use Fedora 41 with a btrfs filesystem as build host, but I checked on a=
n Ubuntu 24.04 machine with an ext4 filesystem as well and the issue still =
persists.
* I tried adding a fix with do_image[postfuncs] to run chown -R root:root o=
n all directories, but the issue still persists...
* To test, I just mount the generated btrfs filesystem to my Fedora host an=
d check the permissions with ls -lah

Has anyone experienced similar problems with btrfs? Or does anyone have an =
idea how to patch this?

Any help is appreciated! Thanks in advance!

--FHwUKTWPngoa6mLI3kaI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi guys,</div>
<div>&nbsp;</div>
<div>For my project, I changed the filesystem from ext4 to btrfs. The image=
 builds and flashes fine, but when booting the system some mount problems o=
ccur because the root filesystem has UID 1000 all over it. So, when creatin=
g the filesystem, the directories are not created with <em>root:root</em> a=
s owner. Some important notes:</div>
<div>&nbsp;</div>
<ul>
<li>Currently I'm on the master branch to use the newest kernel 6.12, but w=
hen switching back to the <em>scarthgap</em> branch, the issue with permiss=
ions doesn't exist for a btrfs image. The filesystem mounts fine.</li>
<li>I use Fedora 41 with a btrfs filesystem as build host, but I checked on=
 an Ubuntu 24.04 machine with an ext4 filesystem as well and the issue stil=
l persists.</li>
<li>I tried adding a fix with <em>do_image[postfuncs] </em>to run <em>chown=
 -R root:root</em> on all directories, but the issue still persists...</li>
<li>To test, I just mount the generated btrfs filesystem to my Fedora host =
and check the permissions with <em>ls -lah</em> </li>
</ul>
<div>&nbsp;</div>
<div>Has anyone experienced similar problems with btrfs? Or does anyone hav=
e an idea how to patch this?</div>
<div>&nbsp;</div>
<div>Any help is appreciated! Thanks in advance!</div>

--FHwUKTWPngoa6mLI3kaI--

