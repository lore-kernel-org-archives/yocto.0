Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FF6C02183
	for <webhook@archiver.kernel.org>; Sun, 19 Jan 2025 10:16:34 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.51.112.187])
 by mx.groups.io with SMTP id smtpd.web10.13223.1737281791437262560
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2025 02:16:32 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@faresoftware.it header.s=20210817 header.b=Cota/3b2;
 spf=pass (domain: faresoftware.it, ip: 93.51.112.187, mailfrom: mauro@faresoftware.it)
Message-ID: <77bad18f-3b09-4712-a9f5-3aacf6506102@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1737281788;
	bh=/CUHk6XUdD3eecDpdQoUtnohe3RusRou+2v2q1+mh/s=;
	h=Date:To:From:Subject;
	b=Cota/3b2ahxluG3kj+vBt37xOdwpJ4m+TCrjm+E+EUQgbFj+6QE7lEflBKONjkhsX
	 c6kuFvTqIkfajeotGao9gsYUu04pmPFf0PtFpqZVZx1fyXKok1dU578jhJVapL08hF
	 ZAG00ATaMrlHmpBeuKa5fqvVZFo0Py+7t4qUOg3aMpnQWz/DRUVWQhv2jQxO1c2GMW
	 Mz2LelGQDeZu0onF2P2TbBUdu4/h5t/YhGzzDp3hNUnZcyS/VezPfOUMVYI9fpD0Nr
	 5eIsfzN7M9Of8K4Wqu2i6IjjXKSPaX35JaxE7CQ1/Ve+1wMSwRywT27kvAToZW6PSV
	 BTfsd13b6swJw==
Date: Sun, 19 Jan 2025 11:16:26 +0100
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: MIRRORS variable
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-MCP-Status: no
X-Synology-Spam-Status: score=-3.101, required 8, autolearn=ham, FROM_HAS_DN 0, FROM_EQ_ENVFROM 0, BAYES_HAM -3, TO_DN_NONE 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, RCVD_COUNT_ZERO 0, ARC_NA 0, RCPT_COUNT_ONE 0, MISSING_XM_UA 0, MIME_TRACE 0, __NOT_SPOOFED 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Jan 2025 10:16:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64589

Hi all.

Which is the correct syntax of MIRRORS variable?

I need to replace

git://user@nas-archivio:/var/home/git;protocol=3Dssh=C2=A0 with=20
git://git@gitlab.newsoc.it:2289:/projects;protocol=3Dssh


I put this in local.conf


MIRRORS +=3D \

git://user@nas-archivio:/var/home/git;protocol=3Dssh=C2=A0 \

git://git@gitlab.newsoc.it:2289:/projects;protocol=3Dssh \n \

"


but the fetcher doesn't the replace.


Best regards

 =C2=A0 MZ


