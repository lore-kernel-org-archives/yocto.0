Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D240DC7115A
	for <webhook@archiver.kernel.org>; Wed, 18 Jun 2025 14:30:03 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web11.191.1750256997673568433
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Jun 2025 07:29:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=F3VEp8RO;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/i+DjWhFzodiO1mpJp/0DMcGrRG5yEig6DJSPvPp/IY=; b=F3VEp8ROnQgrYTLK6xM564myHS
	+CkvzYw4542QDyQpjglPsqRLQf0HBgLlASVNu7OHPMeyWCLUx6sTsPXn+C7xPvjmIpC/dFsZi6LSM
	E8XGeuOffibmKjEUy5z76QRj5vCAas1f5ksMjVJpElo2dhhC2x1N0vmPBPyJK1XDpSAdSq3+kc6tp
	AzAuziaDj7XIpZ1h/x50iQa6P6Pa+glhAe9ba4ldlhn0PbF6kfzDT4rs+dRfV+SFGOjQyUNemiWet
	NuqxhISOB3lL/EeMkAQVivOxhwL2Z0MTmxxbCo2jX+GG6kPhNkL5MaRh8QlJpWmWmDxgjKvDsYSPV
	gyHjnQag==;
Received: from pool-174-114-102-5.cpe.net.cable.rogers.com ([174.114.102.5]:45982 helo=asus)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1uRtnT-00000003uWf-1UBz
	for yocto@lists.yoctoproject.org;
	Wed, 18 Jun 2025 10:29:56 -0400
Date: Wed, 18 Jun 2025 10:29:47 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: [meta-security] FILESEXTRAPATHS:append seems to be wrong
Message-ID: <9bc6e19d-238e-7ea4-d1a9-6b2abf4f67c1@crashcourse.ca>
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
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Jun 2025 14:30:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65519


  wasn't sure which more focused list to send this to but here:

https://git.yoctoproject.org/meta-security/tree/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb#n9

this line appears to be wrong (trailing colon rather than leading):

FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"

  i will let someone else handle that.

rday

