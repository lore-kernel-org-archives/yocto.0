Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4288EB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 23:16:22 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.1871.1687389376884643064
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 16:16:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=IGHwbwFj;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-57040e313c5so1053487b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 16:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687389376; x=1689981376;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L7gQ9NLoGBvOSdYOx7dWgi6YMPTviEeUNGoQKUBb2mQ=;
        b=IGHwbwFjwpGWXDM9g6d6/9gbpFWBOskU+WWQDlxxiqJAy3HHEEyyKucRCg5TTMtu4e
         EIrhM8yaOCxQjdCIE2Z8dOseSjugTpnOVy0r/qeXwb7dWGshdXGxq2P3OJXmKhesrArz
         NSDcYIxC40wHuGR+nzcCKEkX3JAUAJesUDar84lkqYW/5t1Ej0ZoXS5ROPnow7Fi6SvR
         cSIcgdvAMqXOsnTPAncTkPiUxB+gxG0C+PmpjRpPzeDG8djMTOVyx9B9aRTSlEHzBHMh
         pviiW/zL+pHlSEtMIlSp7uTduMDhJYHlZTDENqlLlxeD5RjG4YAdeSRs6sopaO9vJTMV
         MfsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687389376; x=1689981376;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L7gQ9NLoGBvOSdYOx7dWgi6YMPTviEeUNGoQKUBb2mQ=;
        b=P2AQi9QCTFyIi0apMxDyg0jeZXBkL2L7FhGPYizfC4ZHu22nYJ0cJ8R6msHR7y1UPN
         xbasxsGVmBQmMZgPj2IZce0cAqF4m4pZbYYsMsCsw1lAoDp2/NViWTbkJk5fUZn8Rf8W
         lfWX56Z1Zky/XPQLAl8jdtTFXZOl5HHSoYe46UDdwDcWEPAgQX6OV8A33bRcouFJVoZU
         yPiJFjcE8/a+IGKTNQbjZAVPQZNhMdI5CJBKhit0Enx5jrTn7niTt00CzHuWomCss7Xv
         liFaFWZDNgoDMaxm27K9L85t8mHzoXfpbqbai3IJiGe5Ipk5OcQ/ldktXgAFSR5Kn794
         s1CA==
X-Gm-Message-State: AC+VfDyeH6LV3s38eUETHpDGzVh7wBWg5nGKvw30anUMrM1RdOUEYvWU
	fB4zXiWHwsNEH/RFLc9sJ5H/IGnL2w8=
X-Google-Smtp-Source: ACHHUZ7xQ3k8XcBHXfLUyZ7iBdy85A+rN95LQu0kFSV/JypL89jDipYQJwFUYKaMal95j/LjcAsGRw==
X-Received: by 2002:a81:914c:0:b0:56c:fbd2:edec with SMTP id i73-20020a81914c000000b0056cfbd2edecmr18087829ywg.6.1687389376054;
        Wed, 21 Jun 2023 16:16:16 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:dc27:e982:11fd:2a21? ([2600:1700:9190:ba10:dc27:e982:11fd:2a21])
        by smtp.gmail.com with ESMTPSA id q204-20020a815cd5000000b0057048db0898sm1446415ywb.138.2023.06.21.16.16.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 16:16:15 -0700 (PDT)
Message-ID: <d59ec999-6dae-6135-b728-0d672b4d63fe@gmail.com>
Date: Wed, 21 Jun 2023 19:16:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH] dm-verity-image-initramfs: Allow
 compressed image types
Content-Language: en-US
To: Stephan Wurm <stephan.wurm@a-eberle.de>, yocto@lists.yoctoproject.org
References: <20230619065728.189934-1-stephan.wurm@a-eberle.de>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230619065728.189934-1-stephan.wurm@a-eberle.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 23:16:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60390

this fails to build:

The stack trace of python calls that resulted in this exception/failure was:
File: '<code>', lineno: 24, function: <module>
0020:__anon_70__home_akuster_oss_clean_poky_meta_classes_recipe_rootfs_postcommands_bbclass(d)
0021:__anon_125__home_akuster_oss_clean_poky_meta_classes_recipe_image_bbclass(d)
0022:__anon_181__home_akuster_oss_clean_poky_meta_classes_recipe_image_bbclass(d)
0023:__anon_518__home_akuster_oss_clean_poky_meta_classes_recipe_image_bbclass(d)
  *** 
0024:__anon_28__home_akuster_oss_maint_meta_security_recipes_core_images_dm_verity_image_initramfs_bb(d)
File: 
'/home/akuster/oss/maint/meta-security/recipes-core/images/dm-verity-image-initramfs.bb', 
lineno: 26, function: 
__anon_28__home_akuster_oss_maint_meta_security_recipes_core_images_dm_verity_image_initramfs_bb
      0022:python __anonymous() {
      0023:    verity_image = d.getVar('DM_VERITY_IMAGE')
      0024:    verity_type = d.getVar('DM_VERITY_IMAGE_TYPE')
      0025:
  *** 0026:    dep = ' %s:do_image_%s' % (verity_image, 
verity_type.replace('-', '_'))
      0027:    d.appendVarFlag('do_image', 'depends', dep)
      0028:}
      0029:
      0030:# Ensure dm-verity.env is updated also when rebuilding 
DM_VERITY_IMAGE
Exception: AttributeError: 'NoneType' object has no attribute 'replace


On 6/19/23 2:57 AM, Stephan Wurm wrote:
> Using <DM_VERITY_IMAGE_TYPE> in the depends variable does not work for
> compressed image types like squashfs-zst, as the resulting task
> dependency still contains the incompatible dash. Replacing the dash by
> an underscore resolves this issue.
>
> Signed-off-by: Stephan Wurm <stephan.wurm@a-eberle.de>
> ---
>   recipes-core/images/dm-verity-image-initramfs.bb | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
> index 187aeae..fc12ba0 100644
> --- a/recipes-core/images/dm-verity-image-initramfs.bb
> +++ b/recipes-core/images/dm-verity-image-initramfs.bb
> @@ -19,7 +19,13 @@ IMAGE_FEATURES = ""
>   IMAGE_LINGUAS = ""
>   
>   # Can we somehow inspect reverse dependencies to avoid these variables?
> -do_image[depends] += "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE}"
> +python __anonymous() {
> +    verity_image = d.getVar('DM_VERITY_IMAGE')
> +    verity_type = d.getVar('DM_VERITY_IMAGE_TYPE')
> +
> +    dep = ' %s:do_image_%s' % (verity_image, verity_type.replace('-', '_'))
> +    d.appendVarFlag('do_image', 'depends', dep)
> +}
>   
>   # Ensure dm-verity.env is updated also when rebuilding DM_VERITY_IMAGE
>   do_image[nostamp] = "1"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60337): https://lists.yoctoproject.org/g/yocto/message/60337
> Mute This Topic: https://lists.yoctoproject.org/mt/99618767/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


