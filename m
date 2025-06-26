Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C0DCC7EE31
	for <webhook@archiver.kernel.org>; Thu, 26 Jun 2025 18:50:21 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.3301.1750963817321685638
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jun 2025 11:50:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SBB8JpEr;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-60179d8e65fso2431914a12.0
        for <yocto@lists.yoctoproject.org>; Thu, 26 Jun 2025 11:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750963815; x=1751568615; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iWlseqPurhpislqSWkuqrmHyU7OYdNqBxRRIAmvbbnk=;
        b=SBB8JpErCz82SRohwFjPY00jJK/XMWIQZG8bJhLTYY7nMS4upc3ZQzy/w7K7UCBl/Y
         lrpAVthGTsOVZrG8tiYCt5tZlN9iryvvEkY4WjZtFUxPl2VykBpbtQdSgSNfD63RmA1v
         hOwYguucpGbSJbTh23ZW7C6nOuGL8FtLpZ5MWqxVrWx56/FGhVN990OiqMxrrGLbzd6P
         70rWnkJZgUnesJDBGC0tbpoRX42Hpvfnz6C4oqragbp7fD+lTtJZDCbbNHBaCh8wxls8
         ptREcxaLzIoXwmE0FdHz1ADMlbpVSsuIJ9yp72+3Z/qd4PklYpBqES659KlfU1Yk/3VR
         lFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750963815; x=1751568615;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iWlseqPurhpislqSWkuqrmHyU7OYdNqBxRRIAmvbbnk=;
        b=tSyLrtsT2g0uWo/T+sVwaYUFSh8YYUc9oTOxEjFgLgzGwd1qwl5Jj86A3qpd2yFdM3
         WdeFdE04zg4JrhsMGkybpRTRKRs84QpTT5RJFvokydxf/U9NHekwIePm+b/rhrOOGHg/
         pxt2Q8FoGOlFwOPiOp6/jRiC0tNLwD2IHnv7v0A/DBS9zqa/Iq9mU3VtPbVQC/jVyb2N
         eqQ5DPFbXlFs4Bq4vmIG8TbQpNe983hDMaY7rGhdQfGz35aTtqYpAs1vhyiy4tzwi42D
         jfS69wtOoBEJ0oq0aECgl4F8QmW694Ho4R9qzoRG63AdfR/ilZhv8mYDiYuSTlrf9ewB
         YDuQ==
X-Gm-Message-State: AOJu0YwipJ9d0qsRheATzg/PxYcQFLSvOGdCNqtKePWpXgebw3173kBB
	e+sCwiGwFRoouSWvjOAIwKc3SWRPiO5Z5euMXAEKnT8vbc8HLnHqLt6F9QH4jg==
X-Gm-Gg: ASbGnctI9f/WlHK7i5SAhEsvvUzPRyKcqqxpvVFvtYXE/A3+wdgZbSqaaXFgXa0LVFd
	YoqSJwM9YJv5WT/FgXjNrXETGFzmiXrpivKKLLxCfu6QNlUqJMMQflCAqtNxVgTMW7GBxc6LYiR
	NKYC5DNDSc5NKdP6FGr4UGxbQFchxPLJGnzDo9cnaPPG3PjgqVi66ifr2KjGax/HwRz0lhOOwcO
	Bi5IjZmFYOzn3jIfXOY7pUPEMqCJUBtv6PUl9T1sOt34wRbeS6x5QXiA3ieTj+hPLm6wuDQQQ+n
	JpD+rgI5EER4hGVIHbcPPdd0qCB0XYgxMwMYBuF8R9sCn/2M+odVpQhz+JfGLxxYnzb8xA==
X-Google-Smtp-Source: AGHT+IFJzL2ECZikhI/AGwdgJ3WSfd5ipm+lacx1vUkTKAOP2X+FxZtsw8jtHa8/q9GBqSR94XpACw==
X-Received: by 2002:a17:907:3da9:b0:ad5:2328:e39b with SMTP id a640c23a62f3a-ae3500e050bmr15128866b.31.1750963815099;
        Thu, 26 Jun 2025 11:50:15 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae217f432bfsm37099266b.123.2025.06.26.11.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 11:50:12 -0700 (PDT)
Message-ID: <0c92191c-b369-448a-9908-f79f02b4f186@gmail.com>
Date: Thu, 26 Jun 2025 20:50:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] psplash tries to mount an empty PSPLASH_FIFO_DIR, leading
 to image runtime problems
To: yocto@lists.yoctoproject.org, f.bauer@igi-systems.com
References: <99vh.1750951488712427945.NMQr@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <99vh.1750951488712427945.NMQr@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Jun 2025 18:50:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65551

On 6/26/25 17:24, falk bauer via lists.yoctoproject.org wrote:
> Hi all,
>  
> Here is an issue with psplash and an empty env var PSPLASH_FIFO_DIR:
>  
> The script file psplash.sh tries to mount the PSPLASH_FIFO_DIR variable.
> If the variable is empty, the mountpoint command returns an error code
> (busybox mountpoint here, util-linux mountpoint behaves the same):
>  
> BusyBox v1.37.0 () multi-call binary.
> Usage: mountpoint [-q] { [-dn] DIR | -x DEVICE }
> :~# BusyBox v1.37.0 () multi-call binary
>  
> The return code with this console output is 0 and the if statement is
> executed.
> And what this situation makes even more worse is the fact that the mount
> command with an empty argument mounts /run again. This overlay the
> existing run
> directory with all kinds of problems. On our device the USB-based HIDs
> were lost.
> The source code of psplash respects an empty PSPLASH_FIFO_DIR variable
> (see psplash.c) and makes a fallback to "/run". So i think the
> psplash.sh script
> should also respect the empty var.
>  
> Attached is a patch which fixes this issue for us so far. As this is
> the first time i write to one
> of the mailing lists of yocto i post it here instead of e.g.
> yocto-patches.
> Any hints how to process further on are really appreciated.

I think this patch is reasonable. You could just send it to the oe-core
mailing list[1], where it will be reviewed and tested also.

Make sure to follow the contribution guidelines[2] - it's nothing too
big, mostly just add a Signed-off-by tag to the commit (git commit
--signoff), add a subject and commit message (your description needs
just some small rephrasing to turn it into a reasonable commit message),
and it's pretty much good to go.

Personal opinion: instead of [ ! -z $FOO ], I find [ -n "$FOO" ] a tiny
bit easier to understand.

[1]: openembedded-core@lists.openembedded.org
[2]:
https://docs.yoctoproject.org/contributor-guide/submit-changes.html#preparing-changes-for-submission

>  
> Thanks,
> Falk
>
>  meta/recipes-core/psplash/files/psplash-init | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> diff --git a/meta/recipes-core/psplash/files/psplash-init
> b/meta/recipes-core/psplash/files/psplash-init
> index e0f80bcdc0..5411943245 100644
> --- a/meta/recipes-core/psplash/files/psplash-init
> +++ b/meta/recipes-core/psplash/files/psplash-init
> @@ -26,9 +26,11 @@ for x in $CMDLINE; do
>          esac
>  done
>  
> -[ -d $PSPLASH_FIFO_DIR ] || mkdir -p $PSPLASH_FIFO_DIR
> -if ! mountpoint -q $PSPLASH_FIFO_DIR; then
> -       mount tmpfs -t tmpfs $PSPLASH_FIFO_DIR -o,size=40k
> +if [ ! -z ${PSPLASH_FIFO_DIR} ]; then
> +        [ -d $PSPLASH_FIFO_DIR ] || mkdir -p $PSPLASH_FIFO_DIR
> +        if ! mountpoint -q $PSPLASH_FIFO_DIR ; then
> +                mount tmpfs -t tmpfs $PSPLASH_FIFO_DIR -o,size=40k
> +        fi
>  fi
>  
>  rotation=0
> -- 
> 2.43.0
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65550): https://lists.yoctoproject.org/g/yocto/message/65550
> Mute This Topic: https://lists.yoctoproject.org/mt/113845113/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


