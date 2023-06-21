Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D666BEB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 23:04:32 +0000 (UTC)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
 by mx.groups.io with SMTP id smtpd.web11.1586.1687388663969345762
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 16:04:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=WkmAtciI;
 spf=pass (domain: gmail.com, ip: 209.85.221.182, mailfrom: akuster808@gmail.com)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-4717089ae5bso1877454e0c.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 16:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687388663; x=1689980663;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ME6Pb4+SgRq8s8P2VJKLQ9THYM5t4w0F4TWu9pNryOQ=;
        b=WkmAtciIPmen6eOdJnQHLkhqcxyHdHkV02HFk54ewfUmOXo/KDCOwVOGM7/VfyL0n9
         ngzlxcybjO7ZYujykXGvR2Ow69+0XkxQyoyT1DmkvMYhYrS7zDy+MKgtWSxhH2H/+1rG
         AJFBOw2UV0EU3DBseeADnkbEiDtXsk8Ya0n8E1rZVMG2V6PamLQacyhf3Ai7SYjJ70a+
         Ahr2bk1lF4IFaN0XWoGguq3UZp3sgeFtQpR61OLB0oktKFoYtYTHQUV9oGWN2pFX+Hsc
         qrwG4TpgmghrhjZPufWCiNLPGd11aZUSMKhcrI7rdReX8x4J9JXCgS+KFAMO6lBOjffs
         3maw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687388663; x=1689980663;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ME6Pb4+SgRq8s8P2VJKLQ9THYM5t4w0F4TWu9pNryOQ=;
        b=Oa/brytNB2PMBRNa1ZoOoe3+qv34zPVShGp7c1/E0q/3TwB4/X78QlWma2rKwTrNRi
         ju8F+vLqPqlszbT3Cele2epB3aXQn02mmS51uZ/Sd54UO4GOU4nvsVyhPr+I+O1SUxB7
         37CFtgHU6kZkPECe+5vydB2W7gBpjXNQE41BbiANFQVBq1m4c++HPP4aCSnfX0+J+Ddu
         t9Z9Rfo+GzYsjK1fngGGUGEwYUcx3Rd0/mhUOAWJJPfRW/AtXSvxoiFu8FiovNCTmFW7
         uZvt+XlSyxjPwI3GgirGFiCM7N7cvzommsbNSRp4T+DFrQRaYcMGYJfw+CE4I7nmVM3W
         0m5Q==
X-Gm-Message-State: AC+VfDyQ7i2JBjHaqrnzbzgmDOSTXJ3z8zbAWr9r0P/VzgBJjOcRORYl
	8uFw4WB9TUT9pBzDn8+NXtTErUjqb3g=
X-Google-Smtp-Source: ACHHUZ7LaljFF42wUhJiNblA17uYCGgrx4xozDc11cFY0Guty+XELkRdEOpXj0BN5pTVzTPssuPX6Q==
X-Received: by 2002:a1f:3fc8:0:b0:471:8ad2:78e6 with SMTP id m191-20020a1f3fc8000000b004718ad278e6mr6703830vka.15.1687388662833;
        Wed, 21 Jun 2023 16:04:22 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:dc27:e982:11fd:2a21? ([2600:1700:9190:ba10:dc27:e982:11fd:2a21])
        by smtp.gmail.com with ESMTPSA id x2-20020a0dd502000000b00559fb950d9fsm1441595ywd.45.2023.06.21.16.04.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 16:04:22 -0700 (PDT)
Message-ID: <f4967f90-5fa9-3841-1459-f0bf0e79bd96@gmail.com>
Date: Wed, 21 Jun 2023 19:04:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH] openscap: fix buildpaths issue
Content-Language: en-US
To: Kai Kang <kai.kang@eng.windriver.com>, yocto@lists.yoctoproject.org
References: <20230621035540.4014488-1-kai.kang@windriver.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230621035540.4014488-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 23:04:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60387

Hello Kai,

Can you rebase  this to the latest master. There was a layer reorg 
landed during the posting of this patch.

BR,
Armin

On 6/20/23 11:55 PM, Kai Kang wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
> ${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may point
> to other path rather than standard dir such as /usr/bin. Then the
> generated library file contains such path which should NOT. Update to
> make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
> fix buildpaths issue:
>
> | WARNING: openscap-1.3.7-r0 do_package_qa: QA Issue: File
> | /usr/lib/libopenscap.so.25.5.1 in package openscap contains reference
> | to TMPDIR [buildpaths]
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>   ...ts.txt-make-2-variables-configurable.patch | 37 +++++++++++++++++++
>   .../openscap/openscap_1.3.7.bb                |  8 +++-
>   2 files changed, 44 insertions(+), 1 deletion(-)
>   create mode 100644 meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLists.txt-make-2-variables-configurable.patch
>
> diff --git a/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLists.txt-make-2-variables-configurable.patch b/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLists.txt-make-2-variables-configurable.patch
> new file mode 100644
> index 0000000..953b0d9
> --- /dev/null
> +++ b/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLists.txt-make-2-variables-configurable.patch
> @@ -0,0 +1,37 @@
> +From f99c3f1f516a84d33794f8e3da59adea1a12ef54 Mon Sep 17 00:00:00 2001
> +From: Kai Kang <kai.kang@windriver.com>
> +Date: Tue, 20 Jun 2023 22:42:51 +0800
> +Subject: [PATCH] CMakeLists.txt: make 2 variables configurable
> +
> +Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
> +${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may point
> +to other path rather than standard dir such as /usr/bin. Then the
> +generated library file contains such path which should NOT. Update to
> +make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
> +avoid such issue.
> +
> +Upstream-Status: Submitted [https://github.com/OpenSCAP/openscap/pull/1990]
> +
> +Signed-off-by: Kai Kang <kai.kang@windriver.com>
> +---
> + CMakeLists.txt | 4 ++--
> + 1 file changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/CMakeLists.txt b/CMakeLists.txt
> +index 5db014e77..74628cdd4 100644
> +--- a/CMakeLists.txt
> ++++ b/CMakeLists.txt
> +@@ -125,8 +125,8 @@ endif()
> + find_package(PythonInterp 3)
> + find_package(PythonLibs 3)
> +
> +-set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}")
> +-set(PYTHON3_PATH "${PYTHON_EXECUTABLE}")
> ++set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to preferred Python")
> ++set(PYTHON3_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to Python3")
> +
> + find_package(RPM)
> + if(RPM_FOUND)
> +--
> +2.34.1
> +
> diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
> index cfe93f0..5ad92d4 100644
> --- a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
> +++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
> @@ -7,7 +7,13 @@ require openscap.inc
>   inherit systemd
>   
>   SRCREV = "55efbfda0f617e05862ab6ed4862e10dbee52b03"
> -SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https"
> +SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
> +           file://0001-CMakeLists.txt-make-2-variables-configurable.patch \
> +           "
> +
> +EXTRA_OECMAKE += "-DPREFERRED_PYTHON_PATH=${bindir}/python3 \
> +                  -DPYTHON3_PATH=${bindir}/python3 \
> +                  "
>   
>   SYSTEMD_PACKAGES = "${PN}"
>   SYSTEMD_SERVICE:${PN} = "oscap-remediate.service"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60368): https://lists.yoctoproject.org/g/yocto/message/60368
> Mute This Topic: https://lists.yoctoproject.org/mt/99670413/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


