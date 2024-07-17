Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1432C3DA64
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 20:38:05 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.395.1721248675635132658
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jul 2024 13:37:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=Wdrm+ALy;
 spf=pass (domain: mvista.com, ip: 209.85.210.179, mailfrom: jpuhlman@mvista.com)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-70b0d0fefe3so42812b3a.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 13:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1721248674; x=1721853474; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f1VEfjbvvCvh6lqycj1+Hs1/xMqkRx/gopz0lulIR44=;
        b=Wdrm+ALy23v2VWFfjQioT0TtifBskLU9azce/yB8MRWbZ4UAqSmWcss3Iqr2ThTH4s
         p0XTkqc7/yuGLetLMNnTQCdy0HPmSLIMbbbNI2Ll+6v/TRsOClYUN1QEW2FC2dnb35/6
         I4OFwiJ3iMhcaORspO5TxEqBTV6Do7Xb2Ps8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721248674; x=1721853474;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f1VEfjbvvCvh6lqycj1+Hs1/xMqkRx/gopz0lulIR44=;
        b=cvQmrWNtj/j7z6xPSqkAAlqe1ec8AacpXw/lBnP6nfmUuagV6T5C+NPhBEG7khCs+B
         0DUC8uR+kZMi6Sg0zdjwnOuitQ6aD+kb1BCm3DmAHzUWtAxHzEj3qWF7XAN7tGmVW5aT
         SJOtQGUOV0TsULkudajrMFboNZA4opQYl0bXfLHDZDk4fHMITXaJiqdcfj7STUl8h//B
         5n63JhNX2yq+w9wLGUzDQGSEHhOoPzP6wUJ+lQ09HIKwqy0xgE+uANIYLwmNzdjW8LyZ
         abAa2Vz46PcGcmkKDO8a5YAe/5cvBTzK0UmV5pTnS6bX3osBVoSr0zHfZR2SSurHYOE1
         frmw==
X-Gm-Message-State: AOJu0YyVsr7y7vxEHi/oAgrTvgK7fyYde8WjjeZt2Nz93JVbL/Po3in+
	8PCii3vomrhcvuoIYA/yAhkA4dyauOgDFazGO56HpuHTDAiU0T9Vp8kzxLL2xMHyxOqG6T7yI/6
	6
X-Google-Smtp-Source: AGHT+IGe053zqzRamVH8mYCQr10ecTm5O0jVHsI+DAnmE3njWfug+7DDRhe5V6Uh7sJD6RGGMo3Itw==
X-Received: by 2002:a05:6a20:3941:b0:1bd:207a:da31 with SMTP id adf61e73a8af0-1c3fdc9ba53mr3423959637.23.1721248673980;
        Wed, 17 Jul 2024 13:37:53 -0700 (PDT)
Received: from [192.168.1.9] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fc0bc37a2csm79246455ad.185.2024.07.17.13.37.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jul 2024 13:37:53 -0700 (PDT)
Message-ID: <6dc324ea-298c-44dc-906c-1bd11c0c9c02@mvista.com>
Date: Wed, 17 Jul 2024 13:37:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-cgl] [PATCH 2/2] ocfs2-tools: fix Upstream-Status
To: yocto@lists.yoctoproject.org, wangmy@fujitsu.com
References: <1721101611-7311-1-git-send-email-wangmy@fujitsu.com>
 <1721101611-7311-2-git-send-email-wangmy@fujitsu.com>
Content-Language: en-US
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <1721101611-7311-2-git-send-email-wangmy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 20:38:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63528

Merged.

On 7/15/2024 8:46 PM, wangmy via lists.yoctoproject.org wrote:
> From: Wang Mingyu <wangmy@fujitsu.com>
>
> Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
> ---
>   .../ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch            | 2 +-
>   .../0003-vendor-common-o2cb.ocf-add-new-conf-file.patch         | 2 +-
>   .../recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch         | 2 ++
>   .../ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch          | 2 ++
>   4 files changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
> index 7ce8405..b32ed6e 100644
> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
> @@ -16,7 +16,7 @@ In file included from o2cb_abi.c:52:
>     loff_t d_off; /* Offset of structure in the file */
>     ^~~~~~
>   
> -Upstream-Status: Backport[https://github.com/cheese/ocfs2-tools/commit/fa150e35931123fc630125ebef1901ffb30d421f]
> +Upstream-Status: Backport [https://github.com/cheese/ocfs2-tools/commit/fa150e35931123fc630125ebef1901ffb30d421f]
>   
>   Signed-off-by: Robin Lee <cheeselee@fedoraproject.org>
>   Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
> index 2df4ed8..9504d0a 100644
> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
> @@ -3,7 +3,7 @@ From: Li xin <lixin.fnst@cn.fujitsu.com>
>   Date: Fri, 12 Dec 2014 16:15:28 +0900
>   Subject: [PATCH 3/3] vendor/common/o2cb.ocf: add new conf file
>   
> -Upstream-Status: pending
> +Upstream-Status: Pending
>   
>   Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
>   ---
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch
> index 7347786..16abb21 100644
> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   --- a/vendor/common/o2cb.init.sh
>   +++ b/vendor/common/o2cb.init.sh
>   @@ -18,7 +18,7 @@
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
> index f8ab313..2a79b4a 100644
> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   diff --git a/tunefs.ocfs2/op_query.c b/tunefs.ocfs2/op_query.c
>   index 295c185b..40394d15 100644
>   --- a/tunefs.ocfs2/op_query.c
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63506): https://lists.yoctoproject.org/g/yocto/message/63506
> Mute This Topic: https://lists.yoctoproject.org/mt/107246250/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Jeremy Puhlman
jpuhlman@mvista.com


