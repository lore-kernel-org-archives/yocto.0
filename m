Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C5C4C83F03
	for <webhook@archiver.kernel.org>; Wed,  9 Jul 2025 11:09:34 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.12850.1752059361164941236
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Jul 2025 04:09:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=NsuXkS3t;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ax+cvU/QZAIAiAamJpsRWh9vy48oYViSLswYHpuXrQ0=; b=NsuXkS3t+lJVukRVEd2C2HrLoD
	RsbeCWVznkmCRipYYXU5EJhZGbegnSR76LJosUDo6zmxLT2QlBc8jiWUmc44LwC5Irq+dN6ti3//G
	xucAJ9yNimTNWbaVNKwNaZJE2sWhLuB++ZNxr4RkZn6HuAZhhweFW5dvkZYhINjs1ykchhgx+bjD4
	dxeh05saJ0D3zAXHT5AUIyMlzrcMQziMIVnKv/ZL0xYcQPIaJO2BfhqxCKWdxGyJ/2FPksyT1Rkdb
	X5kyDlNNau4BQdZKNFVNGSN3PC4WVIk3wKRlKWoWhcIlhWxd3L4lKwExBpx9J9B3RIedO0Y4Pbf39
	gn4e7G8g==;
Received: from pool-174-114-102-5.cpe.net.cable.rogers.com ([174.114.102.5]:36912 helo=asus)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1uZSft-0000000ARVN-1HAo
	for yocto@lists.yoctoproject.org;
	Wed, 09 Jul 2025 07:09:19 -0400
Date: Wed, 9 Jul 2025 07:09:14 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Is there a YP RISC-V specific mailing list?
Message-ID: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Wed, 09 Jul 2025 11:09:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65633


  I'm currently diving into RISC-V and have piles of questions but I
see no YP mailing list devoted to RISC-V. Should there be one?

rday

