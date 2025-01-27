Return-Path: <kavita.mnnit@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 278FFC02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 15:10:31 +0000 (UTC)
Subject: [yocto scarthgap] do_configure failed for pth-2.0.7 package  #autotools #bitbake #scarthgap #yocto
To: yocto@lists.yoctoproject.org
From: kavita.mnnit@gmail.com
X-Originating-Location: Montreal, Quebec, CA (76.65.133.136)
X-Originating-Platform: Windows Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2025 07:10:24 -0800
Message-ID: <Voh8.1737990624661397609.VUZB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ER3PHrPxRo8b1fz2pZhR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 15:10:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64644

--ER3PHrPxRo8b1fz2pZhR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to move the yocto kirkstone branch to scarthgap version and whi=
le starting the migration, I am getting following issue:-

checking for stack setup via makecontext... ../pth-2.0.7/configure: line 22=
539: syntax error near unexpected token `;;'
| ../pth-2.0.7/configure: line 22539: ` ;;'
| NOTE: The following config.log files may provide further information.
| NOTE: /home/kavita/yocto-setup-scarthgap/build/tmp/work/cortexa53-crypto-=
poky-linux/pth/2.0.7/build/config.log
| ERROR: configure failed
| WARNING: exit code 1 from a shell command.
ERROR: Task (/home/kavita/yocto-setup-scarthgap/layers/poky/../meta-jci-app=
-4017es/recipes-support/pth/pth_2.0.7.bb:do_configure) failed with exit cod=
e '1'

I checked the autconf version has been changed from 2.71 to 2.72e.

Is anyone else faced the same issue? Please provide some solution or fix.

Thanks,
Kavita Awasthi

--ER3PHrPxRo8b1fz2pZhR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>&nbsp;</div>
<div>I am trying to move the yocto kirkstone branch to scarthgap version an=
d while starting the migration, I am getting following issue:-</div>
<div>&nbsp;</div>
<div>checking for stack setup via makecontext... ../pth-2.0.7/configure: li=
ne 22539: syntax error near unexpected token `;;'<br />| ../pth-2.0.7/confi=
gure: line 22539: ` ;;'<br />| NOTE: The following config.log files may pro=
vide further information.<br />| NOTE: /home/kavita/yocto-setup-scarthgap/b=
uild/tmp/work/cortexa53-crypto-poky-linux/pth/2.0.7/build/config.log<br />|=
 ERROR: configure failed<br />| WARNING: exit code 1 from a shell command.<=
br />ERROR: Task (/home/kavita/yocto-setup-scarthgap/layers/poky/../meta-jc=
i-app-4017es/recipes-support/pth/pth_2.0.7.bb:do_configure) failed with exi=
t code '1'</div>
<div>&nbsp;</div>
<div>I checked the autconf version has been changed from 2.71 to 2.72e.&nbs=
p;</div>
<div>&nbsp;</div>
<div>Is anyone else faced the same issue? Please provide some solution or f=
ix.</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Kavita Awasthi&nbsp;</div>

--ER3PHrPxRo8b1fz2pZhR--

