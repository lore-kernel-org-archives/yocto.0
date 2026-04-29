Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 150D1FF8875
	for <webhook@archiver.kernel.org>; Wed, 29 Apr 2026 22:17:17 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7896.1777501028274904345
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Apr 2026 15:17:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=G35OZhZZ;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dieZERnxfoen+Fd8tgwZ6wLRkqSbc2DM4bmyFloFz+8=; b=G35OZhZZ/hQWLbE4KSb9oRD9hA
	IWQfKoCv78xN1a4IQSff5tkEl6i31YsqxHaDU/r0KRmnhJroolOmukDXfnsQsh4Mzdigf8CHzjY/C
	zpm2/o8ub03C7LFjzclXgwu3KiJUCt9M50kcsy41Bb0HkXcux8b0QhZACoPLCfgvCLYp3vi7qabte
	2osfgY32p151mqDxI7SEabW0/6iZ4bDhnCWwb9e+5UZQP//XL4Kuc5F71yO31UlTiLcAM2kZW66t/
	wHzT8569rmaeuPjTHrwXhtO+rEcScR3Tufmscvxe92DAWN/9M39qb8zdWJE+Oh1xZPFmSBgdn0Sta
	wrKzdekQ==;
Received: from pool-174-115-41-146.cpe.net.cable.rogers.com ([174.115.41.146]:57322 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1wIDDK-00000006McG-0IHd
	for yocto@lists.yoctoproject.org;
	Wed, 29 Apr 2026 18:17:06 -0400
Date: Wed, 29 Apr 2026 18:19:20 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Rockchip project: opinions on RAUC vs SWUpdate?
Message-ID: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Wed, 29 Apr 2026 22:17:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66458


  (I was going to poke Rockchip guru Quentin Schulz privately about
this but figured, might as well get lots of opinions.)

  I'm working on a new Rockchip project and while previous projects
here have assumed using SWUpdate for OTA updates, I notice that the
meta-rockchip layer's README refers to an example of using RAUC for
A/B updates:

  https://git.yoctoproject.org/meta-rockchip/tree/README#n125

  I'm curious ... do the Rockchip folks prefer RAUC to SWUpdate? I'm
not wedded to SWUpdate and am open to arguments for trying RAUC
instead. Thoughts?

rday

