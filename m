Return-Path: <clopez@igalia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B011C43458
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 09:17:08 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8863.1783675025209942627
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jul 2026 02:17:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@igalia.com header.s=20170329 header.b=Ww8Qdk4l;
 spf=pass (domain: igalia.com, ip: 213.97.179.56, mailfrom: clopez@igalia.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tBp1d/Y2yasDuCQk9E8yqfqeKjQY6kUDFfK72lgAgfY=; b=Ww8Qdk4lOjwTA43R8I4WHtNUbn
	TDTv7yRiPhmKQn0EIA7miNBZBwO3sd1Ndpw/PmYCXHiKRKIVcjxyud8N97C7XfQ/voWwCMRANxWH3
	ZetarUn8n/BZ0DUJMN9vnFKOVrAMz6bWxK64KuV9HrJR1V+EOqOfH2mrZs+KBy774iBKU72JXrWDP
	G8fRUOzyZRreOBRmWTTfoU8pR0vH5ypY5Hvs/TDmc9+KibrrqN4mXgS6CUaMpOr1d4KsyPwr8Lec2
	6qEc8026pCp7O0kCPm9OJ6CCawW9xxqI8f0VQZji6gV7gzyyulkaldHp51mQAOSxrso/V8s1BIxw7
	oSfa2CvA==;
Received: from 102.90.219.87.dynamic.jazztel.es ([87.219.90.102] helo=[192.168.1.38])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wi7Lx-00Cbqt-Ss; Fri, 10 Jul 2026 11:17:01 +0200
Message-ID: <846ae9fc-1aa8-4c21-878e-e9a8c41c3a44@igalia.com>
Date: Fri, 10 Jul 2026 11:16:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Add redirect git.y.o/git/... -> /...
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
References: <akNglndfCzY7BdSw@navimatix.de>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Content-Language: es, en-GB
Organization: Igalia S.L.
In-Reply-To: <akNglndfCzY7BdSw@navimatix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 09:17:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66631

On 30/06/2026 08:30, Jörg Sommer via lists.yoctoproject.org wrote:
> Hi,
> 
> would it be possible to set up a permanent redirect from
> https://git.yoctoproject.org/git/(.*) to https://git.yoctoproject.org/$1? We
> have some older releases that can no longer be built because the /git/
> repositories can no longer be found. It would be great if such a redirect
> could be set up.
> 
> 
> Best regards, Jörg
> 
+1

We have been also bitten by this [1]

I usually don't complain in public, but this time I have to voice my
frustration about how git.yoctoproject.org is handled.

First it was the removal of the git:// access, and now the path to the
repositories changes (/$repo instead of /git/$repo) without a redirect
in place.

There are CIs, automated process and repos everywhere than depends on
this URIs, please when doing changes like this try to do an extra effort
to keep the old URIs also working if possible.

Thanks.


[1] https://bugs.webkit.org/show_bug.cgi?id=319082

