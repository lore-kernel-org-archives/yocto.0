Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4927DC433EF
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 16:55:27 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.16963.1634057726545983297
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 09:55:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Sg/jSgn8;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id oa4so102002pjb.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 09:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=YUhUeD36JZRMYh+P/D27TCpgGymd/LbDsLlQdjV6TCM=;
        b=Sg/jSgn8A7X3lMylDduO+naocG8U1cud5VX6a9x89SdGXdiqd0CqOd0hi/mP2TDuSJ
         VisQHoKiHn01V5dg+7lSTqJynb28+7LHS1O2mUH0UoA96/uh3rcDiR6L18bu7gZXNsPY
         0sfbaj9u6nzvHCKdG77vicLikTVKNIxFLFTE9l0xPIIZFQgUKJnv+nukLf2YlfQtXrmb
         EKchwb7Zc4yY1CX9cw1bZVd8c8tQWjZqd8MvFsqv77Zd/NmQ6OrQwf2BiEiZqsqDCYXY
         VQ69u0qsl2uq09/yTWGKdwSxZjMx+S4DwCjhstrzNQA09dwRvzKB+YyRnWW+xC3lKRZc
         Ux2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=YUhUeD36JZRMYh+P/D27TCpgGymd/LbDsLlQdjV6TCM=;
        b=x7Xfsg7iZKLfACT9tVWK9NsWhE/aT/Fbl0JUP9z8B7Tco7tyc5ZEkt1wIX78qjNZDn
         RYOv7aZREc0KAu45Ltjt8KoIZWfhmkcoLpOew3BIigVu474iN/BAQCMc5KmqX1oc97ZL
         K8QgfwW9rW/yzLK6FAXQT+lAlfuYlN2MwHIulK647uAwHJ5Jo9eIYVmzGq/svx3E9Ykw
         ZJnzZ8SO8EKa+V0Bmba59XH25EyA7xEZpNgJRbkCavV58J5a8yh4cFoxt++THi/nlEST
         Z/ipr3YO01HAQ8QnvbrbRMqn7sz161zcTPwVoXIj8q9vhH+6XAc5zythtgRHoRiQQskn
         xY7w==
X-Gm-Message-State: AOAM532lm/aKi+BSVK7rqg4iZBrgdtVf9O6YS1dBXnRBC2DcMIY1UiDT
	zrOWB/3s2ajb20toXhqXIbc=
X-Google-Smtp-Source: 
 ABdhPJzkozw4veK0qDKj1F8yMpiUBsfrFHopYnqaNvWxtKmIn+xuBQAkC94yJQQGLjz+yKdM57fnrA==
X-Received: by 2002:a17:902:7c10:b0:13e:e11e:8d1c with SMTP id
 x16-20020a1709027c1000b0013ee11e8d1cmr31155668pll.55.1634057725878;
        Tue, 12 Oct 2021 09:55:25 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:6c8b:1831:560d:271b?
 ([2601:646:9200:a0f0:6c8b:1831:560d:271b])
        by smtp.gmail.com with ESMTPSA id
 139sm11663391pfz.35.2021.10.12.09.55.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Oct 2021 09:55:25 -0700 (PDT)
Message-ID: <deee2a0d-5de0-d18b-3b95-2e3132c8915a@gmail.com>
Date: Tue, 12 Oct 2021 09:55:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.2.0
Subject: Re: [yocto] util-linux and --enable-raw with recent kernels
Content-Language: en-US
To: Federico Pellegrin <fede@evolware.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: 
 <CAM6O0ZhZKspmeE02cgh1coOvjMUmhdUTMR8en3UbpJm3SL5fhA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: 
 <CAM6O0ZhZKspmeE02cgh1coOvjMUmhdUTMR8en3UbpJm3SL5fhA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 16:55:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55042



On 10/12/21 9:27 AM, Federico Pellegrin wrote:
> 
> Hello,
> Running on a quite recent kernel (5.14.10 from Fedora 34) I've came 
> across a problem when building util-linux (2.35.2) native, namely in the 
> configure phase:
> 
> configure: error: raw selected, but required raw.h header file not available
> 

you might want to use latest master, fix that you might find useful is

https://git.openembedded.org/openembedded-core/commit/?id=7f577c10913104860121f682b9b3754870c4db23

> After a bit or research I believe it is due to:
> https://www.mail-archive.com/debian-bugs-dist@lists.debian.org/msg1820154.html 
> <https://www.mail-archive.com/debian-bugs-dist@lists.debian.org/msg1820154.html>
> 
> Which is related to the change in the recent kernels here:
> https://github.com/torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f91a8d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba0936754304a 
> <https://github.com/torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f91a8d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba0936754304a>
> where the raw.h file was indeed removed.
> 
> As per first link it may not be obvious to fix, and don't see an 
> upstream fix for it, but from the Yocto perspective my current 
> workaround is basically just to remove "--enable-raw" from the 
> EXTRA_OECONF to disable the raw feature.
> 
> While the whole image seemed to build fine with this, I'm not very sure 
> if that configuration option had a precise use (which maybe it's being 
> skipping in my specific build) or not, so I wanted to ask the experts if 
> there is any opinion on this and/or should I do a merge request that 
> removes it to handle this problem, at least until there is a better 
> solution upstream in util-linux?
> 
> Many thanks,
> Federico
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55041): https://lists.yoctoproject.org/g/yocto/message/55041
> Mute This Topic: https://lists.yoctoproject.org/mt/86266370/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

