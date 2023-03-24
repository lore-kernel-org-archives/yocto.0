Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F14D6C6FD20
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 10:07:05 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.97680.1679652419235592645
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 03:07:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=ZdnWRyMp;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 853E4240013;
	Fri, 24 Mar 2023 10:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679652417;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4CwANPX1HhctIuVo1cesDXevrB07bwzt2pz2cl6b4kI=;
	b=ZdnWRyMphfbTGS1KsktKnPHbk8Ln4+4qv9AdjDq6HjOKSPoVqosrKN6/Ry2Sh6eIzpQTrQ
	Fm+3NXJdpSQRLymXVB4EyTVkKf9dqaPKd/H62WHq2I7W/PGgBsvbwp8uhTJIUqdnG/rWMR
	Pt5j1ugiQDmUM8IA9fovh713HczRwFiLL+dP97Nw1YeKYKOh0kloQVg1t+V96j9P/4PcAP
	IPQ2fvyqS+u7vx6Qk6p9+kcHcWJEgDHzYmY06kORFGN5UH7BV7pBI786rGPSbcHkiwX4nW
	sYA6rhMF5DPRvsNR9MP53FiSM3aWmWl1vx/6AZIM6fvWz39+rCAXJAzD/MB1wQ==
Message-ID: <ca873dd6-97f9-2336-b654-923cb5fda467@bootlin.com>
Date: Fri, 24 Mar 2023 11:06:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 2/2]
 scripts/generate-testresult-index.py: expose regression reports on web page
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com,
 yocto@lists.yoctoproject.org
References: <20230324090025.26366-1-alexis.lothore@bootlin.com>
 <20230324090025.26366-3-alexis.lothore@bootlin.com>
 <eaeafb6dd0b87478494477540709f9d20f500955.camel@linuxfoundation.org>
Content-Language: en-US
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <eaeafb6dd0b87478494477540709f9d20f500955.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 10:07:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59509

Hi Richard,
On 3/24/23 10:55, Richard Purdie wrote:
> On Fri, 2023-03-24 at 10:00 +0100, Alexis Lothoré via
> lists.yoctoproject.org wrote:
>> From: Alexis Lothoré <alexis.lothore@bootlin.com>
>> -    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs, hd))
>> +    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs, hd, regressionreport))
>>  
> 
> In the interests of keeping that index page a manageable size, instead
> of a new data column, I'd suggest we just add the link in the same TD
> cell with the name "Regression"?

Sure, I will update it with your suggestion

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


