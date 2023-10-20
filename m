Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D28AFCDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 05:38:15 +0000 (UTC)
Subject: find: unrecognized: -printf
To: yocto@lists.yoctoproject.org
From: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Oct 2023 22:38:10 -0700
Message-ID: <L7wx.1697780290550525004.loGj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ndzOHZSOlH1hz04dQh4C"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 05:38:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61426

--ndzOHZSOlH1hz04dQh4C
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !

I am trying to add "etckeeper"=C2=A0 to yocto . I have written a recipe and=
 added it in my Rootfs . But when I try to commit , I am getting the below =
error log:

---------------------------------------------------------------------------=
----------------------

root@imx6ulevk:~# etckeeper commit "First commit of my /etc directory"

find: unrecognized: -printf

BusyBox v1.31.0 (2023-10-18 07:46:50 UTC) multi-call binary.

Usage: find [-HL] [PATH]... [OPTIONS] [ACTIONS]

---------------------------------------------------------------------------=
----------------------

I tried enabling the -printf for find in busybox but I could not able to se=
e in busybox menuconfig . Requesting your suggestions to resolve this issue=
.

Thanks in advance

--ndzOHZSOlH1hz04dQh4C
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Greetings !<br /><br />I am trying to add "etckeeper"&nbsp; to yocto . I=
 have written a recipe and added it in my Rootfs . But when I try to commit=
 , I am getting the below error log:</p>
<p>------------------------------------------------------------------------=
-------------------------<br /><br /></p>
<p>root@imx6ulevk:~# etckeeper commit "First commit of my /etc directory"</=
p>
<p>find: unrecognized: -printf</p>
<p>BusyBox v1.31.0 (2023-10-18 07:46:50 UTC) multi-call binary.</p>
<p>&nbsp;</p>
<p>Usage: find [-HL] [PATH]... [OPTIONS] [ACTIONS]</p>
<p>&nbsp;</p>
<p>------------------------------------------------------------------------=
-------------------------<br /><br />I tried enabling the -printf for find =
in busybox but I could not able to see in busybox menuconfig . Requesting y=
our suggestions to resolve this issue.</p>
<p>&nbsp;</p>
<p>Thanks in advance</p>

--ndzOHZSOlH1hz04dQh4C--

