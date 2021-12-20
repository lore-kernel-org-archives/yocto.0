Return-Path: <sanjaycvr35412@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45091C433F5
	for <webhook@archiver.kernel.org>; Mon, 20 Dec 2021 05:27:51 +0000 (UTC)
Subject: echo and read shell script functions in post install script doesn't
 display messages #armv6
To: yocto@lists.yoctoproject.org
From: sanjaycvr35412@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (165.225.122.162)
X-Originating-Platform: Windows Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 19 Dec 2021 21:27:50 -0800
Message-ID: <P4xU.1639978070269825157.MKoU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wFJXKLeckx2frY3OFJFv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Dec 2021 05:27:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55620

--wFJXKLeckx2frY3OFJFv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have to execute a script to setup static IP address of the ARM board. Thi=
s I need to do it on first boot of the Yocto Linux. I wrote post install sc=
ript to do it, but it doesn't print interactive messages to user asking for=
 IP address, netmask, gateway etc. i.e. it doesn't print echo and read mess=
ages.
I need to run this script only once on first boot of the ARM board.
Kindly suggest me a way to display echo/read messages to make setup script =
more interactive.

--wFJXKLeckx2frY3OFJFv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have to execute a script to setup static IP address of the ARM board. Thi=
s I need to do it on first boot of the Yocto Linux. I wrote post install sc=
ript to do it, but it doesn't print interactive messages to user asking for=
 IP address, netmask, gateway etc. i.e. it doesn't print echo and read mess=
ages.<br />I need to run this script only once on first boot of the ARM boa=
rd.<br />Kindly suggest me a way to display echo/read messages to make setu=
p script more interactive.&nbsp;

--wFJXKLeckx2frY3OFJFv--

