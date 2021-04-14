Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.13337.1618408533565431183
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 06:55:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TitIf0DK;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 30C2138C06BB
	for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 13:55:33 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id cu16so8315365pjb.4
        for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 06:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=NEC+VnHcTbvICBOkHK+ImqoXHv05Jf0+rfRalxXQJo0=;
        b=TitIf0DKrCFcva5bJDzIbo8G/gi/mCyOjUIqoK21RJ1xitrEmCz5sydcDYhSSyTDzX
         UsXO8ofN6QXGQcNcie5aNKE+9O02jCKqGyOrrBQR56NskK2FygOFU28SC4WTgrwAd5YT
         Jq28Vw/quAg7XJzWqFYU3uHI6rs0+aNRo0nRMmjJTePjUmsfOGx3POCPJi0zGHbbGUvW
         iT+6lvD+tB8oUafF5PXT/uFKXgGPlXC/hVm7IA4KjmuptnptVGCVOJeoJdXpjkumsm//
         QkW7sKSgfs7G4m4Rw1hFb4ZaxTWikG4hvRICBQY+6qbCeRv5VFRJr/ljmheSM67KsXZM
         SNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=NEC+VnHcTbvICBOkHK+ImqoXHv05Jf0+rfRalxXQJo0=;
        b=E/NLf8nRwgCrEab/othPUE/bcWyMo4UghVmMy4qmhjNk0dZ3uQGYmVld6iX5ae9BCr
         Tl+2DeSgIJphlkrJ6CQlpEMtctwdcAqFjCG9ytVEwP2vOsgVZkS2VO+up69w2RJjjYTs
         mfNuCTQDY52bUVeSlJDzQKNrBUvunLdZrlw9d25Vt/F2m3DBDeD1JRG2cGFVRcL3N7qA
         IgOqQpcWqhzt0E64+fvWqfpAncDiYhfS0CPJc+tdgt33SoVsZPAhjqbK0/aZQPBiuWjO
         dJKfSrGnhFNYZClHDNzeHTfdenEc3Sl9xTr/WiV28PZQBysuGho7qQdfmsb9oGamwjLt
         Cuww==
X-Gm-Message-State: AOAM530k/ilEQFymb+imF+py1jLbJh9pbAZu6sQVYLIigUSFSN6Yzgwr
	xfxp6xosnK2Y2n6ndveKYHU=
X-Google-Smtp-Source: ABdhPJxNiMt8RZXlEv2Yr9dctE1Iz2eAAUbcefrfxwdxmB9p3PrvWFGTj7+kqKqtcf9tYI4cS2I0Ow==
X-Received: by 2002:a17:902:cec4:b029:e9:58eb:562b with SMTP id d4-20020a170902cec4b02900e958eb562bmr37879845plg.63.1618408532351;
        Wed, 14 Apr 2021 06:55:32 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:2d0c:893d:5593:863c? ([2601:202:4180:a5c0:2d0c:893d:5593:863c])
        by smtp.gmail.com with ESMTPSA id e8sm15256062pfc.215.2021.04.14.06.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:55:31 -0700 (PDT)
Subject: Re: [meta-security][PATCH] meta: drop IMA_POLICY from policy recipes
To: liu.ming50@gmail.com, yocto@yoctoproject.org
Cc: sergio.prado@toradex.com
References: <20210322130215.8033-1-liu.ming50@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <b72e60ee-bdb7-03eb-27a0-c2d2aa457373@gmail.com>
Date: Wed, 14 Apr 2021 06:55:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210322130215.8033-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged.

thanks
-armin

On 3/22/21 6:02 AM, liu.ming50@gmail.com wrote:
> From: Ming Liu <liu.ming50@gmail.com>
>
> IMA_POLICY is being referred as policy recipe name in some places and it
> is also being referred as policy file in other places, they are
> conflicting with each other which make it impossible to set a IMA_POLICY
> global variable in config file.
>
> Fix it by dropping IMA_POLICY definitions from policy recipes
>
> Signed-off-by: Ming Liu <liu.ming50@gmail.com>
> ---
>  .../ima-policy-appraise-all_1.0.bb                       | 9 ++-------
>  .../ima_policy_hashed/ima-policy-hashed_1.0.bb           | 9 ++-------
>  .../ima_policy_simple/ima-policy-simple_1.0.bb           | 9 ++-------
>  3 files changed, 6 insertions(+), 21 deletions(-)
>
> diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
> index da62a4c..84ea161 100644
> --- a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
> +++ b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
> @@ -2,19 +2,14 @@ SUMMARY = "IMA sample simple appraise policy "
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>  
> -# This policy file will get installed as /etc/ima/ima-policy.
> -# It is located via the normal file search path, so a .bbappend
> -# to this recipe can just point towards one of its own files.
> -IMA_POLICY ?= "ima_policy_appraise_all"
> -
> -SRC_URI = " file://${IMA_POLICY}"
> +SRC_URI = " file://ima_policy_appraise_all"
>  
>  inherit features_check
>  REQUIRED_DISTRO_FEATURES = "ima"
>  
>  do_install () {
>      install -d ${D}/${sysconfdir}/ima
> -    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
> +    install ${WORKDIR}/ima_policy_appraise_all ${D}/${sysconfdir}/ima/ima-policy
>  }
>  
>  FILES_${PN} = "${sysconfdir}/ima"
> diff --git a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
> index ebb0426..ff7169e 100644
> --- a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
> +++ b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
> @@ -2,13 +2,8 @@ SUMMARY = "IMA sample hash policy"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>  
> -# This policy file will get installed as /etc/ima/ima-policy.
> -# It is located via the normal file search path, so a .bbappend
> -# to this recipe can just point towards one of its own files.
> -IMA_POLICY ?= "ima_policy_hashed"
> -
>  SRC_URI = " \
> -    file://${IMA_POLICY} \
> +    file://ima_policy_hashed \
>  "
>  
>  inherit features_check
> @@ -16,7 +11,7 @@ REQUIRED_DISTRO_FEATURES = "ima"
>  
>  do_install () {
>      install -d ${D}/${sysconfdir}/ima
> -    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
> +    install ${WORKDIR}/ima_policy_hashed ${D}/${sysconfdir}/ima/ima-policy
>  }
>  
>  FILES_${PN} = "${sysconfdir}/ima"
> diff --git a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
> index cb4b6b8..0e56aec 100644
> --- a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
> +++ b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
> @@ -2,19 +2,14 @@ SUMMARY = "IMA sample simple policy"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>  
> -# This policy file will get installed as /etc/ima/ima-policy.
> -# It is located via the normal file search path, so a .bbappend
> -# to this recipe can just point towards one of its own files.
> -IMA_POLICY ?= "ima_policy_simple"
> -
> -SRC_URI = " file://${IMA_POLICY}"
> +SRC_URI = " file://ima_policy_simple"
>  
>  inherit features_check
>  REQUIRED_DISTRO_FEATURES = "ima"
>  
>  do_install () {
>      install -d ${D}/${sysconfdir}/ima
> -    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
> +    install ${WORKDIR}/ima_policy_simple ${D}/${sysconfdir}/ima/ima-policy
>  }
>  
>  FILES_${PN} = "${sysconfdir}/ima"

