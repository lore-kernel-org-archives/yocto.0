Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E952CC433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 14:57:14 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web09.11905.1647356233824185855
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 07:57:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=k2ArTNBw;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id p17so16438973plo.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 07:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=m8GYIaOBaUYBSkco9ZSuRTVMw0XxSZqutWGWBlYWVIE=;
        b=k2ArTNBw1NQXFGn6WT0Duk+cFgOKLasil1LX3Fdt7VzZB4Tr0Q1oK5HT4zC42ADIVD
         jAqavEdBrWx3XDZhTdoQcyBLWRtX2cSwaHw80n5qtFldqvblD/eipeSfYIlytq9oxEz7
         plfr9ye6bUNDSwCD1xlKe7BBX++9lMroHjFZGjru+2Ni5ceAC7bzqhA5M1Pw++fgiMZP
         xPT2VsSJBOInAiQzv5GGDGy1suo4d+6QV6C7/XwSKx5JmwYvZNecrtetM/rAbj9ZoaOG
         1rAaILIPBdAUJLnaSWjhxaiKMrGZE4KN+Zcm0dJXYk0/CUDH3YbgL8XX7Q8sZQONG4+9
         GS0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=m8GYIaOBaUYBSkco9ZSuRTVMw0XxSZqutWGWBlYWVIE=;
        b=hhZE/fN0jMVaRUFrv7CKB/9w27W8LXm/SqZUSXYXuJtVzLfkUfK/ZfY8tY8bJm/QZk
         B4BieECNiSER/GV4e3IcsX3BRVorWS8xFJTM3YPXbbcSfozWAKfT2E4Q7KTAuuO7OJZ8
         /BZIZCUGhreVog6SKwcmBCbsUYvE8RO7cAuqIcA4GNNUwu6A3KFU+eSD9u2H4yBvhpLv
         7MiBdEbKcxu4dB4vYacBX3opy2M7AJmfbutK56c4RDsGvow/6rOYA3dBvEsAqEthb0Ov
         m8ASe1nLOEJ/P7fZ9sbITa5GNx8JJXrTm0xf4oljH/jSKkfUwjyzjUXxmqYXC1B0K/6L
         RYfw==
X-Gm-Message-State: AOAM5331ywK/aFQRqetBHaExvYPSXjGi3i6oiaHsDFBHxnA0lQOjzvHk
	Cfx0GNWaOgGaofBfflh3qsI=
X-Google-Smtp-Source: 
 ABdhPJx6ICg+ftLHTSC09sxEmixnMDWr3/LRb+2q+PflsyEhjNs5DgBEqBc34homoUVU6MQ5KCoNCA==
X-Received: by 2002:a17:902:a9c7:b0:153:29c6:e101 with SMTP id
 b7-20020a170902a9c700b0015329c6e101mr24641802plr.92.1647356233205;
        Tue, 15 Mar 2022 07:57:13 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:fb85:bdce:f9b3:3700?
 ([2601:202:4180:a5c0:fb85:bdce:f9b3:3700])
        by smtp.gmail.com with ESMTPSA id
 78-20020a621451000000b004f6e8a033b5sm24844599pfu.142.2022.03.15.07.57.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 07:57:12 -0700 (PDT)
Message-ID: <60a0b01a-6265-81a3-d10e-7483d0a6c342@gmail.com>
Date: Tue, 15 Mar 2022 07:57:11 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] [meta-security][dunfell][PATCH] tpm2-tools: backport fix
 for CVE-2021-3565
Content-Language: en-US
To: Ralph Siemsen <ralph.siemsen@linaro.org>, yocto@lists.yoctoproject.org
References: <20220314194415.3515050-1-ralph.siemsen@linaro.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220314194415.3515050-1-ralph.siemsen@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 14:57:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56443



On 3/14/22 12:44, Ralph Siemsen wrote:
> tpm2_import: fix fixed AES key CVE-2021-3565
>
> Upstream commit (with offset adjusted)
> https://github.com/tpm2-software/tpm2-tools/commit/c069e4f179d5e6653a84fb236816c375dca82515
>
> Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
> ---
> Discussion items:
>
> 1) Perhaps dunfell should update 4.1.1 -> 4.1.3  ?
>     There appear to be only two small fixes
>     https://github.com/tpm2-software/tpm2-tools/blob/4.1.X/CHANGELOG.md
>     https://github.com/tpm2-software/tpm2-tools/commits/4.1.X
>     We still need this backport regardless.
I would take an update to 4.1.3.

>
> 2) hardknott and honister are on 5.0
>     According to CVE configuration data, this version is not affected.
>     But looking at the branch history suggests otherwise.
>     The patch applies cleanly on top of 5.0.
>     Should we backport? Or never mind as these branches are almost EOL?
>
> 3) master/kirkstone is on 5.2 which includes the fix already,
>     no action needed for this one.

Thanks for the analysis, much appreciated.

>
>   ...port-fix-fixed-AES-key-CVE-2021-3565.patch | 43 +++++++++++++++++++
>   .../tpm2-tools/tpm2-tools_4.1.1.bb            |  3 ++
>   2 files changed, 46 insertions(+)
>   create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
> new file mode 100644
> index 0000000..4fceb2e
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
> @@ -0,0 +1,43 @@
> +From 784be35c52a7083b9535bad2fcca416ff9cfd26b Mon Sep 17 00:00:00 2001
> +From: William Roberts <william.c.roberts@intel.com>
> +Date: Fri, 21 May 2021 12:22:31 -0500
> +Subject: [PATCH] tpm2_import: fix fixed AES key CVE-2021-3565
> +
> +tpm2_import used a fixed AES key for the inner wrapper, which means that
> +a MITM attack would be able to unwrap the imported key. Even the
> +use of an encrypted session will not prevent this. The TPM only
> +encrypts the first parameter which is the fixed symmetric key.
> +
> +To fix this, ensure the key size is 16 bytes or bigger and use
> +OpenSSL to generate a secure random AES key.
> +
> +Fixes: #2738
> +
> +Signed-off-by: William Roberts <william.c.roberts@intel.com>




> +---
> + tools/tpm2_import.c | 12 +++++++++++-
> + 1 file changed, 11 insertions(+), 1 deletion(-)Upstream commit (with offset adjusted)
> https://github.com/tpm2-software/tpm2-tools/commit/c069e4f179d5e6653a84fb236816c375dca82515
>
> Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
Missing the Standard OE patch format. The patch itself needs this 
additional meta data.
https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

Needs these too:

Upstream-Status:
CVE:

-armin
> +
> +diff --git a/tools/tpm2_import.c b/tools/tpm2_import.c
> +index 6404cac..acd8ac8 100644
> +--- a/tools/tpm2_import.c
> ++++ b/tools/tpm2_import.c
> +@@ -146,7 +146,17 @@ static tool_rc key_import(ESYS_CONTEXT *ectx, TPM2B_PUBLIC *parent_pub,
> +     TPM2B_DATA enc_sensitive_key = {
> +         .size = parent_pub->publicArea.parameters.rsaDetail.symmetric.keyBits.sym / 8
> +     };
> +-    memset(enc_sensitive_key.buffer, 0xFF, enc_sensitive_key.size);
> ++
> ++    if(enc_sensitive_key.size < 16) {
> ++        LOG_ERR("Calculated wrapping keysize is less than 16 bytes, got: %u", enc_sensitive_key.size);
> ++        return tool_rc_general_error;
> ++    }
> ++
> ++    int ossl_rc = RAND_bytes(enc_sensitive_key.buffer, enc_sensitive_key.size);
> ++    if (ossl_rc != 1) {
> ++        LOG_ERR("RAND_bytes failed: %s", ERR_error_string(ERR_get_error(), NULL));
> ++        return tool_rc_general_error;
> ++    }
> +
> +     /*
> +      * Calculate the object name.
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
> index e90dcfe..f013fa1 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
> @@ -6,7 +6,10 @@ SECTION = "tpm"
>   
>   DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
>   
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
>   SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
> +SRC_URI += "file://0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch"
>   
>   SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
>   SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56428): https://lists.yoctoproject.org/g/yocto/message/56428
> Mute This Topic: https://lists.yoctoproject.org/mt/89782420/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


