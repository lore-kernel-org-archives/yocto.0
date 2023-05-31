Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD29EC7EE23
	for <webhook@archiver.kernel.org>; Wed, 31 May 2023 12:33:03 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.12882.1685536380621631936
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 May 2023 05:33:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=BOUgYvgJ;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
X-GND-Sasl: michael.opdenacker@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1685536378;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=588dhXSmTkwLhiNYL0cwSWMUtTmBlmEvS2kI+BhLMEc=;
	b=BOUgYvgJx7pcFLsHiaMocLl8b4lvspJxnZ2hImuCl4v9It/cNqFOCmw18Hr7tjGN6wd9l2
	AoTGUL7TEFM5tYSY9HOpht6EwuanvnwvnClcm2D+1GmArX13Ugl4VU0fcav6qtzLKmp5IC
	c224jXMK9hXd7ol1sfMITtTYM4VTPSqlsBsV0BRZ/4PIom7CAk9mFYtrKihG1E0rEs226D
	FuaicP1DvxIwoKGB0tkJJLLyebyLP7/iICifg709kuNlpO5gNSS2bAvai91b0QhcX3qc7/
	hQ2mEL1jsbz8rZCaNhLN0b03HmezmtyAH+RaW2X9tq/cp6owztVZNCctXxz3ZA==
X-GND-Sasl: michael.opdenacker@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id E6BE51C000C;
	Wed, 31 May 2023 12:32:57 +0000 (UTC)
Message-ID: <9b228005-a895-fe69-5bd1-76734bdacd31@bootlin.com>
Date: Wed, 31 May 2023 14:32:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Inquiry Regarding Kernel GPL License and UI App Source
 Code Requirement in Yocto Base Image #yocto #qt5 #bitbake #gplv3 #kernel
 #kernelmodule
Content-Language: en-US
To: Rohith <cheerala.rohith@spacelabs.com>
References: <Myxh.1685523853230201596.T1Si@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <Myxh.1685523853230201596.T1Si@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 12:33:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60152

Hi Rohith

On 31.05.23 at 11:04, Rohith wrote:
> Since the base image of Yocto has the Kernel license type as GPL, if I 
> include my UI Application binary in the Yocto Base image will I need 
> to expose my UI App source code?


No, the same applies to desktop GNU/Linux distributions. You can 
develop, use and ship software with the license of your choice 
(including proprietary), you don't extend GPL software or link with it. 
Otherwise, only GPL compatible licenses would exist in the Linux world.

The GPL FAQ address this kind of questions: 
https://www.gnu.org/licenses/gpl-faq.en.html
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


