Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4051EC433EF
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 21:48:05 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web09.70.1644011284186455946
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 13:48:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from [::1] (port=53844 helo=cpanel8.indieserve.net)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1nG6R0-002JIz-Ng
	for yocto@lists.yoctoproject.org; Fri, 04 Feb 2022 16:48:02 -0500
Received: from [174.114.56.109] ([174.114.56.109]) by crashcourse.ca (Horde
 Framework) with HTTPS; Fri, 04 Feb 2022 16:48:01 -0500
Date: Fri, 04 Feb 2022 16:48:01 -0500
Message-ID: <20220204164801.Horde.1RwI36nx3ke0fpHKBBUVCbL@crashcourse.ca>
From: rpjday@crashcourse.ca
To: yocto@lists.yoctoproject.org
Subject: is there a viable YP-friendly risc-v dev kit?
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id:
 rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 21:48:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56078

friend asked me about the options for a risc-v dev kit that worked
with YP, and i'm aware of the meta-riscv layer, but wherever i looked,
it seems like risc-v dev kits have a very short life span, being either
put on hold or outright cancelled (beaglev, hifive unmatched, etc.)

are there, in fact, any reasonable risc-v dev boards out there?

rday


