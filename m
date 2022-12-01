Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0693AC43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 16:42:05 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web10.49111.1669912915318206247
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 08:41:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=QMEQsI8Y;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.170, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f170.google.com with SMTP id r18so2113315pgr.12
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 08:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9fxjlQj6focK4h8uxNEG4pFd7N+c0giMZrc0Y0qcS7o=;
        b=QMEQsI8YjMwqEfJF7u2OJ5kcIqAa5r7ExQ1t8itGaMVaE1XbI5TnIeNJkhGjTDnZXw
         XM/s4Wa6otbninE3j0IVPNFP7Ua+TIULbF6hyC4PPA4X7usIV8N8zrhjr3798W57F453
         9CtVsNmUDDTtZj1ZNYxPzdCan5jlbc3Ax7fdgb9cHNYgQEonPXr4FjmD2iUCPbHkW2/R
         bjxsYkjRsq+bra89SSYs0ang4UXaw8nqboGdgx2wHdM/xiiAjckkh2d7JYb9bRX0S5BP
         W46giDqIfhktyf2cs3OmApD+KPKr2M9zgCcwCMYA2QudrDrG1wwezsMG62I7/6cphNmY
         j18w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9fxjlQj6focK4h8uxNEG4pFd7N+c0giMZrc0Y0qcS7o=;
        b=CgDkVquhe6tJh0GS6lTN03HVdaodCRG+O5GWBpmS1QfK87fPR6mXef/Vv/kzNXajf8
         8JwIhEAflH/AOY19KXV+zrtTnb81X6vi/4IWMesGQdES4RJZYXnNg4vn0XZBjq8gX047
         8y7tYzS7xY3jAnwLR2aq9mfOeillSK6LqwBfWogprsdIGFZHlx8DP4TadAlLxmNCXT62
         pvI/fr4s1bKcKjYajuXhFoSh9G9SntGn2miPtge1/5hJLb0PJYNive8kyQMAfZo8P0u/
         NMuQixjP5HE6vs1tZp7gCiBggfqeVp4OGG/JpbnHt+2oMiCl2YPg4vZkxEOQc8unFSek
         nCdg==
X-Gm-Message-State: ANoB5pkrFp6C5tl0hMcKvV9ctL6cflVDkwNz9cx+rBArcJMAfcdS7EA+
	+SJIIIGoFjgpPOvMrcQTFubRnw==
X-Google-Smtp-Source: AA0mqf7cXSakxY+HsnMCbDyX627pSxyf/EBh+eCC747+vWO+1deWVkNQlQCu0mdnMfpgPqUiFY2UnA==
X-Received: by 2002:a63:d948:0:b0:46f:1081:f517 with SMTP id e8-20020a63d948000000b0046f1081f517mr61049250pgj.297.1669912914504;
        Thu, 01 Dec 2022 08:41:54 -0800 (PST)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id oj4-20020a17090b4d8400b00217cdc4b0a5sm5093083pjb.16.2022.12.01.08.41.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 08:41:53 -0800 (PST)
Message-ID: <4f4a8c61-be1c-27e2-950e-4266d1c358b2@ibeeto.com>
Date: Thu, 1 Dec 2022 08:41:52 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
Content-Language: en-US
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Zoran <zoran.stojsavljevic@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <CAPxNcnfmGrJU9X5xBy034Ndz-zS4cgzwxWaVmmv4Dq4WCYFyjA@mail.gmail.com>
 <CA+chaQcphLsdya8v9SD=+XAb2bNWQ1bWxCdCRWOVpjwyiZePQg@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
In-Reply-To: <CA+chaQcphLsdya8v9SD=+XAb2bNWQ1bWxCdCRWOVpjwyiZePQg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 16:42:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58708


> Recently I've also seen this:
> LAYERSERIES_COMPAT_phytec = "${LAYERSERIES_COMPAT_core}"
>
Oh no, now the entire Yocto Project world knows about this hack. Now we 
need a sanity checker for this in the insane class. :)


