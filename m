Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F29CCC87FC9
	for <webhook@archiver.kernel.org>; Tue, 29 Jul 2025 10:09:00 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.3542.1753783730463893533
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jul 2025 03:08:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=uLS14r8T;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=K1Pq3BRlpWBvm5YQkoP1uTHMon+VUhqb7MXPB+VbrXA=; b=uLS14r8TjJLywtt3WaIs4hCLBX
	yCNtsMG0A9XkrKQzO97VqcTH2/NYSjMX8YrlqiQtTJqUc2fecfQ9f5rQu80crssnnp5CF9ukW3S01
	jopwOg5Q4zMK0P1XIEn71qCUB6GAR6AYcwbRhLWgJoRPKeisuAEOI2C4UYZicdeeGhduMj69ZFOcC
	2O4uKvqUdUEb484a877P1LGRzbM3EL0wo+N0QovWqkLkL2x7LVZOwULUb9rgFq3MMcsgeGUk39iFZ
	CApr/tGAz0xcosej+NBHP4jYOx4C/g29cMj60UpwRqc8/Rw+B9txI7if3TovrDDDfdDDjscTnCUnv
	OkACri9A==;
Received: from pool-174-114-102-5.cpe.net.cable.rogers.com ([174.114.102.5]:55838 helo=asus)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ughGF-0000000FiXe-42bw
	for yocto@lists.yoctoproject.org;
	Tue, 29 Jul 2025 06:08:49 -0400
Date: Tue, 29 Jul 2025 06:08:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: can anyone suggest a decent example of a SMARC-based YP build?
Message-ID: <42aa178f-8b5e-1eb4-99a1-8e3a036580b5@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 10:09:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65711


  just started perusing the docs on "SMARC" SoMs:

https://sget.org/updated-smarc-specification-v2-2-released/

where various vendors offer a number of SMARC-compatible modules like
this:

https://www.isee.biz/products/smarc-modules
https://www.ezurio.com/system-on-module/nxp-imx8/nitrogen8m-plus-smarc
https://www.bcmcom.com/bcm_product_SMA-IMX6.html

and then more than likely someone who wants to build a product around
that fairly standardized format and spec needs to design a (custom,
proprietary?) carrier board like:

https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier

so even if there's a wild variety of carrier boards, one would think
that the SMARC 2.2 spec will still mean a lot of the configuration is
consistent.

  any informative examples of that in github? or elsewhere?

rday

