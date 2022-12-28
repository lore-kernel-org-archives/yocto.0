Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522F9C4332F
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 21:24:57 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.190655.1672262694939661553
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Dec 2022 13:24:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=YdzGjvFT;
 spf=pass (domain: mistywest.com, ip: 209.85.216.50, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f50.google.com with SMTP id w4-20020a17090ac98400b002186f5d7a4cso21146492pjt.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 13:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MZKSNI4Y5IEHXhHCCPMXUIfk08QWm0rxA+KoYPfJep0=;
        b=YdzGjvFTJ3Eu2UoSGp8yZYvkGl8DtPOGRj5t6GcsXRjXIn9eYYJCLl/L94lHj55gbx
         d+8NebIu6xTm+/d5PVOV2EfLhiY1hfLjGPPY9ZITRkWJpm6iExEqiaiqcHXSzz6KIwzN
         W6eCJ86zUC3Z4KPQFYb6JwAC1MyCoEOnXijbZqQcMvWUUU3giw3wcanpnRqxvKH+7ero
         h6nWNE01NYt8eSsOBeq6pmInXL+rrGlpZMOzLsuEOGMbrZoTR5INPDRbm72wD2l5EJwT
         BUyY89WtxTjfCrl2omKJFqjPFH0ePxOTjF1mw+wyZ3FQ/w0Nmic+M0K5eALI6rvuXvSz
         rVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MZKSNI4Y5IEHXhHCCPMXUIfk08QWm0rxA+KoYPfJep0=;
        b=2RraFEnpSguPYByErvdpUDSUO4ZjkjyUROaR7vA9Ny0krdt/HspH7450/jzn3KPIf2
         lohoT/eq0RbuhUF+4V4zPKINycDDLi94x1gITIBa7JkJtjn/2LTx85HcAr1cba1RJWbx
         A3OjiWJozq6Ax6qkJtG8rD+8BKobJDtVbccTqF/2s5Ls8uozJoTqFH7CxMyFF1FI2e77
         Wr8zQW/FnSng8G7UcJY39ZSOjHsnSchbj51RPFn9at8usAh4c8nghPkttb9EvPK0CNLQ
         0X9F+gp/eXIIJIWzUrBs1t4zZI3ByOpDP3UIONrAj0xW7/mQ8yWvtLYn1HFO4Y81uhqs
         dWNQ==
X-Gm-Message-State: AFqh2kqPbfgDDrLAXys2ZgWVOpGAkujAvb/ekWxsaFVd6XA/zMYdG4vb
	xdz1Hr8V0fTMOb4/H2JxvVqMmg==
X-Google-Smtp-Source: AMrXdXucyZ35rt9oMiHQW0ewv0sAuydTLi6rT4gOvFFFL6TZEeCXWyaaQXpU78DePKtuJDPDG8Z2hg==
X-Received: by 2002:a17:902:b58a:b0:186:def0:66f2 with SMTP id a10-20020a170902b58a00b00186def066f2mr26464701pls.11.1672262694381;
        Wed, 28 Dec 2022 13:24:54 -0800 (PST)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id e10-20020a170902784a00b0018997f6fc88sm11459769pln.34.2022.12.28.13.24.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:24:54 -0800 (PST)
Message-ID: <940e6945-1352-fe52-1df5-e822e8921a69@mistywest.com>
Date: Wed, 28 Dec 2022 13:24:53 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] DISTRO_FEATURES in custom recipe does not override
 local.conf setting
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <bdd0eba8-6eb8-a72f-85f9-bf4b316f0987@mistywest.com>
 <CANNYZj-W7NQkiP-1SXBNMpvj-GC96rEtGJDF1N2N-0Gv9PNweg@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CANNYZj-W7NQkiP-1SXBNMpvj-GC96rEtGJDF1N2N-0Gv9PNweg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 21:24:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58885


On 2022-12-28 7:55 a.m., Alexander Kanavin wrote:
> You can't. '_remove' has priority over everything else, and
> DISTRO_FEATURES cannot be set from a recipe, only from a global
> config.
Oh okay, that makes sense then!
Thank you!
> You should edit local.conf, and complain to your BSP provider
> for using _remove instead of a direct assignment.
>
> Alex
>
> On Wed, 28 Dec 2022 at 16:51, Mistyron <ron.eggler@mistywest.com> wrote:
>> Hi,
>>
>> I'm using the provided local.conf from the BSP which contains:
>>
>> DISTRO_FEATURES_remove = " x11"
>>
>> but I need to install xrandr in my image which needs x11, i.e. I set
>>
>> DISTRO_FEATURES_append = " x11"
>> IMAGE_INSTALL_append = " xrandr"
>>
>> in my custom recipe. However, upon building, I get the following error:
>>
>> ERROR: Nothing RPROVIDES 'xrandr' (but
>> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-core/images/mistysom-image.bb
>> RDEPENDS on or otherwise requires it)
>> xrandr was skipped: missing required distro feature 'x11' (not in
>> DISTRO_FEATURES)
>> NOTE: Runtime target 'xrandr' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['xrandr']
>> ERROR: Required build target 'mistysom-image' has no buildable providers.
>> Missing or unbuildable dependency chain was: ['mistysom-image', 'xrandr']
>>
>> Can I override the setting in locl.conf from my custom recipe? How?
>>
>> Ron
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#58881): https://lists.yoctoproject.org/g/yocto/message/58881
>> Mute This Topic: https://lists.yoctoproject.org/mt/95921674/1686489
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
-- 


*RON EGGLER*
Firmware Engineer
(he/him/his)
www.mistywest.com
MistyWest Logo

