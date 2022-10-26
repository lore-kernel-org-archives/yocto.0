Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DC86C433FE
	for <webhook@archiver.kernel.org>; Wed, 26 Oct 2022 18:13:55 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.11109.1666808030292561214
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Oct 2022 11:13:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=egwKwwIu;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.169, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f169.google.com with SMTP id t25so11244666qkm.2
        for <yocto@lists.yoctoproject.org>; Wed, 26 Oct 2022 11:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AqoC7lgBsZvc1zK1buJtJ5T/2ZBKajIYsS3/T2HEJTY=;
        b=egwKwwIuaZorSG58UGY7+Wkq+jPhuwdXXnFuGht7vKRQYd7JamBIBwZOFldJENpRgN
         aW6eEDbkGHw8ZgIXWzDk6G51jaHcAW9bClxA8c3i1wN/1bg9c49OJdbE2LgBYxOJMVSh
         WQCjMdj1L2LL5r1lIdY5HEDK/XrCRtQr2BTRyarEg2Ifb2fJWCwEJMGrwmgz64Vrxfgk
         KfssT65FUBgrS4DuAuO/xC1YPLf2jUi2eb0HbM6z3PJ+ZGrjt9dzmnW/imEW5d/1yEli
         HvtuEESEIP7jTd2WB8hQWs8oWnmgB0oJTF4lMvsIoJ8VrYDNUM0KDWlRLMuVHSJ2RRHO
         6LYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AqoC7lgBsZvc1zK1buJtJ5T/2ZBKajIYsS3/T2HEJTY=;
        b=UcEGP2oAx7uNTsQM/UYs8+pwPPN8fcKg+Q56GJAPmHIsRjoDLFPNxoeeQdSoQbKJ1w
         Ni74GY7tZUjI62GHSt/NeXRlEvPCgjWcpxLig2k60MsWIlHuaJ/4a3k0xfqXipHPt13F
         W+W2f1q06pDAInbaflWYMP3c8kWmm7VKt+/WHltbI0KY0rcY9yJEAv0NSjlOQlC9JlSI
         UMVsptfxNQfqiSHNfbDSyQr78l96STScHz4DlL0CozS3WsQ76UO3EF6/KhGorkSz2FqZ
         z9/PskJpygqMBVN8X6DeS8NqFJfAT6Ma50d2bXuGJ0qiOGclNjdMCT+KVP2VPsHG65ts
         D39w==
X-Gm-Message-State: ACrzQf0KVNuk2nCZdGY7oVK/l4FVdRyNL2S5HAQ3EXo29Wz6njzX9dua
	0u882NdPAbrwxIyBrAgJVe+lWg==
X-Google-Smtp-Source: AMsMyM5/ZSICrhutey0+ru8SCW2C/2eG17pryJKPS0ewxk0khq5ddxXUxwh9VZcCt/LV2i1POaQoRg==
X-Received: by 2002:a05:620a:d96:b0:6ce:bca6:9dd0 with SMTP id q22-20020a05620a0d9600b006cebca69dd0mr31859961qkl.152.1666808029249;
        Wed, 26 Oct 2022 11:13:49 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600:5336:1ccc:fa87:21b2])
        by smtp.gmail.com with ESMTPSA id j11-20020a05622a038b00b003a4f0bad332sm1011682qtx.66.2022.10.26.11.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 11:13:48 -0700 (PDT)
Date: Wed, 26 Oct 2022 14:13:46 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][PATCH] zephyr-sdk: upgrade 0.14.2 -> 0.15.1
Message-ID: <Y1l42k+lFDUOkdwQ@kudzu.us>
References: <20221026052945.535612-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221026052945.535612-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Oct 2022 18:13:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58418

I added this and rebased it to be before the update to v3.2.0.  The
issues with the versioning are now gone, but the following issues
remain:

"BUILD_ASSERT(IS_ENABLED(_RETARGETABLE_LOCKING), "Retargetable locking must be enabled");"
for
zephyr-coap-client
https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258971

zephyr-coap-server
https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258983
https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258987

zephyr-openthread-echo-client
https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258972



"region `SRAM' overflowed by 1104 bytes"
for
zephyr-philosophers
https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231259005
https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231259002


Thanks,
Jon


On Wed, Oct 26, 2022 at 01:29:45PM +0800, Naveen Saini wrote:
> https://github.com/zephyrproject-rtos/sdk-ng/releases/tag/v0.15.1
> 
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> ---
>  .../zephyr-sdk/{zephyr-sdk_0.14.2.bb => zephyr-sdk_0.15.1.bb} | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>  rename meta-zephyr-core/recipes-devtools/zephyr-sdk/{zephyr-sdk_0.14.2.bb => zephyr-sdk_0.15.1.bb} (83%)
> 
> diff --git a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
> similarity index 83%
> rename from meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
> rename to meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
> index c893652..f5a9466 100644
> --- a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
> +++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
> @@ -14,8 +14,8 @@ SDK_ARCHIVE = "zephyr-sdk-${PV}_linux-${BUILD_ARCH}.tar.gz"
>  SDK_NAME = "${BUILD_ARCH}"
>  SRC_URI = "https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${PV}/${SDK_ARCHIVE};subdir=${S};name=${SDK_NAME}"
>  
> -SRC_URI[x86_64.sha256sum] = "2ff0e4d79bffe1468247a3e1958aa9183a0252225ab721cf1c37188bd4b649a2"
> -SRC_URI[aarch64.sha256sum] = "cbb616a50e940388ea737788d48dcea3624a85bb3ee04d9aae105496a21ae75e"
> +SRC_URI[x86_64.sha256sum] = "0a7406045102197b9edc759b242499941814a1c6df29dd9fbd479ad50eb0fba9"
> +SRC_URI[aarch64.sha256sum] = "d2c5de994376a287e8bf12e5776ab8f5105eafa14826608df085142fd01b7f84"
>  
>  do_configure[noexec] = "1"
>  do_compile[noexec] = "1"
> -- 
> 2.25.1
> 
> 

