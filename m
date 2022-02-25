Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EDEC433EF
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 16:36:10 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web09.239.1645806969400569976
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 08:36:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com
 ([174.114.107.13]:59534 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1nNdZh-007dAD-Ur
	for yocto@lists.yoctoproject.org; Fri, 25 Feb 2022 11:36:07 -0500
Date: Fri, 25 Feb 2022 11:36:04 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: looking to boot core-image-minimal on meta-riscv board
Message-ID: <7bac38ca-d9fd-b019-8d47-4a1a4f2d6a8@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 16:36:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56283


  a friend of mine is diving into trying to boot linux on a meta-riscv
linux starter kit -- he's not using YP, and this is what he's
targeting:

  https://www.aliexpress.com/item/1005003751298305.html

  since i've wanted to jump into meta-riscv for a while, i figured i'd
play along and ordered something more substantial:

  https://www.aliexpress.com/item/1005002796061251.html

in any event, here's the story so far.

  as a first pass, i just fired up YP and built for qemuriscv64 to
establish a baseline, and that seems to work just fine, booting with
"runqemu nographic." and that at least gives me a bunch of config info
i can look at later.

  as for my actual target board, i know that the meta-riscv layer
defines support for two boards, neither of which is the one i will be
getting, but while i'm waiting for it, i can at least start
documenting all of the relevant settings and config values i'll want
to try.

  i know precious little about meta-riscv, so is there a sane way to
prepare for the eventual arrival of my board? my plan is to get
familiar with how the meta-riscv layer builds for the two supported
boards, so i'll have a handle on what i'll need to configure.

  any further advice would be most appreciated.

