Return-Path: <omaradelshalaan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48141CEBF71
	for <webhook@archiver.kernel.org>; Fri, 27 Sep 2024 02:54:01 +0000 (UTC)
Subject: Can't Add Firefox: /poky/meta-browser/meta-firefox/classes/rust-common-without-python3native.bbclass:9: Could not inherit file classes/rust-target-config.bbclass #kirkstone #kirkstone #poky
To: yocto@lists.yoctoproject.org
From: omaradelshalaan@gmail.com
X-Originating-Location: Giza, EG (41.234.98.190)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 Sep 2024 19:53:59 -0700
Message-ID: <qrhy.1727405639368270439.yJJc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mTeeNeQXyctOuYK1jpjZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Sep 2024 02:54:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63899

--mTeeNeQXyctOuYK1jpjZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

omar@dell:~/YOCTO/poky/qemu-arm$ bitbake core-image-sato
Loading cache: 100% |######################################################=
###########################################################################=
####| Time: 0:00:00
Loaded 4056 entries from dependency cache.
ERROR: ParseError at /home/omar/YOCTO/poky/meta-browser/meta-firefox/classe=
s/rust-common-without-python3native.bbclass:9: Could not inherit file class=
es/rust-target-config.bbclass
ERROR: Parsing halted due to errors, see error messages above
Summary: There were 2 ERROR messages, returning a non-zero exit code.

--mTeeNeQXyctOuYK1jpjZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>omar@dell:~/YOCTO/poky/qemu-arm$ bitbake core-image-sato<br />Loading =
cache: 100% |##############################################################=
#######################################################################| Ti=
me: 0:00:00<br />Loaded 4056 entries from dependency cache.<br />ERROR: Par=
seError at /home/omar/YOCTO/poky/meta-browser/meta-firefox/classes/rust-com=
mon-without-python3native.bbclass:9: Could not inherit file classes/rust-ta=
rget-config.bbclass<br />ERROR: Parsing halted due to errors, see error mes=
sages above</div>
<div>Summary: There were 2 ERROR messages, returning a non-zero exit code.<=
/div>
</div>
<div id=3D"eJOY__extension_root" class=3D"eJOY__extension_root_class" style=
=3D"all: unset;"></div>

--mTeeNeQXyctOuYK1jpjZ--

