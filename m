Return-Path: <mark.hatle@kernel.crashing.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D7DC38A2D
	for <webhook@archiver.kernel.org>; Wed, 26 Oct 2022 19:17:13 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
 by mx.groups.io with SMTP id smtpd.web11.65.1666811826950588765
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Oct 2022 12:17:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: kernel.crashing.org, ip: 63.228.1.57, mailfrom: mark.hatle@kernel.crashing.org)
Received: from [192.168.2.107] ([70.99.78.137])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 29QJH5EN029533
	for <yocto@lists.yoctoproject.org>; Wed, 26 Oct 2022 14:17:06 -0500
Message-ID: <87baa7a6-ddcc-10d5-9fb3-11d05738ea67@kernel.crashing.org>
Date: Wed, 26 Oct 2022 14:17:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.3.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Subject: [meta-mingw] Branch for langdale?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Oct 2022 19:17:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58419

Doesn't look like langdale has been branched in meta-mingw.  Is it in a state 
where it can be branched?

(I tried master and it seems to work for my use-case.)

--Mark

