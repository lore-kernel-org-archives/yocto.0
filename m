Return-Path: <douglas.cooper1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FFDC76196
	for <webhook@archiver.kernel.org>; Mon, 10 Apr 2023 10:48:59 +0000 (UTC)
Subject: configure task runs in devshell but not in bitbake #devtool #kirkstone
To: yocto@lists.yoctoproject.org
From: douglas.cooper1@gmail.com
X-Originating-Location: Melbourne Beach, Florida, US (97.104.72.220)
X-Originating-Platform: Windows Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Apr 2023 03:48:56 -0700
Message-ID: <6Dvh.1681123736329075845.nOOh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4g8MB0CyTAHdoqMUUu2C"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 10:48:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59653

--4g8MB0CyTAHdoqMUUu2C
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a native tool (dotnet cli) that i use for configure/compile. It used=
 to run fine in honister but im now having issues in kirkstone after recent=
ly upgrading. I can switch to a devshell and execute run.do_configure scrip=
t without issue. Any tips to further debug would be appreciated.

--4g8MB0CyTAHdoqMUUu2C
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a native tool (dotnet cli) that i use for configure/compile. It used=
 to run fine in honister but im now having issues in kirkstone after recent=
ly upgrading. I can switch to a devshell and execute run.do_configure scrip=
t without issue. Any tips to further debug would be appreciated.

--4g8MB0CyTAHdoqMUUu2C--

