Return-Path: <jason.m.bills@linux.intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29D0C02187
	for <webhook@archiver.kernel.org>; Thu, 16 Jan 2025 19:38:44 +0000 (UTC)
Subject: Script error when using EXTRA_IMAGECMD::append
To: yocto@lists.yoctoproject.org
From: "Bills, Jason M" <jason.m.bills@linux.intel.com>
X-Originating-Location: California, US (192.55.55.44)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jan 2025 11:38:35 -0800
Message-ID: <qFS7.1737056315558355410.fRU6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6jD9495Lea8IS1OmyYJg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2025 19:38:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64569

--6jD9495Lea8IS1OmyYJg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I recently pulled down this change that fixes an issue with EXTRA_IMAGECMD =
support for squashfs-xz: https://github.com/yoctoproject/poky/commit/70a857=
b8f3fd3e9b95b903e8313d0014a6ff8c96.

After that change, I now get a script error when running oe_mksquashfs().

This is the append I use:
EXTRA_IMAGECMD:squashfs-xz:append =3D "-processors 64 -b 262144 -Xdict-size=
 100% -Xbcj arm"

This is the error I get:
| DEBUG: Executing shell function do_image_squashfs_xz
| /home/jmbills/upstream-sync/openbmc-openbmc/build/tmp/work/intel_ast2600-=
openbmc-linux-gnueabi/intel-platforms/1.0/temp/run.do_image_squashfs_xz.294=
5674: 157: local: 64: bad variable name
| WARNING: exit code 2 from a shell command.

The issue is fixed if I change this line:
local extra_imagecmd=3D"$@"
to this:
local extra_imagecmd=3D"$*"

If that change looks correct, I can submit it as a patch, if that would be =
helpful.

Thanks for your help,
-Jason

--6jD9495Lea8IS1OmyYJg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I recently pulled down this change that fixes an issue with EXTRA_IMAG=
ECMD support for squashfs-xz: <a href=3D"https://github.com/yoctoproject/po=
ky/commit/70a857b8f3fd3e9b95b903e8313d0014a6ff8c96" target=3D"_blank" rel=
=3D"noopener">https://github.com/yoctoproject/poky/commit/70a857b8f3fd3e9b9=
5b903e8313d0014a6ff8c96</a>.</div>
<div>&nbsp;</div>
<div>After that change, I now get a script error when running oe_mksquashfs=
().</div>
<div>&nbsp;</div>
<div>This is the append I use:</div>
<div>&nbsp; &nbsp; EXTRA_IMAGECMD:squashfs-xz:append =3D "-processors 64 -b=
 262144 -Xdict-size 100% -Xbcj arm"</div>
<div>&nbsp;</div>
<div>This is the error I get:</div>
<div>&nbsp; &nbsp; | DEBUG: Executing shell function do_image_squashfs_xz<b=
r />&nbsp; &nbsp; | /home/jmbills/upstream-sync/openbmc-openbmc/build/tmp/w=
ork/intel_ast2600-openbmc-linux-gnueabi/intel-platforms/1.0/temp/run.do_ima=
ge_squashfs_xz.2945674: 157: local: 64: bad variable name<br />&nbsp; &nbsp=
; | WARNING: exit code 2 from a shell command.</div>
<div>&nbsp;</div>
<div>The issue is fixed if I change this line:</div>
<div>&nbsp; &nbsp; local extra_imagecmd=3D"$@"</div>
<div>to this:</div>
<div>&nbsp; &nbsp; local extra_imagecmd=3D"$*"</div>
<div>&nbsp;</div>
<div>If that change looks correct, I can submit it as a patch, if that woul=
d be helpful.</div>
<div>&nbsp;</div>
<div>Thanks for your help,</div>
<div>-Jason</div>
<div>&nbsp;</div>

--6jD9495Lea8IS1OmyYJg--

