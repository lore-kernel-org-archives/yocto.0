Return-Path: <bluelightning@bluelightning.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14CE4C5AC75
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 01:39:49 +0000 (UTC)
Received: from mail-61-r20.ipv4.per01.ds.network
 (mail-61-r20.ipv4.per01.ds.network [27.123.24.217])
 by mx.groups.io with SMTP id smtpd.web09.6844.1643161186789516096
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 17:39:48 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@softec.co.nz header.s=default
 header.b=OJzfXOKt;
 spf=none, err=permanent DNS error (domain: bluelightning.org,
 ip: 27.123.24.217, mailfrom: bluelightning@bluelightning.org)
Received: from server-72-r70.ipv4.per01.ds.network (cp-fp06.syd02.ds.network
 [122.201.124.108])
	by halon-out02.au.ds.network (Halon) with ESMTPS
	id 6e831997-7e49-11ec-978f-f8bc1204ff90;
	Wed, 26 Jan 2022 09:43:59 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=softec.co.nz; s=default; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MVIU3PTC5IuU59nxXbBO/sum7Xkh6s5qbtlhaYwydko=; b=OJzfXOKt6Z43rr/eAdjxFDk/Sc
	jPrIwokbl3M2Vo6RJXpeRXkFeSgrrfVBAdc7iUCYrYLpV90TAOGntDQmUN2GxIKfHRItsWgodYpnD
	55MQCTLb1iXgMUeOtwIYty/4ULC4kOYX0/RZ/0RoLNS9t9UzDojjXWw/rTwOHTjN3hLu7gzRM1tgF
	6KlWbo0tOaN2eOWP+2KMoCSfYvudM0bwA9AOkeMlr5vC+CS8ZctfJtq1MxNfAylKDJFPlobCFrZGY
	gM2bTseBF4MRbbdJsXiBwlt+7SeBI8rNn8lC3lEyNzsuA6rmCF6kiH8IvLt3QJ4V26mVCj8Va6uFN
	6YimnOsg==;
Received: from [151.210.143.188] (port=13396 helo=linc.localnet)
	by cp-fp06.syd02.ds.network with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <bluelightning@bluelightning.org>)
	id 1nCXHg-001OKa-Ir
	for yocto@lists.yoctoproject.org; Wed, 26 Jan 2022 14:39:40 +1300
From: Paul Eggleton <bluelightning@bluelightning.org>
To: yocto@lists.yoctoproject.org
Subject: Additional hardening options
Date: Wed, 26 Jan 2022 14:39:39 +1300
Message-ID: <3150587.aeNJFYEL58@linc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp-fp06.syd02.ds.network
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - bluelightning.org
X-Get-Message-Sender-Via: cp-fp06.syd02.ds.network: authenticated_id:
 paul@softec.co.nz
X-Authenticated-Sender: cp-fp06.syd02.ds.network: paul@softec.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 01:39:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55972

Hi folks

I've been looking into a couple of compiler flags for hardening that I think we 
might want to consider enabling by default in security-flags.inc:


1) -fstack-clash-protection

This option was introduced to gcc 8.x and provides protection against the 
stack clash vulnerability:

https://securingsoftware.blogspot.com/2017/12/stack-clash-vulnerability.html

It has been enabled in some Linux distributions already (e.g. Ubuntu, Fedora).


2) -z noexecstack (or alternative mitigations)

gcc will enable an executable stack under a few different circumstances - see 
here for details

https://wiki.gentoo.org/wiki/Hardened/GNU_stack_quickstart

I've written a check that we could add to insane.bbclass that warns/errors on 
binaries with an executable stack. Does this seem reasonable to have?
The other possibility is we add -Wl,-z,noexecstack to LDFLAGS and then see 
what breaks, but unfortunately issues are likely only going to show up when 
the program crashes at runtime, and also it will stop the aforementioned check 
from working.


Any opinions?

Thanks
Paul



