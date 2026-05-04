Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10FBDFF885A
	for <webhook@archiver.kernel.org>; Mon,  4 May 2026 13:55:39 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15322.1777902934681232960
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 06:55:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: key syntax error: missing public key data" header.i=@rootcommit.com header.s=dkim header.b=XDqhI0qw;
 spf=pass (domain: rootcommit.com, ip: 185.246.85.4, mailfrom: michael.opdenacker@rootcommit.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 73AF14E42BB8
	for <yocto@lists.yoctoproject.org>; Mon,  4 May 2026 13:55:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 49F025FD5F;
	Mon,  4 May 2026 13:55:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0764711AD0B59;
	Mon,  4 May 2026 15:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=dkim; t=1777902932;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=oXH97V8/I+d9DkmCzoSiFSb4wImEq7DQVFzk5W7b8w4=;
	b=XDqhI0qw99IjS9AiWv3qkul3/dh1dnTWX8Qqeb2rrKJeMWpgBMzDDUI+wjD3e3GbpGIACK
	0Skaly8rtebAtvoRZdhIfLv3Ic4khnUdU04oNU67/F8bvdAsEBcFthSP7jdgP1S6ulypxZ
	pwfrDuBznFCwCWXQpL7tW7FRMOA5s9ww1OdX36FxsBqmCC8bwKfcChGj28vNVsbS6YkX4U
	8MwB7JeWUzi1517lvWrHcXq0fEdKw792XizWwfhHVJkKgpaVZJEPJv/jHaWlnKPgptnK7D
	0/WGCOh7MDNIcBvauEZGKbVKWdxkzEe7weDabnfc8RZbYHcwO7HbbBc+XQloJA==
Message-ID: <ee871781-e439-45f2-9567-dbb8c9374075@rootcommit.com>
Date: Mon, 4 May 2026 15:55:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Simple solution to create a non-root partition image?
To: Cleiton Bueno <cleiton.bueno@b2open.com>
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
 <fe2c7d25-c2dd-47ca-a08b-e0115c3648b4@cherry.de>
 <cfb57d23-982a-4dd8-bc24-ff36904ec2ba@rootcommit.com>
 <CAA-i2Lw6FS=b6UkJjq42RHR-aHtvqqeULxL0e3UxMNuVhZCx2g@mail.gmail.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <CAA-i2Lw6FS=b6UkJjq42RHR-aHtvqqeULxL0e3UxMNuVhZCx2g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 13:55:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66474

Hi Cleiton

On 5/4/26 3:39 PM, Cleiton Bueno wrote:
> Wouldn't enabling the TEZI_DATA_ENABLED variable and using this extra 
> partition work?
>
> https://git.toradex.com/meta-toradex-bsp-common.git/tree/classes/image_type_tezi.bbclass?h=scarthgap-7.x.y#n37
>
> I already needed to create a class for a client with 2 additional 
> partitions and I made a copy of image_type_tezi.bbclass and customized 
> it for my client.
>
> And create an .ext4 file and put it in this partition?

Absolutely! That's exactly what I intend to do.
I've also tweaked image_type_tezi.bbclass to fit my project needs (a 
boot partition, two rootfilesystems and two extra partitions).
Thanks for contributing to this discussion!
Cheers
Michael.

-- 

Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


