Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D78E6C433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 15:52:07 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.1033.1632757927206267253
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 08:52:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=h7BDOC+p;
 spf=pass (domain: gmail.com, ip: 209.85.215.182,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id f129so18234392pgc.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 08:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=RRgY90olYQ+KtTgOMBSdgZBkdTei4QjoUJjcqrborYE=;
        b=h7BDOC+pi9G9utNmKTROMWbYMwrBAT277wE78ZEwI6NFuOntEhAR3N0k3QwixZ42Jj
         Px4LzIHuwPcHK79X2gvToZVXnMkHmlyuSUPcHl0LHy3RdQr8wP4aAYfpUd3Go8gdGCg9
         YPQuxIk+QUQmad8+OLJpjBzSRF0vHWgW/UltZvFZJwRlPbWhq0oBjLxfp3R8VIZU72rd
         XNKo9DPh0WslRyIu1iOqb7sjcYEHVb4S6Do4Ll58Xlp+fFOrzLQS17gM/GO+OEjkuk5w
         mVIIKaAnTbAz+O1UQU8Pa3fFk3vEQEg5YDKWID/jBY4RXJYcVeW3ai3m815VXIthBsca
         XctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=RRgY90olYQ+KtTgOMBSdgZBkdTei4QjoUJjcqrborYE=;
        b=sn1ajMMG44GPsseBX6YWLyM+j3ScwxvFAsherrLtJHu8ymz7CcYNbBhyUCT/3kFMSV
         zPUaRNIedXXK13hsrKlbGrjjoUp8iaUlDp9t8tjiWCfkZbZzBfOvfaMj+9jvW9jSgo1P
         2Cs2Fl9lwfMdODQDLu8OrqhndaHKtimke8Qhu6xtByB9w1glaDMhzk+6LLhTeEXnHRc4
         UbuxIjwhPdjkUOfZjm5NCDOQrXFIcXPK2dUjx94/Uvkao05EaJ4+p6IS7VCyKonGPvq7
         SCTpEiz6bXMlUmLIOgwNZd3T/WoaBKqmuhDEKN7Kc/HZgccWnr2j+Ql4rI5aVyHcCNzP
         EU2g==
X-Gm-Message-State: AOAM5300rVQCAQ0TzipheYUeVtg4iSKR2REahOV6c1o0ii+ToJCokHlC
	wOoEvVNmxdX+1zRUsFhFtwQ=
X-Google-Smtp-Source: 
 ABdhPJxoLAZwIlj/r7GSs8fTHBK4M8alqj91p+fAYzn3gaVqIAjavo2K6wMEN6FYu6KMXg1MBCVwvQ==
X-Received: by 2002:a62:1c84:0:b029:39a:87b9:91e with SMTP id
 c126-20020a621c840000b029039a87b9091emr681259pfc.7.1632757926411;
        Mon, 27 Sep 2021 08:52:06 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:15c7:3503:63b:40fb?
 ([2601:646:9200:a0f0:15c7:3503:63b:40fb])
        by smtp.gmail.com with ESMTPSA id
 z202sm17933266pfc.40.2021.09.27.08.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Sep 2021 08:52:06 -0700 (PDT)
Message-ID: <1e3f20d2-e557-b8fb-3ab7-d473db4eb2ad@gmail.com>
Date: Mon, 27 Sep 2021 08:52:04 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.1
Subject: Re: [OE-core] Incorrect systemd timer
Content-Language: en-US
To: JH <jupiter.hce@gmail.com>, yocto <yocto@lists.yoctoproject.org>
Cc: OE <openembedded-core@lists.openembedded.org>
References: 
 <CAA=hcWTC3_+Fg9uRC7ZnAEKhNEcF5Z_PM1WEugxQD76oFJ33dg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: 
 <CAA=hcWTC3_+Fg9uRC7ZnAEKhNEcF5Z_PM1WEugxQD76oFJ33dg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 15:52:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54879



On 9/26/21 6:29 PM, JH wrote:
> Hi,
> 
> I set up a service timer to run the service every minute at times
> 01:10:50, 01:10:50, 01:10:50, ...
> 
> [Unit]
> Description=Run watchdog job at every 1 minute
> [Timer]
> Unit=mwatchdog.service
> OnCalendar=*-*-* *:00:50

perhaps use
OnCalendar=*-*-* *:*:00



> Persistent=true
> [Install]
> WantedBy=timers.target
> 
> But the timer was actually fired about every 8 - 9 seconds:
> 
> Mon Sep 27 01:10:06 UTC 2021 start timer
> Mon Sep 27 01:10:15 UTC 2021 start timer
> Mon Sep 27 01:10:23 UTC 2021 start timer
> 
> Not quite sure if it is a kernel issue or Yocto oe-core build issue or
> what I could be missing, appreciate your advice.
> 
> Thank you.
> 
> Kind regards,
> 
> - jupiter
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#156371): https://lists.openembedded.org/g/openembedded-core/message/156371
> Mute This Topic: https://lists.openembedded.org/mt/85891446/1997914
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

