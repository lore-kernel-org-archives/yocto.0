Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3A0C87FD2
	for <webhook@archiver.kernel.org>; Mon, 11 Aug 2025 14:13:36 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.49285.1754921608888662556
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Aug 2025 07:13:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TIHjzC0E;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-af98b77d2f0so817286566b.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Aug 2025 07:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754921607; x=1755526407; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=em82iNnQOAKNw8PF25LdeVT3pZUVhMYwybST1iOf0k0=;
        b=TIHjzC0E9yN67CrvdmroQjFXWAYM8UviidSjX088mcz5JfQs+ccgMlqs7voQwCzZUm
         UrfIpf5m8jpkyrIHFiWJq2cmjQoJRoqP9SkzBGKZWcXka11IjIVhflQgP/NBpbsaZXP4
         3RQUflxk3ifFw3X+BWORCkzI1pvm7rf54GHsurklzv/df5cy59+OkvCvs7wxxEdtmhAq
         Ycbk0kM0890+Oz9o/v+l6apOXH8PMZ1ORCVdUH5J7G+IulEu3n4CfsBzbemo+AUW00C8
         BlDEP8jyD8s4F1o5GYVNkg7X34fR1/FmvVVIXyINc8Af2W41Db251eXlI6xhQ5UfJne2
         zFEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754921607; x=1755526407;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=em82iNnQOAKNw8PF25LdeVT3pZUVhMYwybST1iOf0k0=;
        b=DV0uZztrVVMfF9jiSTQ//o/ujYDOPT89FG55hgOAdF2ir+OWBedGahVWBxeHknX+xb
         wzif8EToQ0jdqvcltICgBu/YrJSbyFKHDHMTvEIM/6UEZMgMDHiFMTTkhvKMTOB3dM3A
         3NZqAbFXL222nmuEGuOEnL/da6LSVSRE1JhTMsafppbR3fZRE9BszZWZ/UfPoxJX5V3n
         Fes42kFAx3TPrr0r+85BLx8OMAvr+aoSgfIUU/zVcS7nfVdpnA09VwFS3ReQTGcmmDwg
         FyHfZ4NIDGd41D+wcBge8tDnPh3aJSFMFIf6yfp4v+u3nB1Wb1fvyHmOqplKTsnX9xOk
         Tp8g==
X-Gm-Message-State: AOJu0YwpgCuyzeVtJsUesph5P/5zmuoPcW/5SiLaXCNPnPnErtQURKIl
	of/fxQMrIDwQCciCFswSa8E+kbIOz9zMcLH55N+YfCv+L7Cs4QFjcvoMsHyrRw==
X-Gm-Gg: ASbGnctND+wUDznp+bdVg6Jo+ldCHkRY2XA92xL2jeWsCuIZ7zjQGpftpIxJu4krJua
	8MWh+e6qh7Rnf+dHoWWL+wDCrQIat+LsocLDX6km8LGTkD686hbwZKBvZpErDuLyjjuN+sZ0qAy
	S333d8Vmgxls1RmqKGodSwf8o5WlKgbn5LkCo0WUKcCvIO1LuPCFM6S3DJhFB3FX8xS335Y2wT2
	cAfItOzm1qsDqceuyBCg0af6zBg63AsB9XhmsxkPh61+pD/JcI+PXJog4jGU5ZjcCP0RulqAeab
	lWAJl9WRltx7VRdZV+ahgiofDaE2xeGbhP3U46eFNUDx7hd9ABXvlIjBsgv0EwUEF1HPfEgbGp2
	jA6hGLmsz1ErN9Cf+IP4T3D1MOnCwCLgNvqFQFCXY
X-Google-Smtp-Source: AGHT+IHZQY7WcQU27lsMjCpZku4q0y45VeJNlPfBxRacge1CcEBoQU+Am88M5NkeqBQVYuV5SvTZuQ==
X-Received: by 2002:a17:906:9fca:b0:af2:b9b5:1c06 with SMTP id a640c23a62f3a-af9c6453129mr1281811466b.14.1754921606856;
        Mon, 11 Aug 2025 07:13:26 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0766b8sm2031226066b.25.2025.08.11.07.13.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 07:13:25 -0700 (PDT)
Message-ID: <46acced2-3bc6-4904-bb0c-9f3f1ad9ad4f@gmail.com>
Date: Mon, 11 Aug 2025 16:13:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] QT6.8.3 build error on Renesas-SDK using yocto vlp4
To: yocto@lists.yoctoproject.org, nags@mysmindia.com
References: <c1743239-9065-4957-9ece-cf384c0fba2d@mysmindia.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <c1743239-9065-4957-9ece-cf384c0fba2d@mysmindia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Aug 2025 14:13:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65748

On 8/11/25 11:27, Nagaraja via lists.yoctoproject.org wrote:
> Hi Team,
>
>
> I am trying integrate Qt6.8.3 package using yocto build on Renesas-vlp4 
> package. when I run bitbake core-image-qt structup with the below error.
>
> Sstate summary: Wanted 3283 Local 1 Mirrors 0 Missed 3282 Current 2364 
> (0% match, 41% 
> complete)################################################################ 
> | ETA:  0:00:00
> Initialising tasks: 100% 
> |#####################################################################################################################################################| 
> Time: 0:00:05
> NOTE: Executing Tasks
> ERROR: qt5compat-6.8.3-r0 do_unpack: Bitbake Fetcher Error: 
> UnpackError('No up to date source found: clone directory not available 
> or not up to date: 
> /media/nags/nags/Workarea/latest-rzg3e/user_work/build/downloads/git2/code.qt.io.qt.qt5compat.git; 
> shallow clone not available: 
> /media/nags/nags/Workarea/latest-rzg3e/user_work/build/downloads/gitshallow_code.qt.io.qt.qt5compat.git_00aa589-1.tar.gz', 
> 'git://code.qt.io/qt/qt5compat.git;name=qt5compat;branch=6.8;nobranch=1;protocol=git')
> ERROR: Logfile of failure stored in: 
> /media/nags/nags/Workarea/latest-rzg3e/user_work/build/tmp/work/cortexa55-poky-linux/qt5compat/6.8.3/temp/log.do_unpack.88951
> ERROR: Task 
> (/media/nags/nags/Workarea/latest-rzg3e/user_work/meta-qt6/recipes-qt/qt6/qt5compat_git.bb:do_unpack) 
> failed with exit code '1'
> Waiting for 1 running task to finish.
>
>
> Please guidme what am I missing here and how do I go about resolving 
> this error.

Before anything else: if you do "bitbake -c cleanall qt5compat", and try
to build once again, do you still get the same error?


There is below another question about source files, which is recognized
as a signature, and Thunderbird cuts it off from the reply, so pasting
it here:

> My question is when there is no app source folder, from where it is
picking the application source and building. The source file location is
defined in the SRC_URI variable. If a revision is applicable (e.g. with
git or svn repositories), that is specified in the SRCREV variable of
the recipe. If these change, bitbake fetches the new sources.
>
> Thanks and regards,
>
> Nagaraja
>
>

