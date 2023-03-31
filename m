Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61BDC76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 17:12:02 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.574.1680282716257455807
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 10:11:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=JxbpOvk9;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id DB45F40005;
	Fri, 31 Mar 2023 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1680282714;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8nS/3cLYiDmMYq3vEftsKqvTueJMsqsJU1R0bIXu0tU=;
	b=JxbpOvk9xo/VLC9x4jQb1J6ktcoCKS95cXlfRsMTSk+hbb378cceIs2Po+BEA5T+TOBXn+
	VhTEvnZTAPqCyrSwJnvvCawCgxSeuefJHcRFSN3YQy3q6daD1bZ57MTCrVT27R+OGtVSiE
	UitHCJtlQCa4W7KFPTj9J1F/nHyvdMOSoY14wXq9+CdU98a+aY0roGQ4DaZK5yLwMOATbP
	oh0osvCsNFSjRXFe2mGJdRj/0DpY6vAuoDpfC/zBYyl2TIhEXV9RkfuMuNMerfqWSQA05p
	cDDm6zAENtucGyNb6IznPeRJyo3TJ8iizjsudg/sq1X8/1pKjf+qupUgyq7sLw==
Message-ID: <85c480a9-cb90-c851-6779-ce31a03c70e9@bootlin.com>
Date: Fri, 31 Mar 2023 19:11:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to compile binary executable files
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
References: <61a0925a-8514-bb93-e110-73299944b054@bootlin.com>
 <13330.1680255730648731834@lists.yoctoproject.org>
 <0de7fc3d-4b15-b178-3800-f5b8f4f26442@bootlin.com>
 <CAPJWBnjg8rw2YxqTFrArKf1YqsoY=5ifD7xjT_0uD21A2zZBpw@mail.gmail.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAPJWBnjg8rw2YxqTFrArKf1YqsoY=5ifD7xjT_0uD21A2zZBpw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 17:12:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59586

Hi

On 31.03.23 at 12:35, MOHAMMED HASSAN wrote:
> Can you help me to compile for dynamically linked executable file in 
> yocto dunfell?
> Thanks


For a dynamically linked executable you should definitely build it from 
source.
There is no shortcut here. You should take the time to read the Yocto 
manual to know how to do it: https://docs.yoctoproject.org/
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


