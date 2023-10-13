Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED52CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 15:59:41 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.42607.1697212773810839738
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 08:59:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=dh4GSr6e;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sD2NtUZMnmy2n+9LsFAF6Vx0DGAwaZxG+mlSklBJ+6M=; b=dh4GSr6eLTdObjJyKfFli/xuae
	ZIa9x4raxmhcYRZ6iim8fqM7Rno5Hy47NXwX2JCSuAdKF1rFlXpD/iqBTpre57Cx7JSrT65Q0Es5y
	IPgFHLjuy5123YPiMqLfmzGqQbNMa/7t05BuC7t3lYGtIjBnPYPrN7QzoJLw34hNRXPHZ2iywAA4j
	CnzIvzEShuMCcLqt0zmvl5cWk5CDOsSF9NIxT1kf2FMrA7+y0jGVwbyMptOJrMfGnO7vJ83nAnAFh
	tU5qx4PUY6+jOcuxW+3iKS5l91WgZN6Tt5NOKPL0oYwvNY0PWFRNO9HfyYPX+1oGjk7kjIT2sqYKJ
	LlAfOb6w==;
Received: from [::1] (port=46556 helo=cpanel10.indieserve.net)
	by cpanel10.indieserve.net with esmtpa (Exim 4.96.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1qrKZS-00BVli-1v;
	Fri, 13 Oct 2023 11:59:31 -0400
MIME-Version: 1.0
Date: Fri, 13 Oct 2023 11:59:27 -0400
From: rpjday@crashcourse.ca
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] any interest in a YP riscv mailing list?
In-Reply-To: <534574C8-5BE1-46D0-B91A-4D89B560DB8A@arm.com>
References: <92d1f96c-5360-f32-7980-44aa2a536736@crashcourse.ca>
 <534574C8-5BE1-46D0-B91A-4D89B560DB8A@arm.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <adb87d6a5f99962936704c8133a7b576@crashcourse.ca>
X-Sender: rpjday@crashcourse.ca
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 15:59:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61339

On 2023-10-13 11:14, Ross Burton wrote:
> On 13 Oct 2023, at 15:20, Robert P. J. Day via lists.yoctoproject.org 
> <rpjday=crashcourse.ca@lists.yoctoproject.org> wrote:
>>  given that other acrhitectures have their own ML, is it reasonable
>> that risc-v have its own mailing list?
> 
> meta-arm, meta-intel etc are primarily because they take patches via 
> the mailing list.
> 
> meta-riscv (https://github.com/riscv/meta-riscv) does pull requests and 
> issues via GitHub.  If the yocto@ list ended up getting swamped with 
> riscv-specific discussion then there’s be a case for creating a list, 
> but architecture-specific discussion is rare.

understood.

rday

