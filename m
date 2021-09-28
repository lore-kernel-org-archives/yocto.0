Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3430CC433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 13:57:21 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web12.14273.1632837440221808593
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 06:57:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=V2MQWR1w;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id
 ce20-20020a17090aff1400b0019f13f6a749so1524196pjb.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 06:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=m08PbXDz45HzfxzhQn+T5jqsMvadU7N+p8D09l5/ing=;
        b=V2MQWR1w2dpSCMUKpUG1E2GJu6EPGC7uveJI1UElZGtCNRkbEioCblSxOBPfllJrBz
         UE+Y8xzB2uVc+wRQ/BvgFfmec8vFYO9r5h8AOcVo6ox/2UFuBxU92+KV92ruj2mW3vyr
         S5cboLZFw//SzMX2BI1l+1SJz6H9kMWarp9IllyZOxvFzjjjk/fHSNlv6kHAYSsNAWx+
         gC/Nw5/4x56A+Ff8MqFZ/iSbHY4exkbvYcg4r0qIzQsIS+icCdu+Ky9cG+C2TRR0OmAZ
         b0xJNTgK4uTXCc+p0+QXlPURchtNlwpKup72XDZROHFCC4lJGA0lDeDS/3yohZfFH6kJ
         UjBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=m08PbXDz45HzfxzhQn+T5jqsMvadU7N+p8D09l5/ing=;
        b=HL+PovEyACdWZprmIiNWEiryPvAm3C+K+YE0ejX+J4hdTJXemXhHc41xJKjZVkDd5D
         5cXc5C+SAfLR6MRNeg332Tn1Br3XVDP6NcdWfZ0sCiQEF+jUM/qaN3bc1nOQ/XbEzyhu
         U5o+DKhI4vArycgGFxcftojIf+S/8pP4G4SFCJMORyaZWtXZQRJzqujG+2ZZSPz4YlY+
         VBZtpO/CXp7FxM3moK2VkkPa3TXB9hV4V2Qj5/RtbrjEXOACfq7hWmGmxXZerwxAzuIO
         yIKseo3ROJxecHlJRD1v/1sZzNj2edWO4SkgyNFZiscRQWvA6gscCfwcbUahzarNgnq9
         v2Og==
X-Gm-Message-State: AOAM532ZwvGe35xluLHxGewdlJF8pqudBphPXXPdTA5c/kFsMVxCYOcO
	OyVuVxA+QeodMo1RClp0lxULxExKUX4=
X-Google-Smtp-Source: 
 ABdhPJzydQ0CJHREwRWKbDFeZZyT6tiiB6tyF7v0QXliNiaUgWIUbxv0OJdV/dsOoC3n14eHE1WwKw==
X-Received: by 2002:a17:90a:9310:: with SMTP id
 p16mr20304pjo.204.1632837439232;
        Tue, 28 Sep 2021 06:57:19 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:b669:1b22:84ea:4511?
 ([2601:202:4180:a5c0:b669:1b22:84ea:4511])
        by smtp.gmail.com with ESMTPSA id
 x19sm20403199pfn.105.2021.09.28.06.57.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 06:57:18 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] swtpm: update to 0.6.1
To: kristian@klausen.dk, yocto@lists.yoctoproject.org
References: <20210927113927.31896-1-kristian@klausen.dk>
From: akuster808 <akuster808@gmail.com>
Message-ID: <9f763258-1486-4d52-5047-a60e4a612a71@gmail.com>
Date: Tue, 28 Sep 2021 06:57:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927113927.31896-1-kristian@klausen.dk>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 13:57:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54890



On 9/27/21 4:39 AM, Kristian Klausen via lists.yoctoproject.org wrote:
> swtpm no longer depends on Python[1] so the dependencies have been
> removed.
>
> "inherit perlnative" has been added due to (in oe-core):
> deda455b3c ("bitbake.conf: drop pod2man from hosttools")
>
> Some leftover dependencies have also been removed, ex: tpm-tools
> required in the past by swtpm_setup.sh (<0.4.0)[2].
>
> [1] https://github.com/stefanberger/swtpm/issues/437
> [2] https://github.com/stefanberger/swtpm/commit/eee8cb5dfb13f87140dddda38f65bf61aff19508

this is failing on qemux86-64

https://errors.yoctoproject.org/Errors/Build/131312/
>
> Signed-off-by: Kristian Klausen <kristian@klausen.dk>
> ---
>  .../swtpm/swtpm-wrappers-native.bb            | 12 ++++------
>  .../swtpm/{swtpm_0.5.2.bb => swtpm_0.6.1.bb}  | 23 ++++++++-----------
>  2 files changed, 14 insertions(+), 21 deletions(-)
>  rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.5.2.bb => swtpm_0.6.1.bb} (72%)
>
> diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb b/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
> index 644f3ac..bb93374 100644
> --- a/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
> +++ b/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
> @@ -1,6 +1,6 @@
>  SUMMARY = "SWTPM - OpenEmbedded wrapper scripts for native swtpm tools"
>  LICENSE = "MIT"
> -DEPENDS = "swtpm-native tpm-tools-native net-tools-native"
> +DEPENDS = "swtpm-native"
>  
>  inherit native
>  
> @@ -14,23 +14,19 @@ do_create_wrapper () {
>      for i in `find ${bindir} ${base_bindir} ${sbindir} ${base_sbindir} -name 'swtpm*' -perm /+x -type f`; do
>          exe=`basename $i`
>          case $exe in
> -            swtpm_setup.sh)
> +            swtpm_setup)
>                  cat >${WORKDIR}/swtpm_setup_oe.sh <<EOF
>  #! /bin/sh
>  #
> -# Wrapper around swtpm_setup.sh which adds parameters required to
> +# Wrapper around swtpm_setup which adds parameters required to
>  # run the setup as non-root directly from the native sysroot.
>  
>  PATH="${bindir}:${base_bindir}:${sbindir}:${base_sbindir}:\$PATH"
>  export PATH
>  
> -# tcsd only allows to be run as root or tss. Pretend to be root...
> -exec env ${FAKEROOTENV} ${FAKEROOTCMD} swtpm_setup.sh --config ${STAGING_DIR_NATIVE}/etc/swtpm_setup.conf "\$@"
> +exec swtpm_setup --config ${STAGING_DIR_NATIVE}/etc/swtpm_setup.conf "\$@"
>  EOF
>                  ;;
> -            swtpm_setup)
> -                true
> -                ;;
>              *)
>                  cat >${WORKDIR}/${exe}_oe.sh <<EOF
>  #! /bin/sh
> diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> similarity index 72%
> rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
> rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> index 912e939..807c02b 100644
> --- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
> +++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
> @@ -3,14 +3,11 @@ LICENSE = "BSD-3-Clause"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
>  SECTION = "apps"
>  
> -DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm libtpm-native"
> +# coreutils-native and net-tools-native are reportedly only required for the tests
> +DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib"
>  
> -# configure checks for the tools already during compilation and
> -# then swtpm_setup needs them at runtime
> -DEPENDS:append = " tpm-tools-native expect-native socat-native python3-pip-native python3-cryptography-native"
> -
> -SRCREV = "e59c0c1a7b4c8d652dbb280fd6126895a7057464"
> -SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.5 \
> +SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
> +SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6 \
>             file://ioctl_h.patch \
>             file://oe_configure.patch \
>             "
> @@ -19,7 +16,7 @@ PE = "1"
>  S = "${WORKDIR}/git"
>  
>  PARALLEL_MAKE = ""
> -inherit autotools pkgconfig python3native
> +inherit autotools pkgconfig perlnative
>  
>  TSS_USER="tss"
>  TSS_GROUP="tss"
> @@ -28,7 +25,10 @@ PACKAGECONFIG ?= "openssl"
>  PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
>  PACKAGECONFIG += "${@bb.utils.contains('BBFILE_COLLECTIONS', 'filesystems-layer', 'cuse', '', d)}"
>  PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
> -PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
> +# expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
> +# used by swtpm-create-tpmca (the last two is provided by gnutls)
> +# gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
> +PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
>  PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
>  PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
>  PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
> @@ -41,14 +41,11 @@ USERADD_PARAM:${PN} = "--system -g ${TSS_GROUP} --home-dir  \
>      --no-create-home  --shell /bin/false ${BPN}"
>  
>  
> -PACKAGES =+ "${PN}-python"
> -FILES:${PN}-python = "${PYTHON_SITEPACKAGES_DIR}"
> -
>  PACKAGE_BEFORE_PN = "${PN}-cuse"
>  FILES:${PN}-cuse = "${bindir}/swtpm_cuse"
>  
>  INSANE_SKIP:${PN}   += "dev-so"
>  
> -RDEPENDS:${PN} = "libtpm expect socat bash tpm-tools python3 python3-cryptography python3-twisted"
> +RDEPENDS:${PN} = "libtpm"
>  
>  BBCLASSEXTEND = "native nativesdk"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54876): https://lists.yoctoproject.org/g/yocto/message/54876
> Mute This Topic: https://lists.yoctoproject.org/mt/85898116/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


