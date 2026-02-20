Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42416C55A79
	for <webhook@archiver.kernel.org>; Fri, 20 Feb 2026 11:05:32 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.36151.1771585531147202709
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Feb 2026 03:05:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=Wwr94BEZ;
 spf=pass (domain: bootlin.com, ip: 185.246.85.4, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 073424E40970;
	Fri, 20 Feb 2026 11:05:29 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D248C5FA8F;
	Fri, 20 Feb 2026 11:05:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B22A310368CBC;
	Fri, 20 Feb 2026 12:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1771585528; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=R879slYiecbkI6moeBtPrx7Mwfu/2BRQggk9ShzUXIY=;
	b=Wwr94BEZpxInW4DPy9mk/kYvggXqDS/hLOFLwC1OPEBrpYK3gLZBsfzFhYm7PU33/AfDUQ
	MWRIi+mGAZUEOV0LFyO8a+tdxGBQSRX8USbDdZdslpGSzBq8qbHA71aaEspqFYivvudxh7
	FlJBx2rpzNn7UkeyXEYwuK+VHt4N83QicIEPmmjqNhtv4le8u6UPdm04hGB0LBkxbgp5YX
	bs9aHpuiMhhJ6OBi+2c/0Zm6tvK7kCfJQKklaty3GdPye7hkBkhwnvufhxuVE2f/FRHXB9
	Ke0KrlUXjkAl+EY1BMT0usTVZr/jaIzM8Lk2ERBBlE/dimLTqa5bNrRQab2Ngw==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Feb 2026 12:05:26 +0100
Message-Id: <DGJQNNJO17J9.2FFLKINOYNHMZ@bootlin.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: <yocto@lists.yoctoproject.org>, <jmeyron@gmail.com>
Subject: Re: [yocto] How to properly use the script to improve the kernel
 cve report?
References: <CAJ0N1+STAk7So1vRHp=BRZ5rpmtwHUmkTeeZW-m-tBEXab_f5g@mail.gmail.com>
In-Reply-To: <CAJ0N1+STAk7So1vRHp=BRZ5rpmtwHUmkTeeZW-m-tBEXab_f5g@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Feb 2026 11:05:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66260

Hi,

Maybe the following documentation link can help?

https://docs.yoctoproject.org/security-manual/vulnerabilities.html#improve-=
kernel-cve-report-py

Antonin

