Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E00FC433EF
	for <webhook@archiver.kernel.org>; Thu, 21 Jul 2022 15:19:16 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web10.7716.1658416749464112264
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 08:19:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=S3GwrxmF;
 spf=pass (domain: gmail.com, ip: 209.85.160.173,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id w29so1467058qtv.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 08:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=XH/gKuZ/E6mjoh4oTEDGz76NjF/QGxXzujnxZU7s+BU=;
        b=S3GwrxmFeXNOLYkfziGtSQGFVOLfSplrIGcbpREhf7Bcn7QB9eRVurWlpBa1uPzIby
         wXB5bjOUSE/c69xLfk9bhtxjMtUgANG+oSf/x2884PjEMa93iBimZZpylD383jYKa10O
         RWYAXkFMv2b5QiVW8fbhHHjAhX3Zo1C+QXBgMgnqg0QEFXHPRPl6PqCBqTjLyeKpOz7G
         V+aIbzUabrhUxYOP0rxgq2iMWmePhiwfiZoVsIlPLhzpxxRahm+S39aRUh37xIDHknGc
         WIG99ZLCjuiZiyK9eQUBVdGCnf+pZ2aXPpQBTcwlbIaqI4ZCaROYbPFRVzJ/oKDCMq5x
         +unA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XH/gKuZ/E6mjoh4oTEDGz76NjF/QGxXzujnxZU7s+BU=;
        b=BnfyYd/NPf6BUjsQsZWpbe6MW41RVf8s0eAKqfZxN5GNkEgKtGaSJ/UuyzDtUqPdoW
         fUVvfECMO3xDtYlBknjcXUXHJFwzbmrVmk4SexCnb0r8hqVwP6NDlkBO7dvpP0JYPkOI
         3ugiWLKCGxjlVAZW14SDLcBTrKZbkhl5xQ9fPzOl7TJBr+ZaQad8doGclLhjbu1tgolp
         hoKLwKfWb0cZ1nHWOAApr15b8QNoLKAUIivNbej40UJ8JeBRxeOdWktcl1f25+7gY/EC
         ljQMfXF2SBbryWvobiM/JAl57hstu0WzNf8DRZ6wlxsMZMZWs0EPzYc5CQlwXRH0dFM3
         z6MQ==
X-Gm-Message-State: AJIora8dde6LoNEgRFT26lgR6/YMJBNo3/sorzfZFaY0faBwg/WNJJiH
	GK9r90059vTnhxqOR43d8VruHol19usrng==
X-Google-Smtp-Source: 
 AGRyM1vuIl5SbfsfnwXGO7OaxkbiXZXY4yH/yoTByPS1ZgmwrV67kmhNeg6W1v0VmrsorBHv9Rp/tw==
X-Received: by 2002:ac8:5f52:0:b0:31f:19f:669c with SMTP id
 y18-20020ac85f52000000b0031f019f669cmr10544135qta.474.1658416748397;
        Thu, 21 Jul 2022 08:19:08 -0700 (PDT)
Received: from ?IPV6:2607:fea8:95df:9730:a90f:7fcf:f7e0:a30e?
 ([2607:fea8:95df:9730:a90f:7fcf:f7e0:a30e])
        by smtp.gmail.com with ESMTPSA id
 f2-20020a05620a408200b006b5f68bc106sm1665142qko.110.2022.07.21.08.19.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 08:19:08 -0700 (PDT)
Message-ID: <e12d26ef-09d5-5060-3948-2904ab3c531b@gmail.com>
Date: Thu, 21 Jul 2022 11:19:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.0.2
Subject: Re: [yocto] Custom YOCTO meta-layer building on Ubuntu 20 but Not in
 Ubuntu 18.Why? #dunfell #yocto #dunfell
Content-Language: en-US
To: sethu.m@calixto.co.in, yocto@lists.yoctoproject.org
References: <of5X.1658401397004419730.rtDe@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <of5X.1658401397004419730.rtDe@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Jul 2022 15:19:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57608



On 7/21/22 7:03 AM, sethu.m@calixto.co.in wrote:
> We are making a Custom BSP Package for our Board using the YOCTO. I 
> encountered with a problem during the build of Yocto image in Ubuntu 
> 18.04. But the Same image successfully got built in the Ubuntu 20 Machine.
> 
> Iam able to build poky in Ubuntu 18.04 machine by removing custom 
> layers.But adding custom layers the above problem arises.


there seems to be something in the interaction between core layer with 
your custom layers, Usually issues of this nature are solved in the 
custom layers. Since its not a community layer, its not easy for someone 
from community to help you unless there are more details on nature of 
error or the content of custom layer.

> 
> And the errors which are coming is from the meta layer inside poky for 
> the gcc9.3 package.
> 
> Is there anything to be taken care for making custom layer independent 
> on Ubuntu versions. As i just started YOCTO(dunfell) few weeks before, I 
> am a noob in YOCTO . Please help on the above issue
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57605): https://lists.yoctoproject.org/g/yocto/message/57605
> Mute This Topic: https://lists.yoctoproject.org/mt/92524182/1997914
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

