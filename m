Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8305ECD4851
	for <webhook@archiver.kernel.org>; Thu, 14 May 2026 16:45:56 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15976.1778777151958663843
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2026 09:45:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: key syntax error: missing public key data" header.i=@rootcommit.com header.s=dkim header.b=dUok63Cu;
 spf=pass (domain: rootcommit.com, ip: 185.246.85.4, mailfrom: michael.opdenacker@rootcommit.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D78FD4E42C98
	for <yocto@lists.yoctoproject.org>; Thu, 14 May 2026 16:45:49 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AD06A606E3;
	Thu, 14 May 2026 16:45:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5D32A11AF8483;
	Thu, 14 May 2026 18:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=dkim; t=1778777149;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=IWd4gxiOkHEf7v8jPfT0zfx2iVDg5mtiiPFTZ4jyBrU=;
	b=dUok63Cu+BazIF0ob1JwhunYFKa6ymq7Djem01g2RUDQ4+fBseNeo4aQIIiV+b32pK/cfI
	+cJbgJoPLkNvdbkye4GKMFWJ0yL5AcUVVIDbRpcw3SmNavO9Zxq7dJJCJKU4trpQ2KiFKj
	dHLovRHpK6MOXDKaeOHrVeSlU/CS8bIM2zUh2p/J0xmME/w8n2gNkDb4TlJM/aJz6tDvl6
	+BinxN+dr6K3Hawdj/o8yoGvmzJP9S8NijUwBgGSHzULge6lssFU5RN02l/jP/O6P7rk4X
	AhSKEL8BZ1TfvZCyyyfygg4rM2TxZ6UFAzpDTRkRZeNeSMNvWxYNPXbLpVt1kA==
Message-ID: <51ae5c89-d85a-4aed-b1c1-5ae8cf778faf@rootcommit.com>
Date: Thu, 14 May 2026 18:45:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Simple solution to create a non-root partition image?
To: cleiton.bueno@b2open.com
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
 <yocto@lists.yoctoproject.org>; Thu, 14 May 2026 16:45:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66561

Hi Cleiton

On 5/4/26 3:39 PM, Cleiton Bueno via lists.yoctoproject.org wrote:
> Wouldn't enabling the TEZI_DATA_ENABLED variable and using this extra 
> partition work?
>
> https://git.toradex.com/meta-toradex-bsp-common.git/tree/classes/image_type_tezi.bbclass?h=scarthgap-7.x.y#n37
>
> I already needed to create a class for a client with 2 additional 
> partitions and I made a copy of image_type_tezi.bbclass and customized 
> it for my client.
That's exactly what I did to have extra partitions :)
>
> And create an .ext4 file and put it in this partition?
Well, ultimately, it was easier to create a tar archive and set 
TEZI_DATA_FILES to this new archive.
This is more flexible than setting a fixed size ext4 image. I let Tezi 
format the partition with ext4 and extra the archive into it, just like 
what is done for the root filesystem.

Thanks for your contribution to this thread!
Cheers
Michael.

-- 
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


