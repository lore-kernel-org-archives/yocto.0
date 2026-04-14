Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 249B2ED7BBE
	for <webhook@archiver.kernel.org>; Tue, 14 Apr 2026 10:53:01 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.16130.1776163979723836276
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2026 03:53:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=YqIx9LcS;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=t9f5ENl1qpqm6L3Ypg+iuVMf/BYmYX8eEw9C2cJ2RkE=; b=YqIx9LcSYd9v6A1r01/GDsjB22
	tdqFDNKrK1cgKjvMFFxr1uzdbF6DreBPTRdPz/EyQF/b9NMSqbGQh9EDn2Wf4624oRApnfFwGV5jt
	LlRF79fFwtCg6txOCRUZMsU6B0BwFIuWHDYuy21yKDA4GmybqevT6VrVgRkxpt51UHTdUlLqY/IVJ
	K0nGgUnW+TOz82Z4o1m1ywPgXRymwOU4p/evX2RFnbxzTT+OFzfR/TaOvj52pAz54i7KlUvUOc3YY
	ecLr2xe4jeDGe/KF4RyBlQAWIA+RcbYsOrjPy/OTktTXbiuIFRCknKqpexD7vtaawnYt9lbOY4C/P
	wEgYZLLw==;
Received: from [147.129.179.166] (port=48538 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1wCbNz-0000000Bu4Z-0uPH
	for yocto@lists.yoctoproject.org;
	Tue, 14 Apr 2026 06:52:57 -0400
Date: Tue, 14 Apr 2026 06:54:25 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: [meta-tpm] README.md for meta-tpm layer seems incomplete
Message-ID: <3b88c7bf-0311-883b-890d-ab0eb5d64ada@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2026 10:53:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66415


  here:

https://git.yoctoproject.org/meta-security/tree/meta-tpm/README.md

one reads:


The bbappend files for some recipes (e.g. linux-yocto) in this layer need
to have 'tpm' in DISTRO_FEATURES to have effect.
To enable them, add in configuration file the following line.

  DISTRO_FEATURES:append = " tpm"


but that does not mention the alternative of "tpm2" in
DISTRO_FEATURES, which is explicitly checked here:

https://git.yoctoproject.org/meta-security/tree/meta-tpm/classes/sanity-meta-tpm.bbclass

i will let one of the security people decide if they want to adjust
that.

rday

