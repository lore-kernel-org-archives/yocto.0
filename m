Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CE0DC433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 17:20:28 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web10.13257.1644513627159076184
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 09:20:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bS0FgZ83;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id
 q11-20020a17090a304b00b001b94d25eaecso1707172pjl.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 09:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=ooWQoAZqnq16q2t+j/R2H0OGTNFL9lyqK80pgPnFOZQ=;
        b=bS0FgZ83ArElJWi+ps/MiuV6azgBpKgfVNd0gs07J8A6Nabs0n+9XLMhb+qnVzS86s
         HtDUpwD+xPaYAgjEti1dEwyZ/S89it2EI2Nbft3ff3zcpMSnxHwtxGc69Rc2nEEYyqzd
         8WtqMdYUl30fLg3+2PH5cIit6yRR8NXunyulUaCjhvSTBdgJf0E2LnKwZfydFtr6X8+w
         LLF6IsFjt6cJycHKRycgTV18gk5PC1X8KQRg0+X9zfdIKvVyKSnFm/U67zSEc+/pABdA
         KAqrvvj2xP1kHXFP4uLnT1ugYWF15sHRsk5x4FMPeA1n0Jm+Jnj4/fajq/mt58vnO1TQ
         E09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=ooWQoAZqnq16q2t+j/R2H0OGTNFL9lyqK80pgPnFOZQ=;
        b=4n1OgKgq7B/4tNYwYtfFmxRLYnbVPqIXVrGQaz4+vKi2hx6E/AcP25+Rny2DkmIwVh
         f0z1khAtDEuWbnA7/3XOWhaWIXWvDvP68cMRYAXRwpfwu9yhjj7GCxBs5TovvlZPBxMd
         TOuV6TsIQYrjdf3UK9Ov0Cam2ElcqKj9T5fO52s7mpe4bPHEgqq/g6kOJ46s7RU1nMB9
         dZeBGXgwcXav0KrgnGPhuitkmFoibIoPiUc6YKZr4f6kUem6v7zz5LyHX20aBtQAQCyO
         169p228dW5EnK0BIf4mEffbzkjgyvskakIuUprRCHpGcFr9+V+zAtBUSFgfN8X73udr7
         zmvQ==
X-Gm-Message-State: AOAM532N8q5+HtlsxT9MXOGKMtNnu/JOebHzvc9YRY66gDGrA0Rp58Z4
	FBajIthL724Yg0LCSYF4ezk=
X-Google-Smtp-Source: 
 ABdhPJwVCp4q6KMmhzPiF/MsJwduU6vWwB+EFYiPzsKAWrnPRoGDOuFqaur2Cu2G1DDuU3fKFc4O+g==
X-Received: by 2002:a17:902:d64f:: with SMTP id
 y15mr8523707plh.145.1644513626545;
        Thu, 10 Feb 2022 09:20:26 -0800 (PST)
Received: from ?IPV6:2601:646:9200:a0f0:f417:a1fb:afd0:9225?
 ([2601:646:9200:a0f0:f417:a1fb:afd0:9225])
        by smtp.gmail.com with ESMTPSA id
 b20sm5098385pfv.31.2022.02.10.09.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 09:20:26 -0800 (PST)
Message-ID: <f2175531-20b5-947b-b5e4-37fac33bffb7@gmail.com>
Date: Thu, 10 Feb 2022 09:20:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.6.0
Subject: Re: [yocto] #yocto #zeus Problem with moving from rocko to zeus
Content-Language: en-US
To: Dusan Radic <dusrad@gmail.com>, yocto@lists.yoctoproject.org
References: 
 <CAFe1xewJGwZXTH+qhKDsZN9ecofbgQJKZfyT-5iHv=QFbjE8-A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: 
 <CAFe1xewJGwZXTH+qhKDsZN9ecofbgQJKZfyT-5iHv=QFbjE8-A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 17:20:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56151



On 2/10/22 8:56 AM, Dusan Radic wrote:
> Hello,
> 
> I am trying to upgrade my distro from rocko to zeus.
> After I fixed all the initial parsing and build problems I have
> reached a point where the linux-imx doesn't build. Maybe I am
> underestimating the task in front of me, but I have already seen it
> done.
> 
> The error looks like this:
> 
> | .../kernel-source/Makefile:947: recipe for target 'fs' failed
> | make[2]: *** [fs] Error 2
> | Makefile:146: recipe for target 'sub-make' failed
> | make[1]: *** [sub-make] Error 2
> | Makefile:24: recipe for target '__sub-make' failed
> | make: *** [__sub-make] Error 2
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task (.../meta-mylayer/recipes-kernel/linux/linux-imx_4.1.15.bb:do_compile)
> failed with exit code '1'
> 
> Is it possible that I am using the wrong linux-imx version? I have
> tried a few but to no avail.
> 

perhaps there is more specific compiler error in logs above that ?

> Thanks in advance.
> 
> Best regards,
> Dule
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56149): https://lists.yoctoproject.org/g/yocto/message/56149
> Mute This Topic: https://lists.yoctoproject.org/mt/89050046/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #zeus:https://lists.yoctoproject.org/g/yocto/mutehashtag/zeus
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

