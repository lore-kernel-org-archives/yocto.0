Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78202C433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 23:31:35 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web12.1997.1632871895152913765
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:31:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=deqFKc3I;
 spf=pass (domain: gmail.com, ip: 209.85.210.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id b68so341727pfb.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=nnenfdAlzM4HNwoZxAxQBHfS9cfAQKQwdfElXgTvHEI=;
        b=deqFKc3IPj82leaauGBayfvMUAJqvPuOb+szd1LfDgo7XwLURlUOgAPnW2qk6hCu7r
         OfOUmPga2x97kLLaQ8FvIg3LG9yqcF02lKeglS2LTOUQFQ7yNDpYNwfQM9ar8HpqfLw5
         BvvXZb4FqJm4GwtTVjlmQn18H8iaQibCjvsuIgDaX4yCUfShxjqsTL0AwleX6jjLjUnj
         4PEmQEe+sh8601T5H1XaZf1QnJ21a7LlhUNh/DV+7/fzq/34ra225Oid9JwVDQ92IjyS
         2XA45f/JlGzVaciMKIpCYwCAYhbdQ6Rvce4t5fH3gimsWsLdnJWP8mORnvRukvzrUM95
         Qpdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=nnenfdAlzM4HNwoZxAxQBHfS9cfAQKQwdfElXgTvHEI=;
        b=O9XO0qU1/IfacYtE+PInfxjva5vRYrZraPXNgF0On1zlEiT4lqKKvay48B7Npp9Ezh
         VQZJw42O0WQfucyyiRO9Dj1EwK1v8xZ317czXu6wDmmTj/HQKy7X4f9Qf+U/dux8CcIt
         wBNl1SmqF5R0DDVCiqTQtMQecrZ2AwaDN0I3UJQOlvlVWfTlC7ynLyst2+VsrKWyK/Xt
         x+JEMo9M617YTE+JKCNFenNxJj32fCrC7aFO05Z5TbDlRS0oxDlv0SG92xK3xR+pHeXH
         7qkKIZpGFMMOLgIwNtSL9PiED+s6ECKBatkvK0yJDTCtarn+jQp+gsrHndIaIwTrTADA
         pJMg==
X-Gm-Message-State: AOAM531DqdaOubFO484KVlaAAtAQlrnCgdCTLYAa5loRNY9gVDeMpZOk
	asPZ411Buo7GWwexEtSCGtiPEwDOX9U=
X-Google-Smtp-Source: 
 ABdhPJzc0cZT6i6hOFppuNW5kKiZ+j/i/mDf3oA9wZuX6Y6ko65omdJOOZvqE+PnmO3JDqRBxDl1/g==
X-Received: by 2002:aa7:94a2:0:b0:447:ce69:7601 with SMTP id
 a2-20020aa794a2000000b00447ce697601mr8283406pfl.46.1632871894753;
        Tue, 28 Sep 2021 16:31:34 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:b669:1b22:84ea:4511?
 ([2601:202:4180:a5c0:b669:1b22:84ea:4511])
        by smtp.gmail.com with ESMTPSA id
 t14sm225275pga.62.2021.09.28.16.31.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 16:31:34 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] dmverity: Make use of
 DATA_BLOCK_SIZE variable in initrdscript.
To: Paulo Neves <ptsneves@gmail.com>, yocto@lists.yoctoproject.org
Cc: Christer Fletcher <christer.fletcher@inter.ikea.com>,
 Paulo Neves <paulo.neves1@inter.ikea.com>
References: <20210923154549.4108832-1-ptsneves@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <8d512aaf-e62e-0c36-ca03-5bfa5a922d78@gmail.com>
Date: Tue, 28 Sep 2021 16:31:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923154549.4108832-1-ptsneves@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 23:31:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54897

merged.

On 9/23/21 8:45 AM, Paulo Neves wrote:
> From: Christer Fletcher <christer.fletcher@inter.ikea.com>
>
> DATA_BLOCK_SIZE variable was set in dm-verity-img.bbclass at build
> time but the initrdscript was not updated to pass the DATA_BLOCK_SIZE
> to the veritysetup. Now the functionality is complete.
>
> Signed-off-by: Paulo Neves <paulo.neves1@inter.ikea.com>
> ---
>  recipes-core/initrdscripts/initramfs-framework-dm/dmverity | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-core/initrdscripts/initramfs-framework-dm/dmverity b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
> index 888052c..c815940 100644
> --- a/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
> +++ b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
> @@ -6,6 +6,7 @@ dmverity_enabled() {
>  
>  dmverity_run() {
>      DATA_SIZE="__not_set__"
> +    DATA_BLOCK_SIZE="__not_set__"
>      ROOT_HASH="__not_set__"
>  
>      . /usr/share/misc/dm-verity.env
> @@ -49,7 +50,7 @@ dmverity_run() {
>      done
>  
>      veritysetup \
> -        --data-block-size=1024 \
> +        --data-block-size=${DATA_BLOCK_SIZE} \
>          --hash-offset=${DATA_SIZE} \
>          create rootfs \
>          ${RDEV} \
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54813): https://lists.yoctoproject.org/g/yocto/message/54813
> Mute This Topic: https://lists.yoctoproject.org/mt/85817076/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


