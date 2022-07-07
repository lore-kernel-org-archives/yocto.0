Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC513C43334
	for <webhook@archiver.kernel.org>; Thu,  7 Jul 2022 10:07:13 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web11.3766.1657188428935501571
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 03:07:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com
 ([174.114.102.5]:35930 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1o9OPa-0005ut-Iy
	for yocto@lists.yoctoproject.org;
	Thu, 07 Jul 2022 06:07:07 -0400
Date: Thu, 7 Jul 2022 06:07:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: meta-riscv: building curl, "undefined reference to
 '__atomic_exchange_1'
Message-ID: <9496b940-e0cb-99fa-6a54-4cf5695ddd56@crashcourse.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id:
 rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Jul 2022 10:07:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57469


  on admittedly unsupported ubuntu 22.04 platform but it's clear this
is a known issue as it's pretty much identical to what one reads here:

  https://github.com/advancedtelematic/aktualizr/issues/1427

the explanation being that, "not every atomic operation is currently
supported by GCC on RISC-V."

  oddly, building a riscv64 core-image-minimal once upon a time on
fedora worked just fine, so i'm assuming a difference in gcc versions
is what is causing this.

  what is the recommended workaround for this?

rday

