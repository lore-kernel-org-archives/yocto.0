Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F821C04FFE
	for <webhook@archiver.kernel.org>; Mon, 20 May 2024 07:47:34 +0000 (UTC)
Subject: runqemu qemux86-64
To: yocto@lists.yoctoproject.org
From: "SasiKumar E" <sasikumar.e@fdss.co.in>
X-Originating-Location: Tiruchi, Tamil Nadu, IN (122.165.190.191)
X-Originating-Platform: Linux Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 19 May 2024 21:59:19 -0700
Message-ID: <vSKx.1716181159836412366.VStY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="91thBGx5hLqzcLd3R24d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 May 2024 07:47:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63139

--91thBGx5hLqzcLd3R24d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I followed all the instructions as per the quick build, initially qemu had =
run for the second time it is not working and resulting to this error

runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e =C2=A0...
runqemu - ERROR - /home/perdaa/poky/build/tmp/deploy/images/qemux86-64 not =
a directory valid DEPLOY_DIR_IMAGE
ls: cannot access '/home/perdaa/poky/build/tmp/deploy/images/qemux86-64/*.q=
emuboot.conf': No such file or directory
runqemu - ERROR - Command 'ls -t /home/perdaa/poky/build/tmp/deploy/images/=
qemux86-64/*.qemuboot.conf' returned non-zero exit status 2.
runqemu - INFO - Cleaning up
runqemu - INFO - Host uptime: 278.63

--91thBGx5hLqzcLd3R24d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I followed all the instructions as per the quick build, initially qemu had =
run for the second time it is not working and resulting to this error&nbsp;=
<br /><br /><br />runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e =
&nbsp;...<br />runqemu - ERROR - /home/perdaa/poky/build/tmp/deploy/images/=
qemux86-64 not a directory valid DEPLOY_DIR_IMAGE<br />ls: cannot access '/=
home/perdaa/poky/build/tmp/deploy/images/qemux86-64/*.qemuboot.conf': No su=
ch file or directory<br />runqemu - ERROR - Command 'ls -t /home/perdaa/pok=
y/build/tmp/deploy/images/qemux86-64/*.qemuboot.conf' returned non-zero exi=
t status 2.<br />runqemu - INFO - Cleaning up<br />runqemu - INFO - Host up=
time: 278.63

--91thBGx5hLqzcLd3R24d--

