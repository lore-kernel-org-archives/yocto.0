Return-Path: <chiefsleepyeye@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18356C433EF
	for <webhook@archiver.kernel.org>; Wed, 10 Nov 2021 20:44:34 +0000 (UTC)
Subject: __DATE__ and __TIME__ in dunfell builds #dunfell
To: yocto@lists.yoctoproject.org
From: chiefsleepyeye@gmail.com
X-Originating-Location: Madison, Wisconsin, US (24.159.236.186)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Nov 2021 12:44:32 -0800
Message-ID: <ss6y.1636577072889878857.AVoN@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Znb11Rl3Hz173dDZ0vdf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Nov 2021 20:44:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55306

--Znb11Rl3Hz173dDZ0vdf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a weird thing going on with *__DATE__* and *__TIME__* when building =
my app in the yocto environment.=C2=A0 I'm building for "genericx86-64" and=
 I'm using __DATE__ and __TIME__ in my source to show what the build date/t=
ime of my app is at run time.=C2=A0 But... __DATE__ is always " *Apr=C2=A0 =
5 2011* " and __TIME__ is always " *23:00:00* ".=C2=A0 And, yes, the curren=
t time on the build machine is not that.=C2=A0 Anyone else experience this =
and/or know how to fix it?=C2=A0 Oh, host is Ubuntu 20.04.3 LTS.

Mike

--Znb11Rl3Hz173dDZ0vdf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a weird thing going on with <strong>__DATE__</strong> and <strong>__=
TIME__</strong> when building my app in the yocto environment.&nbsp; I'm bu=
ilding for "genericx86-64" and I'm using __DATE__ and __TIME__ in my source=
 to show what the build date/time of my app is at run time.&nbsp; But... __=
DATE__ is always "<strong>Apr&nbsp; 5 2011</strong>" and __TIME__ is always=
 "<strong>23:00:00</strong>".&nbsp; And, yes, the current time on the build=
 machine is not that.&nbsp; Anyone else experience this and/or know how to =
fix it?&nbsp; Oh, host is Ubuntu 20.04.3 LTS.<br /><br />Mike

--Znb11Rl3Hz173dDZ0vdf--

