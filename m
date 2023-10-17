Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0CBBCDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 10:22:17 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.206191.1697538133691578493
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 03:22:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=MxGVcElb;
 spf=pass (domain: linaro.org, ip: 209.85.167.54, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-507b9408c61so1301153e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 03:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697538132; x=1698142932; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IJyDfeK5yeaaD+bL6Cximpx+KCWkzuVyPYnlXAMWuV8=;
        b=MxGVcElbv19HS1t4aTKtspQb8VnJMLZ2I+UrWTnVZ8LdiN0QjZCbn0VTkX8iefMjcH
         8rq+OFTi/B/WfAVSO5hRS7X0kgtY2cfmSMIYuYiFUa0gE9xipBBXXmEZMZGNiIz7bAEp
         O7oGF8EVia6O9NTZ5d/aU1y+LqorcchGlfcsuY61cf5R8vKjjPdTkyXSJC7DWKKI7x24
         cxtk/T1jolKRvJZL6x8yy9AX6/sdcfkCskf0L9D6RX5iJV6dkNrfNiV+yHV2BMJtVukR
         RuzekXmBK+tRlmEqCWbJEyTa4FmcRSuBAoYVbTMrcudTlgO6ts28hD3wTPwW4sQO168s
         FP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697538132; x=1698142932;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IJyDfeK5yeaaD+bL6Cximpx+KCWkzuVyPYnlXAMWuV8=;
        b=G/vlk8/rtfxjj+TtrzfSxB3fMr8vuQKx9sOy832aUbA1eIxXZLLJ4ERZWmaUQKWxUH
         ywijX5gTbXW93+kLPinv5fCvrA/Nc4q/f2NpCaA9eJXUcVNJZhIy2cf3Ld1mgK9brY6J
         araCday9kAo4FKLTK+8qIjNgruMPYKC8AChCHL31GmmoUb84voZQthCblKWnG/yI4NxN
         2giB/SC9hV197JJhS5lFTI0R43R7TiFG0p5qlgtanew7r5XttkCLRF5tGbbxGQ364etA
         QQ+OS7VPxXbCgDAeG+gcQsFfnYmOTMmFOx2uGKmgNC2jaDFYG/bQDYQH/drS1zWMmaFd
         hO+w==
X-Gm-Message-State: AOJu0YzDC06zP9wHjcWQVkGN1Xack9sLT5tPR4AoLsdtlkv0QMCZPJHf
	ZLWzKEzEQhWzsTm1KbBVyhoQOg==
X-Google-Smtp-Source: AGHT+IHh9O6VMV3ANiD/mOUhlfyTjOaGBIqe8UI+EGhUUEOExB4MskwvBcsKiZE4N4J9p24sZuJ7FQ==
X-Received: by 2002:ac2:4a71:0:b0:501:bd43:3b9c with SMTP id q17-20020ac24a71000000b00501bd433b9cmr1405985lfp.23.1697538131716;
        Tue, 17 Oct 2023 03:22:11 -0700 (PDT)
Received: from nuoska (dc7g6tyyyyyyyyyyyyhbt-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::183])
        by smtp.gmail.com with ESMTPSA id n19-20020a0565120ad300b004fe7011072fsm220318lfu.58.2023.10.17.03.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 03:22:11 -0700 (PDT)
Date: Tue, 17 Oct 2023 13:22:09 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Message-ID: <ZS5gUVkTwgjNi0Ad@nuoska>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 10:22:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61370

Hi,

On Tue, Oct 17, 2023 at 10:09:42AM +0000, Dave Hitchman wrote:
> Thanks
> 
> So, first, I thought - as I had seen examples that I had to put these flags etc. in the configuration function but it appears that was a wrong thing.
> Now my recipe looks like:
> SUMMARY = "mylib"
> DESCRIPTION = "Fetch and build mylibi"
> LICENSE = "CLOSED"
> LIC_FILES_CHKSUM = ""
> 
> ##EXTRA_OECMAKE = "all"
> inherit cmake
> 
> python do_display_banner() {
>     bb.plain("***********************************************");
>     bb.plain("*                                             *");
>     bb.plain("*  mylibrecipe created by mei         *");
>     bb.plain("*                                             *");
>     bb.plain("***********************************************");
> }
> 
> addtask display_banner before do_build
> 
> # where and how to get source
> ## this is via git
> SRC_URI = "git://git@correct git - this works;"
> 
> # where to source is stored
> S = "${WORKDIR}/git"
> 
> ## was using target flags but Mikko suggested EXTRA_OECMAKE which at least doesnt complain
> ##TARGET_CFLAGS += "-DBUILD_PYTHON_BINDINGS=ON -DBUILD_SHARED=ON -DBUILD_TOOLS=ON"
> ##TARGET_CXXFLAGS += "-DBUILD_PYTHON_BINDINGS=ON -DBUILD_SHARED=ON -DBUILD_TOOLS=ON"
> EXTRA_OECMAKE += "-DBUILD_PYTHON_BINDINGS=ON -DBUILD_SHARED=ON -DBUILD_TOOLS=ON"
> 
> ## this I think is needed to ensure the correct compilers are used... I think anyway.
> export CXX="/usr/bin/arm-none-gnueabi-g++"
> export CMAKE_CXX_COMPILER="/usr/bin/arm-none-gnueabi-g++"

This is wrong. cmake.bbclass generates a toolchain file which is given
to cmake binary and this has all the compiler, binary, module, header file etc
search paths set correctly. It's up to the CMake scripts of the SW component to obey
these settings and not overwrite them. The SW component can amend them by appending
to them but not overwriting. An overwrite of any variable from toolchain.cmake
will break things in various ways. Run the "bitbake -c configure && bitbake -c compile" steps
manually and check the environment in a "bitbake -c devshell", for example.

> However:
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_configure
> | -- The CXX compiler identification is GNU 9.4.0
> | -- The C compiler identification is GNU 9.4.0
> | -- Detecting CXX compiler ABI info
> | -- Detecting CXX compiler ABI info - failed
> | -- Check for working CXX compiler: /usr/bin/g++
> | -- Check for working CXX compiler: /usr/bin/g++ - broken
> | CMake Error at /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot-native/usr/share/cmake-3.19/Modules/CMakeTestCXXCompiler.cmake:59 (message):
> |   The C++ compiler
> |
> |     "/usr/bin/g++"
> |
> |   is not able to compile a simple test program.
> |
> 
> suggesting it is not using the c++ I thought it should be.

Yes, as said before, using the host compiled from the Linux machine instead of
yocto cross compiler for real target.

Cheers,

-Mikko

