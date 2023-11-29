Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4390CC4167B
	for <webhook@archiver.kernel.org>; Wed, 29 Nov 2023 09:21:52 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web11.28304.1701249711068722437
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Nov 2023 01:21:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=BGUqkipL;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Sjw2cMu1eW7hIrmitlq8Uva0JiUPuSAKiu0NzpOaDd0=; b=BGUqkipLOyhFqbvTTmjb/7J3L0
	atnf1iTbpn1GmBeCiwFqYikQigQqBfngyQ4TF18dqa9iI8qLatO355qs/1nrl2HZHhcZSMILNJrpV
	3ykVgMvBJLTDa8IaHCw2pUuPHWwTfhEGex3T0awhd9E9i852dattRXJovzBm4Y8UEHyQxw1YwDbGk
	OZNUzPY85pQ0vBEsqgofvxTb+FYpeXmKOCFm6BO7GVdVz7oW+895/1H56tB2xc6NaHle2ba/FvVOH
	AAlyu9wJDK4bibZqyJ1siPVSfAHeshae2Cuud6IIHnQJUopr113Vu25sgBNOe5kq750POkBWxBLxC
	REJQAyEw==;
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.102.5]:35238 helo=fedora)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1r8GlP-00GIKV-10
	for yocto@lists.yoctoproject.org;
	Wed, 29 Nov 2023 04:21:49 -0500
Date: Wed, 29 Nov 2023 04:21:40 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: how to intelligently avoid OOM build errors with
 BB_PRESSURE_MAX_MEMORY?
Message-ID: <ef631e8e-8bbc-5a36-8282-405b10e872b@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Wed, 29 Nov 2023 09:21:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61771


  a colleague is using Wind River Linux and is getting occasional OOM
errors when taking advantage of maximum parallelism, so he took the
quick way out and dialed things back using BB_NUMBER_THREADS and
PARALLEL_MAKE.

  however, i am aware of the bitbake variables
BB_PRESSURE_MAX_{IO,CPU,MEMORY} and was wondering if there is a decent
writeup on how to use, perhaps, BB_PRESSURE_MAX_MEMORY, to dynamically
detect imminent OOM and adjust things. that is, how to calculate a
sane value for that as i haven't yet dug into the values under
/proc/pressure and how to interpret them?

  i've seen mentions of combining the above with the "memstat"
command, and other approaches. thoughts?

rday

p.s. is there a docs page that expands on this stuff?

