Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DCEB1059
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 14:19:58 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.41187.1773152391546889620
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2026 07:19:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=lEUNh9hK;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pefIKqbcWGNQJsnhXcVF5nR7SbsTGIXK13Hx7rxecgg=; b=lEUNh9hKrhDJ9/WNt78ZzNAP/D
	veHhLCUxpC5bZ6QwAg85gz3biaY43vtQGKzGAlg6sC7xyuTVCnsNH4loRpSZj4u7xvBV1uMCuGUEw
	FZ75LSmH62EgL5zbhkPSDRU34neBLM1MCntu8rRCwmuAUAszPkzzkBMFVP57xp+u8FtExtlt546Vr
	yvBujT2fZ4LXHzCS2imtm5bwmnZW7pJaiju8yyCzBx6xdqoLU/putB677CgtDNwVYtqAVu8csVDSS
	HZVODd5ToLMaSROPP6Y2rE61eyfWAWy98p0uA+U395iGuFp9NAp8VfDR8LWEyXoC8dtriKBJTZuUU
	C0bQUoXw==;
Received: from [147.129.179.166] (port=34130 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1vzxw5-0000000EnJ1-0lKs
	for yocto@lists.yoctoproject.org;
	Tue, 10 Mar 2026 10:19:49 -0400
Date: Tue, 10 Mar 2026 10:19:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: are there some recent examples of building .NET recipes for YP?
Message-ID: <32336316-50a9-9193-9c85-d5e6973505c4@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 14:19:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66314


  colleague wants to add a .NET package as a (systemd) service to a YP
image -- google keeps promoting this 10-year-old page:

https://wiki.yoctoproject.org/wiki/Building_and_running_embedded_Linux_.NET_applications_from_first_principles

  does someone have a link or two to something more recent? thank you
kindly.

rday

