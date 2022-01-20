Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C9BC433F5
	for <webhook@archiver.kernel.org>; Thu, 20 Jan 2022 15:25:05 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.38.119.136])
 by mx.groups.io with SMTP id smtpd.web09.13439.1642692303068090421
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 07:25:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it
 header.s=20210817 header.b=NJ3o4+FM;
 spf=pass (domain: faresoftware.it, ip: 93.38.119.136,
 mailfrom: mauro@faresoftware.it)
Message-ID: <3ab72885-035f-f3f6-a0ff-ffe6b97fda90@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1642692297;
	bh=rtJU4CmAytPH3RAiEx/JBMI4veKeMDIOJ/yyCzml1rk=;
	h=Date:To:From:Subject;
	b=NJ3o4+FMCMvO9QzCatQNc7q63IWIkjIhjOIjgmEdLgVaPMoFOkNrikw3UFDY/I8RF
	 cPnh4H/Ldw05kacbwWEypcpXQGJAmXbWbxUn3zpttQLD07XWEq39XljUY8oP1lU3+m
	 erRSWvEp7nOiq8CTp4adqLF63P8qvtQWiPiQExNA=
Date: Thu, 20 Jan 2022 16:24:45 +0100
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: Building embedded app for host machine
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.101, required 5, MIME_TRACE 0, FROM_HAS_DN 0,
 TO_MATCH_ENVRCPT_ALL 0, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, TO_DN_NONE 0,
 MIME_GOOD -0.1, __NOT_SPOOFED 0, RCPT_COUNT_ONE 0, MID_RHS_MATCH_FROM 0,
 NO_RECEIVED -0.001
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 15:25:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55932

Hi all.

I have this doubt.

Is it possible the make a toolchain which can produce the same app for=20
host machine?


I try to explain my think.


I produced an app for imx6dlsabresd with qt-5.6.2 using x86_64 as SDKMACH=
INE

 =C2=A0Can I make the same app with the same qt-5.6.2 but running directl=
y on=20
x86_64?


Now i make this, building the same qt version for host machine, but=20
outside yocto ring


[I hope to be clear, mu english is terrible]


Best regards,

 =C2=A0 MZ


