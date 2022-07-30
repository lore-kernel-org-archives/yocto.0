Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8510C19F2A
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 21:16:56 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web11.7178.1659215807197941052
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 14:16:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bg6213/g;
 spf=pass (domain: gmail.com, ip: 209.85.215.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id bf13so6606657pgb.11
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 14:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=zpY+ln9ixaCP8dXQFglbyufmVaCHxPEELADeNUMu+RI=;
        b=Bg6213/g6ZP18/s3jrKorguhXoRLZeEYiH3FefeeLwnZ5R6+zAibJTpNJYOEZBglWZ
         8MzUnFt5kGneUR7+ifM2i+VNwz3QYP+L84WD3aMNBl7YH3MuAWzgDpNoH/LoMhJQq8sg
         9RB5ixU7MOZoZtEiLOagdSkBsC1kMlY0LsWuuDmyBJIB1zNjHitl52Ap/ZOL0tO9tYJ4
         7HS08oDYk8J4seKSApiHL1trlDrHsr5AH7SDdXBIU7XS+b4Nf57uvVq6GYIXym6syRgS
         0yb/U3bXNSezzH+7Ih4VZSuXDRYmtaYMhbRTxNqTkhDf3JhYgdiRR+O0AfGPyoETtMRf
         /puA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zpY+ln9ixaCP8dXQFglbyufmVaCHxPEELADeNUMu+RI=;
        b=Bml09STZUppJNDf383pIe1QIh8X8w6P4BMNbDz7PwC8CUfwHMrWwa8EDSIBOL0cw4Y
         9S/UxXFTU39dUoeiAMa/Xthi+lB6Jmvb1HJFtzZMPcHhgk6KM0vgUYXW1oVJ6ZhipnqH
         U1KDqcXsVtODAbEfE2U8kZnIL+vSBeB2njYuWEb0FX7M/obWvaH1SD3O2rTEFcPlqLD0
         Y8ZPsJ9dfiwevlKADs6nsiOT0DNLxjIP3saa4/eR9NKiRfvjTbogqygRhsW9FgviDydo
         G6eGF/AembMjGfY8923IK3hOH16lL0HPDZ0raQoC9PBGwoxh5Ew9MkyXAncj7qkGFxIz
         f4xw==
X-Gm-Message-State: AJIora8PUC2NaIZPAChdOhBMamq/TrI/zR6f3Y1lRsd7QPOIdELgtWNO
	6njFmx0erpN0KtLmIBLT90w/mbEFf/A=
X-Google-Smtp-Source: 
 AGRyM1uGKEWgv/YZyjbwt2bFj/AvG96eWY9Uf/WZ+EDK/svT6CnXEZzsCjCGMUT+jd842QI3QiFOnw==
X-Received: by 2002:a63:c143:0:b0:41b:99c6:1f6 with SMTP id
 p3-20020a63c143000000b0041b99c601f6mr6108306pgi.353.1659215806268;
        Sat, 30 Jul 2022 14:16:46 -0700 (PDT)
Received: from [192.168.18.39] (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 j11-20020a170902da8b00b0016d1f6d1b99sm6279644plx.49.2022.07.30.14.16.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jul 2022 14:16:45 -0700 (PDT)
Message-ID: <3a01ceea-322b-fc58-4223-6b354ae99f0d@gmail.com>
Date: Sat, 30 Jul 2022 14:14:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [meta-security][PATCH V3] meta-security: Add recipe for
 libhoth
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20220722163510.2229149-1-jebr@google.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220722163510.2229149-1-jebr@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 21:16:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57700

merged.

On 7/22/22 09:35, John Broadbent via lists.yoctoproject.org wrote:
> From: John Edward Broadbent <jebr@google.com>
>
> Libhoth is usb protocol implementation which is required for hoth class
> devices
>
> Signed-off-by: John Edward Broadbent <jebr@google.com>
> ---
>   meta-tpm/recipes-tpm/hoth/libhoth_git.bb | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
>   create mode 100644 meta-tpm/recipes-tpm/hoth/libhoth_git.bb
>
> diff --git a/meta-tpm/recipes-tpm/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> new file mode 100644
> index 0000000..a3ebce7
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> @@ -0,0 +1,17 @@
> +SUMMARY = "Google Hoth USB library"
> +DESCRIPTION = "Libraries and example programs for interacting with a \
> +               hoth-class root of trust."
> +HOMEPAGE = "https://github.com/google/libhoth"
> +
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> +
> +SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
> +SRCREV = "1622e8a040d21dd564fdc1cb4df5eda01688c197"
> +
> +DEPENDS += "libusb1"
> +
> +S = "${WORKDIR}/git"
> +
> +inherit pkgconfig meson
> +
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57624): https://lists.yoctoproject.org/g/yocto/message/57624
> Mute This Topic: https://lists.yoctoproject.org/mt/92551443/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


