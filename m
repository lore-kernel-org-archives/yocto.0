Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3723BCCF9FE
	for <webhook@archiver.kernel.org>; Mon,  3 Nov 2025 12:29:01 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19425.1762172932874152291
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Nov 2025 04:28:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=caOP3JS5;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+Og/SqZVVafkBoETREKqmYjw9AI81Te0yStxHEpDwjk=; b=caOP3JS5TosHoB7JqDWIto+VXa
	SddLANszBudvooKwht47cP1lxCjXn/g809UQNG9I+x7hRX01V7JSUFKqV6WmDodt8S63qc9Rw7uoq
	PV8c7l9Fh5zvQb3p/IoA7ecii8zAyVXwWkrab5hOI8+ANq+x1exn7wJ9PQ245bGefr5Qc3mp7S/yN
	8URuDdl67h1tioyYi5e/bPqocR76fEwYVebbJgyH0OBawEUw7a1DHD4E5GSzujLGPpT+B2eJjmUzt
	aZKKsEnLkOJFd8e0c57NCOWjIUodr4vwHghfRz2gdzF/EW7kwI0ZDY+KjCpmAuH+x0zH22ViwjFo3
	afnz+SxA==;
Received: from [147.129.179.166] (port=58124 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1vFtfu-0000000FyN6-0zX5
	for yocto@lists.yoctoproject.org;
	Mon, 03 Nov 2025 07:28:51 -0500
Date: Mon, 3 Nov 2025 07:27:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: political question about national vulnerability database and NIST
Message-ID: <ed02f919-418f-85c7-4fe3-095af2585206@crashcourse.ca>
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
 <yocto@lists.yoctoproject.org>; Mon, 03 Nov 2025 12:29:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65992


  given that the NVD is run out of NIST, https://nvd.nist.gov/, are
there any contingency plans for the trump administration simply
defunding all of NIST? it seems like exactly the sort of thing they
would do.

rday

