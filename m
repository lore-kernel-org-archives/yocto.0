Return-Path: <ashujoshi35@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF199C4707C
	for <webhook@archiver.kernel.org>; Fri, 12 Jan 2024 09:08:32 +0000 (UTC)
Subject: Re: [yocto] sd-bus.h not found even with DEPENDS += "systemd"
To: Ross Burton <ross.burton@arm.com>,yocto@lists.yoctoproject.org
From: ashujoshi35@gmail.com
X-Originating-Location: US (136.226.232.163)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 Jan 2024 01:08:32 -0800
References: <CAEA4A72-2B38-4014-B258-20CA75958495@arm.com>
In-Reply-To: <CAEA4A72-2B38-4014-B258-20CA75958495@arm.com>
Message-ID: <25272.1705050512279267764@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="j1FuMpWKWepk9G0whcnA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jan 2024 09:08:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62134

--j1FuMpWKWepk9G0whcnA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sorry, will not be able to share entire recipe file but make file is open s=
ource, I am just trying to call it from recipe.
make file path : https://github.com/wirepas/gateway/tree/master/sink_servic=
e

Ideally it should not be broken. Issue seems to be more from point that som=
ehow make file is not generating image for target, rather it is doing for h=
ost only. Seems it is failing to cross compile.

--j1FuMpWKWepk9G0whcnA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sorry, will not be able to share entire recipe file but make file is open s=
ource, I am just trying to call it from recipe.&nbsp;<br />make file path :=
&nbsp;<a href=3D"https://github.com/wirepas/gateway/tree/master/sink_servic=
e" target=3D"_blank" rel=3D"noopener">https://github.com/wirepas/gateway/tr=
ee/master/sink_service</a><br /><br />Ideally it should not be broken. Issu=
e seems to be more from point that somehow make file is not generating imag=
e for target, rather it is doing for host only. Seems it is failing to cros=
s compile.

--j1FuMpWKWepk9G0whcnA--

