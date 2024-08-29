Return-Path: <pangliyuan1@huawei.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35C2AC83F22
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 13:35:55 +0000 (UTC)
Subject: nfsserver script cannot stop the nfsd threads
To: yocto@lists.yoctoproject.org
From: pangliyuan1@huawei.com
X-Originating-Location: Central, Central and Western District, HK (119.8.243.135)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 29 Aug 2024 06:35:51 -0700
Message-ID: <2hc9.1724938551588666583.s950@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W5XEisleNVvenAOEYBOn"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 13:35:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63771

--W5XEisleNVvenAOEYBOn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Recently, when I execute 'nfsserver stop' to stop nfsd service, I find that=
 nfsd threads cannot be killed.

>=20
> # nfsserver stop
> stopping statd: done
> stopping mountd: done
> stopping nfsd: ..........failed
> using signal 9:
> ..........failed
>=20

I noticed that nfsserver script uses 'start-stop-daemon --stop --quiet --si=
gnal 1 --name nfsd' to stop nfsd service, which works by sending a signal t=
o nfsd threads.

And I have identified that this issue was caused by the following linux pat=
ch:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=
=3D7229200f68662660bb4d55f19247eaf3c79a4217

This patch said "nfsd stops allowing signals and we don't check for their d=
elivery any more" and it recommends using /proc/fs/nfsd/threads instead of =
sending signals, for example, "echo 0 > /proc/fs/nfsd/threads" will stop al=
l nfsd threads.

I would like to know if this issue a problem need to be fixed?

Best regards.
Liyuan

--W5XEisleNVvenAOEYBOn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hello,</div>
<div>&nbsp;</div>
<div>Recently, when I execute 'nfsserver stop' to stop nfsd service, I find=
 that nfsd threads cannot be killed.</div>
<div>&nbsp;</div>
<blockquote>
<div># nfsserver stop</div>
<div>stopping statd: done<br />stopping mountd: done<br />stopping nfsd: ..=
........failed<br />&nbsp;using signal 9:<br />..........failed</div>
</blockquote>
<div>I noticed that nfsserver script uses 'start-stop-daemon --stop --quiet=
 --signal 1 --name nfsd' to stop nfsd service, which works by sending a sig=
nal to nfsd threads.</div>
<div>&nbsp;</div>
<div>And I have identified that this issue was caused by the following linu=
x patch:<br /><a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/st=
able/linux.git/commit/?id=3D7229200f68662660bb4d55f19247eaf3c79a4217" targe=
t=3D"_blank" rel=3D"noopener">https://git.kernel.org/pub/scm/linux/kernel/g=
it/stable/linux.git/commit/?id=3D7229200f68662660bb4d55f19247eaf3c79a4217</=
a></div>
<div><br />This patch said "nfsd stops allowing signals and we don't check =
for their delivery any more" and it recommends using /proc/fs/nfsd/threads =
instead of sending signals, for example, "echo 0 &gt; /proc/fs/nfsd/threads=
" will stop all nfsd threads.</div>
<div>&nbsp;</div>
<div>I would like to know if this issue a problem need to be fixed?</div>
<div>&nbsp;</div>
<div>Best regards.<br />Liyuan</div>
</div>

--W5XEisleNVvenAOEYBOn--

