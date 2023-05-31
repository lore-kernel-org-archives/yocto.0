Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9A68C77B73
	for <webhook@archiver.kernel.org>; Wed, 31 May 2023 12:43:13 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.13108.1685536987898434017
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 May 2023 05:43:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=D26q31C4;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: michael.opdenacker@bootlin.com)
X-GND-Sasl: michael.opdenacker@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1685536986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bcErIuV9eXokAVtv/73JLB9kiLvgs+7JdvLSenPK0pY=;
	b=D26q31C4qbxQjKWJPvsxjE9Z1bCc065shVvUd7bPYJ90Gzb/7qiNBhxK+LBM4PIE0ACvQY
	uz3MjGcY+IiK/fW0DYBrfKaiye4e1MtniyNh5lI2g9lDbrPvOCQS1Np3eJuk4tEIp7o6qQ
	d8vCt+c56GatYeI/LCmVi/6CQj8YT8nME7PNemde7jMpuGYmisaMw52O9n4yDZKAfh9DiG
	KuQjKdXhQfljp40G7KLi9a1TLkGO7YUqNyLWCY1RKh24myjS5M9RBwybzN66BLZbQz8RLD
	46ClwIaLY8zsZfRUJhdwnJ4Yg3/XA6z6ex+VC3AUtBttR85XXdj0dOJJ911j4Q==
X-GND-Sasl: michael.opdenacker@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7D21FFF805;
	Wed, 31 May 2023 12:43:05 +0000 (UTC)
Message-ID: <d9896bcd-bd98-592a-5674-55a2bf9dd8d4@bootlin.com>
Date: Wed, 31 May 2023 14:43:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Inquiry Regarding Kernel GPL License and UI App Source
 Code Requirement in Yocto Base Image #yocto #qt5 #bitbake #gplv3 #kernel
 #kernelmodule
Content-Language: en-US
To: Mauro Ziliani <mauro@faresoftware.it>
References: <Myxh.1685523853230201596.T1Si@lists.yoctoproject.org>
 <9b228005-a895-fe69-5bd1-76734bdacd31@bootlin.com>
 <3a3290e7-cb26-f305-a10c-88d6914a9448@faresoftware.it>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <3a3290e7-cb26-f305-a10c-88d6914a9448@faresoftware.it>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 12:43:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60155


On 31.05.23 at 14:38, Mauro Ziliani wrote:
>
> Hi all.
>
> As my personal experience with yocto and qt5 (and Qt Company) if you 
> make an UI application based on Qt5 you have to give the possibility 
> of reverse engineering of your application, due to Qt5 is LGPL.
>
> So you are not mandatory to publish the code, but the system must be 
> open for reverse engineerig.
>
> A final user can replace your qt5 libraries with its own qt5 libraries 
> modified
>

Right, you have to understand the requirements of the libraries you link 
your code with.
Michael.
-- 

Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


