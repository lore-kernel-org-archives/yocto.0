Return-Path: <pokybuild@yoctoproject.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEF20C4332F
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 19:38:48 +0000 (UTC)
Received: from a27-30.smtp-out.us-west-2.amazonses.com (a27-30.smtp-out.us-west-2.amazonses.com [54.240.27.30])
 by mx.groups.io with SMTP id smtpd.web10.24842.1670528319379154136
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 11:38:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yoctoproject.org header.s=j46ser6a2yusdzubpv7m7ewqgesde2ie header.b=NyHzHSIt;
 spf=pass (domain: us-west-2.amazonses.com, ip: 54.240.27.30, mailfrom: 01010184f33f3b78-07acc2b2-ae5d-4466-bf8c-59a138757177-000000@us-west-2.amazonses.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=j46ser6a2yusdzubpv7m7ewqgesde2ie; d=yoctoproject.org;
	t=1670528318; h=To:Cc:Subject:Message-Id:Date:From;
	bh=EYN8qBIv6Kx4UxUDAcnIfDaUViL29Hg2rGZfXY1NbS8=;
	b=NyHzHSItXhm8JvPBS/tywa2mSo5w6SBnX7daDICa4jsLf5PCNPgREVt1oNrwWMv+
	DnDTqsyGFzBun9NxI5g9TrNgjHAjfgCIjUfs7w8Wjzv+7mi6osl4PEmYnyuVA1PG3oB
	ONvAppXDOAuXZ9fz0dTKSjch+vsdiZuVeEWolHJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1670528318;
	h=To:Cc:Subject:Message-Id:Date:From:Feedback-ID;
	bh=EYN8qBIv6Kx4UxUDAcnIfDaUViL29Hg2rGZfXY1NbS8=;
	b=CtGHFiSnw2AgH/tWC/zWdphxf87VppWJBSoGVTaLu+zdoB15TcmZjSvDmzue1Krn
	U/U3uLiHUKgdNTrCQhAIWMBU8mzF+BZZgDdKHhNjCzCRAbjUtli3PIPZ6pHPqacGDBU
	1Z2QDBeh2kMK5Sh7HAj6GJy0DDBY0D7KnPAas6vA=
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Subject: QA notification for completed autobuilder build (yocto-4.2_M1.rc1)
Message-ID: <01010184f33f3b78-07acc2b2-ae5d-4466-bf8c-59a138757177-000000@us-west-2.amazonses.com>
Date: Thu, 8 Dec 2022 19:38:38 +0000
From: Pokybuild User <pokybuild@yoctoproject.org>
Feedback-ID: 1.us-west-2.9np3MYPs3fEaOBysGKSlUD4KtcmPijcmS9Az2Hwf7iQ=:AmazonSES
X-SES-Outgoing: 2022.12.08-54.240.27.30
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 19:38:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58766


A build flagged for QA (yocto-4.2_M1.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.2_M1.rc1


Build hash information: 

bitbake: 6709aedccbb2e7ddbb1b2e7e4893481a7b536436
meta-agl: e2c31ebda224bf6813ff861df9a51e8fc46944e5
meta-arm: 02b430d045b50d5e5cab9a52b786d1134ba17c19
meta-aws: da36bf8bc3f5a1cbb9396e8d28559c422cd96412
meta-intel: de59d48ad2ce88ebe331a8355e742fce7c3b428c
meta-mingw: 4a066511a944ec946efa7a4571029c992cf0ae00
meta-openembedded: 8c58f419c299fe3764482ebe4f366e25533ea23f
meta-virtualization: cb5dfda6f6d862a575f029ee8ded0bc3db6bc766
oecore: 96ff9baa8ead57504f40f362ed3a4aaa776d1b58
poky: 4d19594b8bdacde6d809d3f2a25cff7c5a42295e



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


 

