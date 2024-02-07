Return-Path: <christian@hohnstaedt.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EACAC4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 11:18:11 +0000 (UTC)
Received: from mail.hohnstaedt.de (mail.hohnstaedt.de [85.214.238.48])
 by mx.groups.io with SMTP id smtpd.web11.17988.1707304689191916250
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 03:18:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hohnstaedt.de header.s=202312 header.b=LcVEfynC;
 spf=pass (domain: hohnstaedt.de, ip: 85.214.238.48, mailfrom: christian@hohnstaedt.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hohnstaedt.de;
	s=202312; t=1707304686;
	bh=JDzu59z8EYVm/UVHtw37+bSuk1lKKcnMHDOR8N1o6+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LcVEfynCOTWJo2FZoEHV1aECM336RDVpwQdQBIjfknAj0Kx3jfgXD9Oj+8g868Zli
	 OYneCpP0K5OAyVQYHa5ZoyM3cIgkGqMXbKmgaeRoGoR28TXZXHG6KebjZX5FfZ8dfq
	 LSrqvf00vol3I655yXH11nmOvHBbpUhJkD9t27kINHlO1ogHa8hH4RzOy7KgOQ3uIV
	 EZEooVzXq7AqWGesWvSyEd9dQsoQuFay+Rop2uQkw7v3jqysbaN7heuq/Z0Y7Jy4uC
	 LF61oCpmvjI6Cw/dCYbUaeho1K0yb0ZyRx13ujtHtihta98GF3OqexMyVZQi96MGJ7
	 gpw+FPIi1UyvA==
Received: from localhost (localhost [127.0.0.1])
	by mail.hohnstaedt.de (Postfix) with ESMTP id 4CC7714E00D1;
	Wed,  7 Feb 2024 12:18:06 +0100 (CET)
X-Virus-Scanned: Debian amavis at hohnstaedt.de
Received: from mail.hohnstaedt.de ([127.0.0.1])
 by localhost (hohnstaedt.de [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 79EKiR7eY6Uv; Wed,  7 Feb 2024 12:18:06 +0100 (CET)
Received: by mail.hohnstaedt.de (Postfix, from userid 1000)
	id 6CE1A14E0482; Wed,  7 Feb 2024 12:18:05 +0100 (CET)
Date: Wed, 7 Feb 2024 12:18:04 +0100
From: Christian Hohnstaedt <christian@hohnstaedt.de>
To: yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [ptest-runner] [PATCH] Do not reset error counter before
 each test
Message-ID: <ZcNm6bb26Krjd5vX@hohnstaedt.de>
References: <1799AE777F2DFCDE.30166@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1799AE777F2DFCDE.30166@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 11:18:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62415

Hello,

any news on this ?


