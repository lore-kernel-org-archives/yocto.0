Return-Path: <bibibobibo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17F59C25B78
	for <webhook@archiver.kernel.org>; Tue, 28 May 2024 21:31:15 +0000 (UTC)
Subject: Disable bitbake command ANSI color output
To: yocto@lists.yoctoproject.org
From: bibibobibo@gmail.com
X-Originating-Location: San Jose, California, US (204.246.162.39)
X-Originating-Platform: Linux Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 28 May 2024 14:31:06 -0700
Message-ID: <ybnS.1716931866846451135.tppV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Nh2gwtEL8UKBrBB2zC49"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 21:31:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63219

--Nh2gwtEL8UKBrBB2zC49
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings everyone,

Dummy question, is there a quick way to disable bitbake output color? When =
we do container build, there is a lot of ANSI color code.

=1B[36m=1B[39m NOTE: recipe python3-gcovr-native-5.1-r0: task do_autorev_ch=
eck: Succeeded=1B[0m=1B[0m
...

I was wondering if there is some quick TERM=3D setting or NO_COLOR env var =
that can suppress these things.

Thanks,
m.

--Nh2gwtEL8UKBrBB2zC49
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings everyone,<br /><br />Dummy question, is there a quick way to disa=
ble bitbake output color? When we do container build, there is a lot of ANS=
I color code.&nbsp;<br /><br />&nbsp;=1B[36m=1B[39m NOTE: recipe python3-gc=
ovr-native-5.1-r0: task do_autorev_check: Succeeded=1B[0m=1B[0m<br />...<br=
 /><br />I was wondering if there is some quick TERM=3D setting or NO_COLOR=
 env var that can suppress these things.<br /><br />Thanks,<br />m.

--Nh2gwtEL8UKBrBB2zC49--

