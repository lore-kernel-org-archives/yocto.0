Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 495FBCDB482
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 05:50:16 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.201369.1697521805887983028
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 22:50:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=kKYstbkq;
 spf=pass (domain: linaro.org, ip: 209.85.167.48, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-507bd64814fso381850e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 22:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697521804; x=1698126604; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DOH0YLpvX3VUQBS4nbJjnpcMP2m13bvabJ77gZismRI=;
        b=kKYstbkqTY2op7fT1q1242J1KYO5pUrF84V1IZHwZ+WT50tFD8dS7J9RPthEnxDB+s
         28UmlXhAHcVwdL3ABdb1UJK4JTQPTY79YPqj41uUUf/IdUdF5NVYfuNNcSHgGW+N2MJC
         mBcX8nWovCdYpQYq50/Nysk26rCkO8JgQ63F08vW4TSoHnyK+fp6TkISHxIyO5n/NFQS
         NxMTS4fzVdNANi0tzthECNmmhztg64hBWnxLBLXKvcG0KK8DAjZbQg/8R6PUEJw36XuV
         mDwUi6JXkQZJLIqWN8n2tryG015wtgpmxK1NgAQWf/HbbXu1WS4Pj2mP6UHyWLOPJeGi
         ZLtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697521804; x=1698126604;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DOH0YLpvX3VUQBS4nbJjnpcMP2m13bvabJ77gZismRI=;
        b=X+4XtckHjWCx51tvslVePJdcfz6+Ad/Zf9zsqTPLgSo2LbRN06Y3xaVf6KzjSCY3FR
         1HIX6xJYWPx+Swss8UVmPRNKZPC4Fk2cMBVYzHxzWEJWLL/u9kCw0LPHUAWY14XazZUX
         wSQj21imoSdTNVYM7d4wDPuMLawQXBhc3RQeb3umOQbMvgN00OAlqJE1mnANHUAVG8VB
         4h2zxXdL8oVqkKlFpae+HNH+tIPFoC0xDHSlOqTWEIIaup0TJU2QuP1e7dzWXaC1J9tr
         +4+p63jFu4Uoz4/UuqWMt7hTXabdACBjq2b8NC9cLyyT/mtS3sPGt5YGTz/tJSW7RawR
         fwfg==
X-Gm-Message-State: AOJu0YyeXDIMsrlknI57x7OkQ/Pf5YYw2Vlfis4ugJbCG7kRM3pqzYuB
	99sP65Hqj0UyAH8OPB6SwX7poQ==
X-Google-Smtp-Source: AGHT+IGwCucOsm4xQC69Qo9Fxj2VAyQrLl4qzZhHrDcNiAp7ZlrSqL5FTJB+nulI/FBjahGFKeR+ZA==
X-Received: by 2002:a05:6512:45b:b0:502:f2a8:d391 with SMTP id y27-20020a056512045b00b00502f2a8d391mr778241lfk.45.1697521803857;
        Mon, 16 Oct 2023 22:50:03 -0700 (PDT)
Received: from nuoska (dc7g6tyyyyyyyyyyyyhbt-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::183])
        by smtp.gmail.com with ESMTPSA id f28-20020ac2533c000000b00507a0017931sm130339lfh.167.2023.10.16.22.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 22:50:03 -0700 (PDT)
Date: Tue, 17 Oct 2023 08:49:58 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Message-ID: <ZS4ghiXPvYDDW_LC@nuoska>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 05:50:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61366

Hi,

On Mon, Oct 16, 2023 at 03:27:01PM +0000, Dave Hitchman wrote:
> So my current recipe for the project works, including building various C, C++ files
> I wanted to now add a library of someone elses creation.
> On my machine this library builds using the tools installed so the code is ok
> 
> I added a recipe to my yocto build and it attempts to do the cmake.
> 
> Unfortunately whatever I have tried over 2 days cmake insists:
> 
>   1.  On using the from my machine NOT the cross compiling tool set the rest of the yocto build uses.
> | -- The CXX compiler identification is GNU 9.4.0
> | -- The C compiler identification is GNU 9.4.0
>   2.
> Getting upset about the flags passed in:
> |     g++: warning: ‘-mcpu=’ is deprecated; use ‘-mtune=’ or ‘-march=’ instead
> |     cc1plus: error: bad value (‘armv8-a+crc+crypto’) for ‘-march=’ switch
> I cant even find where these flags are actually set, where I found them and thought they were set I altered them to be FRED and nothing changed in the errors at all.
> 
> Any idea? Surely it should be pretty easy?

"inherit cmake" in the recipe and then fix the CMake scripts to use variables from
the toolchain file and only append to them. Same problems in all build tools. CMake
adds several abstractions on top though so finding out the details may be tricky.
See the toolchain.cmake file in recipe build directory. If this is not followed
wrong compiler can be used, with wrong flags, using wrong binary, module and header file
search paths...

Cheers,

-Mikko

