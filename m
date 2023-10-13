Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2D7CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 14:20:50 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web11.39659.1697206840722769225
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 07:20:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=bmYn3LNU;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OqnV/sJBWLP8ONzplDHnAakk5lqJuVeFFo7l9s2F41k=; b=bmYn3LNU2DB+/NpyUPYoe0G7s4
	SKXf8nEKzWdGG9QbCL/0UHnm0ItQ6AvEi9Gm05IvGQ4V6pIdJ7JUmpmCiDhS3k2T8vvzKwl/xluAX
	LY3oaZgPfkN1yWOQdfw5AM9hGw/DcAx7DUtcznVPFuUZNOV6GWT+ZT2z9TGkjyLYKbGfvAWm4rchl
	zYIxFrBfON0MnCFHcjFEpzz9uXexj5g9+cbJBTdoHvuwyRVEtO6F4bPz3vkd7dVF/S5o6fHk+a40V
	X8bGg9T+Z44fn2nifeQKwxKNGwPrskyS08xgl+R9lDTXchf6OTNzEqcRZE1tsRiPt+W4BHhQvhK3K
	sAsw0CgQ==;
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.102.5]:36716 helo=fedora)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1qrJ1l-00BMI1-0t
	for yocto@lists.yoctoproject.org;
	Fri, 13 Oct 2023 10:20:36 -0400
Date: Fri, 13 Oct 2023 10:20:32 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: any interest in a YP riscv mailing list?
Message-ID: <92d1f96c-5360-f32-7980-44aa2a536736@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 14:20:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61333


  given that other acrhitectures have their own ML, is it reasonable
that risc-v have its own mailing list?

rday

