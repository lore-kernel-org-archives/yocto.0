Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.28628.1623671904379471333
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 04:58:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9E00F38C05F5
	for <yocto@yoctoproject.org>; Mon, 14 Jun 2021 11:58:23 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:41810 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lslEU-007ncf-DZ
	for yocto@yoctoproject.org; Mon, 14 Jun 2021 07:58:22 -0400
Date: Mon, 14 Jun 2021 07:58:19 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: thoughts on YP-friendly developer laptop?
Message-ID: <72e88753-bee4-a983-1c1-359ecc9855f1@crashcourse.ca>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  starting to think about a new laptop that will, among other things,
do lots of OE/YP builds, and i'll start with this as the basis for a
few questions about hard drives:

https://www.dell.com/en-ca/shop/gaming-laptops/g15-ryzen-edition-gaming-laptop/spd/g-series-15-5515-laptop/ng155515_sb_ps25e

while an SSD would be delightful, i'm concerned about how doing
frequent 40-50G builds would wear out an SSD. so i was considering
looking for something with a fast regular HD for the actual build
directories, but room to put in an M.2 NVMe that would hold fairly
static content, like the OS itself, all the layers, a local source
mirror and so on.

  am i overthinking this? anyone have a laptop setup that is smokin'
fast (yeah, 8 core AMD ryzen :-), and a dual drive layout that seems
to work well with lots and lots of OE builds?

rday
