Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14ABCC433EF
	for <webhook@archiver.kernel.org>; Tue, 17 May 2022 10:23:22 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web10.5433.1652782996607324885
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 May 2022 03:23:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com
 ([174.114.107.13]:38920 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1nquMF-0005VS-9V
	for yocto@lists.yoctoproject.org;
	Tue, 17 May 2022 06:23:15 -0400
Date: Tue, 17 May 2022 06:23:12 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: simple YP layer to add "snaps" to a YP build
Message-ID: <c580a7fb-5544-119b-5988-6e29d92aa861@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Tue, 17 May 2022 10:23:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57122


  these days, i'm hip-deep in canonical stuff, working with ubuntu
core and snaps (boo! hiss! oh, relax ... :-), and i chanced across a
somewhat-neglected layer that supports adding snaps to a basic YP
build, so i forked a copy, tidied it up, and verified that i can build
a core-image-minimal for qemux86-64 that supports adding and running
your basic "hello, world" snap.

  here's my current version of the layer (branch snapd-2.55.3, soon to
be updated to snapd-2.55.5 as soon as this current build finishes and
runs):

  https://github.com/rpjday/meta-snapd/tree/snapd-2.55.3

the README there needs to be cleaned up as much of that is no longer
necessary, since i added a "snapd_on_yp" DISTRO that centralizes much
of the essential config settings.

  so if you wanted to play with adding snaps to your established YP
build, give it a try. still lots of tidying up to do, but it seems to
work.

rday

