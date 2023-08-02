Return-Path: <daniel.klauer@gin.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CEC001E0
	for <webhook@archiver.kernel.org>; Wed,  2 Aug 2023 11:45:58 +0000 (UTC)
Received: from good-out-13.clustermail.de (good-out-13.clustermail.de [212.223.36.17])
 by mx.groups.io with SMTP id smtpd.web11.12446.1690976756792815030
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Aug 2023 04:45:57 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gin.de, ip: 212.223.36.17, mailfrom: daniel.klauer@gin.de)
Received: from [10.0.0.15] (helo=frontend.clustermail.de)
	by smtpout-03.clustermail.de with esmtp (Exim 4.96)
	(envelope-from <Daniel.Klauer@gin.de>)
	id 1qRAIb-0008Mz-1B;
	Wed, 02 Aug 2023 13:45:54 +0200
Received: from [217.6.33.237] (helo=Win2012-02.gin-domain.local)
	by frontend.clustermail.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
	(Exim 4.96)
	(envelope-from <Daniel.Klauer@gin.de>)
	id 1qRAIc-0004tP-0z;
	Wed, 02 Aug 2023 13:45:53 +0200
Received: from [10.176.8.67] (10.176.8.67) by Win2012-02.gin-domain.local
 (10.160.128.12) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Wed, 2 Aug
 2023 13:45:53 +0200
Message-ID: <ce1a9177-d5cb-5399-0440-9e90a3908858@gin.de>
Date: Wed, 2 Aug 2023 13:45:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] Sharing DL_DIR and SSTATE_DIR between parallel builds
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <2443ec38-4628-db58-5aa3-faf6f0c6d95f@gin.de>
 <CANNYZj8tLtnF3TiddvN3mPfNujX8L3vT7uX=QPLRh17suW6tMA@mail.gmail.com>
Content-Language: en-US
CC: <yocto@lists.yoctoproject.org>
From: Daniel Klauer <daniel.klauer@gin.de>
In-Reply-To: <CANNYZj8tLtnF3TiddvN3mPfNujX8L3vT7uX=QPLRh17suW6tMA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.176.8.67]
X-ClientProxiedBy: Win2012-02.gin-domain.local (10.160.128.12) To
 Win2012-02.gin-domain.local (10.160.128.12)
X-EsetResult: clean, is OK
X-EsetId: 37303A29342AAB59667D65
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Aug 2023 11:45:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60699

On 01.08.23 15:40, Alexander Kanavin wrote:
> In short, yes. Sstate files are first written into a random temporary
> file, then renamed when writing is done.
> DL_DIR items are guarded by lock files (look for lockfile in
> bitbake/lib/bb/fetch2/__init__.py).
> 
> Clearing out old items from sstate and download caches must be done
> when no builds are running.

OK, awesome, thanks. I'll give it a try then. Thanks for pointing me towards fetch2/__init__.py too, I was only looking at fetch2/git.py previously.

> 
> Alex
> 
> On Tue, 1 Aug 2023 at 15:26, Daniel Klauer <daniel.klauer@gin.de> wrote:
>>
>> Hi,
>>
>> Is it safe to share DL_DIR and SSTATE_DIR between multiple Yocto builds that are running in parallel? Are all the accesses done by bitbake/Yocto atomic or protected by locking? This came up because I'm wondering whether it would be possible to safely share a single downloads mirror and sstate cache between multiple build agents (and not just read-only over a HTTP server, but writing too).
>>
>> The documentation contains some sentences like "You can safely share this directory between multiple builds on the same development machine" and "You can reuse the directory for multiple builds", but this does not seem to clarify whether parallel builds are allowed. I have found an older message [1], which suggests that SSTATE_DIR is safe to share, but that still leaves me wondering about DL_DIR. Presumably bitbake uses plain rename()/mv for tarballs, as for sstate, making them thread-safe. But what about Git repos - it's clear that Git itself uses locking, but bitbake may do more than just git operations. Does anyone have any more information on this, besides digging into the bitbake and bbclass sources? Is it "thread-safe"? A potentially related question: How does bitbake handle multiple do_fetch tasks for the same repository running in parallel (if you have multiple recipes using the same repo)?
>>
>> Thanks & kind regards,
>> Daniel
>>
>> [1] https://www.yoctoproject.org/pipermail/yocto/2016-November/032873.html <https://www.yoctoproject.org/pipermail/yocto/2016-November/032873.html>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#60695): https://lists.yoctoproject.org/g/yocto/message/60695 <https://lists.yoctoproject.org/g/yocto/message/60695>
>> Mute This Topic: https://lists.yoctoproject.org/mt/100483492/1686489 <https://lists.yoctoproject.org/mt/100483492/1686489>
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub <https://lists.yoctoproject.org/g/yocto/unsub> [alex.kanavin@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

