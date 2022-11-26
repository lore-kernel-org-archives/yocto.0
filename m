Return-Path: <philip@balister.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CEAC4321E
	for <webhook@archiver.kernel.org>; Sat, 26 Nov 2022 15:38:56 +0000 (UTC)
Received: from smtp6.emailarray.com (smtp6.emailarray.com [65.39.216.46])
 by mx.groups.io with SMTP id smtpd.web11.72452.1669477131388715539
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Nov 2022 07:38:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: balister.org, ip: 65.39.216.46, mailfrom: philip@balister.org)
Received: (qmail 65619 invoked by uid 89); 26 Nov 2022 15:38:49 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0A3NS43NS45Ni4y) (POLARISLOCAL)  
  by smtp6.emailarray.com with SMTP; 26 Nov 2022 15:38:49 -0000
Message-ID: <5797f8c8-05b4-5d61-a44d-497cd250f3ce@balister.org>
Date: Sat, 26 Nov 2022 10:38:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [yocto] Thud/Zeus support of Linux "memtester"
Content-Language: en-US
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.172AF745CB91807D.14835@lists.yoctoproject.org>
From: Philip Balister <philip@balister.org>
In-Reply-To: <MADEUP.172AF745CB91807D.14835@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Nov 2022 15:38:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58638

On 11/25/22 18:20, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> Does Yocto thud/zeus support the linux “memtester”, to find memory 
> subsystem  faults ?

A recipe is here:

https://layers.openembedded.org/layerindex/recipe/863/

and I found this in thud:

https://layers.openembedded.org/layerindex/recipe/91592/

Philip

> 
> Whay packages would need to be included to support this utility ?
> 
> Thanks,
> 
> Steve
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58636): https://lists.yoctoproject.org/g/yocto/message/58636
> Mute This Topic: https://lists.yoctoproject.org/mt/95264132/384425
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [philip@balister.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

