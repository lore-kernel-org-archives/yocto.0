Return-Path: <pidge@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95E9C77B75
	for <webhook@archiver.kernel.org>; Fri,  5 May 2023 15:00:14 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.29692.1683298809492500384
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 May 2023 08:00:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=VOqAtJ+1;
 spf=pass (domain: baylibre.com, ip: 209.85.128.46, mailfrom: pidge@baylibre.com)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-3f1738d0d4cso12712075e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 08:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1683298808; x=1685890808;
        h=content-transfer-encoding:cc:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3eGg1C+V8qygWzX3tNvgzI9xokA6udT1y2XvUbFKIzQ=;
        b=VOqAtJ+18nqmQD5O5UhA4TifY387KPlPP8s5gz7lN1HKF0M42pQWl7lEryoyQfVJBo
         aEgLXqKeL8J9Tvd2fjxWqYXUEcyk+2qz2ORh67Iwwj2IAdBlSUzeJKR0cw3jI4E37QhG
         4NX4G4GYEvPXXoEyjTOciyr5N2tK26dDbbTC28LgRgPQWIpybt9YqN6fAkq9RtGHZtPL
         Ic03Im8yjH5kIEcvaidc3B3fwQrS8N+a5RxlRz9o8zE/WlRY27na5BmuXeLtl3DrZIS+
         +/cP5jq0PnD+ULUxQkQNllPNXTp6pprn+SkqaSMg/2z2bilEenX8sk0ACvTRuV7qBd63
         RyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683298808; x=1685890808;
        h=content-transfer-encoding:cc:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3eGg1C+V8qygWzX3tNvgzI9xokA6udT1y2XvUbFKIzQ=;
        b=VOLlQnya/wS4oRnWYf4IdeeoMtIBCcTI8vKRMD+ztZQ1GHN55j1y1ZQmphpQsa66+6
         NlHRkwuDghea4i4xsnXu7YLRxo9U0yleCH6i0O4wk5eJirDlPPtIVhFU5/RA/43rKwFT
         6iot/aJESrAolCxIDPWOFTYewy7+Kk2fs5fk3VM0hmyZPhDGPvCG2J/LmsEkovgTfiTq
         gySA0iXVJh+rtZxy4gj8Su+rci1of4O94T2BF154yrshpuuDQfZ9Xf4xWKyRuLLnKGAw
         KoL9299ScUWUAqojNof2R2++SA0bukqu4gFQm4aJJ+oeczl9//iUeeOBRoOAhVFOXzjQ
         +ecw==
X-Gm-Message-State: AC+VfDz0suMzlNk0U/Li1A9YUrlDLHgEoQu06niDksOou2j0Lx5n3rD9
	EThAQxXNuQdXfxw/SVY0NmouMrpYM07PTPz+dSI=
X-Google-Smtp-Source: ACHHUZ7T+ZKM+bVZUzJodT2HqWuGjdGYF295/znIIBchV+jwBmgmtbYCyVkHc+2RK8gEPpUs0IhNLg==
X-Received: by 2002:a7b:c84c:0:b0:3f1:7a50:dd66 with SMTP id c12-20020a7bc84c000000b003f17a50dd66mr1456641wml.27.1683298807794;
        Fri, 05 May 2023 08:00:07 -0700 (PDT)
Received: from [192.168.178.55] ([194.110.145.185])
        by smtp.gmail.com with ESMTPSA id y6-20020a1c4b06000000b003f17e37ce60sm8106081wma.47.2023.05.05.08.00.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 08:00:07 -0700 (PDT)
Message-ID: <ca1e5d63-a6f7-3ef0-dec3-1a3447b0bca9@baylibre.com>
Date: Fri, 5 May 2023 16:00:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
From: =?UTF-8?B?RWlsw61zICdwaWRnZScgTsOtIEZobGFubmFnw6Fpbg==?=
 <pidge@baylibre.com>
Subject: [RFC] crops-generator, a kconfig based CROPS reuse system
To: yocto@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>, Tim Orling <ticotimo@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 15:00:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59886

A while back, we had some discussion about how CROPS was being used and 
how we wanted people to reuse the work Tim and others in the project had 
been doing with CROPS. Tim and I had a few discussions over the past 
month or two and I've created a tool that I'd like some additional eyes 
on now.

crop-generator (https://github.com/crops/crops-generator) is a KConfig 
based dockerfile generator that uses the published crops container and 
generates custom docker containers for people. The current features 
exist around the use cases of people wanting to use crops but add their 
own packages or toolchains/sdks.

You will need to install pykconfiglib 
(https://pypi.org/project/kconfiglib/), docker, docker buildkit and 
kconfig-frontends.

# To bring up the menu and generate a .config:
kconfig-mconf ./Kconfig

# Convert the .config to a Dockerfile with associated files:
./crops_generator.py --kconf .config --docker <containercontext>

# Build the container
DOCKER_BUILDKIT=1 docker build <containercontext>

-e

-- 
Eilís 'pidge' Ní Fhlannagáin
BayLibre - At the Heart of Embedded Linux
www.baylibre.com

