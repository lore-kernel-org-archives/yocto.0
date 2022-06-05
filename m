Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AD03C433EF
	for <webhook@archiver.kernel.org>; Sun,  5 Jun 2022 11:49:47 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web08.19777.1654429779801964580
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jun 2022 04:49:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com
 ([174.114.102.5]:36358 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1nxolF-0001sa-Kq
	for yocto@lists.yoctoproject.org;
	Sun, 05 Jun 2022 07:49:38 -0400
Date: Sun, 5 Jun 2022 07:49:34 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: looking to build meta-riscv based HDMI image for nezha board
Message-ID: <8d419e1-2a74-36ee-effe-c3b622ee6195@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Sun, 05 Jun 2022 11:49:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57269


  after finally unpacking my risc-v nezha SBC, i'm trying to
download/build an image that will boot to a desktop with as little
effort as possible. that is, given this board, i would prefer to do no
more than:

  * flash appropriate image to micro SD and insert
  * connect HDMI port to monitor
  * power up

  i don't want to connect ethernet, don't want debug port, don't even
want to connect USB mouse or keyboard ... with just what i've listed
above, i'd like to see the end result on the monitor.

  the image that comes with the board apparently defaults to the MIPI
DSI display, so that doesn't help.

  i've set up all of the meta-riscv (and other) layers to build an
image, so is there an image that will give me the above? or am i
overlooking something critical? thanks.

rday

p.s. a downloadable image from somewhere (not even YP-based) just to
prove this scenario works would be helpful as well.

