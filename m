Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BB9FC001DB
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 08:28:25 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.12811.1691656102934377720
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Aug 2023 01:28:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=o2Z7GHMZ;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A61986000C;
	Thu, 10 Aug 2023 08:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1691656101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wi/nTt45EN2ruh869AuQzmiFkAj4yyzndScIF5oztlE=;
	b=o2Z7GHMZh8X7yI6KNogXbiZLW8+1MoTsM5Tx/wMkxmW5CnLiSDTA0A0zvFp1rsIVGTlO5R
	rGOYOvGsNe8tPi7QdxJxqvsGc95mozeFu3HkUdtt27cJxDbi/eF9BGYUu7IEBYW0lyJGMv
	cK0vHZzAYWb/9SL0h67Z6Ua2I+IIKk4xgQSB/QiqsMtA/z0dQ/azqFDepiw/9IOEQ3XNE1
	uirVEkYLb33IqYi+vjefHZiEXmLwJssjExT6yZc+JmnUZ61v0ALqpqeN6UE3o/Lrlq/T65
	MHHOazNUIvtJBuFVuK8dHErbZSSHmQIrV83CzMDv9eS2yfs8DOKnfccS4hg1Qw==
Message-ID: <62798ed9-66a8-0e70-0670-a48bf24d7e50@bootlin.com>
Date: Thu, 10 Aug 2023 10:28:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to migrate an older version of Yocto?
Content-Language: en-US
To: msenturk <senturkmurat1999@gmail.com>
References: <CANNYZj_sYoP+61NGtMrNJfT+m+hZyz=cxJAcOcE1kSkb6SXKUw@mail.gmail.com>
 <19617.1691654254670907270@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <19617.1691654254670907270@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 08:28:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60767

Hello,

On 10.08.23 at 09:57, msenturk wrote:
> I am convinced to not use an older version. As I said, I am currently 
> using Gatesgarth. I am planning to migrate to Mickledore which is 
> currently supported. How can I migrate? I looked system requirements 
> for Mickledore and everything seems good. Could you tell it with 
> details for a beginner. Thank you.

At least here's how I did it on a recent project. You just have to 
switch to the "mickledore" branches of the repositories you're using 
(such as poky and layer repositories), and then try to build your images 
with your own layers. There will be issues that you will have to fix by 
updating your configuration and your own layers (preferably in a new 
"mickledore" branch too).

Don't worry, error messages are pretty helpful and updating to 
Mickledore shouldn't be complicated.

Also see the migration notes 
(https://docs.yoctoproject.org/migration-guides/index.html) telling you 
what you will have to update when moving from one release to the next.

You may actually prefer to use our latest long term support release, 
Kirkstone, which will be supported until 2026.

I hope this helps,
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


