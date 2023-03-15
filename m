Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533E6C6FD1D
	for <webhook@archiver.kernel.org>; Wed, 15 Mar 2023 12:41:20 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.6744.1678884075883095623
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 05:41:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ifUuPG4m;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id y3so16340029qvn.4
        for <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 05:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678884075;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N8DjDfUHKFA5lazQErM24Hx2zELOhDX6ve3gkd7uBnk=;
        b=ifUuPG4mbY6RkphnoYlkRjPqb/b1wyYkDZIG7aE+//JLg5sRqaTpLXPe9tC1Mq6Jpm
         yABnBQlS/aNCuBas7Bm3LMzkBNCKM6AEdBZUAN5bXFZWJpYe+afVMSm2pFs3Ch9oQLnY
         1QpbhASjKbWjzl3CjwX6e6YbkQih9vKYBQNGP+Kfbvlj0TDJ6O3ovqSEADj6KnV6CIcN
         UlPKXd0w8VmpyHwltQo24F54lZaT/8E+YjCwxRM1oJfCPoc7T4PDgWxn88r9bwF6mxlu
         5tljZJfE/waR+at7nXWAtj3gShjJ5vuWa818DiQL97BmGNAwWnbQXu4riFqWReXiFdkp
         buTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678884075;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N8DjDfUHKFA5lazQErM24Hx2zELOhDX6ve3gkd7uBnk=;
        b=zP0NIjgofb5Ls5dRHvFL8ybtQIBZrMObeVDRuHojd7+m4DKYWkPjKfKsvltEAXaFj7
         kvG5D+hpyl9YXcquFe8Wy0XOWTu92hzcLXQc3OfcrP2MG8jFKH7AWcm3plSsXRHVhIXV
         hsNA9mJ6q0+BqPR2KnQ5xUgaexukkmxofh61+AEIcDjowNWiWcrxLyUgNitDljKyMVK6
         nQ1YqqUTdu6OlkQhxQ4w1IF/LXRwmNBhlUoQGtfsQGO0tNPFw0PiRSLAyAWTLTDwxRwu
         1Oumr1BnWCtgDPs59F7N5L/CxQs7JvcPdSJqtZ8pQqfCQZiDZJJxUb9CRWNO80FemJf1
         WY0w==
X-Gm-Message-State: AO0yUKWisbqJuKfXYmveGed0ea1z8S2Ppc8XiAzB3nGJt+v3fae7llZB
	uO6hlgi0w9vTGRc3zI1HsFuHk67MKEw=
X-Google-Smtp-Source: AK7set+mlVw5BKN3KMWBZflraCDESFoHWm2Iu/dnDEc4MhVMtkYqEoiBBz+uCK/gZOc1r09oLzf9nQ==
X-Received: by 2002:a05:6214:20a8:b0:56e:a899:1614 with SMTP id 8-20020a05621420a800b0056ea8991614mr24116939qvd.0.1678884074840;
        Wed, 15 Mar 2023 05:41:14 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:6e40:a836:8fef:44c5? ([2600:1700:9190:ba10:6e40:a836:8fef:44c5])
        by smtp.gmail.com with ESMTPSA id o7-20020a374107000000b00745c4d90aacsm3275749qka.115.2023.03.15.05.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 05:41:14 -0700 (PDT)
Message-ID: <ec8b0ac1-9ae9-12ea-87e2-478b90b7edde@gmail.com>
Date: Wed, 15 Mar 2023 08:41:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [yocto] [meta-security][master|kirkstone][PATCH] libmhash: add
 multilib header
Content-Language: en-US
To: Adrian Zaharia <adrian.zaharia@windriver.com>,
 yocto@lists.yoctoproject.org
References: <20220701172309.105912-1-jpuhlman@mvista.com>
 <20121.1678453036486574971@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20121.1678453036486574971@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 12:41:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59432



On 3/10/23 7:57 AM, Adrian Zaharia wrote:
> Hi all,
>
> Is there any reason why this patch was ignored?

Can you resend it. I went back 7 months in patchwork history and could 
not find it.

-armin
>
> Thanks,
> Adrian
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59379): https://lists.yoctoproject.org/g/yocto/message/59379
> Mute This Topic: https://lists.yoctoproject.org/mt/92115340/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


