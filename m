Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11122CD68F1
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 06:32:36 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.85031.1696919546738392299
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Oct 2023 23:32:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=wA13ICtn;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=L6OGVr8jTn7xc9UMdZdY00mxSb3Timldl3nl+KDw2qQ=; b=wA13ICtnHCk28v6l7OacRaY+W0
	DKHkOJyPu4gFLPSg7u6B3FrN+jvq4EVYVwPd4UuysFclSz2b30ja4emhQURsIh3wsbap+Bff/i7Is
	MewYvrc7UPdE1AkmxWSS/lXBaW013xCb2hKAevLr8QTIbQK8y1KUOJKGk+RolfWE0WfdSkpsfP/qV
	hdFx9owWiNngdG/n4JJyGOz2w4QoFwILqyLmMVxqLOMDClRFDSk8fFQyKtYk+ZLtix+FkOFZtB5q7
	K2KkpyrM8Q4WdD/heWLzBCsKkSy6SuJlPTXzf9Oxd5yYZSi9eszDiGpJJiBhS2RmxqrtNJrrRoODQ
	41s63+jA==;
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.102.5]:53388 helo=fedora)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1qq6I4-004BQE-15
	for yocto@lists.yoctoproject.org;
	Tue, 10 Oct 2023 02:32:25 -0400
Date: Tue, 10 Oct 2023 02:32:24 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: are there any plans for a RISC-V reference board?
Message-ID: <63138cbc-ccf3-d4c7-fcc7-5f6e87744e74@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 06:32:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61297


  at some point, will there be a poky (meta-yocto-bsp) RISC-V
reference board? i'm thinking the Nezha Allwinner D1 (which is
already supported in meta-riscv) would be a safe choice. or maybe the
more powerful VisionFive 2?

  thoughts?

rday

