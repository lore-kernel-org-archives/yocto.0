Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1A77C77B73
	for <webhook@archiver.kernel.org>; Mon, 22 May 2023 13:50:49 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.22443.1684763444684751526
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 May 2023 06:50:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=I9M1MCTj;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-64d57cd373fso1178442b3a.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 06:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684763444; x=1687355444;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z2P5U6jscJj+pR8R/K7/p/WwliJ6kd7vpY0yldvnP44=;
        b=I9M1MCTj4RENs4/271A4fQtNbksHZQGkI1g5KAQuIqk2qYZGUOtRizI5ZiU/zeZf8R
         AJxsF3DhJv2QTIafHRH423aElk+KfFsOjZLFBeBGtBF9s8qiPuCu+VqK6eOaKKygb5LA
         v8TONT0EezIJjfm0TbP9BtgAzDJWK78JYpe9tdPpV0QI7cLXCn4LSQ2h7N5wmLo6bzyH
         zVGwRxUijG8yWsxM5Dlx0eZNGdN196mOLCepyDj5xk1eIAOly73OgAphl1HztEloj+6h
         ATc4rjoNVAn2izhZwuUQ1xuyBrr9ClZ4ci48fgtNGeiR1VUr76zgZ/4ocDIdWgYKPQ4N
         Visw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684763444; x=1687355444;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z2P5U6jscJj+pR8R/K7/p/WwliJ6kd7vpY0yldvnP44=;
        b=HQc83K1aX8DfJoO1Izy2MLcbFgeP60DPfHpXDBzmhtjnXTQXjs/kJq5QoMUe/lgY9v
         dqVbHq1Ezw318SYyORsFHO+ZXMVRLhigGot0hsKaUqB8PSC7qbf/luKZbY9T5Y+YOqbJ
         USFLgV+3NheilGedrNW3GqCmZwzEh3qiGB5e/2UNQRlPrHrRPycv3OuYPNVoRGrmr3O1
         Q6rkkUTXAplmtY57c1EgPwoZu8VBjoNcKxZX0es1HblVtbi1k7yK6rbX5zFhlxJpKnCS
         NOv9+MWMbPNKsLo2gACD54gU90UGclprf9lBpCjYQOIZX1yn9uuMAjfVlJfXRwGXnZ8n
         wGZw==
X-Gm-Message-State: AC+VfDzLrrgD36Ylfaqu9lvxzuTEsxu05Keepd3ldfm4iydGLVIps/nd
	BvvHlpsOZAaNC1tOFtDVdnE=
X-Google-Smtp-Source: ACHHUZ6dGwJFTV+PyMJjaHrLfVyi13bkrydIBSr+V9PuIa7j/qiaLyc5HeV/SELLhdjV3c4ou7ApYA==
X-Received: by 2002:a17:903:230f:b0:1a6:f93a:a136 with SMTP id d15-20020a170903230f00b001a6f93aa136mr17932268plh.22.1684763443779;
        Mon, 22 May 2023 06:50:43 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:4940:880:1064:1cc5:3298? ([2601:202:4180:4940:880:1064:1cc5:3298])
        by smtp.gmail.com with ESMTPSA id b6-20020a170903228600b001acad024c8asm4904864plh.40.2023.05.22.06.50.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 06:50:43 -0700 (PDT)
Message-ID: <0d38f3e6-305c-5c3b-1038-6cee7a3034d2@gmail.com>
Date: Mon, 22 May 2023 09:50:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH] libhoth_git.bb:SRCREV bump
 1622e8a04..d769296220d
Content-Language: en-US
To: jebr@google.com, yocto@lists.yoctoproject.org
Cc: edtanous@google.com, wltu@google.com
References: <20230517172730.3837643-1-jebr@google.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230517172730.3837643-1-jebr@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 13:50:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60080



On 5/17/23 1:27 PM, John Broadbent via lists.yoctoproject.org wrote:
> From: John Edward Broadbent <jebr@google.com>

merged thanks.

-armin
>
> Updating libhoth to match version in openbmc
> https://gerrit.openbmc.org/c/openbmc/openbmc/+/63424
>
> libhoth detailed changes:
>
> Willy Tu
>      Expose header files expose USB APIs
>
> aranikam
>      Add flash_spi_info command
>      Add address mode flag for spi update/read
>
> Chris Evans
>      Rename ec_ commands; permit old command names as an alias.
>      Apply clang-format, and enable it as a check action. (#24)
>
> Sui Chen
>      Add payload status
>      Add console snapshot
>
> Daimeng Wang
>      libhoth: automated mtd mailbox discovery
>      libhoth: implement MTD transport
>      libhoth: add MTD backend boilerplate API
>
> Yoan Andreev
>      Dont check for non-snapshot console params
>      Extern c wrap (#22)
>      Build improvements (#18)
>      Add basic abstraction to libhoth and SPIDEV support (#17)
>
> Vidya Satyamsetti
>      Add extern
>
> Kor Nielsen
>      htool console: Don't leave O_NONBLOCK set on stdin
>      [fix] In legacy mailbox protocol, look at response size.
>      [fix] Support legacy response buffers larger than 62 bytes.
>      [feat] htool: Support Hoth-B devices.
>      Add --baud_rate flag to "htool console".
>      Setup github workflow to build project.
>      Rename "htool console -l" to "htool console -n".
>      Add --onlcr flag to "htool console".
>      Make example visibility public.
>      Fix BUILD file formatting.
>      Remove out-of-date :enumerate and :ec_hello.
>      Add libusb to bazel WORKSPACE.
>      Fix undefined behavior in htool command handling.
>
> Signed-off-by: John Edward Broadbent <jebr@google.com>
> ---
>   meta-tpm/recipes-tpm1/hoth/libhoth_git.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
> index a3ebce7..0485afc 100644
> --- a/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
> +++ b/meta-tpm/recipes-tpm1/hoth/libhoth_git.bb
> @@ -7,7 +7,7 @@ LICENSE = "Apache-2.0"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
>   
>   SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
> -SRCREV = "1622e8a040d21dd564fdc1cb4df5eda01688c197"
> +SRCREV = "769296220dc88df33f4726aa11e39e049257b3c4"
>   
>   DEPENDS += "libusb1"
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60045): https://lists.yoctoproject.org/g/yocto/message/60045
> Mute This Topic: https://lists.yoctoproject.org/mt/98953266/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


