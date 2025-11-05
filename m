Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5062CCF9F8
	for <webhook@archiver.kernel.org>; Wed,  5 Nov 2025 17:04:17 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.14827.1762362257059602961
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Nov 2025 09:04:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=fXf79LhG;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=lGbwI51kWev9k7ib8JJzpIQ9xx/0oyouSrQQhPKxdFI=; b=fXf79LhG7DlmEipn+t4zh8KcGf
	hOpCSDDXRjYWorN5IG+gC2wt7CKz/3tzxySQ0362dL0TP5o6T37UQ9fF7nqIbaOzDjg+tA7r61zog
	Dc/EjcNEQdWVh3fZfJp80gsQdRrOHJg2SqhdMGSjcG9SQ7zBHiu5i+hnCg5Bj4SYbda3SQRud006y
	75h59UdROZnbFvWfrq4cPxYti9d+wqfSUun6c8i/WGJxMcC7HagB7xljDE2WcqWM4XDNpJQUXv2v8
	V/YvW2NcgIYlvpl1hI0ibOCGrSJvXzfmpmdt3FplXpeB/TfTXQwNU3WoHJSFbP/dS6oFhpsuoWxpS
	H+LabraQ==;
Received: from pool-174-115-41-146.cpe.net.cable.rogers.com ([174.115.41.146]:42854 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1vGgvZ-00000006lFr-2Pav
	for yocto@lists.yoctoproject.org;
	Wed, 05 Nov 2025 12:04:15 -0500
Date: Wed, 5 Nov 2025 12:07:24 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] looking for YP-supported Rockchip RK3588-based eval
 board
In-Reply-To: <187526B1C3586D81.304257@lists.yoctoproject.org>
Message-ID: <cab1dde8-edd4-3026-8367-39ae27c6c9db@crashcourse.ca>
References: <187526B1C3586D81.304257@lists.yoctoproject.org>
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
 <yocto@lists.yoctoproject.org>; Wed, 05 Nov 2025 17:04:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66010

On Wed, 5 Nov 2025, Robert P. J. Day wrote:

>
>   (caveat: i have *no* experience with rockchip processors so i am
> entirely at the mercy of people who want to make recommendations.)
>
>   a friend wants me to advise on a good choice for a RK3588-based
> evaluation board, and has already purchased a banana pi bpi-w3:
>
>   https://www.aliexpress.com/item/1005009156110477.html
>
>   that looks like a decent and fairly powerful baord, but i notice
> that the banana pi is not a supported MACHINE in meta-rockchip:
>
>   https://git.yoctoproject.org/meta-rockchip/tree/conf/machine
>
> so can anyone suggest something equivalent in terms of pure horsepower
> that would be equivalent and has solid YP support? i am totally open
> to good advice.

  i will also point out that i see some mention that the RK3588 is not
fully open source, while the earlier RK3399 is:

https://news.ycombinator.com/item?id=40497232

so there's that, too.

rday

