Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67948CD343B
	for <webhook@archiver.kernel.org>; Wed,  6 May 2026 13:29:26 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.18315.1778074160966023082
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 May 2026 06:29:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20251104.gappssmtp.com header.s=20251104 header.b=elvf01zP;
 spf=pass (domain: baylibre.com, ip: 209.85.222.181, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8d65f4073bfso865515285a.3
        for <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 06:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1778074160; x=1778678960; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y/b1OkOzbaWoHuUjttM/E/RTWx9I3BJYB+gryvr+n7c=;
        b=elvf01zPnPxaalYyef5w+W8FHJpAO/HrqBeV45x/nK9pD5gUfETVJgW7LR3tlQpsOJ
         IdXKfEzTXaVOfRQxqeRchFr6PQZJh/yDtWuOgoHqDv8xA62ttGfY5qxkyWHAV2riVSG3
         bUakHCqyBN288lEZK6vWPrul9SFIlJ++UMbeSXpZsAL+pjd0SyACfQheMoQW5S9fAMVF
         wrjAQC4TXmoMrOim9Ieaj7ozF+q+ifV1L7aaZfXx589yPqhWh1E6v7GNLcWCLYwW9gO4
         gXYN41r7f/FwGXH1WD8EJk/x+dr/ENY30FqsqRoX+AtDM1X4U3hKrBVmx3pHRArXTtrn
         VIGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778074160; x=1778678960;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/b1OkOzbaWoHuUjttM/E/RTWx9I3BJYB+gryvr+n7c=;
        b=ekOHxWJZHSzxuLS6NOD50lU29AK8vw8iUeeppRADLizK2ieUdYpWHANWm1jEeAoDEX
         Y5751c8fB2ul9SnksNZgTFUGjodPgtt1y0+MM6ukuqIPtz9k8OuhP8kieA2TNMAq8YMu
         rwGiD5UsXYZ8z69JdQG8JQ+XVjlyzq5wb4YS/KCT9znnOyjCrarEa8oYfuZlV4Pv0Art
         F2kJ2dbKD03r17rHD0PX/B4koXWmOW0IbAUO3PL0GDZSePINp+5L79CYutYKGHws2We+
         zx2qzzGKtQmU8rUY6B+knyFlT2SjIGTaf9GFfVT9Cl8Y2MqJlKVhls2hfNxTsQQTLX0o
         CRWg==
X-Forwarded-Encrypted: i=1; AFNElJ+IQIup1l7PH5ircxWvGPhWZbvA5vaOQR6x9rFiKcQ5qq6V+vTxGvqYDJXSVbE3vzjrPz9r3g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwUv97Hj997UXUUXLVm/H7gy/Vdo7nOhxH/SY9GPWWT62IzU1Hv
	eEbGdFYFAynU0+cnOHquTy90FChwSLiBfjJfTbP0ZldQsymfVggIEkE2GhEnEOlYSFM=
X-Gm-Gg: AeBDiet1Cf1s9Kxibnj5wgIIQBkmzwquU8xEhT6yc/Kc0C84BcWVhTzHfg3fiIrEjKo
	g6uLZ67LfXs9Minst2MDKKLN4yag1/vjtiPwelhVy6YvOX7voFtGSNCk+sCHV0IWpsSin1rKbj+
	2lQyCoDL0GZkLJNZIkaIqHcjx7/3KQIBhIAi5R3O4TLlfhfJMPT9364msUNrH1ZUGEwHtEtNZcQ
	xgqbt4UUk/AivYr+0ktEiQGomdB/FlZjtBxIXABcWVY0R4G3hsWX0x+T2wGLBWfpitIR9C+SR4X
	K4NJX3mSyitavw4pCDLTYfh7/aNEjCa2rfTA7wJR254GkDjoDtIo3FILYfgISxpTxJ8V0XrdfSl
	0twP11++bFoOtSY2s7KvFGaF6c9StexFkqsHuefGuLgcCA0YvIqpXUNAtD2cwiNlLiKaOtaxJ4P
	rmZc7DNIM3dyIKOLbDzgetJi9dhourRCs5Eh9VvG+zLTaimtFf4xpf3XNAgJrvxMZ2Ct5KGyyTZ
	pM4tdFw9zCO6iw=
X-Received: by 2002:a05:620a:40d0:b0:8dd:b4fc:d561 with SMTP id af79cd13be357-904d438db5dmr500842185a.10.1778074159413;
        Wed, 06 May 2026 06:29:19 -0700 (PDT)
Received: from ?IPV6:2001:1970:3847:e000:1977:be2f:4a71:2892? ([2001:1970:3847:e000:1977:be2f:4a71:2892])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8fc29a80069sm1856645485a.15.2026.05.06.06.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 06:29:18 -0700 (PDT)
Message-ID: <58d89d74-bca7-49eb-8591-5c5e1a0a40fe@baylibre.com>
Date: Wed, 6 May 2026 09:29:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Openembedded-architecture] proposal: build pipelines in
 bitbake-setup
To: alex.kanavin@gmail.com, Daiane Angolini <daiane.angolini@foundries.io>
Cc: openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>,
 bitbake-devel <bitbake-devel@lists.openembedded.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
 <66b3dbc7-e6f0-4013-8d2e-d646f0fd8c9b@baylibre.com>
 <CANNYZj9dsi3XDGVBtEM4Hp8eqZfLtf9Jwa-0m8T5J9rt7V7skw@mail.gmail.com>
 <CA+HEL7_H1MJe3WGhdP3TMQho8u0M8g5OfUv2oFXxQjefAo6Hnw@mail.gmail.com>
 <CANNYZj9=Qap1AsWfgFgEforE17Gz8ft8fNz4hJcU4Y=zmTKDZA@mail.gmail.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <CANNYZj9=Qap1AsWfgFgEforE17Gz8ft8fNz4hJcU4Y=zmTKDZA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 13:29:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66489


On 2026-05-06 08:43, Alexander Kanavin via lists.openembedded.org wrote:
> On Wed, 6 May 2026 at 12:23, Daiane Angolini
> <daiane.angolini@foundries.io> wrote:
>>> 6. Run a pipeline, stopping after a particular step:
>>> $ bitbake-setup build <pipeline-name> --stop-after <step-name>
>>>
>>> Etc. How's this looking?
>>>
>> I like the term `steps`. I would like to add that this should be
>> optional, not required. One can still decide to avoid creating a
>> pipeline.
> Yes of course.
>
>> Regarding a setup tool for builds, why not use `bitbake
>> <pipeline-name>` instead of `bitbake-setup build <pipeline-name>`?
> bitbake operates on recipes using a well-known command line interface.
> We can't bolt on something entirely different.
>
> That said, pipeline functions don't have to be in bitbake-setup, they
> can be in a separate tool (Trevor mentioned that 'bitbake-setup' as a
> name doesn't fit that functionality very well). I just don't have any
> ideas off the top of my head. 'bitbake-pipeline' ?
I do like this version of the proposal better. Having read the responses 
from the two of you, I think 'bitbake-setup run' might be a reasonable 
compromise for running steps and pipelines. What do you think?
>
> Alex
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#2328): https://lists.openembedded.org/g/openembedded-architecture/message/2328
> Mute This Topic: https://lists.openembedded.org/mt/119158252/7611679
> Group Owner: openembedded-architecture+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-architecture/unsub [tgamblin@baylibre.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

