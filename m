Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 388BBC7EE22
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 11:44:39 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.14217.1683719077499116507
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 04:44:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=fLTp+kK/;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-55a26b46003so106978627b3.1
        for <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 04:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683719076; x=1686311076;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XZpVeSRzghE1tFEAEtExaHzdsyAFEhIgMZUnGNv5cdQ=;
        b=fLTp+kK/CUfxL3ZkkApU0DH1t0h9Kd4RwrsAzPxBRj/2DQi3+kzcRvPQ/PI1whTNWP
         AJYkEZcqMDGh08RPHIOVGC4ckEhXCyB3QbNO0OSA8gGV0FZIOqjdU2NlewTBNMJyQnAv
         hKdsy3eXWlUYgxrg5zJpLu9VbSrdpXwGjjurj/N7EOYUb2D4d0SA9B2wtMrPL40A2IGx
         2mFHAzjMe3svN+LOLQ1ahX6KWHnynB/ZlrNGEUPCYJg8X4NSm1faQQkJ9OLpVAABI4/K
         IbbQ1smlg4Z2SIcgGllGT0YZapTTunBQeG95jKaYGHJqPgl8sLgYAC4iI9IKAw2e0Hue
         pWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683719076; x=1686311076;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XZpVeSRzghE1tFEAEtExaHzdsyAFEhIgMZUnGNv5cdQ=;
        b=ZQg7lRinaIREG4MtwUPRnhdilIWE6oRD2CkZjDQwoVNAeCsunox97s3gzdcCuD7/Ij
         zRwy+QSixrP79lcyvgkxwpWX9o8gYzZPR8JDnXcFR76j5UuTyelaS0LA0NTAGg/AGcSg
         6+JHM8dmgrjFbEi0N9DUMU6XN3afN7yDNbyQv8+SzblfSf7agdRm0r+WMKSiO1x23UQa
         K7U2J+TkEH7NaZU0gvcsVWrPedQUrtqQXQabpo7FPQa70LCdpvHD6JI3WJ/EHfwdbPzh
         QbWLPsNozf5LhE425k7Cm3OI6EjUvZKk66/pjx96TfDFEGfoXuZEajODs7c4ISSC5RV2
         yhJw==
X-Gm-Message-State: AC+VfDzsczHw2dyckcFnDA0N6n0c3y9pIAuVr//Gs96nIhUr45OWuZ3A
	ziNTjeCACkBYDyfSDR0ie2g=
X-Google-Smtp-Source: ACHHUZ689cBOiopLHW5If8KvSRBGJZd9d7tgruSrxWL0dfmC+FnopUYR5ZrM1nVBt4uI5gnN+og04A==
X-Received: by 2002:a0d:e257:0:b0:55a:ad11:1ba2 with SMTP id l84-20020a0de257000000b0055aad111ba2mr19860631ywe.9.1683719076677;
        Wed, 10 May 2023 04:44:36 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:8122:c224:cc78:85c7? ([2600:1700:9190:ba10:8122:c224:cc78:85c7])
        by smtp.gmail.com with ESMTPSA id w185-20020a817bc2000000b00545a08184c9sm4005624ywc.89.2023.05.10.04.44.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 04:44:36 -0700 (PDT)
Message-ID: <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com>
Date: Wed, 10 May 2023 07:44:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update
 ima-evm-utils to v1.5 and add a patch"
Content-Language: en-US
To: Jose Quaresma <quaresma.jose@gmail.com>, yocto@lists.yoctoproject.org
Cc: stefanb@linux.ibm.com, Jose Quaresma <jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230509185631.3182570-1-jose.quaresma@foundries.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 11:44:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59959



On 5/9/23 2:56 PM, Jose Quaresma wrote:
> This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.
>
> The full patchset are overriding the do_configure task and also added a kernel patch
> on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
> in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
> So the patch fails in some recipes and also do_configure task doesn't make sense.
> This breaks many recipes like linux-firmware and maybe others.

I fail to see how  this package update is part of the issue above. I am 
still trying to sort out the store here to figure out how we move forward.

- armin
>
> Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
> ---
>   ...ation-using-ioctl-when-evm_portable-.patch | 35 -------------------
>   ...-evm-utils_1.5.bb => ima-evm-utils_1.4.bb} |  9 ++---
>   2 files changed, 2 insertions(+), 42 deletions(-)
>   delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>   rename meta-integrity/recipes-security/ima-evm-utils/{ima-evm-utils_1.5.bb => ima-evm-utils_1.4.bb} (71%)
>
> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
> deleted file mode 100644
> index 3624576..0000000
> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -From 00ace817c5134d9844db387cadb9517ebad43808 Mon Sep 17 00:00:00 2001
> -From: Stefan Berger <stefanb@linux.ibm.com>
> -Date: Tue, 18 Apr 2023 11:43:55 -0400
> -Subject: [PATCH] Do not get generation using ioctl when evm_portable is true
> -
> -If a signatures is detected as being portable do not attempt to read the
> -generation with the ioctl since in some cases this may not be supported
> -by the filesystem and is also not needed for computing a portable
> -signature.
> -
> -This avoids the current work-around of passing --generation 0 when the
> -ioctl is not supported by the filesystem.
> -
> -Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
> ----
> - src/evmctl.c | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/src/evmctl.c b/src/evmctl.c
> -index 6d2bb67..c35a28c 100644
> ---- a/src/evmctl.c
> -+++ b/src/evmctl.c
> -@@ -376,7 +376,7 @@ static int calc_evm_hash(const char *file, unsigned char *hash)
> - 	if (mode_str)
> - 		st.st_mode = strtoul(mode_str, NULL, 10);
> -
> --	if (!evm_immutable) {
> -+	if (!evm_immutable && !evm_portable) {
> - 		if (S_ISREG(st.st_mode) && !generation_str) {
> - 			int fd = open(file, 0);
> -
> ----
> -2.39.2
> -
> -
> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
> similarity index 71%
> rename from meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb
> rename to meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
> index 8ac080c..873aeeb 100644
> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb
> +++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
> @@ -6,13 +6,8 @@ DEPENDS += "openssl attr keyutils"
>   
>   DEPENDS:class-native += "openssl-native keyutils-native"
>   
> -FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"
> -
> -SRC_URI = " \
> -    https://github.com/mimizohar/ima-evm-utils/releases/download/v${PV}/${BP}.tar.gz \
> -    file://0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch \
> -"
> -SRC_URI[sha256sum] = "45f1caa3ad59ec59a1d6a74ea5df38c413488cd952ab62d98cf893c15e6f246d"
> +SRC_URI = "https://sourceforge.net/projects/linux-ima/files/${BPN}/${BP}.tar.gz"
> +SRC_URI[sha256sum] = "fcf85b31d6292051b3679e5f17ffa7f89b6898957aad0f59aa4e9878884b27d1"
>   
>   inherit pkgconfig autotools features_check
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59946): https://lists.yoctoproject.org/g/yocto/message/59946
> Mute This Topic: https://lists.yoctoproject.org/mt/98790790/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


