Return-Path: <okaya@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01125C433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 18:16:00 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by mx.groups.io with SMTP id smtpd.web09.30677.1644430559382696715
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 10:15:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=o9IbuewV;
 spf=pass (domain: kernel.org, ip: 139.178.84.217, mailfrom: okaya@kernel.org)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BFF2D61AF9;
	Wed,  9 Feb 2022 18:15:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FEDBC340E7;
	Wed,  9 Feb 2022 18:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1644430558;
	bh=AwBZBkO0V3CFH8vMvNf6xrS1SD0XmbynMFYUGGYCm5U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=o9IbuewV0myLV9k/nJ6QuOYGSSYN9KT3PiDD/ZL+x4DkKAVhTWf6jgSs2eaIlzLrq
	 Jz9C3MDe1VRC4EwFBWl4ZcR68Tko6MNUHy2vTZaOH6uTt54h6KQuO29NcAp8ZR5k18
	 RRynGKcQIQ/rvGcdBhLd3GSes6Gr/GXXBtjwRkKQiRlGZlmepAWzhq6rXfz9iciCKX
	 4GDOV3hZ/Xd6ju62ZLK54KL5ijWLXTcz5OfcAIvyhQZHw0OhZDrsivOJ90W5h1y4hB
	 jFsJva4jzMA+PYFvu7h1mavioGGAQZf0De2Z9NlaGDag7z3MzofAYBPelQ3IEqLp35
	 lxvHpYkrkndTg==
Message-ID: <058e253b-b2b8-230b-2af5-c3cb4e93b743@kernel.org>
Date: Wed, 9 Feb 2022 13:15:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: Maintaining ABI Compatibility for LTS branch
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Paul Eggleton <bluelightning@bluelightning.org>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
 <7c96d7c727b9f7c4e18995d22501059e35c20942.camel@linuxfoundation.org>
From: Sinan Kaya <okaya@kernel.org>
In-Reply-To: 
 <7c96d7c727b9f7c4e18995d22501059e35c20942.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 18:15:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56129

On 2/9/2022 11:42 AM, Richard Purdie wrote:
> There are two reasons people are interested:
> 
> a) for release stability as you mention
> b) for performance as it could be tied into the hash equivalence mechanism for
> artefact reuse - if A hasn't changed ABI, B dependning on it needn't rebuild.
> 
> There was a proof of concept of b) here:
> https://lists.yoctoproject.org/g/yocto/message/52650
> 
> There are lots of levels it could be implemented at but it is something someone
> would need to pick up and drive forward with a long term view to helping with
> issues etc.

What would be the minimum acceptable solution with the least investment?
in other words, do we have a list of requirements?

Our team has posted a solution. BMW folks posted a solution.
None of them got merged.

Could we take the version from BMW folks, merge and have the next person
add new features where it doesn't satisfy requirements?

or vice versa? or as Ross said some other work?

or none of the solutions are acceptable?

