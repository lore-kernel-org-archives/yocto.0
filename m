Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BD2C433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 17:59:02 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.13755.1644515941361726122
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 09:59:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=qzboqZwF;
 spf=pass (domain: konsulko.com, ip: 209.85.160.181,
 mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f181.google.com with SMTP id z1so6168841qto.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 09:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=aFLBypFgfucimI3CM4wxJKd3Tp4SDEC2QP8rfgkiitM=;
        b=qzboqZwFe4QkL7mz4m5gR5a9uRBMY4HMeBxr33NnZo2n7X1adVVMr2FqXUH1k1Y8H8
         4Msb3lTG4yiX2ag7V7lJAs7/HCLpX49rexqhWZewlno2UecYlQJI/mMHe+LNAowwujW7
         fshVbSUREfbW/5HxNbVKMaShU0KftcmvWH+B4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=aFLBypFgfucimI3CM4wxJKd3Tp4SDEC2QP8rfgkiitM=;
        b=mr2V4tYpFPr5N4KlUVJ8DfdWh/+lyc9jmj41dlnK7bhSHDbyEBN09VJrtp0AaJnb1C
         R6WwoxHXnxAToQ34FFrmI2S7bHDZcvmG5ZLynFfcXiYQi+RIiNl06W15ANUrCxeS58t1
         0bnKI8wobMp3anOweU42NVq9PbY967FYfIB3ba8nmk6FXozmiqC07WF0nvVho5RA+k3i
         qEVQ3tYJ+lalUJQfZkX+5AwrcdazfuJrrbUl5F2gKy8NLcuhXgRi2FHqcZ4WY3VSozG8
         u7KF1fB/zsQWL/L8WEZLZYWVI9JvjBVKyQEsnC9c5wA+esGA5r+j5P/cBfSq/teGfcd7
         /0fw==
X-Gm-Message-State: AOAM533VeGH95E8ch+txcTiWzL8jqggH6UEP5TfuMMAPzb3kQ8qbRFjm
	qKCgep0iAG4Qz33zmkzD7WWiBhokjgQRpg==
X-Google-Smtp-Source: 
 ABdhPJyvidPMUJic5hrybsvBvU6Qiz7IyAgEd+rI6JcCHARie7Qbb+jojrjYiinJj6FjiObYlTbRZQ==
X-Received: by 2002:a05:622a:190f:: with SMTP id
 w15mr5506410qtc.346.1644515940405;
        Thu, 10 Feb 2022 09:59:00 -0800 (PST)
Received: from godzilla (192-0-174-222.cpe.teksavvy.com. [192.0.174.222])
        by smtp.gmail.com with ESMTPSA id
 o18sm10505390qkp.26.2022.02.10.09.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Feb 2022 09:58:59 -0800 (PST)
Date: Thu, 10 Feb 2022 12:58:58 -0500 (EST)
From: Scott Murray <scott.murray@konsulko.com>
To: Dusan Radic <dusrad@gmail.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto #zeus Problem with moving from rocko to zeus
In-Reply-To: 
 <CAFe1xewJGwZXTH+qhKDsZN9ecofbgQJKZfyT-5iHv=QFbjE8-A@mail.gmail.com>
Message-ID: <6efa1439-41a2-1adb-415e-51f71ec4fda0@spiteful.org>
References: 
 <CAFe1xewJGwZXTH+qhKDsZN9ecofbgQJKZfyT-5iHv=QFbjE8-A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 17:59:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56152

On Thu, 10 Feb 2022, Dusan Radic wrote:

> Hello,
>
> I am trying to upgrade my distro from rocko to zeus.
> After I fixed all the initial parsing and build problems I have
> reached a point where the linux-imx doesn't build. Maybe I am
> underestimating the task in front of me, but I have already seen it
> done.
>
> The error looks like this:
>
> | .../kernel-source/Makefile:947: recipe for target 'fs' failed
> | make[2]: *** [fs] Error 2
> | Makefile:146: recipe for target 'sub-make' failed
> | make[1]: *** [sub-make] Error 2
> | Makefile:24: recipe for target '__sub-make' failed
> | make: *** [__sub-make] Error 2
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task (.../meta-mylayer/recipes-kernel/linux/linux-imx_4.1.15.bb:do_compile)
> failed with exit code '1'
>
> Is it possible that I am using the wrong linux-imx version? I have
> tried a few but to no avail.

AFAICS 4.1.15 doesn't match any kernel recipes in the zeus branches of
either meta-freescale or meta-imx, it might go easier if you based off of
the 5.4.x kernel recipes one of those use...

Scott


