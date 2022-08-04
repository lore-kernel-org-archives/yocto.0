Return-Path: <sethu.m@calixto.co.in>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19FBC25B06
	for <webhook@archiver.kernel.org>; Thu,  4 Aug 2022 07:31:43 +0000 (UTC)
Subject: binutils not compiling in my system (Ubuntu 18.04) #dunfell
To: yocto@lists.yoctoproject.org
From: "Sethu Madhav" <sethu.m@calixto.co.in>
X-Originating-Location: Nellore, Andhra Pradesh, IN (49.206.128.238)
X-Originating-Platform: Linux Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Aug 2022 00:31:36 -0700
Message-ID: <ouDR.1659598296494867575.PRy9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="baiunryzZvVl2Gh2nGIa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Aug 2022 07:31:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57775

--baiunryzZvVl2Gh2nGIa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

I am working on a custom board , which i develop bsp based on a poky(dunfel=
l). Iam unable to build the basic core-image-minimal(with out adding any of=
 our custom layers and beaglebone-yocto as MACHINE) and also our custom ima=
ge(By Adding custom layers). Iam getting error during the do_compile stage =
of binutils.
Iam building this project on a Ubuntu 18.04 based machine . And one more th=
ing is the same project is running on another machine with same OS. What ia=
m missing in my machine . Any helps are appreciated=C2=A0 . Iam attaching b=
oth the error logs which built by adding our custom layers(iec61850ErrorLog=
_yocto=C2=A0) and logs during the built of basic core-image-minimal(PokyErr=
orLog=C2=A0)

--baiunryzZvVl2Gh2nGIa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi&nbsp;<br /><br />I am working on a custom board , which i develop bsp ba=
sed on a poky(dunfell). Iam unable to build the basic core-image-minimal(wi=
th out adding any of our custom layers and beaglebone-yocto as MACHINE) and=
 also our custom image(By Adding custom layers). Iam getting error during t=
he do_compile stage of binutils.&nbsp;<br />Iam building this project on a =
Ubuntu 18.04 based machine . And one more thing is the same project is runn=
ing on another machine with same OS. What iam missing in my machine . Any h=
elps are appreciated&nbsp; . Iam attaching both the error logs which built =
by adding our custom layers(iec61850ErrorLog_yocto&nbsp;) and logs during t=
he built of basic core-image-minimal(PokyErrorLog&nbsp;)

--baiunryzZvVl2Gh2nGIa--

