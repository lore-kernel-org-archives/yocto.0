Return-Path: <douglas.cooper1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0EABC00140
	for <webhook@archiver.kernel.org>; Mon, 15 Aug 2022 17:09:11 +0000 (UTC)
Subject: no framebuffer graphics when fbcon cursor is disabled #yocto
 #honister #framebuffer
To: yocto@lists.yoctoproject.org
From: douglas.cooper1@gmail.com
X-Originating-Location: Melbourne Beach, Florida, US (97.104.72.220)
X-Originating-Platform: Windows Chrome 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 15 Aug 2022 10:09:07 -0700
Message-ID: <RPxg.1660583347249548212.wLCZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8H2k1mUtJFAqCUb56bDl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Aug 2022 17:09:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57844

--8H2k1mUtJFAqCUb56bDl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Im using the 5.10.100 kernel from the meta-intel layer and have an image th=
at runs most of the df_* demos as well as=C2=A0cinematicexperience Qt5 exam=
ple without any interference from the console output. I have an application=
 that writes directly to the framebuffer device but gets smothered by text =
from the console. When I try to unbind the fbcon or disable the cursor I am=
 also prevented from graphics being displayed. If for example i run `cat /d=
ev/urandom > /dev/fb0` i get noise as expected with a small blinking cursor=
 from the terminal, but if i disable the cursor that command does nothing. =
Any thoughts on how i can display framebuffer graphics without console inte=
rference would be much appreciated,

-Doug

--8H2k1mUtJFAqCUb56bDl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />Im using the 5.10.100 kernel from the meta-intel layer an=
d have an image that runs most of the df_* demos as well as&nbsp;cinematice=
xperience Qt5 example without any interference from the console output. I h=
ave an application that writes directly to the framebuffer device but gets =
smothered by text from the console. When I try to unbind the fbcon or disab=
le the cursor I am also prevented from graphics being displayed. If for exa=
mple i run `cat /dev/urandom &gt; /dev/fb0` i get noise as expected with a =
small blinking cursor from the terminal, but if i disable the cursor that c=
ommand does nothing. Any thoughts on how i can display framebuffer graphics=
 without console interference would be much appreciated,<br /><br />-Doug

--8H2k1mUtJFAqCUb56bDl--

