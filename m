Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3621BC4706C
	for <webhook@archiver.kernel.org>; Fri, 12 Jan 2024 14:30:24 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.8338.1705069822548999640
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jan 2024 06:30:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=cD5L2CtR;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8863424000D;
	Fri, 12 Jan 2024 14:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705069820;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rEViGst4MQhy2cNdRLuEPepDEQlYV12a6RERSSpTzNE=;
	b=cD5L2CtR3NMsTIj6iJ8uyxEYPoP2a6d+Enmg2xyqIEZT1V/tawo9R5VE0HW9TE4bxqfreV
	nuFsDvZYkuKH0SoF5EAYvD/HMoH7JmTHLBDJzEUSSfINpZArzRONcP96usjAIbN+fDI/kh
	DCjSxcV954vWfGgm4TetZEfjzkmJr5r7yKl1ClK0wV++uJikpAsFGe3HfWmNUydjwtF1Yw
	1XteE2k/bey9fL4oFCw+ztK1reE29YjKC5SHY6inKEJGQg/BWBUzx+YFvnyinOi4cDocnM
	oDuxbH2OWvGaRL/Af3sngqN6vRv6/xEBLYmN55kbvpeHlY+h4HIDJ9s+zTcqUA==
Message-ID: <aac1217c-3509-4efd-bd79-63b1d79cd07c@bootlin.com>
Date: Fri, 12 Jan 2024 15:30:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [yocto] Binary feeds: how are we supposed to use "dnf upgrade"?
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
References: <3da054ed-69d5-4d87-98f6-f7a8ae20994d@bootlin.com>
 <CANNYZj_xniBAum7ZEDGTOGaeTntcBA-EN--Rg5DPqFmfz-APtw@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANNYZj_xniBAum7ZEDGTOGaeTntcBA-EN--Rg5DPqFmfz-APtw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jan 2024 14:30:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62138

Hi Alex,

On 12.01.24 at 15:11, Alexander Kanavin wrote:
> Note the existing tests in meta/lib/oeqa/runtime/cases/dnf.py - the do
> use a remote http repo to install a file, but the repo configuration
> is supplied on command line with --repofrompath, and upgrading is not
> tested.


Right, that's part of our plans to add such tests, and fix issues if 
necessary.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


