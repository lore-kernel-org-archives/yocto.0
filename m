Return-Path: <bluelightning@bluelightning.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25BB5C433F5
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 21:17:06 +0000 (UTC)
Received: from mail-49-r22.ipv4.per01.ds.network
 (mail-49-r22.ipv4.per01.ds.network [27.123.26.153])
 by mx.groups.io with SMTP id smtpd.web10.19735.1643231823846304313
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 13:17:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@softec.co.nz header.s=default
 header.b=EYjqWahm;
 spf=none, err=permanent DNS error (domain: bluelightning.org,
 ip: 27.123.26.153, mailfrom: bluelightning@bluelightning.org)
Received: from server-72-r70.ipv4.per01.ds.network (cp-fp06.syd02.ds.network
 [122.201.124.108])
	by halon-out01.au.ds.network (Halon) with ESMTPS
	id 49ad5cf1-7eed-11ec-b0e2-f8db88ea9a09;
	Thu, 27 Jan 2022 05:16:55 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=softec.co.nz; s=default; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hiSE09152+xJhBoGNshhGp/rbRjvhdlRpM8chVJDjVI=; b=EYjqWahmQKOO0zEK83/OJH2sVr
	8l262W5I1OW9W+7hMve1Fl9Aoa1IyWeaWjXqZ+umYoCNX0Iz/KFavNxRZ654MLipnC+weneGpUd0J
	7LfSw7c2Ih7exRx5vMJDI8/1peJFgj2at4Z+J7gcE1ud+YbHong2cwmp3qnE+oi8E/03lHuOI+7ok
	Vpci+IYrvvNGrqTILp0L0Q46jw1F9EZs8th4EVJR6mA5/Lw7ky3LWvgXvJPeIBpDpltodICGVfQNi
	AjtxGeJAAKl1ZmguE6miEUeAQZ79HVoV42MXky+k/28mUS9QXpP4E0RPREZJFYSTzDyQcaB5tlb9F
	UofouO1Q==;
Received: from [151.210.143.188] (port=51196 helo=linc.localnet)
	by cp-fp06.syd02.ds.network with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <bluelightning@bluelightning.org>)
	id 1nCpew-00DINw-RI; Thu, 27 Jan 2022 10:16:54 +1300
From: Paul Eggleton <bluelightning@bluelightning.org>
To: yocto@lists.yoctoproject.org
Cc: Paul Eggleton <bluelightning@bluelightning.org>
Subject: Re: [yocto] Additional hardening options
Date: Thu, 27 Jan 2022 10:16:54 +1300
Message-ID: <8885103.CDJkKcVGEf@linc>
In-Reply-To: <16CDAE6528BAE915.24088@lists.yoctoproject.org>
References: <16CDAE6528BAE915.24088@lists.yoctoproject.org>
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
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 21:17:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55987

On Wednesday, 26 January 2022 14:39:39 NZDT Paul Eggleton wrote:
> Hi folks
> 
> I've been looking into a couple of compiler flags for hardening that I think
> we might want to consider enabling by default in security-flags.inc:
> 
> 
> 1) -fstack-clash-protection
> 
> This option was introduced to gcc 8.x and provides protection against the
> stack clash vulnerability:
> 
> https://securingsoftware.blogspot.com/2017/12/stack-clash-vulnerability.html
> 
> It has been enabled in some Linux distributions already (e.g. Ubuntu,
> Fedora).

Another quirk of this - with dunfell, the buildepoxy SDK test fails on Ubuntu 
18.04 with -fstack-clash-protection because the version of meson in dunfell 
uses the same LDFLAGS value for both host and target, and host gcc doesn't 
support that option. Not sure what to do other than just filtering out the 
option from LDFLAGS in the test.

Cheers
Paul



