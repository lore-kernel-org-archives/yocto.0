Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09B4AC54EBC
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 17:48:57 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.110884.1673372931058793541
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 09:48:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=kTySGUMN;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 89FF440002
	for <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 17:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673372928;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oC0Ya/mvyFpdf9m6CU9Y3Bgn2XJ+pp8a6jiIDyYkF+s=;
	b=kTySGUMN7VLBRbviYnSB3rMVKr+TPmkQL8wqWVQMz8ssiPMbUn8QG5iOL1bFBFZ0TR7xQ0
	PAfmbHkbkW1ywBSQERrrxivLbrWa+G4HgGXi8/DxDTPSBfpp+8jO3PhdQJ07IUiTs58pbG
	LUwSCMoXqpudT6lG95g4HEkAFgoRmW1OLmGCXr3rYqlPi5W4M5PrEHv3HqkN5EwHfNwESs
	9FWCpbNzIrAMgNRJ5t2+dSmobfuwASzqjvefrh3qlz9gcJyU/VIV1BDKe90kxe9WW9mc73
	/dYyZ9AzD8rl6K/6hIrfFuQaBb63W2SurU9XaDuyPtirpkrOwRcl2avZIDv3LA==
Message-ID: <ebcbd116-7fd9-bb09-588e-c851139b33ea@bootlin.com>
Date: Tue, 10 Jan 2023 18:48:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Can't find go-helloworld in my image
Organization: Bootlin
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 17:48:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58959

Greetings,

Using Poky master, I added go-helloworld to my local.conf file:
IMAGE_install:append = " go-helloworld"

... to build the recipe on 
https://git.yoctoproject.org/poky/tree/meta/recipes-extended/go-examples/go-helloworld_0.1.bb

I then built "core-image-minimal", but though it seemed that the recipe 
was built, I found no such binary in my image.

What could be wrong?
Thanks in advance
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


