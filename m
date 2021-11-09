Return-Path: <bluelightning@bluelightning.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E19C433FE
	for <webhook@archiver.kernel.org>; Tue,  9 Nov 2021 23:11:36 +0000 (UTC)
Received: from mail-61-r20.ipv4.per01.ds.network
 (mail-61-r20.ipv4.per01.ds.network [27.123.24.217])
 by mx.groups.io with SMTP id smtpd.web11.4489.1636499493974040118
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 15:11:35 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@softec.co.nz header.s=default
 header.b=rcnCy2J6;
 spf=none, err=permanent DNS error (domain: bluelightning.org,
 ip: 27.123.24.217, mailfrom: bluelightning@bluelightning.org)
Received: from server-72-r70.ipv4.per01.ds.network (cp-fp06.syd02.ds.network
 [122.201.124.108])
	by halon-out02.au.ds.network (Halon) with ESMTPS
	id 329e3d8c-41b2-11ec-bc81-f8bc1204ff90;
	Wed, 10 Nov 2021 07:10:15 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=softec.co.nz; s=default; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YDQd+RDBvSWtzW6cpv8RGgwZKSmmrT8I2aoJgK4cDFM=; b=rcnCy2J6kLZaStJcT9S6AvHpKd
	1vkUbWEOaaT43HhL3nLiSREt9S00qoxK0/3CpJQ85y/TeiOO7xSQzvcVHFXosyWSpXUAc1wuIFiPC
	WQLwVocfzvp3xsmMTBYzWZu0tWi3+qgrjAvtgcDEK12FlkuTgRYwqX8c94sg+7gLwHRPx/v5x5Snh
	wHPW4Ktq1isCvjAzYDyDOt12awS8w8u0Ru3HJ4EltZUGK4IrSFnQHVXdbn+l0H6kgGPdbOTqq4hQH
	JT97B9n+g/sLhZ6nTPSTIEi+sLqfLs4tzi9vWwC9hkBf42a7/CwO6GUxQAhxgNR9V/S8wg04hhgiv
	xZmNw+mA==;
Received: from [151.210.145.152] (port=15158 helo=linc.localnet)
	by cp-fp06.syd02.ds.network with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <bluelightning@bluelightning.org>)
	id 1mkaH3-001Gpw-4q; Wed, 10 Nov 2021 10:11:29 +1100
From: Paul Eggleton <bluelightning@bluelightning.org>
To: jared_terry@dell.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-qt4]
Date: Wed, 10 Nov 2021 12:11:28 +1300
Message-ID: <12104483.O9o76ZdvQC@linc>
In-Reply-To: <29451.1636491939328486440@lists.yoctoproject.org>
References: <6ea3645f-a4ac-47e1-bb03-969aaa5b6791@www.fastmail.com>
 <29451.1636491939328486440@lists.yoctoproject.org>
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
 <yocto@lists.yoctoproject.org>; Tue, 09 Nov 2021 23:11:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55294

Hi Jared / all

On Wednesday, 10 November 2021 10:05:39 NZDT jared_terry@dell.com wrote:
> I don't see a response yet from Paul Eggleton, how do we proceeded in
> getting this fixed?

My apologies - I've applied the fix and pushed it to master, thank you!

I think it's fair to say this layer is pretty much unmaintained at the moment. 
I'd be more than happy if someone wants to take it over, FWIW.

Cheers
Paul




