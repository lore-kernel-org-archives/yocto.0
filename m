Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD1EDE9B5
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:13:48 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.10510.1694693624816810333
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:13:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=VxSRG40g;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: skandigraun@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5008c19d97fso270974e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 05:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694693623; x=1695298423; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PzhNRLxyEcNVezyFB6Wfnzf+LiqZYnyGhWmgU2Hwck0=;
        b=VxSRG40gdSirOS4ycOVD92bqg6h4nYP3xMJGhqAfQeWqB5Q1HdCq9JDIzAlqHvPWGJ
         giHgeIk6pIuVO0uGpFSTKvHyLE9/YhdxYy9SdCncO9PWkEmftIDp0AoOIooFmbptFzD1
         yPi7fPMp/l4IyjlPUR/gnrZa3atxB4T4ECqtqd7YfsGPDlOSqfF7phWLIR9QY6xZM01l
         Z2Cl2LCMT5F+1StdxqZEPgeenm3n7hVV+0ddnsHaItm6S+L2iRjYDI6LHsYK0y1FWAFB
         8qBe7BSYTRe5/EZ3giE50tah3UirUEidN+GXBlLk7u1Q+LTiU+herK5lnhm6vqjjmQa5
         MUoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694693623; x=1695298423;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PzhNRLxyEcNVezyFB6Wfnzf+LiqZYnyGhWmgU2Hwck0=;
        b=gC9385hUfTAcoWhrjaBgfo78BeVMzapTg60byvWgQN1y5Dp6ljg+53bmZcFRGb9+5/
         j7L+CdeUBbMw/28IJqZLXfxC7n8UZxvSACjZtBCt8eqseLkF7x1YLgeJ0VdGSLsEE7af
         LIIpGtRWm5fjHaYvSmvBE8GKzCA1y6iGLSGPr2iwfPnmlCdj5l5v8PKGt192I3EEfFtc
         45Yfg3MnBkwSTTmM54+U3vhh9EiffMILzoLj6B8HDFUnjJtRFDVDjXXQ4clVwGAgq8QH
         fGAU+UlFHJOyZ5c93eOfdo+Yu7DKjjWAKF/4NkfL4WryoRdlo0/9PLG5Pz+TmFZNKrIG
         1hKg==
X-Gm-Message-State: AOJu0YxftZd3dnc+KR/zqti6zaPOzL/J0bI6XZe188Js643u5zu4KqKF
	fE5zgCB+/8TS/7C+OMFH7u4=
X-Google-Smtp-Source: AGHT+IFRbvndA+N7Xmvzng2nxOY2XFX+wV2Y2sL0UHDbO48oYAWdpT28ojP/3yEZiDRhB0ABKD844w==
X-Received: by 2002:a05:6512:1193:b0:502:db55:5e99 with SMTP id g19-20020a056512119300b00502db555e99mr4221546lfr.4.1694693622672;
        Thu, 14 Sep 2023 05:13:42 -0700 (PDT)
Received: from [192.168.1.64] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id lw28-20020a170906bcdc00b00992f309cfe8sm939749ejb.178.2023.09.14.05.13.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 05:13:41 -0700 (PDT)
Message-ID: <a2997eed-d5f4-f4f6-eb0a-d148d0cb435b@gmail.com>
Date: Thu, 14 Sep 2023 14:13:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [yocto] Errno=No space left on device
Content-Language: en-US
To: Dave Hitchman <dave.hitchman@kymati.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:13:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60997



On 9/14/23 14:07, Dave Hitchman wrote:

> 
> 
> the disc has 1.2 TB empty, there are gBytes of ram available, nothing 
> else running. I succesfully built an image yesterday.


What about the inodes on the drive (df -i)? Do you still have any 
available ones left?

