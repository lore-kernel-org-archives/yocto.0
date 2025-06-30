Return-Path: <daniel@d-f-d.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07398C83000
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 07:44:07 +0000 (UTC)
Received: from dfd-cracked-rearview.d-f-d.ca (dfd-cracked-rearview.d-f-d.ca [51.161.82.14])
 by mx.groups.io with SMTP id smtpd.web11.33734.1751269436439386330
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 00:43:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@d-f-d.ca header.s=modoboa header.b=Y9c4g6Fc;
 spf=pass (domain: d-f-d.ca, ip: 51.161.82.14, mailfrom: daniel@d-f-d.ca)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=d-f-d.ca; s=modoboa;
	t=1751269435; bh=OUlrzBcM3QZrTlCq88KKpqfPAHu1dfBI0t+EL56cMzo=;
	h=Date:To:From:Subject:From;
	b=Y9c4g6Fc9vWuQDUcFqdjGt3iveDZjVF1FgFebJ3fqIvu/FDrDSCCRcP5dctAIWPuR
	 ECMgHM4FO1zFvNrgKIOpr0Q1990Bds+DqyI5xy/ntl/dWcvOMI4kZaLd1dkkK6bXPy
	 ODopOWu/OckBwxy8NFcfXSxQCEfdLQ5RvGB3qXNM6loJZwu8sy7ErrEmpb3+f+ftLV
	 6cWd+P7Lg0U1i6pWjvc41fejIohSdcqfzvmjIQMg0pt8JLkX6SZ9XmLmouzAmTZHbf
	 FzZahppAL00OX/LZEEJXOp34fjtqG784dxLSj3pJ5CZNB2PmWSv2CLquyjo9g8FE8r
	 Qp96OAs5Hl0gw==
Received: from localhost (localhost [127.0.0.1])
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTP id 421EC68180
	for <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 07:43:55 +0000 (UTC)
X-Virus-Scanned: Debian amavis at dfd-cracked-rearview.d-f-d.ca
Received: from dfd-cracked-rearview.d-f-d.ca ([127.0.0.1])
 by localhost (dfd-cracked-rearview.d-f-d.ca [127.0.0.1]) (amavis, port 10026)
 with ESMTP id km7RLcKtGQe6 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 07:43:50 +0000 (UTC)
Received: from [IPV6:2607:f2c0:d009:ff20::4d7] (unknown [IPv6:2607:f2c0:d009:ff20::4d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTPSA
	for <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 07:43:50 +0000 (UTC)
Message-ID: <918368ba-ed9f-49a8-a41f-a99f05c3aba4@d-f-d.ca>
Date: Mon, 30 Jun 2025 03:43:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yocto Project Mailing List <yocto@lists.yoctoproject.org>
Content-Language: en-US, en-CA, fr
From: "Daniel F. Dickinson" <daniel@d-f-d.ca>
Subject: BSP: X and customized raspberrypi5.conf machine
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 07:44:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65561

This is a multipart question/problem.

Summary:

1. I want to be sure I am using the correct means to create a customized =
machine configuration for what in the meta-raspberrypi layer is raspberry=
pi5.conf.

2. With my current attempt I get a working X11 image for the Raspberry Pi=
 5 but not the Compute Module 5 with CM5 IO board; I am unclear at presen=
t on whether
this is due to the customized configuration or an issue with current waln=
ascar branch of meta-raspberrypi; if the latter I'd like to resolve that =
too.


Customizing raspberrypi machine configuration

The first thing is I did is the obvious: create a meta-bsp_custom_pi5 wit=
h a config/machine/raspberrypi5-custom.conf. This appears to work when I =
use
`require conf/machine/raspberrypi5.conf` and override the parts I want to=
 change. However, I ran into an issue on the Compute Module 5 with CM5 IO
board which I discuss below. It occurred to me the issue could be the met=
hod of customizing the machine configuration.

I therefore went off on a tangent and successfully created a qemuarm64-pi=
5 board definition[1] which builds and executes my variation of
core-image-x11 correctly. This required a little more work than a simple =
rename as getting the linux-yocto to build correctly required making a
local copy of the kernel metadata (.scc and .cfg) so I could set the KMAC=
HINE name. It was also during that process that I discovered that on
the qemu board the board kernel configuration is not a simple defconfig.

So, this leads to the question: am I missing something like setting KMACH=
INE for the Pi5 / CM5 customized board? If so, what am I missing. If it
'should work' then see below for a possible graphics driver issue with th=
e CM5-IO setup.


X mostly not rendering for CM5-IO but works correctly for a Pi5 flagship =
board

With a modified core-image-x11 image it correctly displays with a modifie=
d raspberrypi5.conf on a Pi5 flagship board and on with qemuarm64-pi5.con=
f
(qemuarm64.conf with GPIO_VIRTIO drivers added) using runqemu.

However on the Compute Module 5 on a CM5 IO board the display is complete=
ly black with only the mouse cursor being rendered.

The vt1 console is working fine, so it's somehow specifically an X on CM5=
-IO issue.

Any ideas? I'm at a loss other than to wonder if there is some graphics d=
river issue.


Regards,
Daniel


[1] Its eventual goal is to be able to use virtio GPIO to verify Pi build=
s in Qemu instead of requiring deploying to a physical Pi5/CM5 for
basic testing (and, ideally, to automate some testing).

--=20
Daniel F. Dickinson, B. Computing, A+ =C2=B7 ce

https://www.wildtechgarden.ca - Technical documentation, website, and blo=
g
https://www.danielfdickinson.ca - Personal professional blog, website, an=
d resume


