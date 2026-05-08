Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9713CD3436
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 13:24:44 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13534.1778246677228230607
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2026 06:24:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=JVwZD/90;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ziOa+/gwcAPU2iZskE5lTgrqusQYHIT4GTlD2KEwJxg=; b=JVwZD/90GGQ7k73xgY85Ku0J5O
	VquzXLVf51+FXhUZNfFFUDHfPa/MVyGcClwAWpSqCZxRFfX0HXQtJNdRbU7CREad1tjbdXyFLL7d6
	WgvPVc5onfSDbLbP2sqduZX19P6+ukekcyYRvyKXuSxQgvmTH6Ad6C9g5tW3+oq3uG38g5dVtXCEZ
	4g+aC1BO7Oo8IwwTTwyvKParaXEzbdohhWIV4AvqLTnqJbJCeAOrmBDMN8gOBkHW/vtawlW7JmPJu
	ss0JiYuzRmpmFyLRrL8Q64brZXZljAvx/bSZNCmvzBGzvQugCgNRBZgvtm9zxQepGLTFhWmtMP+8h
	agYaCebA==;
Received: from [147.129.179.166] (port=51784 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1wLLBy-00000003gI1-27pk
	for yocto@lists.yoctoproject.org;
	Fri, 08 May 2026 09:24:35 -0400
Date: Fri, 8 May 2026 09:27:23 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Sprinkled examples of layers that use ":append" without a leading
 space
Message-ID: <6498b6d3-0aae-5d73-d6d2-2561a20d582c@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 13:24:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66515


  Recently, I noticed the occasional example in some layers where
there *appears* to be a missing leading space when using the ":append"
operator.

  As a single example in the meta-virualization layer:

https://git.yoctoproject.org/meta-virtualization/tree/recipes-core/kata-containers

  kata-agent_git.bb:RDEPENDS:${PN}-dev:append = "bash"
  kata-proxy_git.bb:RDEPENDS:${PN}-dev:append = "bash"
  kata-runtime_git.bb:RDEPENDS:${PN}-dev:append = "bash"
  kata-shim_git.bb:RDEPENDS:${PN}-dev:append = "bash"

Just thought I'd point it out so layer maintainers might do a quick
check on their layers.

rday

