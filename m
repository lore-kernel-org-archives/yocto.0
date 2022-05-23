Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6163FC433EF
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 14:49:55 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web08.28512.1653317389674297741
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:49:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=X+A81/kb;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id ev18so14282126pjb.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=I74P8wrdkMkdQmntScVX7saBR467TRY1ah1bYLhie9s=;
        b=X+A81/kbNAJdz8skt9k20QeKt5w+cq2dZOF4YsfoM4g6cU1vfoB3lPnN6IKYOQklrh
         kag23gGdZgdoGwHOXssOPJ1Kxr+vK1UNAXuDkqGrcLOTKvD/Ou2A2hZSpwT6hET3WNWT
         Mfd78exVOfFRhHq1YzO5umUuC/lUpPwDaF5QZsjukq+KRvRZdHQUK+QoKiixE31DAi0+
         NNtZvr7EkjV/T09mjXHc7roAG2uT/95SBkusyZ1fl4cOzcTGvI0d+ztGn9W/h/FA87O7
         6C262E9O0d2cIo4UtFsY8Y+u108GattyWQF2TJ2/uKegs9BoR3stju4ZcLcfJxRGPQP2
         jwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=I74P8wrdkMkdQmntScVX7saBR467TRY1ah1bYLhie9s=;
        b=ytrlUrl31TWVOPbRuJQBsVn04xgOBF2uo69GvlxDtOv0kVkodpjBjGmQEpogLtSpfB
         f9Os9CxC4ErZTz/2twAAP9H3Sewv9zuHeW89I6hXi1L/QxzMPfaHwHAmZIq5FEDqNfIR
         Czm59+b8i6lcv5pEtAejK7kU8mdN+S42AoxMz6vWLm1EJL7fZbMfzcW39zcBPpdwZSBG
         sgR+VbEYD8WaYRX9YFR6I8f7jAzv4Gs1tDoXzaBPqXXDJxTNS/W+j2zKO8dErlVlyrmQ
         LErzSM2Qc6nemNJ8einZqz7BoZQQjtOALat2L3H+wEjUDoczzOxyqDmYixRjzltF8GOT
         abXw==
X-Gm-Message-State: AOAM533HZW8wAI4Vv+W0jZvW9ci+UF/RcDfmnQC5phANHK7oraKU8nSE
	gO41X2Jg4zfwIsMbpVJJSvc=
X-Google-Smtp-Source: 
 ABdhPJzsGrNwV20o+FB+lRjkNwVvuqGOWYtnAbZfmUMHVhdTpNk7OxHnq1SlTApuVXNntsrcHeeiIA==
X-Received: by 2002:a17:90a:5908:b0:1df:1232:d47c with SMTP id
 k8-20020a17090a590800b001df1232d47cmr26992836pji.5.1653317389066;
        Mon, 23 May 2022 07:49:49 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:22e0:d3fa:16:d603?
 ([2601:202:4180:a5c0:22e0:d3fa:16:d603])
        by smtp.gmail.com with ESMTPSA id
 n7-20020a170902d2c700b0015e8d4eb1cesm5325798plc.24.2022.05.23.07.49.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 07:49:47 -0700 (PDT)
Message-ID: <33d37356-161a-5419-df15-402faeda8b46@gmail.com>
Date: Mon, 23 May 2022 07:49:46 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][PATCH] Parsec-service: Update
 installation procedure
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20220520134132.3950011-1-Anton.Antonov@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220520134132.3950011-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 14:49:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57161

merged.

thanks

On 5/20/22 06:41, Anton Antonov wrote:
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>   .../parsec-service/files/parsec-tmpfiles.conf    |  1 +
>   .../parsec-service/parsec-service_1.0.0.bb       | 16 +++++++++-------
>   2 files changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf b/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
> index fe576a2..954bfa3 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
> +++ b/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
> @@ -1,2 +1,3 @@
>   #Type   Path            Mode    User    Group   Age     Argument
>   d       /run/parsec     755     parsec  parsec  -       -
> +d       /var/lib/parsec 700     parsec  parsec  -       -
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> index d1d6c07..ad7e560 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> @@ -15,8 +15,8 @@ PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
>   have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
>   PACKAGECONFIG:append = " ${@bb.utils.contains('BBFILE_COLLECTIONS', 'tpm-layer', '${have_TPM}', '', d)}"
>   
> -PACKAGECONFIG[ALL] = "all-providers cryptoki/generate-bindings tss-esapi/generate-bindings,,tpm2-tss libts,libts"
> -PACKAGECONFIG[TPM] = "tpm-provider tss-esapi/generate-bindings,,tpm2-tss"
> +PACKAGECONFIG[ALL] = "all-providers cryptoki/generate-bindings tss-esapi/generate-bindings,,tpm2-tss libts,tpm2-tss libtss2-tcti-device libts"
> +PACKAGECONFIG[TPM] = "tpm-provider tss-esapi/generate-bindings,,tpm2-tss,tpm2-tss libtss2-tcti-device"
>   PACKAGECONFIG[PKCS11] = "pkcs11-provider cryptoki/generate-bindings,"
>   PACKAGECONFIG[MBED-CRYPTO] = "mbed-crypto-provider,"
>   PACKAGECONFIG[CRYPTOAUTHLIB] = "cryptoauthlib-provider,"
> @@ -25,6 +25,9 @@ PACKAGECONFIG[TS] = "trusted-service-provider,,libts,libts"
>   PARSEC_FEATURES = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).strip().replace(' ', ',')}"
>   CARGO_BUILD_FLAGS += " --features ${PARSEC_FEATURES}"
>   
> +export BINDGEN_EXTRA_CLANG_ARGS
> +BINDGEN_EXTRA_CLANG_ARGS = "--sysroot=${WORKDIR}/recipe-sysroot -I${WORKDIR}/recipe-sysroot/usr/include"
> +
>   inherit systemd
>   SYSTEMD_SERVICE:${PN} = "parsec.service"
>   
> @@ -35,7 +38,7 @@ INITSCRIPT_NAME = "parsec"
>   # The file should also be included into SRC_URI then
>   PARSEC_CONFIG ?= "${S}/config.toml"
>   
> -do_install:append () {
> +do_install () {
>       # Binaries
>       install -d -m 700 -o parsec -g parsec "${D}${libexecdir}/parsec"
>       install -m 700 -o parsec -g parsec "${WORKDIR}/build/target/${CARGO_TARGET_SUBDIR}/parsec" ${D}${libexecdir}/parsec/parsec
> @@ -44,9 +47,6 @@ do_install:append () {
>       install -d -m 700 -o parsec -g parsec "${D}${sysconfdir}/parsec"
>       install -m 400 -o parsec -g parsec "${PARSEC_CONFIG}" ${D}${sysconfdir}/parsec/config.toml
>   
> -    # Data dir
> -    install -d -m 700 -o parsec -g parsec "${D}${localstatedir}/lib/parsec"
> -
>       if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
>           install -d ${D}${systemd_unitdir}/system
>           install -m 644 ${S}/systemd-daemon/parsec.service ${D}${systemd_unitdir}/system
> @@ -58,6 +58,8 @@ do_install:append () {
>       if ${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit', 'true', 'false', d)}; then
>           install -d ${D}${sysconfdir}/init.d
>           install -m 755 ${WORKDIR}/parsec_init ${D}${sysconfdir}/init.d/parsec
> +        # Data dir
> +        install -d -m 700 -o parsec -g parsec "${D}${localstatedir}/lib/parsec"
>       fi
>   }
>   
> @@ -65,12 +67,12 @@ inherit useradd
>   USERADD_PACKAGES = "${PN}"
>   USERADD_PARAM:${PN} = "-r -g parsec -s /bin/false -d ${localstatedir}/lib/parsec parsec"
>   GROUPADD_PARAM:${PN} = "-r parsec"
> +GROUPMEMS_PARAM:${PN} = "${@bb.utils.contains('PACKAGECONFIG_CONFARGS', 'tpm-provider', '-a parsec -g tss', '', d)}"
>   
>   FILES:${PN} += " \
>       ${sysconfdir}/parsec/config.toml \
>       ${libexecdir}/parsec/parsec \
>       ${systemd_unitdir}/system/parsec.service \
> -    ${localstatedir}/lib/parsec \
>       ${libdir}/tmpfiles.d/parsec-tmpfiles.conf \
>       ${sysconfdir}/init.d/parsec \
>   "
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57146): https://lists.yoctoproject.org/g/yocto/message/57146
> Mute This Topic: https://lists.yoctoproject.org/mt/91231029/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


