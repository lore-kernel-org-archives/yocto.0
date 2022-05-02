Return-Path: <okaya@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F95C433EF
	for <webhook@archiver.kernel.org>; Mon,  2 May 2022 21:44:58 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by mx.groups.io with SMTP id smtpd.web12.3497.1651527898118580924
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 14:44:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i+t3Vq9t;
 spf=pass (domain: kernel.org, ip: 139.178.84.217, mailfrom: okaya@kernel.org)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1537C60FE4;
	Mon,  2 May 2022 21:44:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C8FDC385A4;
	Mon,  2 May 2022 21:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1651527896;
	bh=GeqrattbDWPVdkcccXnFHqebGgRwTI/o9O19fVteAfE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i+t3Vq9tAJyu54Tv3+6zVsew6XHEBtOuX8Gxygq5pUfwuhz9+YQTjbM1dblegAyw6
	 /S5yUpPELxto0fDTvxc4Lr5FO1QGuTaqtT/kmxFmmL2bEXDi1E19OGPbPf62BpdCnx
	 irQwZE53Yc0k7yFrIGh/n36C8AgUZFXmd4fThfdK8Jgcatk/DaTpbJ83JP+Is7z2VX
	 iUq85OwKXQ8malQfE5fs5kuo7S2u36KKuxC1XRYBqp0vKl/jUusjnPN48qSliocjdw
	 LCDcWc3ixWD5FEc29SlUUR7yBU2PAbmAZW0wqWDTuWQcyn0/VhzI6IaHOMIP/KgO+u
	 OB4wA4caLTigA==
Message-ID: <184135f1-502d-8105-9269-dcbb67ec98e3@kernel.org>
Date: Mon, 2 May 2022 17:44:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: Maintaining ABI Compatibility for LTS branch
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Paul Eggleton <bluelightning@bluelightning.org>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
 <7c96d7c727b9f7c4e18995d22501059e35c20942.camel@linuxfoundation.org>
 <058e253b-b2b8-230b-2af5-c3cb4e93b743@kernel.org>
 <1077615858f490216857759e0440dd4f618fd798.camel@linuxfoundation.org>
 <7e00bad7-2244-42b5-cd06-b15ef4ca055b@kernel.org>
 <f1e7b4732ea04ed7f591a2ea38198ca282bf38f0.camel@linuxfoundation.org>
From: Sinan Kaya <okaya@kernel.org>
In-Reply-To: 
 <f1e7b4732ea04ed7f591a2ea38198ca282bf38f0.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 May 2022 21:44:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56971

On 2/9/2022 4:38 PM, Richard Purdie wrote:
> This probably does need a discussion on the architecture list and we need some
> discussion and decisions about where/what buildhistory could/should do. Adding
> this to buildhistory is all well and good but we don't have a meaningful
> integration/monitoring of existing buildhistory issues in our
> autobuilder/workflow today even before adding new things.

I was hoping for free cycles. I didn't get one. This will be an intern
project.

The way I'm thinking is to have the ABI compat XML be part of the state
cache tgz file and come up with a CVE check kind of hook maybe called
"ABI check" that will start flagging problems.

Would this be a better architecture?

