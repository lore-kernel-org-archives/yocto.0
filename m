Return-Path: <ralph.siemsen@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B35C433F5
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 19:50:04 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web09.2940.1648669802988125815
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 12:50:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=fQ6Lsv3c;
 spf=pass (domain: linaro.org, ip: 209.85.221.173,
 mailfrom: ralph.siemsen@linaro.org)
Received: by mail-vk1-f173.google.com with SMTP id w189so12155953vke.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 12:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6wbuA/88wbmad1gCK1oDzHGU/2DW6uMvYODIb9QNkT4=;
        b=fQ6Lsv3cwctW5HrfuhIDel4Nwn3jIHMD066eqUw6Q/nHQ1CuXQtX3t2mcEyJDpM9gu
         EkVMATBtGYZOfZuSmlhUaYkLdwmAEZzI+buS4EW+C+JzYahxKnUt5u/egpv6wohtGT+M
         t/ysObCLUpv5MMXtHfTVxMa6cn/CixpqoeLGRsSiGnu6Y/t1T2LRoivhGy4FuJTbdzYK
         r88uj96FumoFphoDz702MrQc2/WijZTrwrhZvUT2jQxNjhOwp0s3eVm7GEcv/4PJVxDS
         CBGooLZ6CPr8SzCp8zSBSoqlqHN056TWQdnMiaRqMirqaHGNKQSXJOJwdbKCqRGoHjZ9
         sCbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6wbuA/88wbmad1gCK1oDzHGU/2DW6uMvYODIb9QNkT4=;
        b=PI6DocNiBILR6sjY/HV1jn8GxJ81pNZ4KuTzmnssi7forz1V2fFmza+HOGpYy579S5
         47fo+r00K0U38dXNDFrGl2hQQlzNyFRLnc6nnfW3IqjUniFKMrug7AaFA/SdDgzx/V3J
         2rUJusmVG0ercBug9fwHUAZI3UIhTNBf6ts10iSPJOLZgFPTAfvAhFu3enTF+xwuTA55
         zg6/vjNpJ0Hwlh6+gyhrbh38563owf8MLZ0fCyEfeo/ynrfoDrNsR/2hUl7UIQD1RCo8
         lFyTmQxmogvRwKsmOdkRvW2eNbAMdMR3nmRtpvP+jRenrS2FtR6uf3fiV4t7wO5ceUnk
         F78A==
X-Gm-Message-State: AOAM53353GaaNf0i17z9tF6pRHfduIeIWfLkAz3wL7J1HXLhYsuTl4h2
	LelKaiF5Yo1c/dg9iwYETOiXoUNJvFKF10+Bo/uvUA==
X-Google-Smtp-Source: 
 ABdhPJztHOovsAfyhtyj/8Q31DpAgSE20TlrsUYMvR0GOvXUPPuTetQP043Wg8dMcTMmn1P7sxWKM0zc8lCPY4zyqME=
X-Received: by 2002:a1f:a112:0:b0:33e:2073:642 with SMTP id
 k18-20020a1fa112000000b0033e20730642mr529928vke.21.1648669801790; Wed, 30 Mar
 2022 12:50:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220314194415.3515050-1-ralph.siemsen@linaro.org>
 <16DC99A9652EAF9B.21789@lists.yoctoproject.org>
In-Reply-To: <16DC99A9652EAF9B.21789@lists.yoctoproject.org>
From: Ralph Siemsen <ralph.siemsen@linaro.org>
Date: Wed, 30 Mar 2022 15:49:51 -0400
Message-ID: 
 <CANp-EDYpkhpGgN8Pp0GsZmeV_OWR_ewQqGCTPo5ctAYBNwnS7A@mail.gmail.com>
Subject: Re: [yocto] [meta-security][dunfell][PATCH v2] tpm2-tools: backport
 fix for CVE-2021-3565
To: akuster808@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 19:50:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56607

Hi Armin,

I noticed that this patch, as well as the version bump to 4.1.3, have
landed in the dunfell-next branch of meta-security.

Curiously though, the dunfell branch contains quite a few more recent
commits, which are not in dunfell-next.

Just wondering if this is normal? Will the tpm2-tools patches appear
in dunfell branch eventually?

Thanks,
Ralph




On Tue, Mar 15, 2022 at 12:08 PM Ralph Siemsen via
lists.yoctoproject.org
<ralph.siemsen=linaro.org@lists.yoctoproject.org> wrote:
>
> tpm2_import used a fixed AES key for the inner wrapper, which means that
> a MITM attack would be able to unwrap the imported key. Even the
> use of an encrypted session will not prevent this. The TPM only
> encrypts the first parameter which is the fixed symmetric key.
>
> To fix this, ensure the key size is 16 bytes or bigger and use
> OpenSSL to generate a secure random AES key.
>
> Upstream commit (with offset adjusted)
> https://github.com/tpm2-software/tpm2-tools/commit/c069e4f179d5e6653a84fb236816c375dca82515
>
> Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
> ---
> Changes in v2:
> - added OE metadata to patch file, hopefully correctly
> - separate patch to update v4.1.1 -> 4.1.3 will follow
>
>  ...port-fix-fixed-AES-key-CVE-2021-3565.patch | 48 +++++++++++++++++++
>  .../tpm2-tools/tpm2-tools_4.1.1.bb            |  3 ++
>  2 files changed, 51 insertions(+)
>  create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
> new file mode 100644
> index 0000000..3832063
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
> @@ -0,0 +1,48 @@
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
> +
> +Upstream-Status: Backport
> +https://github.com/tpm2-software/tpm2-tools/commit/c069e4f179d5e6653a84fb236816c375dca82515
> +CVE: CVE-2021-3565
> +Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
> +---
> + tools/tpm2_import.c | 12 +++++++++++-
> + 1 file changed, 11 insertions(+), 1 deletion(-)
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
>  DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
>
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
>  SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
> +SRC_URI += "file://0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch"
>
>  SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
>  SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56445): https://lists.yoctoproject.org/g/yocto/message/56445
> Mute This Topic: https://lists.yoctoproject.org/mt/89801319/3616981
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ralph.siemsen@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>

