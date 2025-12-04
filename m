Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B3FD29FB5
	for <webhook@archiver.kernel.org>; Thu,  4 Dec 2025 19:23:19 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.52301.1764876197385226913
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Dec 2025 11:23:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=evRmP0A2;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42b3c965cc4so681337f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 04 Dec 2025 11:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764876195; x=1765480995; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xZDFbrtRlbl3n/hqlT22Qqsc9JCSgJvskmJAkYC0Xss=;
        b=evRmP0A2dqiNVUla0spVQSOJ2MjZP3fhCNXpGVmnBHaI8rfV4E7NdZacBaMGVs/cOc
         Lx3e97Q7fWMPvD1/R8jlT95tKGx4uP/QADd7DvUNtRYa++U3LYYj7PCfdtH80JzcC1Kx
         0iY724xacKHGJmVnTqba39LLda2P0ZIPJHXIjQ247CzXMgg9WWiMjwByiHaIsQP8FYv7
         EQu/QMGGJqkyqgvrv76VseiBMUZbAPvHh7T65ApdxBFnw82r9n0J3o11zb80w7+42Gq0
         CAGOk2fjnXT4CiqnSCwzd/y0cx0axK4FA3O2flgSIf9mWhF6UBOERZ1C+6DBX6JrSNfB
         9CrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764876195; x=1765480995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xZDFbrtRlbl3n/hqlT22Qqsc9JCSgJvskmJAkYC0Xss=;
        b=fm6WbIhNahWLgfS9SGcCCXxLpY9LbiAlRpxOEUfXx7PYwf0zsfrEPns3w7MHCmb8J7
         GnyplOXyRM/VMT5QzRETJz5Gil0y6DB5LAif4oXc8EE4e5+Mnhejd2636TI1TuvrxeqA
         n1lmN3kUbBEOaiL0wFPB8FZq4pUNy34K4GuFQXNVyCIsF67vR4/46Q2upVLCqPl7NkgH
         wtmR7LTjzAROX2m7YU84vYg3xLH3pdF6BrZORvchTWkcareJiiYoNr6AJou/uve4hlfr
         +Z05Fm4YymrlIEgdzKmeItJ9Uxv1DmNTw3IFWTw74/sz0O8DO6jGQ4lkIiygVOriVcQN
         DllA==
X-Gm-Message-State: AOJu0Yz0jgi5ULKoFwYxvqLuz4rpfo/L55LLG9VBn/VZjwuIp0m+lUGu
	qmg9Wuzs4jFaQSQlYNrt7rj6Ynr8lFYJQG1sgTemKqRqe7GuNln+MNwZD6v+lw==
X-Gm-Gg: ASbGncu68keqTpfUmSpSffa/Ru+KL8KGS8Lz7vsahRcS7ut8H6uW+VLM+dfxQkW0Ri6
	EpnTKiPYb8w5SpRG4Gp474g4qyp1u4vpajzfuBHbJcfyBqbC97PIiIoMscA5/6f9ZNDYzivGrf+
	Hw/KHT3shlnM972s20lu25KI2a4mHd4Es9mB8AsWp1s2/XWMI5DGAiD8BBOvwLyNvq9erYS0dzI
	PmVS/4GHZLFpu/CPefnVsGkn+vH9m5xPcZNRAixGrVo+ez1XVoF+GIoe70KnjzuxCLka9rO8yK1
	k1cpso8PZ0TFNIxwTM9uJjRO52QXQZAs0KjzZ2gd3zA84jPk74qYYJFU1P6q8u7gDiMCke+aLCV
	vMKrgsnLi3TyB/O0aRMoQGblnqALgjkq4vEtCh/MKDcAFyMirzPve+rT5KZEPLHdZN67iAgP26Q
	w8+gk1Ilb5HgOJy/3uWteHzt1OCzmPKg==
X-Google-Smtp-Source: AGHT+IFmh15JOITcda/zLjBBjoPAyISEqifFtnhjCZ2dD7vBFDB2D1FtvyCL6cN1GeLUrfpDxFtuAw==
X-Received: by 2002:a5d:458f:0:b0:411:3c14:3ad9 with SMTP id ffacd0b85a97d-42f78872f97mr4191345f8f.21.1764876195392;
        Thu, 04 Dec 2025 11:23:15 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d353f75sm4935542f8f.42.2025.12.04.11.23.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 11:23:14 -0800 (PST)
Message-ID: <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com>
Date: Thu, 4 Dec 2025 20:23:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo
 is found in DL_DIR
To: yocto@lists.yoctoproject.org, christian.leeb@hitachienergy.com
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Dec 2025 19:23:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66089

On 12/4/25 14:56, christian.leeb via lists.yoctoproject.org wrote:
> Hi,
>
> I did a bitbake virtual/kernel --runall=fetch, with a DL_DIR
> containing kernel git repo. This git repo does not contain the SRCREV
> 7818dfe57e requested.
>
> Log suggests the fetch ran fine with the 7818dfe57e
> recipe linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10:
> task do_fetch: Succeeded
>  
> At this point I would have expected the fetch found the repo in DL_DIR
> but the requested commit is t's not up-to-date hence it would reach
> out to the network.
>  
> Later I call bitbake again to build the kernel and I'm getting this error.
>
> ERROR: linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10
> do_unpack: Bitbake Fetcher Error: UnpackError('No up to date source
> found: clone directory not available or not up to date:
> /home/vsts-agent/azagents/build-1/_work/_temp/localdl//git2/dev.azure.com.PG-CT.PGLinux._git.pg-linux;
> shallow clone not enabled',
> 'git://dev.azure.com/PG-CT/PGLinux/_git/pg-linux;protocol=https;branch=pg-am57xx-ti-rt-linux-5.4.106')
>
> This suggests that fetch was happy finding the repo in DL_DIR but did
> not care that the requested commit was missing.
> Is this the intended behavior?
>

Generally speaking this does not sound intentional - Bitbake has checks
for this, it verifies during do_fetch explicitly if the requested
revision is already present in the local clone, or it needs to be updated.

Which version of Bitbake/Yocto are you using? Also, how do you specify
the revision in the recipe? (revision, tagname in SRCREV, something else?) 
A minimal reproduction could be also useful, if available.

> BR, Chris
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66088): https://lists.yoctoproject.org/g/yocto/message/66088
> Mute This Topic: https://lists.yoctoproject.org/mt/116612004/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


