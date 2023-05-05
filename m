Return-Path: <pidge@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2806C7EE22
	for <webhook@archiver.kernel.org>; Fri,  5 May 2023 15:15:04 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.30142.1683299697573171459
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 May 2023 08:14:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=3b/x1tUF;
 spf=pass (domain: baylibre.com, ip: 209.85.128.46, mailfrom: pidge@baylibre.com)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-3f19b9d5358so19266315e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 08:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1683299696; x=1685891696;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/XXrEok2Si9nZWQr0SsmZGT8InxkX1JCqPkPQCy032o=;
        b=3b/x1tUFju2ETqVfyko5/TVlCWwPDsjVbV7qvVBY+Ltp/nvdBQQ8m4TQnUKQCGsTzW
         zTI1B5rdBatqvUZsF8zUPa/9QNMMCPkB7wBb7zMzpphV3cUnz4SDtVz0PTQBPgbBsW5E
         FkCW4+oXq9FQQrrG4ZfnUAOkZ93y39TmKC8buFOUNiiv0Ad2qGo7XlkzcXiRJZCnUdHr
         MbICLkWCCfdR/nPobK4RX83M27vy0eSSIYjpBNjXoqd4KsmOZ5g5aip2CESAocxBKUeH
         3mq5vBJoOOyYjNfNkdTzsv/61+o4asmmmIeWCnBvf088XdWhXvpE+cVsMi/IILtogrvk
         b+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683299696; x=1685891696;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/XXrEok2Si9nZWQr0SsmZGT8InxkX1JCqPkPQCy032o=;
        b=M9fYgFycOk5vob00sRoqYLRr25ByhEzUSbZzxJmr7GV+12x8MfHjn7XgJr6ST9CprG
         pchB6wuuIT+Xv8KD0DJU6haY1L1s6UWpJ6zKWqEVbvaxOnbiMSZF/WJnDLnlQAvnGRfR
         PA2tU5KbZzMe68v9KqrJro80zDKR4jdfr3hFhm29dHrF4dwEXt+x5XDiMqGPPTccxKDa
         aCT7yQUku38uyyfzKrd2CjZokbYif2Ll+qjqO9xh8ywnSrBmws5qR61n5twe90LMqCaS
         42nSEefnp+tjQT78xG1PikY5CzQxfEBaFtFtohOOK88iG0KX+3fqM5zK8gnpGX0Mrwgn
         GUug==
X-Gm-Message-State: AC+VfDxNTJHGFRaE9VMeidK+BCFDQmpIskDK46/ocIlO//wOD7dLNa9g
	i/BNwRBvsemS24rUj4Aa9qhQhLisgGmlmUIGrIw=
X-Google-Smtp-Source: ACHHUZ7lgeFgQQH56p3EVFWeVFcCeDDmnHZx0l17W0TU/ATEF5YaBUNsKq7znwBTd0tbwKiYWhXVHQ==
X-Received: by 2002:a1c:f012:0:b0:3f2:48dc:5e02 with SMTP id a18-20020a1cf012000000b003f248dc5e02mr1446931wmb.27.1683299695595;
        Fri, 05 May 2023 08:14:55 -0700 (PDT)
Received: from [192.168.178.55] ([194.110.145.185])
        by smtp.gmail.com with ESMTPSA id d10-20020a1c730a000000b003f325f0e020sm8196758wmb.47.2023.05.05.08.14.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 08:14:55 -0700 (PDT)
Message-ID: <fd869d35-5cac-f869-9d34-e061af0bbcf3@baylibre.com>
Date: Fri, 5 May 2023 16:14:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] [RFC] crops-generator, a kconfig based CROPS reuse system
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <175C475988AB16A4.22266@lists.yoctoproject.org>
From: =?UTF-8?B?RWlsw61zICdwaWRnZScgTsOtIEZobGFubmFnw6Fpbg==?=
 <pidge@baylibre.com>
In-Reply-To: <175C475988AB16A4.22266@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 15:15:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59887

On 05/05/2023 16:00, Eilís 'pidge' Ní Fhlannagáin via 
lists.yoctoproject.org wrote:
> A while back, we had some discussion about how CROPS was being used and 
> how we wanted people to reuse the work Tim and others in the project had 
> been doing with CROPS. Tim and I had a few discussions over the past 
> month or two and I've created a tool that I'd like some additional eyes 
> on now.
> 
> crop-generator (https://github.com/crops/crops-generator) is a KConfig 
> based dockerfile generator that uses the published crops container and 
> generates custom docker containers for people. The current features 
> exist around the use cases of people wanting to use crops but add their 
> own packages or toolchains/sdks.
> 
> You will need to install pykconfiglib 
> (https://pypi.org/project/kconfiglib/), docker, docker buildkit and 
> kconfig-frontends.
> 
> # To bring up the menu and generate a .config:
> kconfig-mconf ./Kconfig
> 
> # Convert the .config to a Dockerfile with associated files:
> ./crops_generator.py --kconf .config --docker <containercontext>
> 
> # Build the container
> DOCKER_BUILDKIT=1 docker build <containercontext>
> 
> -e
> 

One note. A decent repo and kas and oe-setup-layers example for 
https://github.com/crops/crops-generator/tree/main/config/repo would be 
nice as well, if anyone has one to contribute.

> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59886): https://lists.yoctoproject.org/g/yocto/message/59886
> Mute This Topic: https://lists.yoctoproject.org/mt/98707325/7332033
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [pidge@baylibre.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Eilís 'pidge' Ní Fhlannagáin
BayLibre - At the Heart of Embedded Linux
www.baylibre.com


