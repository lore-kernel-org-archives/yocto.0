Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6152FC7EE22
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 08:52:21 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.27150.1683622330856196319
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 01:52:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Ts0OPiNd;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 63AACFF80A;
	Tue,  9 May 2023 08:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1683622329;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fvgGYF58b1u0P5P+N9txQ5/WL486oKX6hPCwQBcgx3g=;
	b=Ts0OPiNd82xFRJnFtUL7wz38t9WMcHXMnLLDyHZOAMV02fFQc7SqY+wuOo4O6LWi6DrTdf
	IfvHDl+Z9U+zghQ4T676B06GVBdh3cvGom+os3AWa0zkXUyfK+2O1EhdOuh4NkAltXIMo4
	qaZVSVY93SybmwJbOyiKsRseAX49WwB+ZYJUTxIx3ux7TWjiWYVIUaghiD7S8FMii0KmhY
	xqxP32m4XsBkP0QkeQepcnaHcvHrxEG3NH7NQQZgnwNfc6350U7kOoXks12IQ2UG7mpO+c
	nVK7Hwz85rZgjszmvjMrRECFCT/RQgxg/CYwuFXo/INRIuTJbFLGcfRZ28xcsQ==
Message-ID: <694a6aa9-a847-7a09-977f-e9ab379909d4@bootlin.com>
Date: Tue, 9 May 2023 10:52:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 "Valek, Andrej" <andrej.valek@siemens.com>
Subject: Re: [yocto] [meta-security][kirkstone][PATCH v2] tpm2-tss: upgrade to
 3.2.2 to fix CVE-2023-22745
Content-Language: en-US
To: "Marko, Peter" <Peter.Marko@siemens.com>
References: <20230508145044.429707-1-peter.marko@siemens.com>
 <e3dbc417-fb92-6e48-4e4b-c42498d0be28@bootlin.com>
 <AS1PR10MB5697A909F0CA07D532C2743DFD769@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <AS1PR10MB5697A909F0CA07D532C2743DFD769@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 08:52:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59915

Hi Peter,

Thanks for your efforts.

On 09.05.23 at 10:33, Marko, Peter wrote:
> Hi Michael,
>
> Unfortunately, my corporate email server does not support me in this.
> I have sent you a test email after explicitly configuring this in git, but I think it won't do anything better.
> Last patch to yocto mailing list had to be sent by my colleague as the server has bounced it.
> https://lists.yoctoproject.org/g/yocto/message/59488
> Now it seems to accepts it with wrong "From:" field, not sure what has changed meanwhile.


Oops, that's bad if your server refuses a custom "From:" field, because 
that's the workaround we're using.

The test message you sent to me didn't have an additional "From:" field 
at the beginning of the body, which is what git can use to get a correct 
"Author" field.

>
> Very interesting is that I have sent dozens of patches to meta-oe or oe-core without issue, just the yocto mailing list is broken for me.


I see this. Previously, your message didn't have "via 
lists.yoctoproject.org". It could be that your corporate server turned 
on DMARC recently.

> I'm hoping you can accept the patch also like this, otherwise I can again ask Andrej to send it for me.


Well, Andrej seems to have the same problem too :}
I guess that's it's more important to let you send your own patches. 
It's just that our busy maintainer will have to manually edit the author 
field in your commits.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


