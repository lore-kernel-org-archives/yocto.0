Return-Path: <luiz.balloti@timpelmedical.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8B4CC433EF
	for <webhook@archiver.kernel.org>; Thu,  7 Oct 2021 18:29:26 +0000 (UTC)
Subject: Machine overrides for x86 and x86-64
To: yocto@lists.yoctoproject.org
From: "Luiz Balloti" <luiz.balloti@timpelmedical.com>
X-Originating-Location: BR (189.19.254.203)
X-Originating-Platform: Windows Chrome 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 07 Oct 2021 11:29:26 -0700
Message-ID: <JbES.1633631366549333859.AamO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1dO1baTXbkYluBC1m2it"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Oct 2021 18:29:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54987

--1dO1baTXbkYluBC1m2it
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone. I'm not a Yocto/bitbake expert, so please forgive me for the p=
ossibily confusing message.

Our current Yocto setup uses sumo (we're stuck with that right now, don't k=
now if it matters). It has one shared layer, an ARM layer with one machine =
and a "x86" layer with two 32-bit machines. A few recipes in shared our lay=
er use a "x86" override to restrict functionality to these machines (bbappe=
nds were causing trouble, so I went the override route).

We now have a requirement to migrate one of the x86-32 machines to a 64-bit=
 system. My first step was to use "genericx86-64" as a test machine and ins=
pect a few variables. I was surprised to find out that MACHINEOVERRIDES doe=
s not list "x86" anymore, just the machine's name. I'd expect that a common=
 override for x86 machines would be defined, regardless of the bitness, but=
 repeating this with "genericx86" tells me this is not the case.=C2=A0We ha=
ve meta-intel, but it seems our x86 machine variables come from meta-yocto-=
bsp (I wonder now if this is a layer priority issue).

Is this not a common use case or is our setup fundamentally wrong?

Thanks in advance for any help.

--1dO1baTXbkYluBC1m2it
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone. I'm not a Yocto/bitbake expert, so please forgive me for the p=
ossibily confusing message.<br /><br />Our current Yocto setup uses sumo (w=
e're stuck with that right now, don't know if it matters). It has one share=
d layer, an ARM layer with one machine and a "x86" layer with two 32-bit ma=
chines. A few recipes in shared our layer use a "x86" override to restrict =
functionality to these machines (bbappends were causing trouble, so I went =
the override route).<br /><br />We now have a requirement to migrate one of=
 the x86-32 machines to a 64-bit system. My first step was to use "genericx=
86-64" as a test machine and inspect a few variables. I was surprised to fi=
nd out that MACHINEOVERRIDES does not list "x86" anymore, just the machine'=
s name. I'd expect that a common override for x86 machines would be defined=
, regardless of the bitness, but repeating this with "genericx86" tells me =
this is not the case.&nbsp;We have meta-intel, but it seems our x86 machine=
 variables come from meta-yocto-bsp (I wonder now if this is a layer priori=
ty issue).<br /><br />Is this not a common use case or is our setup fundame=
ntally wrong?<br /><br />Thanks in advance for any help.

--1dO1baTXbkYluBC1m2it--

