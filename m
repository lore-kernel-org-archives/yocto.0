Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCCBFC83F1A
	for <webhook@archiver.kernel.org>; Fri, 18 Jul 2025 07:43:40 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.15657.1752824619696898585
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jul 2025 00:43:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MKqUb80k;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ae361e8ec32so301638666b.3
        for <yocto@lists.yoctoproject.org>; Fri, 18 Jul 2025 00:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752824618; x=1753429418; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=viKaND9x/vGpPWBTSIm+JAujUvOjyAtvrLArQfIb0xM=;
        b=MKqUb80khOkM2Z410TGMMlrMAtthZzJymb2WQi8c2zSMQQHZRsA7DkSYxGeWHAmOoN
         sTY7eadz7hA0EOhD6nRl8mjN4zSLfiF58WQzhJ8kJ8aUGhHa510AlKwYepR/Us5JAMZL
         TbCml2GxUDK5WanXXxnMcmZ8cLlL+jVw6rhynSVbDDTiIXKz0OHmTT9I4fi2115qeSyb
         4d5vlj3VqSjUqMxPAUrr+gJ5KywqSJNqxyL163kotqYMqtF86iJH4S+HgzWNG3UeCDq+
         uw4Dh8Hl0gzOcEdLTIimv6/n5OhJnyGgn+s7tdiM3SvTtldc10CDIAXYwcLTX7TO1A9I
         xErg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752824618; x=1753429418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=viKaND9x/vGpPWBTSIm+JAujUvOjyAtvrLArQfIb0xM=;
        b=KO82xW0+5o+DON8/InwNlSvOnvxr+ZUkL5RTUB4+vRNFpKAz6AxVKO9psQ4L2AWsvI
         XqTPYvuof0YEYu9pEP+9Yo59VhWPF8V+/3H/VTGrgmPNm0mxnGDHoXm8noC7pfDNmadf
         mNE4+Y/Gh15H8zpTQH76PiwX+FABhFf21qJTiGBQgehcjr7ldEGGUXv+uDGJto8J3pPq
         vAsAR2DcPldwHYY+QvxkAQ1d8wwu45H/OIyGGmwKVR0PaBNmPwmN78AbvnPLoioAPDPx
         vdGgUyJBpgLSrRCUeis8vWCwaE3Voo9dJNU+T2S65pWJDoagSAdeW8nho6i8KJSP/mYe
         jQDA==
X-Gm-Message-State: AOJu0Yys9rhh9cCVjPYPyEh+CJV+orsm+Ow+aUiIjbb0N7Wg93UI0j/1
	NXUU6iLfp1c7Xb9ZHO11+zq+jNgkZt0iZUMdYdcD1uZfBZvzZhUBRx+e4LJMAxpI
X-Gm-Gg: ASbGncvrfPLZ0emb2h/qcOxvR/AuCYCdQM5ds/P23yc1rAQ67Eng4mZYGj0v7YPc13K
	E0DxgSdsAtIWU6mdaCiy06+m2MbrBPocqF4IbTXEAPiWQmUNoCDPj/oitgdN6pRCVwMH2bBwErk
	3NVH/if1jmLFmwlQDO0077hV3sitsp21+zaNBrx2S0zYDrNx3QR3/KbNH2xc0ovONILLWBiP41S
	nNfRlKWMwp6k1nO+itdSNpWW1nrPxsKcYXFvHLH9xpZ5SUBOT1+4qvlh9C+yxH580DwsDGc8jXC
	cnHahyAXPP1bK13MOlc+ZpDrOf68c7uFsGdMHUiZQ2Kdn0NbQjwZ5TwTgK6yl6G7jY7FP6CBAOG
	4FK+1eH0oSYHCxFdjJt2MyfUsdo+Qgg==
X-Google-Smtp-Source: AGHT+IGBRoY53kGoBrz2eA5uhqLd5AVLAbX/An4S5aBk5DmT9rOwAIedOpCjYdY3EwF90oirSgq0Rw==
X-Received: by 2002:a17:907:f1c5:b0:ad1:e4e9:6b4f with SMTP id a640c23a62f3a-ae9c9b14a30mr1085206366b.36.1752824617546;
        Fri, 18 Jul 2025 00:43:37 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca7d2dasm72065766b.127.2025.07.18.00.43.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 00:43:37 -0700 (PDT)
Message-ID: <d9a7a078-572b-4362-85c1-61a43dd8a89f@gmail.com>
Date: Fri, 18 Jul 2025 09:43:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Environmental variable present in do_compile() {},
 bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com
References: <27507.1752773309289469706@lists.yoctoproject.org>
 <29250.1752776200152802991@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <29250.1752776200152802991@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Jul 2025 07:43:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65680

On 7/17/25 20:16, joseph.maniaci via lists.yoctoproject.org wrote:
> Okay, maybe one more question for the next poor soul that has the
> same-ish issue
>  
> Why does this work:
>  
> *** Prior to bitbake ***
>  
> export ABC="AAAAAAAAAAAAAAAHHHHHHHHHHHHHHH"
> export BB_ENV_PASSTHROUGH_ADDITIONS="$BB_ENV_PASSTHROUGH_ADDITIONS ABC"
>  
> *** bitbake recipe ***
> ....
> do_configure () {
>     export ABC=${ABC} && cmake_do_configure } <<<--- Obviously
> referencing and seeing ${ABC}
> ....
>  
> CMAKE configures and compiles successfully
>  
> but this doesn't

Because of the extra export you added.

Adding ABC to BB_ENV_PASSTHROUGH_ADDITIONS will make the ${ABC} variable
available in the recipes - but only in the recipes, and not as an
environment variable.

When you write inside a task 'export ABC="${ABC}"' - this looks like
pure shell, a self-referencing tautological assignment: seems like it
says "create an env var called ABC and set it to the value of the ABC
env var"

But it's something else.

It goes through the bitbake parser first, and by the time it is
executed, it becomes 'export ABC="AAAAAAAAAAAAAAAHHHHHHHHHHHHHHH"' - the
original ${ABC} is nowhere to be found, because it's a bitbake variable
(just like SRC_URI, for example), not an env var, it was substituted
with the literal value of ${ABC}. And before executing that export
statement, the ABC env var doesn't exist in the build environment at all.

>  
> *** bitbake recipe ***
> ....
> do_configure () {
>     cmake_do_configure <<<---  ${ABC} doesn't make it to cmake
> }
> ....
>  
> *** cmakelists.txt ***
>  
> if( NOTDEFINEDENV{ABC})
>     message(FATAL_ERROR "Undefined environmental variable: ABC\n")
> endif()
>  
> *** bitbake output ***
> ....
> | DEBUG: Executing shell function do_configure
> ....
>  
> *** cmake output ***
> | CMake Error at CMakeLists.txt:12 (message): |   Undefined
> environmental variable: ABC
>  
>  
>  
> Even doing something like the following makes it visible to CMAKE
>  
> SOME_VAR = "${ABC}" do_configure () {   export ABC=${SOME_VAR} &&
> cmake_do_configure }
>  
>  
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65679): https://lists.yoctoproject.org/g/yocto/message/65679
> Mute This Topic: https://lists.yoctoproject.org/mt/114193163/6084445
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


