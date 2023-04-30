Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ABC9C77B73
	for <webhook@archiver.kernel.org>; Sun, 30 Apr 2023 14:16:52 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web10.69834.1682864205598382990
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Apr 2023 07:16:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=OmZ1J7g6;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-54fc6949475so22875027b3.3
        for <yocto@lists.yoctoproject.org>; Sun, 30 Apr 2023 07:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682864205; x=1685456205;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RNno/uyIro2nxvWfqYtocAg8yuGQiinQo7KrTMlZP8Y=;
        b=OmZ1J7g6mLu9W5ZqD+3wTBIRCjgvApXcPBVebz9BqcU9dNavxEIhQK1S4aS9Sda1IP
         31ZvT/qsdvdW0t5YlGCpsehonQQl7E2srC/LAGTe6usap9vOj+Maxn2NRsxVFGbD8gRl
         Pa6JsOFXcDVT9J2B8tAAaBCEA2Q5kxAYq+2ZSuo0uktGGDSQ01IuUNKE1wcBk6w2hr/e
         cSvTzqsGRdYB6Xpjcpxd2gWwI74j6xcUIt2jZhg5EhrmNUZs46nmcda/vbHNwVZR4qlY
         yuJMxW3VysqZoWAoAZdmcah9/Gw84gPcbOBaIlFGzUfeQVT9F01oBDOT6bfReWgxqKXl
         x7ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682864205; x=1685456205;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RNno/uyIro2nxvWfqYtocAg8yuGQiinQo7KrTMlZP8Y=;
        b=E+UWzL765OHw/v+oAsqOOyHVhP0COrbsjYqkSG+CPFggtHnMfuvkOkozgpyzpJazsU
         /LzegHhsI/Z9/hOyWbPFJ+MMKZ2q2PDLrQdYCV1A16fUOksfL6WPKTQSGHWn/GofXLYs
         H8CCSdoW2c+TWqdnUU1PUA4wlc4+25Sn1+8Z2s1+SWPxYpQEksgBI9avuphz7oyUeVQr
         /JKYgiqqKU/NVJXQOLs8BJviZz+de5tq+2XtgSQMtyWZYge/rnQjFOxrzAYLaNpWVzFf
         qGCk91m2ALCBxisPIsA6kQfUr9jum+o8GCozCsdvZSQt0XD6vjIv5U8cU1q4PCZ+d0gW
         /5ew==
X-Gm-Message-State: AC+VfDwY7ZZ19aSQQJRh1I48o5ZJY/Zkh5qD+iUy/7BfktUy5F9IAk/8
	pmsP2IULWa5AuUScfC/2nPA=
X-Google-Smtp-Source: ACHHUZ60t2JwG38N32gtIZezJUbG0G/0wkrM8vPIjJAtua9u15CCiUBT8iDcPDq3dVgnwerSELixIg==
X-Received: by 2002:a0d:efc2:0:b0:556:ceb2:c462 with SMTP id y185-20020a0defc2000000b00556ceb2c462mr8750689ywe.2.1682864204659;
        Sun, 30 Apr 2023 07:16:44 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:d66b:d6c8:10a3:d03b? ([2600:1700:9190:ba10:d66b:d6c8:10a3:d03b])
        by smtp.gmail.com with ESMTPSA id u185-20020a8184c2000000b0054640a352f2sm6653905ywf.20.2023.04.30.07.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Apr 2023 07:16:44 -0700 (PDT)
Message-ID: <f206bfe3-8cf0-d08f-8c24-77e0689baac1@gmail.com>
Date: Sun, 30 Apr 2023 10:16:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [meta-security][PATCH 0/8] Fix IMA and EVM support
Content-Language: en-US
To: Stefan Berger <stefanb@linux.ibm.com>, yocto@lists.yoctoproject.org
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230428122316.521800-1-stefanb@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Apr 2023 14:16:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59823


Stefan,

On 4/28/23 8:23 AM, Stefan Berger wrote:
> This series of patches fixes the current support for IMA and EVM
> by removing outdated patches for example and adding kernel config
> options. I have tried out these patches with OpenBMC where the
> appraisal policy now enforces signed executables and libraries.
>
>     Stefan

Thanks for the patches. Its nice to have a Content expert contribute.

There is a test suite I am using to double check things and its not 
passing. I think it needs to be adapted to some of these changes.

see: meta-integrity/lib/oeqa/runtime/cases/ima.py


This is adding a delay on merging until I get the test sorted out on my end.

I do have a question regarding the Kernel config changes. Do we really 
need "CONFIG_SQUASHFS_XATTR=y" ?

BR,
Armin


>
> Stefan Berger (8):
>    ima: Document and replace keys and adapt scripts for EC keys
>    ima: Fix the ima_policy_appraise_all to appraise executables &
>      libraries
>    ima: Fix the IMA kernel feature
>    ima: Rename IMA_EVM_POLICY_SYSTEMD to IMA_EVM_POLICY
>    ima: Sign all executables and the ima-policy in the root filesystem
>    integrity: Update the README for IMA support
>    linux: overlayfs: Add kernel patch resolving a file change
>      notification issue
>    ima-evm-utils: Update ima-evm-utils to v1.5 and add a patch
>
>   meta-integrity/README.md                      |  22 +--
>   meta-integrity/classes/ima-evm-rootfs.bbclass |  34 ++++-
>   meta-integrity/data/debug-keys/README.md      |  17 +++
>   .../data/debug-keys/ima-local-ca.pem          |  15 ++
>   .../data/debug-keys/ima-local-ca.priv         |   7 +
>   .../data/debug-keys/privkey_ima.pem           |  17 +--
>   meta-integrity/data/debug-keys/x509_ima.der   | Bin 707 -> 620 bytes
>   .../0001-ima-fix-ima_inode_post_setattr.patch |  51 -------
>   ...Increment-iversion-upon-file-changes.patch |  42 ++++++
>   ...for-creating-files-using-the-mknodat.patch | 138 ------------------
>   ...-file-hash-setting-by-user-to-fix-an.patch |  60 --------
>   .../recipes-kernel/linux/linux/ima.cfg        |  46 ++++++
>   .../recipes-kernel/linux/linux/ima.scc        |   4 +
>   .../recipes-kernel/linux/linux_ima.inc        |  11 +-
>   ...ation-using-ioctl-when-evm_portable-.patch |  35 +++++
>   ...-evm-utils_1.4.bb => ima-evm-utils_1.5.bb} |   9 +-
>   .../files/ima_policy_appraise_all             |   9 +-
>   meta-integrity/scripts/ima-gen-CA-signed.sh   |   9 +-
>   meta-integrity/scripts/ima-gen-local-ca.sh    |   6 +-
>   meta-integrity/scripts/ima-gen-self-signed.sh |  41 ------
>   20 files changed, 240 insertions(+), 333 deletions(-)
>   create mode 100644 meta-integrity/data/debug-keys/README.md
>   create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.pem
>   create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.priv
>   delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
>   create mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>   delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
>   delete mode 100644 meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
>   create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.cfg
>   create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.scc
>   create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>   rename meta-integrity/recipes-security/ima-evm-utils/{ima-evm-utils_1.4.bb => ima-evm-utils_1.5.bb} (71%)
>   delete mode 100755 meta-integrity/scripts/ima-gen-self-signed.sh
>


