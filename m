Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24728C001DD
	for <webhook@archiver.kernel.org>; Sun,  2 Jul 2023 19:10:47 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web11.12090.1688325046115006460
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jul 2023 12:10:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=AYPcrysB;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-570114e1feaso46334317b3.3
        for <yocto@lists.yoctoproject.org>; Sun, 02 Jul 2023 12:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688325045; x=1690917045;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S1qVg8OyRbcsT73fs0FSMBGTB08/o8m+TYkthE4oQM4=;
        b=AYPcrysBdUE2QrZicWBCB0VyQNo1QAsqeaLi5D9M8YrCJj079grIAxdbkDTrIMouGR
         PiIzzTqWUEutjA0TynJLFYc9bj/8itKW805PkskSFOyZsRTDAa56OTYoYeUyUSYi7CpH
         +D7xGuAlEnLEpELR3EheSf7Cn4qDCKQwNt3Op2MXYGZfUNHZ7JAOpXxCnTJ8qHJJA5qc
         r9X/J8zQwp4ihInx3cld5niWfZ4NAzXBzKcRA28MIMy3itnZ/d4T2K6tUIhDgBkKdeSv
         2ifVYKQwmgqBaZXE7hLq0fzIumSFJMRdY5wf73h0ah1kZUh27eav30e5YqFzFWWOWMmX
         TwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688325045; x=1690917045;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S1qVg8OyRbcsT73fs0FSMBGTB08/o8m+TYkthE4oQM4=;
        b=ap8C0kluZtBqpxLqxp7DSWNXHSs7r20enBNenBCpmOEa9eiBMMxq4OOZK1aIlT3bDh
         6AEdcdWlkzNAc0psGLuuhqEoO+Fs7yHCnZka80g3ujTeP2ZxWQan9reV8J4jsTJP9z/4
         omZB14rrNZRode5rbphCkK9jZRmsYozxuOjM49DC/LBKrbcDocre2CVhsP6y8rPw3eVa
         eN8ECYV/hEt/OebH9cptRxHfgMAicTzFvNuXRzC6hepe0YS6BYUCCmu4a0IJuX3ukDNY
         R+H9BwuYBIIK2oVb1QxsvrFPygjqMqxY3HpaCH1BlGjoNZG2A6Cgdx41igQWid5fdma6
         oQ2A==
X-Gm-Message-State: ABy/qLZG3d8PE6ne/9CvL2EnzgsLpekHEX7TOevootjUE4cpmi5f0rRk
	JumQ4iMLMMKdHuBvjC9Gpbw=
X-Google-Smtp-Source: APBJJlGyvVNEHdFHynMadC+8kCQKu9j28sec574jkQW8SwTGpLLDcLhOfQJpAJHnMk/LeYksFA5cfA==
X-Received: by 2002:a81:8386:0:b0:577:dddb:c289 with SMTP id t128-20020a818386000000b00577dddbc289mr5592330ywf.7.1688325045292;
        Sun, 02 Jul 2023 12:10:45 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:2d9c:8fc4:3a88:3856? ([2600:1700:9190:ba10:2d9c:8fc4:3a88:3856])
        by smtp.gmail.com with ESMTPSA id w128-20020a817b86000000b005768a634f5bsm4641445ywc.99.2023.07.02.12.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Jul 2023 12:10:44 -0700 (PDT)
Message-ID: <abae3de1-bd48-99fc-658c-afa4b450bbe2@gmail.com>
Date: Sun, 2 Jul 2023 15:10:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [QUESTION] [meta-security/meta-tpm/recipes-tpm2]
 Kirkstone release
Content-Language: en-US
To: benjamin.baratte@st.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <DU0PR10MB52441934DB7DE4BC76AF8804E12AA@DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <DU0PR10MB52441934DB7DE4BC76AF8804E12AA@DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jul 2023 19:10:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60490

Benjamin,

On 6/30/23 11:12 AM, Benjamin BARATTE via lists.yoctoproject.org wrote:
>
> Dear Maintainers,
>
> I’m using the meta-security with Kirkstone version to use discrete TPM 
> with STM32MP1.
>
> I’m facing 3 issues :
>
>   * The packagegroup does not include libtss2-tcti-device library è
>     mandatory to use discrete TPM.
>

Does this Mickledore commit address the issue?
https://git.yoctoproject.org/meta-security/commit/meta-tpm/recipes-core/packagegroup?id=8a7112d37bfe0157289ed7e6baeb1d7e37707b29
>
>  *
>
>
>   * The packagegroup does not include tpm2-openssl è support of TPM
>     provides for openssl v3.x
>
Mind sending a patch to add this to master and I will backport to kirkstone.
>
>  *
>
>
>   * Tpm2-tools is on release 5.2 which has an issue with tpm2_nvread
>     (https://bugzilla.redhat.com/show_bug.cgi?id=2158598) è could it
>     be possible to update it at least to release 5.4
>

The changes between 5.2 and 5.4 include many new functions/features.  
You can either carry that recipe local or give Mickledore a try.

BR,
Armin
>
>  *
>
> Thanks,
>
> Best Regards,
>
> Benjamin
>
> ST Restricted
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60487): https://lists.yoctoproject.org/g/yocto/message/60487
> Mute This Topic: https://lists.yoctoproject.org/mt/99874868/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


