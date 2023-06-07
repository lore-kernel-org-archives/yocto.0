Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFC6C7EE23
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 12:35:07 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web11.7217.1686141306171023733
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 05:35:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=eoteBnYK;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-568af2f6454so74040217b3.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 05:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686141305; x=1688733305;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:subject:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QfT+0tKiZuBjdgMaq1+NQ/UWBIkS/xBaZrgvK0D4v1Q=;
        b=eoteBnYKZofroLuP2jWAmopiKhWuhrAJuSLm9QbYrlqnmpN4IaNl0HruJJOy4+9HgV
         jLGlEGsk8redKQb12WZRae5im7pbBRdaoBLOBVGYlEtrzQxht4SsXvNwhyMib1S2+SMv
         GMQ42oV8YOl+67nPxmM4dGO29mS7GcLP7esNVFY1UpfxmT/jO/6Ix/eXkG6z2kY4xUMp
         RYnJsRpUCCogSOg9iscZCqI6T4u75AR6gJ8lnKOyIM3Kr0uCIyzHZ/EL71hXUZgAaVgp
         +qTIkvV12EFroTm6PruyYbTWgsl30TQBN09hAug/6tdkAmfWjJgb24pP0ZyIUfQaNgsJ
         sNKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686141305; x=1688733305;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QfT+0tKiZuBjdgMaq1+NQ/UWBIkS/xBaZrgvK0D4v1Q=;
        b=R5aD22S4DynafayIGXoCI8wv9Mrt0WFNiF6IzKcFOAUpL9A/cKMKTpIf7k78MmaN1v
         7pTes2QbmnpIEkJYVryAkHUXWW3a9MTx2+LFqVLZCyRJd6bZzsx3Rqkq9IVwobUbnrxG
         +IjpceHWSHDhYw0I3LOKrww4/ZBNQ6WPAZ5q5eOgc0VCQ1bt9WnfTpKF/HvK89J2wnyr
         GLWLddVz7s4av3+n+imehNOvIshqDJpnRtTqTBnYwUP6HnfwIczSzFKiS4I8mW1TJjUm
         sdPPhJab7biwMZwzYBxfcXW4euYaJNgtRKO7Su5+YSgU2UYM+zvqzJ2KcBULUKYD4yuq
         mGuw==
X-Gm-Message-State: AC+VfDx2iPKgpUXkRsbFDagwKSTyADb8mG/88ygVVmb0mGPBiWmamB6U
	B6F+6jPtxfAypGFrqo4iHJA=
X-Google-Smtp-Source: ACHHUZ7IEZrLfEP/DTm6vm6HtoHPptzwf/lxZ/C0lqx+EuGW5Bc4hnqol9jzVl6KPL9coTVqKpgeoQ==
X-Received: by 2002:a0d:f301:0:b0:569:74f3:fef2 with SMTP id c1-20020a0df301000000b0056974f3fef2mr6831887ywf.2.1686141305325;
        Wed, 07 Jun 2023 05:35:05 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:1afc:1db6:4783:7dc5? ([2600:1700:9190:ba10:1afc:1db6:4783:7dc5])
        by smtp.gmail.com with ESMTPSA id o5-20020a815a05000000b00561608bc0dfsm4745762ywb.56.2023.06.07.05.35.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 05:35:04 -0700 (PDT)
Message-ID: <9b03158a-a80b-54e5-cfa9-39fa015694e7@gmail.com>
Date: Wed, 7 Jun 2023 08:35:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: akuster808 <akuster808@gmail.com>
Subject: Re: [yocto] kirkstone meta-security branch
To: peter.marko@siemens.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AS1PR10MB5697AC08EDAB59C195FE42A6FD4DA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
In-Reply-To: <AS1PR10MB5697AC08EDAB59C195FE42A6FD4DA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:35:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60208

Hello Peter,

On 6/5/23 4:31 AM, Peter Marko via lists.yoctoproject.org wrote:
> Hello maintainers,
>
> I'd be interested to know if meta-security repository for kirkstone is still maintained.
> Looking at commit history, there are only two commits since July 2022 (almost a year).

Thanks for bringing this issue to my attention. I wouldn't say it rises 
to the level of Maintained but a best effort situation. Master tends to 
get all the attention.

> The mailing lists has several contributions meanwhile (list what I could find from 2023):
> - tpm2-tss: upgrade to 3.2.2 to fix CVE-2023-22745   <- this one from me I'd be interested to be picked
> - apparmor: fix ownership issues
I have those now. Thanks for the reminder.
> - libmhash: add multilib header
This is actually in Kirkstone.
> - dm-verity-img.bbclass: add squashfs images
> - Add EROFS support to dm-verity-img class
I general, I do follow the OE or Yocto Project guidelines on style, 
patch format and  stable process.  So the dm changes sorta fall under 
new features but is more of a grey area as its an opt-in if one needs 
that support. I suspect while I was ponder that I got distracted by a 
shinny object and forgot to revisit the patches.
> Are we submitting these wrongly?

The major of the issue will be landing on myself as I don' have my 
workflow sorted out correctly and I may miss things.
> I have found this message suggesting that this could be the case:https://lists.yoctoproject.org/g/yocto/message/59432
> Maybe just adding [meta-security][kirkstone][PATCH] does not seem to be enough and we need to add sublayer like [meta-security][meta-tpm][kirkstone][PATCH]?
> Please advise as the README suggest that it's not needed...

I would stick with what the README's have in them.

BR,
Armin
>
> Thanks,
>    Peter
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60177):https://lists.yoctoproject.org/g/yocto/message/60177
> Mute This Topic:https://lists.yoctoproject.org/mt/99336201/3616698
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


