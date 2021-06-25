Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web09.6319.1624621703755683756
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Jun 2021 04:48:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TQRkkMl4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id b3so10261817wrm.6
        for <yocto@lists.yoctoproject.org>; Fri, 25 Jun 2021 04:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=0vUFjbOv57aFfsLY1PblItwBSeCZ00+V2NoIWc3cJDU=;
        b=TQRkkMl45qK+gMq9LEDp0Kbhcd8Xxz070fCRVleVi3DOjzz09L98glw/Rr0fyWkYEn
         gYZbQCx/sPVY6snj4KEtyJvJv13uE0pB7uqCDBA1Ov3IX4iCR2e83Nyr31xWhUpwuZzW
         AX7rKFEFJLwSjtGbUmjMn8BCjc+yzWT9GkL3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0vUFjbOv57aFfsLY1PblItwBSeCZ00+V2NoIWc3cJDU=;
        b=fXNm7IhS7rz5jYW9CAHY5bR9Gbyj5AdZoolqFxbbyFeUOlGkJioWow/IpJLZYWtqBh
         PVJU68nZ1J4C87ymJkQpUD0IWMNzinfzKHtQTodzdFNU8mF9M5F0LLHjRWZZSWts+cqP
         VDx04rODcs4kJGHJtLUzUasnxcxv3K5PvCUZU2m+Ve4v3Y5xbwbyKNpHtXXQDstx4/GC
         AnqewW/r2p9A1gAsRQbVYz8rzLWmZ1DtkyfSvnpO39W1aGwGV2TrEV+IKV4L96W/Nvor
         TPkcU864mq/RzytkGJBSgNjMYSCMDeWDA6YyGhkV4mNVarmjb9P5cIR3ahPUY/fZX5sq
         lnNg==
X-Gm-Message-State: AOAM532pHkKGbjFtTwfpa9u/vpjEbKT/Ul31tHU5XRJwWYaibQhziStk
	eYsqn/LsKHf7dHWehfMVgjTAwg==
X-Google-Smtp-Source: ABdhPJwIIiwuE09tkQk5h3HjpS9/v4GF+hc1M5Hr6iGhWu4qPnWlUrIYuN1lgHqSFLL87XeyTPwR/A==
X-Received: by 2002:adf:ee4e:: with SMTP id w14mr10687176wro.108.1624621702122;
        Fri, 25 Jun 2021 04:48:22 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:628a:47d1:4c03:7e6d? ([2001:8b0:aba:5f3c:628a:47d1:4c03:7e6d])
        by smtp.gmail.com with ESMTPSA id g17sm860301wrw.31.2021.06.25.04.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 04:48:21 -0700 (PDT)
Message-ID: <be7aa6a88919a2d2e4a2ce65ef614d45cbdd3449.camel@linuxfoundation.org>
Subject: Re: [yocto] The do_populate_sdk is finishing OK even when there are errors present in the build
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Fabio Berton <fbberton@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 25 Jun 2021 12:48:21 +0100
In-Reply-To: <CAEaGWUKmET2Le-hsEe-o+n1OU8uT+Vqd5TbmKVS8ZwKPQOok0w@mail.gmail.com>
References: 
	<CAEaGWUKmET2Le-hsEe-o+n1OU8uT+Vqd5TbmKVS8ZwKPQOok0w@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-06-24 at 17:40 -0300, Fabio Berton wrote:
> Hi all!
> 
> I'm running some test with do_populate_sdk task and I'm seeing this 
> on the log:
> 
> check_data_file_clashes: Package kmsxx-dbg wants to install file /home/builder/build/tmp/work/foo-poky-
> linux/core-image-minimal/1.0-r0/sdk/image/opt/bar/sysroots/aarch64-poky-linux/usr/bin/.debug/kmstest
> But that file is already provided by package  * libdrm-dbg
> 
> I also see this kind of message with other packages.
> 
> Looking in the source code I found that the install_complementary 
> function runs this [1] with attempt_only=True, and if attempt_only is 
> true log above it's just a warning, as shown here [2].
> 
> This [3] comment says that "will only attempt to install these packages, 
> if they don't exist then no error will occur."
> 
> My question is how can I force an error and not just a warning when 
> running do_populate_sdk? 
> 
> I understand that I can change [1] to run:
> 
>   self.install(install_pkgs)
> 
> so, it'll use set attempt_only to False, that is the default, but I 
> think this will break some use cases. 
> 
> What is the correct behaviour here, see the warning messages and fix 
> the packages to avoid "file is already provided by package" messages, 
> every time I create a SDK or change in some way to see an error message
>  and stop SDK generation?
> 
> What is the correct behavior here, inspect the warning messages, and
> fix the packages to avoid "file is already provided by package" messages,
> every time I create an SDK or change it in some way to see an error 
> message and stop the SDK generation?

It would probably be worth an experiment to see if we really do need the
attempt_only option set there any more. I'd hope it isn't needed now...

It is probably worth testing a patch on the autobuilder, assuming your
local tests with that pass. We'd need to check the different package
backends are ok with that.

Cheers,

Richard

