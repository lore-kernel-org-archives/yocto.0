Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10CE3C624D3
	for <webhook@archiver.kernel.org>; Sat,  5 Sep 2026 14:59:19 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.9625.1788620349277967442
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Sep 2026 07:59:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=pohG+YUw;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rbLxiZ692dnzYYIxdPU+hSAwyovvSKnUn4NmGE5rqcg=; b=pohG+YUw/lktHdstkAkj/rU+Sp
	AqyYIFznmXrwFTR1vvoNehfrL+SgZFoHyV5++sA7gv50fTtsEkZeObh5fxMQOzEpWYyAagHw7S7UI
	idxdtmMCH/tV5RVdo2qhVZIrDqRVUjPNX8uuJJOte+zEnsJDkcR/UU5EMEB6DV8GoL50Fk207NJnt
	VQI3vmbtuNr4IYpi5fOFsZtmp3QWcgTTRmPvEl0Vr6ImNONQkYqVoSU/LVQipGs+ZkHgDN7Jyn7TW
	QXd4z6sd1vu710/TvPH0dJQfOHMb3JbhlLcHAKqHrlCGBS5MaLKgc8BpqFWq3hD/Ifk5Ij05e4ET/
	cAps6hPQ==;
Received: from pool-174-115-41-146.cpe.net.cable.rogers.com ([174.115.41.146]:47538 helo=sheena)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1x2rrD-000000008aZ-0NnR
	for yocto@lists.yoctoproject.org;
	Sat, 05 Sep 2026 10:59:06 -0400
Date: Sat, 5 Sep 2026 10:57:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Has anyone built a (wrynose) core-image-minimal for NXP i.MX93
 FRDM?
Message-ID: <3c9cc3c8-6d85-57a9-0345-492ab5dcd100@crashcourse.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Sep 2026 14:59:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66706


  I tried this a while ago and it failed, apparently due to a version
of U-Boot that was not recent enough. So I just put the board to the
side, then recently noticed that the wizards at Bootlin have updated
their training/lab material to wrynose:

https://bootlin.com/blog/bootlins-yocto-training-course-updated-to-wrynose/

and one of the supported boards is the FRDM, so I'm just going to
follow the course and see if there's no issue now.

rday

