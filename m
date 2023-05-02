Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5307FC77B7E
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 08:52:29 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.124136.1683017545332287454
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 01:52:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=KaS9ABW7;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id DFBA84000B;
	Tue,  2 May 2023 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1683017543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u1aJFFEQCZ3uLuYfLnhJRGTBKKbvvOx5kn1+BkCaQv8=;
	b=KaS9ABW7jABJPMR2zZ73MgekDqCTyHFeJWFd/IAS4mKLrc40ln1tUFBGOt4kw0LCzfS4+w
	vDBX9b1pPpRtS0bEnfCJ4bkkVCyoUJJYcXw11IqwMtWNHY69kzVaC8xYhIQXawqN/0k7Bu
	e4+GfXK/kxbrNqWQFCYLaxT4NNWBjajEm+6obpqoVOoIuOtEUqQHE/WqfkLqx+Bkn4M4Xg
	qwC/qCUkMtpTcGArgSFF6l6Ixw2r2+uYBTYzZoz0yfXzBeNICYNClPTz24TyCpOS3cR4Zs
	gHT08PJ/yCLHcmig0+ntMoyJAODpyjsBdmEzDwStCD3SSXEPX3yPmy9oBv7xSg==
Message-ID: <d1132f1d-2c31-7856-6a22-6fbb895b2c0a@bootlin.com>
Date: Tue, 2 May 2023 10:52:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Need to check if BBFETCH_RETRYCOUNT variable is in use
 #yocto #bitbake #kirkstone
Content-Language: en-US
To: shibi.cbe@gmail.com
References: <Oo7T.1682887122973495266.MznC@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <Oo7T.1682887122973495266.MznC@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 08:52:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59833

Hello

On 30.04.23 at 22:38, shibi.cbe@gmail.com wrote:
>
> Hello Everyone
>
> came across BBFETCH_RETRYCOUNT variable. But I couldn't find this 
> variable in reference manual or variable glossary.
>
> My understanding is if we BBFETCH_RETRYCOUNT = "5" bitbake retry 
> failed fetch operation for 5 time before throwing error.
>
> If there is any other such variable available where fetch retry can be 
> enabled(kindly refer the same). At times due to network issues fetch 
> task is failing if we restart bitbake again it works without error. so 
> to overcome this looking for retry option
>
> If there is any other way resolve the issue kindly provide me suggestion
>

Indeed, I see no such thing as a "RETRYCOUNT" variable in the code.
If you have intermittent networking issues, you may set your own local 
mirror for source code:

https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term-PREMIRRORS

See also this article for another solution: 
https://bootlin.com/blog/yocto-sharing-the-sstate-cache-and-download-directories/

Hope this helps
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


