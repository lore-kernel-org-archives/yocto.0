Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A53C77B73
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 19:43:55 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.225.1683056634650282831
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 12:43:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=LD7Qldpp;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-55a6efe95c9so30359527b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 12:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683056634; x=1685648634;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fqN4b1mmDrlLdStWG3YyDZvbvNRdBqklWICRkRDXspU=;
        b=LD7QldppFwrKGH1JARzJVyjqEk1RHO+GypCf/d+/hINNNnBI76RwPz3pTkL4dsZ/Ad
         fOEaRPAzprLVJhqKejiMroE/OeiEzQjqf4gyioEXRRDVz6xjSaHDGa/qoSdrbFKONQi6
         fxebYgrjFjSr3p0czt3qtJAWglrTrGLpYdOxmkztl4K4QsxzEE+s2Dnu8hkHRZCeFpdU
         fmE1aoVQzTV5xAz0yjbfY89xG0PBkl2fywqT0LqY6ZGcvcXXU6mgJE1esE4WVSD6VfI+
         R0uuIZw0UbBgSppwip0IwYkua1+jWOk6Ng1oUly4Dxhj9EIbOhr5tBfjQncdeynraiVd
         if6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683056634; x=1685648634;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fqN4b1mmDrlLdStWG3YyDZvbvNRdBqklWICRkRDXspU=;
        b=Viiqj3wWxZUvwnxBvCTZCAXxv+GiwFrwm8rmuhhz2phvpJvEk+BoW7qVmNc+A/lP5A
         p3knDFYmepNnaYAALlrgM2ohKOqIyY5Y2AFVnz+DERXskafTPCOyFRB3nzrph9ZbVOl7
         Dmsdy/oB6uhdK4AD9RzSXFnTbjFbEAYsnhZVDlIjjQjPzpAfmf0fppHBeRMJS5TLIml3
         d88HcXjy1LeP9kkfl3cRbEV0yCfZOd5kMNsO4kKyCES8dtvOxHRyGOqM92FvSYQOrDBJ
         gCZWd92cYcL+eqmOsnqqfksFIuT+sQBjOM2Ui5XO0w2isJa3WKftsxfn5kuXbbWtj6yc
         P6Kg==
X-Gm-Message-State: AC+VfDxWPU7LX0GYyYyrfoKj9lZ6UqQtEeobwk8rLUdOMPo2w+mn52t4
	CcpjddYsJ+hU1CmvmNZFDpo=
X-Google-Smtp-Source: ACHHUZ59TbQWchrzHmnHkf6YOhmTEfZzhpSBnjAPGknhruTFHy7gssUlTxHtSIzY2c69VwSh0nnJyQ==
X-Received: by 2002:a0d:d986:0:b0:55a:f428:e8ea with SMTP id b128-20020a0dd986000000b0055af428e8eamr781796ywe.41.1683056633755;
        Tue, 02 May 2023 12:43:53 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:6f7a:c057:293d:a9b7? ([2600:1700:9190:ba10:6f7a:c057:293d:a9b7])
        by smtp.gmail.com with ESMTPSA id z20-20020a0dd714000000b0055a446a9e71sm1650489ywd.40.2023.05.02.12.43.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 12:43:53 -0700 (PDT)
Message-ID: <3e31bf6f-422e-ae96-3149-0627fa1622ef@gmail.com>
Date: Tue, 2 May 2023 15:43:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [meta-security][PATCH] libmhash: fix multilib header
 conflict - mutils/mhash_config.h
Content-Language: en-US
To: adrian.zaharia@windriver.com, yocto@lists.yoctoproject.org
References: <b852ee83-caeb-986f-76fd-e4f113f871ba@gmail.com>
 <21049.1683030219377186174@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <21049.1683030219377186174@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 19:43:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59844



On 5/2/23 8:23 AM, Adrian Zaharia via lists.yoctoproject.org wrote:
> Hi Armin,
>
> Is there an ETA for when this patch will be merged?

Oh, I had it queue up but must have blown it away.
Thanks for the reminder.

-armin
>
> Thanks,
> Adrian
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59840): https://lists.yoctoproject.org/g/yocto/message/59840
> Mute This Topic: https://lists.yoctoproject.org/mt/97628630/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


