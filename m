Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22A45EB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 13:42:47 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web10.10915.1687354962846852267
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 06:42:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=OcEHl+7i;
 spf=pass (domain: gmail.com, ip: 209.85.219.178, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-bc379e4c1cbso6077623276.2
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 06:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687354962; x=1689946962;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bUoctR3/cJRctbpoNsHHvBUtW++ItjpTCfTkQ12ibzQ=;
        b=OcEHl+7iOiHUUk7ADGjPbb8BoEWJ7iDnYSVBTiGn0y5wkNrHRLED7u59HgxVpj09Bh
         w9mhksiA+tVRsLq+VZx1kkpATStqAESXaZl/vo+EmlX7Akb3KbyhgUSlCsNGx3w5C/iM
         R6PoHlzWXOw+FCmlLWslgcgoQSJ+HVvv30f9T0olID2VDPoh520DFA8xfLsBPwBnAhlf
         agfnUkbhL+LpAK27wYbQ7TIHYUvc/3AiDWPVQBHyAEdu6mgIWxGvNQShRmdJH0rWEPMp
         1yezGs2uadakamrYyWIPe1vsQEHiQm75ftFwcheiENNf6oFGtavJd5eayhZ2YbGdkvM8
         3LTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687354962; x=1689946962;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bUoctR3/cJRctbpoNsHHvBUtW++ItjpTCfTkQ12ibzQ=;
        b=dR/ycqqthgPWJtGi3ebZ0IJxGPakBEgqPlgsURbHg5da9coVfM1hIIWvevAf9gVHMC
         m2QYd+gsWJygHKFjKoeLhq2GADSMikSfpwNi6rFs8IaX5orRa19ZcpOOtOpWgmHdkHXW
         ds824EQoF2zBkTMQEWG6k6KsvOArrBTU//1rxJjGaW4ToXAesoRml38VTRO2kvqJwieJ
         ih+0dhBKz/0vSpEumpe+RRvMmpn1MaOR0OCeMTKlc9mq8d7IadoWXVccYtBxT5xbmcNb
         R3Z1UgUm/OCHFkKqgpKy8g4v/ZuVS26/MR6EgPk6VZJVmDtkpEU0IXKnEzBG3KJ2kjOo
         FqHw==
X-Gm-Message-State: AC+VfDw6LxzKTXLf8AcFfKQLB+DAws+KOfiyyCoxp1SBmh3xmwYWLkYm
	ubuIyrtFGhwE53G+pPBVepjbJCyoWnE=
X-Google-Smtp-Source: ACHHUZ4JQaXbBtQFsN1iCMBPtie5eDfbPr21qaqND8k7q2xNzV9FOSJZoIGgZ8JwWxM9qvr75jUtig==
X-Received: by 2002:a5b:d02:0:b0:be6:74b1:b73f with SMTP id y2-20020a5b0d02000000b00be674b1b73fmr13222720ybp.18.1687354961743;
        Wed, 21 Jun 2023 06:42:41 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:dc27:e982:11fd:2a21? ([2600:1700:9190:ba10:dc27:e982:11fd:2a21])
        by smtp.gmail.com with ESMTPSA id c11-20020a25a2cb000000b00bad59725e11sm909687ybn.57.2023.06.21.06.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 06:42:41 -0700 (PDT)
Message-ID: <786e2b82-dea2-378d-e2d0-f4d1b747097d@gmail.com>
Date: Wed, 21 Jun 2023 09:42:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH] *.patch: add Upstream-Status to
 all patches
Content-Language: en-US
To: Martin Jansa <Martin.Jansa@gmail.com>, yocto@lists.yoctoproject.org
References: <20230621104215.2137991-1-Martin.Jansa@gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230621104215.2137991-1-Martin.Jansa@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 13:42:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60375

Hello Martin,

On 6/21/23 6:42 AM, Martin Jansa wrote:
> There is new patch-status QA check in oe-core:
> https://git.openembedded.org/openembedded-core/commit/?id=76a685bfcf927593eac67157762a53259089ea8a
>
> This is temporary work around just to hide _many_ warnings from
> optional patch-status (if you add it to WARN_QA).
>
> This just added
> Upstream-Status: Pending
> everywhere without actually investigating what's the proper status.
>
> This is just to hide current QA warnings and to catch new .patch files being
> added without Upstream-Status, but the number of Pending patches is now terrible:
>
> 0 (0%)  	meta-parsec
> N/A (0%)        meta-hardening
> 1 (100%)        meta-integrity
> 15 (68%)        meta-tpm
> 27 (61%)        meta-security
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>


> ---
>   ...Do-not-get-generation-using-ioctl-when-evm_portable-.patch | 4 ++++
>   .../0001-create-tpm-key-support-well-known-key-option.patch   | 2 ++
>   .../files/0002-libtpm-support-env-TPM_SRK_PW.patch            | 2 ++
>   ...tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch | 2 ++
>   ...tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch | 2 ++
>   .../recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch    | 2 ++
Those appear to be fine.
>   .../openscap/files/0002-openembedded-add-Poky-distro.patch    | 2 ++
The openscap patches are being dropped as they got accepted upstream. I 
sent a patch last night to reflect that.

I can drop this change.
>   recipes-perl/perl/files/libwhisker2.patch                     | 2 ++
>   recipes-scanners/clamav/files/test.patch                      | 2 ++
the "test.patch" isn't used anywhere so I can remove it later.
>   .../ecryptfs-utils/files/define_musl_sword_type.patch         | 2 ++
This one is missing other standard patch information. Looks like a bit 
more cleanup is in order on my part.
>   recipes-security/isic/files/configure_fix.patch               | 2 ++
This patch contains "Inappropriate" to the Upstream-Status should 
Inappropriate [reason]  not pending.
>   recipes-security/isic/files/isic-0.07-make.patch              | 2 ++
This patch contains "Backport" so the Upstream-Status should be Backport 
not pending.
>   recipes-security/isic/files/isic-0.07-netinet.patch           | 2 ++
This patch contains "Backport" so the Upstream-Status should be Backport 
not pending.

I can take those last six as-is and send a follow up tweaking as needed 
or you can send a V2. Your call.

thanks,
Armin
>   13 files changed, 28 insertions(+)
>
> diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
> index 3624576..f0d8975 100644
> --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
> +++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
> @@ -13,6 +13,8 @@ ioctl is not supported by the filesystem.
>   
>   Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>   ---
> +Upstream-Status: Pending
> +
>    src/evmctl.c | 2 +-
>    1 file changed, 1 insertion(+), 1 deletion(-)
>   
> @@ -30,6 +32,8 @@ index 6d2bb67..c35a28c 100644
>    			int fd = open(file, 0);
>    
>   ---
> +Upstream-Status: Pending
> +
>   2.39.2
>   
>   
> diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
> index bed8b92..e6068af 100644
> --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
> +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
>   Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
>   Date:   Wed Jun 19 18:57:13 2013 +0800
> diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
> index 2caaaf0..74def4f 100644
> --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
> +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
>   Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
>   Date:   Wed Jun 19 18:57:13 2013 +0800
> diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
> index cc8772d..732961d 100644
> --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
> +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
> @@ -17,6 +17,8 @@ export TPM_SRK_ENC_PW=xxxxxxxx
>   
>   Signed-off-by: Meng Li <Meng.Li@windriver.com>
>   ---
> +Upstream-Status: Pending
> +
>    e_tpm.c     | 157 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>    e_tpm.h     |   4 ++
>    e_tpm_err.c |   4 ++
> diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
> index 535472a..3cbfc3c 100644
> --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
> +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
> @@ -12,6 +12,8 @@ wrong case.
>   
>   Signed-off-by: Meng Li <Meng.Li@windriver.com>
>   ---
> +Upstream-Status: Pending
> +
>    create_tpm_key.c |    3 ++-
>    1 file changed, 2 insertions(+), 1 deletion(-)
>   
> diff --git a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
> index 40150af..d427d67 100644
> --- a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
> +++ b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   Index: git/include/tpm_tspi.h
>   ===================================================================
>   --- git.orig/include/tpm_tspi.h
> diff --git a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
> index 182d9ec..767b473 100644
> --- a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
> +++ b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
> @@ -5,6 +5,8 @@ Subject: [PATCH 2/2] openembedded: add Poky distro
>   
>   Signed-off-by: Armin Kuster <akuster@mvista.com>
>   ---
> +Upstream-Status: Pending
> +
>    cpe/openscap-cpe-dict.xml             |  4 ++++
>    cpe/openscap-cpe-oval.xml             | 14 ++++++++++++++
>    src/OVAL/probes/unix/runlevel_probe.c |  8 +++++++-
> diff --git a/recipes-perl/perl/files/libwhisker2.patch b/recipes-perl/perl/files/libwhisker2.patch
> index c066366..4ea1ee5 100644
> --- a/recipes-perl/perl/files/libwhisker2.patch
> +++ b/recipes-perl/perl/files/libwhisker2.patch
> @@ -7,6 +7,8 @@ Subject: [PATCH] Mandir and perl install dir were overwritten with faulty
>   
>   Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
>   ---
> +Upstream-Status: Pending
> +
>    Makefile.pl |   12 +++++++-----
>    1 file changed, 7 insertions(+), 5 deletions(-)
>   
> diff --git a/recipes-scanners/clamav/files/test.patch b/recipes-scanners/clamav/files/test.patch
> index a22b45d..8d94863 100644
> --- a/recipes-scanners/clamav/files/test.patch
> +++ b/recipes-scanners/clamav/files/test.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   Index: clamav-0.103.0/Makefile.am
>   ===================================================================
>   --- clamav-0.103.0.orig/Makefile.am
> diff --git a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
> index 3b29be0..01b7dd8 100644
> --- a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
> +++ b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   Index: ecryptfs-utils-111/src/utils/mount.ecryptfs_private.c
>   ===================================================================
>   --- ecryptfs-utils-111.orig/src/utils/mount.ecryptfs_private.c
> diff --git a/recipes-security/isic/files/configure_fix.patch b/recipes-security/isic/files/configure_fix.patch
> index fc2a774..801fe0c 100644
> --- a/recipes-security/isic/files/configure_fix.patch
> +++ b/recipes-security/isic/files/configure_fix.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   isic: add with-libnet remove libnet test
>   
>   Inappropriate - builds fine on non-oe systems. We need to exlude
> diff --git a/recipes-security/isic/files/isic-0.07-make.patch b/recipes-security/isic/files/isic-0.07-make.patch
> index 9cffa8a..838c873 100644
> --- a/recipes-security/isic/files/isic-0.07-make.patch
> +++ b/recipes-security/isic/files/isic-0.07-make.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   isic: Fixup makefile to support destination
>   
>   Backport:
> diff --git a/recipes-security/isic/files/isic-0.07-netinet.patch b/recipes-security/isic/files/isic-0.07-netinet.patch
> index c4ea74e..4b03880 100644
> --- a/recipes-security/isic/files/isic-0.07-netinet.patch
> +++ b/recipes-security/isic/files/isic-0.07-netinet.patch
> @@ -1,3 +1,5 @@
> +Upstream-Status: Pending
> +
>   isic: add missing header file
>   
>   Backport:
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60370): https://lists.yoctoproject.org/g/yocto/message/60370
> Mute This Topic: https://lists.yoctoproject.org/mt/99673661/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


