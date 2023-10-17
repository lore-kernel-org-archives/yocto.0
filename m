Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA79CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 01:30:44 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web10.198232.1697506237349264510
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 18:30:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=LR4iIdyN;
 spf=pass (domain: mvista.com, ip: 209.85.215.181, mailfrom: jpuhlman@mvista.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-53fa455cd94so3369844a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 18:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1697506236; x=1698111036; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e04kIk2JUodVDaFQIRnmF6UAfxWHBlJY9A/0Bpr/ahQ=;
        b=LR4iIdyNo7fwxuDiQd4pH7jAKoE3ngemT8cmcikk32SvZi11TF88wGG0G3RDTRMahq
         YtsuHny/pHZt23ewT3ucUtacwxWASLBRKP9z25AmVCvTjikWBfny2CM/wqy/412WCE12
         js0qkrBmk4koWYtRLAZQar1rrHRpQfKF0ZHWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697506236; x=1698111036;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e04kIk2JUodVDaFQIRnmF6UAfxWHBlJY9A/0Bpr/ahQ=;
        b=bGJj93IHqcpAC3W2YnABRRG8+D39ZuPxQFBaJ2RleuBUj/bcAO/9VPsG6mjTHTx0ku
         aYAD7Gu7Rrbd3HxPN4A2W77d6UQsLHIJxF7+FfQGAW7w9rTt+9CP4is/D1evJ9Pg0NCU
         gp9ygidzJgful9UtcbIlktIl0nkmh0r5xUIkftpfvXu1ySd6+ZlcFc9W5pHjomR6VGqB
         tZqOpKHZHHneXfgNwRnjNzPy8OWOF0VJXA173dlQ0poTHFsRlB27ZGQWGp9Tq7vnz+dQ
         KoKsZGfZD+HTS/JF3IoNvMpXKeR2oExj0M7U4EWsXLdCv8MuHxthMNpq9qEdKVDGubIH
         EqPw==
X-Gm-Message-State: AOJu0YyYk+dl3vFdFcmIATLJeANg1nc1nbbKz4c6/PsbyG6Pc51+zWHv
	wPQwr1YteMD7IO1Dt9SVG+y0I+six+7gvIH5XYI=
X-Google-Smtp-Source: AGHT+IHb66uuKqCLxdciKrFjQ+V/Rft4B+ExbuyZOkffFDWDSxxd+PnrvJyjMIuYENHc2HHwNgdY7g==
X-Received: by 2002:a17:902:d48c:b0:1c8:791c:d797 with SMTP id c12-20020a170902d48c00b001c8791cd797mr1100297plg.56.1697506236100;
        Mon, 16 Oct 2023 18:30:36 -0700 (PDT)
Received: from [192.168.1.9] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id z18-20020a170903019200b001bb3beb2bc6sm243653plg.65.2023.10.16.18.30.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 18:30:34 -0700 (PDT)
Message-ID: <127ebf66-30b4-4a33-b06f-8681b392d82a@mvista.com>
Date: Mon, 16 Oct 2023 18:30:33 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [master][PATCH] meta-cgl-common: fix ParseError
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20231012052504.592900-1-changqing.li@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20231012052504.592900-1-changqing.li@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 01:30:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61365

Merged, thanks! Make sure to put the repo in the subject when submitting.

On 10/11/2023 10:25 PM, Changqing Li wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> Layeindex update.py report warning:
> WARNING: Error parsing distro configuration file /meta-cgl/meta-cgl-common/conf/distro/poky-cgl.conf: ParseError at /meta-cgl/meta-cgl-common/conf/distro/poky-cgl.conf:1: Could not include required file conf/distro/poky-lsb.conf
>
> Refer meta-yocto commit: 00fdefff55717331a220fe624f29c387970d31d7
> [poky-altcfg: Replace poky-lsb with poky-altcfg]
>
> replace poky-lsb with poky-altcfg here, and also add layer yocto
> as LAYERDEPENDS for fixing above warning
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   meta-cgl-common/conf/distro/poky-cgl.conf | 2 +-
>   meta-cgl-common/conf/layer.conf           | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf
> index 10feab9..2932dcf 100644
> --- a/meta-cgl-common/conf/distro/poky-cgl.conf
> +++ b/meta-cgl-common/conf/distro/poky-cgl.conf
> @@ -1,4 +1,4 @@
> -require conf/distro/poky-lsb.conf
> +require conf/distro/poky-altcfg.conf
>   
>   DISTRO = "poky-cgl"
>   DISTROOVERRIDES .= ":poky-cgl"
> diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
> index fe81bcc..2a280e4 100644
> --- a/meta-cgl-common/conf/layer.conf
> +++ b/meta-cgl-common/conf/layer.conf
> @@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "cgl-common"
>   BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
>   BBFILE_PRIORITY_cgl-common = "7"
>   
> -LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
> +LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux yocto"
>   
>   LAYERSERIES_COMPAT_cgl-common = "honister kirkstone langdale mickledore"
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61324): https://lists.yoctoproject.org/g/yocto/message/61324
> Mute This Topic: https://lists.yoctoproject.org/mt/101912916/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Jeremy Puhlman
jpuhlman@mvista.com


