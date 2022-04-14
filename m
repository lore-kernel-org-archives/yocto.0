Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4A78C4332F
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 20:37:09 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.503.1649966748748685807
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 13:05:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=miPRz1U2;
 spf=pass (domain: gmail.com, ip: 209.85.210.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id l127so4039470pfl.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 13:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=AC/ZR4TiTkDxdl045e6m4tdMJvgBA5E7J8ktJxmn2sc=;
        b=miPRz1U296bQl0izaaH9TNbgz8mr2tOx4DzKSV67NS9BxSG1KFclzA9SLs3HqWRPCB
         hn9LgUHHoPOS32Un59GGo+EZbF98LnZZvz4WVHxpe9HGbye6FULxjpyTlMR2qASzuCde
         qFtIDIkpt9xy2ta5m6+qSNTnDh2b1l2+/14Ee5QcOH8vJL3H5ScgQE8qWx7E7LBQ/lqu
         i69aIwkZj03rkJowGvngM7+1DQLd0YpdRpTaea+ACb+azpamPJ6Y+PvES5bx45GbVs5g
         VLHkyfp0Tj9bLE0OuGnVuz0Zeke6Zn132O98bfYUSAUIyCJGfnmDm1QbJIQe6r2xOHpc
         x6Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AC/ZR4TiTkDxdl045e6m4tdMJvgBA5E7J8ktJxmn2sc=;
        b=n/elFlNwaFxVGQRoU3V250XgaicEAXQY39LoHOX/Atip30hSSrOYnCf9rGieSQHu2M
         JgGv3yTQGDUzv/64ss9SjS5sGpscOufwIYUDjPrhTd5+0jxtQAZ2iYFQEE8j8xkxYzei
         u1b624uuSzP0l25dynTfyzFqA5ZkhF5EAA78eT+97PZs19IPDj4qvatAET/TXAV6yOWE
         PE8iV/QK1NQxAclc+s8wkP8HfSrDkjkovDWaNIQXmntlY9hH+0qxNBRlyxHpyzBv6F7t
         3qL8McpP+M+92ouAbwdS3yqrSyDB65oDQI89B2EuYvycsEp6VuEfQrtcefFmTWbbDUGE
         uqMw==
X-Gm-Message-State: AOAM530rkbDDzkC8pEcRuICMtlH1GZD2AwaoJThQWZ28TkNuLncRMz/w
	aWI4Co/LNi6bhgDSgut1UvXAmph51AI=
X-Google-Smtp-Source: 
 ABdhPJylqeA+innwRpe1CZbhrnG1BY/T7UbOcOvdXYfb/uHooJU9hl45L4TZbMjtWdDXQvta7jnoyw==
X-Received: by 2002:a65:4682:0:b0:39d:18c2:3d8c with SMTP id
 h2-20020a654682000000b0039d18c23d8cmr3575914pgr.224.1649966748012;
        Thu, 14 Apr 2022 13:05:48 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:8ba4:faed:21bc:f7bd?
 ([2601:202:4180:a5c0:8ba4:faed:21bc:f7bd])
        by smtp.gmail.com with ESMTPSA id
 j9-20020a056a00130900b004f73df40914sm669235pfu.82.2022.04.14.13.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 13:05:47 -0700 (PDT)
Message-ID: <6b7aff39-df7e-3f67-1f77-ef4c75144a96@gmail.com>
Date: Thu, 14 Apr 2022 13:05:46 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] [meta-security][PATCH] Upgrade parsec-service to 1.0.0
 and parsec-tool to 0.5.2
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20220407163148.798131-1-Anton.Antonov@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220407163148.798131-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 20:37:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56773

thanks,
merged.

On 4/7/22 09:31, Anton Antonov wrote:
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>   meta-parsec/README.md                         |  36 ++-
>   .../parsec-service/files/systemd.patch        |  21 +-
>   .../parsec-service/parsec-service_0.8.1.inc   | 246 ------------------
>   ...rvice_0.8.1.bb => parsec-service_1.0.0.bb} |  12 +-
>   .../parsec-service/parsec-service_1.0.0.inc   | 232 +++++++++++++++++
>   ...sec-tool_0.5.1.bb => parsec-tool_0.5.2.bb} |   0
>   ...c-tool_0.5.1.inc => parsec-tool_0.5.2.inc} | 148 +++++------
>   7 files changed, 351 insertions(+), 344 deletions(-)
>   delete mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.inc
>   rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_0.8.1.bb => parsec-service_1.0.0.bb} (96%)
>   create mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.inc
>   rename meta-parsec/recipes-parsec/parsec-tool/{parsec-tool_0.5.1.bb => parsec-tool_0.5.2.bb} (100%)
>   rename meta-parsec/recipes-parsec/parsec-tool/{parsec-tool_0.5.1.inc => parsec-tool_0.5.2.inc} (61%)
>
> diff --git a/meta-parsec/README.md b/meta-parsec/README.md
> index 85e0d10..97026ea 100644
> --- a/meta-parsec/README.md
> +++ b/meta-parsec/README.md
> @@ -43,20 +43,34 @@ local.conf:
>       IMAGE_INSTALL:append = " parsec-service"
>   
>     By default the Parsec service will be deployed into the image with
> -TPM, PKCS11, MBED-CRYPTO and CRYPTOAUTHLIB providers build in
> -and with the default config file from the Parsec repository:
> -https://github.com/parallaxsecond/parsec/blob/main/config.toml
> +PKCS11 and MBED-CRYPTO providers build-in.
> +  The TPM provider will also be built by default if:
> +- DISTRO_FEATURES contains "tmp2" and
> +- "tpm-layer" (meta-tpm) is included in BBLAYERS
>   
> -  You can use PACKAGECONFIG for Parsec servic recipe to define
> -what providers should be built in. For example,
>   
> -    PACKAGECONFIG:pn-parsec-service = "TPM"
> +You can use PACKAGECONFIG for Parsec servic recipe to define
> +what providers should be built in. For example:
>   
> -  The default Parsec service config file contains the MbedCrypto provider
> -enabled. The config file needs to be updated to use the Parsec service
> -with other providers like TPM or PKCS11. The required procedures are
> -covered in Parsec documentation.
> -https://parallaxsecond.github.io/parsec-book/
> +    PACKAGECONFIG:pn-parsec-service = "TS"
> +
> +
> +The default Parsec service config file is taken from the Parsec repository:
> +https://github.com/parallaxsecond/parsec/blob/main/config.toml
> +This config file contains the MbedCrypto provider enabled.
> +The config needs to be updated to use the Parsec service
> +with other providers like TPM or PKCS11. The required changes are
> +covered in Parsec documentation https://parallaxsecond.github.io/parsec-book/
> +
> +  PARSEC_CONFIG can be used in a bbappend file to replace the default config.
> +For example:
> +
> +```
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +SRC_URI += "file://config-TS.toml \
> +           "
> +PARSEC_CONFIG = "${WORKDIR}/config-TS.toml"
> +```
>   
>   Updating recipes
>   ================
> diff --git a/meta-parsec/recipes-parsec/parsec-service/files/systemd.patch b/meta-parsec/recipes-parsec/parsec-service/files/systemd.patch
> index c01ff06..2525898 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/files/systemd.patch
> +++ b/meta-parsec/recipes-parsec/parsec-service/files/systemd.patch
> @@ -4,16 +4,25 @@ Run the Parsec service as parsec user in /var/lib/parsec/ working directory.
>   Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
>   Upstream-Status: Inappropriate [deployment configuration]
>   
> ---- a/systemd-daemon/parsec.service	2021-03-28 18:34:18.703196235 +0100
> -+++ b/systemd-daemon/parsec.service	2021-03-28 18:35:14.279830299 +0100
> -@@ -3,7 +3,9 @@
> +diff --git a/systemd-daemon/parsec.service b/systemd-daemon/parsec.service
> +index c07c3b9..a6fe6a3 100644
> +--- a/systemd-daemon/parsec.service
> ++++ b/systemd-daemon/parsec.service
> +@@ -3,13 +3,15 @@ Description=Parsec Service
>    Documentation=https://parallaxsecond.github.io/parsec-book/parsec_service/install_parsec_linux.html
> -
> +
>    [Service]
>   -WorkingDirectory=/home/parsec/
>   +User=parsec
>   +Group=parsec
>   +WorkingDirectory=/var/lib/parsec/
>    ExecStart=/usr/libexec/parsec/parsec --config /etc/parsec/config.toml
> -
> - [Install]
> + # Systemd hardening
> + ProtectSystem=full
> + ProtectHome=true
> + ProtectHostname=true
> +-ProtectKernelTunables=true
> ++#ProtectKernelTunables=true
> + ProtectKernelModules=true
> + ProtectKernelLogs=true
> + ProtectControlGroups=true
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.inc
> deleted file mode 100644
> index fd88e87..0000000
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.inc
> +++ /dev/null
> @@ -1,246 +0,0 @@
> -# This file is created from parsec-service repository Cargo.lock using cargo-bitbake tool
> -
> -SRC_URI += " \
> -    crate://crates.io/addr2line/0.15.2 \
> -    crate://crates.io/adler/1.0.2 \
> -    crate://crates.io/aho-corasick/0.7.15 \
> -    crate://crates.io/ansi_term/0.11.0 \
> -    crate://crates.io/anyhow/1.0.41 \
> -    crate://crates.io/arrayvec/0.5.2 \
> -    crate://crates.io/atty/0.2.14 \
> -    crate://crates.io/autocfg/1.0.1 \
> -    crate://crates.io/backtrace/0.3.59 \
> -    crate://crates.io/base64/0.12.3 \
> -    crate://crates.io/base64/0.13.0 \
> -    crate://crates.io/bincode/1.3.3 \
> -    crate://crates.io/bindgen/0.56.0 \
> -    crate://crates.io/bindgen/0.57.0 \
> -    crate://crates.io/bitfield/0.13.2 \
> -    crate://crates.io/bitflags/1.2.1 \
> -    crate://crates.io/bitvec/0.19.5 \
> -    crate://crates.io/boringssl-src/0.3.0+688fc5c \
> -    crate://crates.io/bumpalo/3.7.0 \
> -    crate://crates.io/bytes/0.5.6 \
> -    crate://crates.io/bytes/1.0.1 \
> -    crate://crates.io/cc/1.0.68 \
> -    crate://crates.io/cexpr/0.4.0 \
> -    crate://crates.io/cfg-if/1.0.0 \
> -    crate://crates.io/chrono/0.4.19 \
> -    crate://crates.io/clang-sys/1.2.0 \
> -    crate://crates.io/clap/2.33.3 \
> -    crate://crates.io/cmake/0.1.45 \
> -    crate://crates.io/const-oid/0.6.0 \
> -    crate://crates.io/cryptoauthlib-sys/0.2.0 \
> -    crate://crates.io/cryptoki-sys/0.1.2 \
> -    crate://crates.io/cryptoki/0.2.0 \
> -    crate://crates.io/data-encoding/2.3.2 \
> -    crate://crates.io/der-oid-macro/0.4.0 \
> -    crate://crates.io/der-parser/5.1.0 \
> -    crate://crates.io/der/0.4.0 \
> -    crate://crates.io/derivative/2.2.0 \
> -    crate://crates.io/either/1.6.1 \
> -    crate://crates.io/enumflags2/0.6.4 \
> -    crate://crates.io/enumflags2_derive/0.6.4 \
> -    crate://crates.io/env_logger/0.8.4 \
> -    crate://crates.io/failure/0.1.8 \
> -    crate://crates.io/failure_derive/0.1.8 \
> -    crate://crates.io/fixedbitset/0.2.0 \
> -    crate://crates.io/form_urlencoded/1.0.1 \
> -    crate://crates.io/funty/1.1.0 \
> -    crate://crates.io/futures-channel/0.3.15 \
> -    crate://crates.io/futures-core/0.3.15 \
> -    crate://crates.io/futures-executor/0.3.15 \
> -    crate://crates.io/futures-io/0.3.15 \
> -    crate://crates.io/futures-macro/0.3.15 \
> -    crate://crates.io/futures-sink/0.3.15 \
> -    crate://crates.io/futures-task/0.3.15 \
> -    crate://crates.io/futures-util/0.3.15 \
> -    crate://crates.io/futures/0.3.15 \
> -    crate://crates.io/generic-array/0.14.4 \
> -    crate://crates.io/getrandom/0.2.3 \
> -    crate://crates.io/gimli/0.24.0 \
> -    crate://crates.io/glob/0.3.0 \
> -    crate://crates.io/grpcio-compiler/0.7.0 \
> -    crate://crates.io/grpcio-sys/0.9.0+1.38.0 \
> -    crate://crates.io/grpcio/0.9.0 \
> -    crate://crates.io/hamming/0.1.3 \
> -    crate://crates.io/hashbrown/0.9.1 \
> -    crate://crates.io/heck/0.3.3 \
> -    crate://crates.io/hermit-abi/0.1.18 \
> -    crate://crates.io/hex/0.4.3 \
> -    crate://crates.io/hostname-validator/1.1.0 \
> -    crate://crates.io/humantime/2.1.0 \
> -    crate://crates.io/idna/0.2.3 \
> -    crate://crates.io/indexmap/1.6.2 \
> -    crate://crates.io/instant/0.1.9 \
> -    crate://crates.io/itertools/0.8.2 \
> -    crate://crates.io/itertools/0.9.0 \
> -    crate://crates.io/itoa/0.4.7 \
> -    crate://crates.io/js-sys/0.3.51 \
> -    crate://crates.io/jsonwebkey/0.3.2 \
> -    crate://crates.io/jsonwebtoken/7.2.0 \
> -    crate://crates.io/lazy_static/1.4.0 \
> -    crate://crates.io/lazycell/1.3.0 \
> -    crate://crates.io/lexical-core/0.7.6 \
> -    crate://crates.io/libc/0.2.97 \
> -    crate://crates.io/libloading/0.7.0 \
> -    crate://crates.io/libz-sys/1.1.3 \
> -    crate://crates.io/lock_api/0.4.4 \
> -    crate://crates.io/log/0.4.14 \
> -    crate://crates.io/matches/0.1.8 \
> -    crate://crates.io/mbox/0.5.0 \
> -    crate://crates.io/memchr/2.3.4 \
> -    crate://crates.io/miniz_oxide/0.4.4 \
> -    crate://crates.io/multimap/0.8.3 \
> -    crate://crates.io/nom/5.1.2 \
> -    crate://crates.io/nom/6.2.0 \
> -    crate://crates.io/num-bigint/0.2.6 \
> -    crate://crates.io/num-bigint/0.3.2 \
> -    crate://crates.io/num-bigint/0.4.0 \
> -    crate://crates.io/num-complex/0.3.1 \
> -    crate://crates.io/num-derive/0.3.3 \
> -    crate://crates.io/num-integer/0.1.44 \
> -    crate://crates.io/num-iter/0.1.42 \
> -    crate://crates.io/num-rational/0.3.2 \
> -    crate://crates.io/num-traits/0.2.14 \
> -    crate://crates.io/num/0.3.1 \
> -    crate://crates.io/num_cpus/1.13.0 \
> -    crate://crates.io/object/0.24.0 \
> -    crate://crates.io/oid-registry/0.1.3 \
> -    crate://crates.io/oid/0.1.1 \
> -    crate://crates.io/once_cell/1.8.0 \
> -    crate://crates.io/parking_lot/0.11.1 \
> -    crate://crates.io/parking_lot_core/0.8.3 \
> -    crate://crates.io/parsec-interface/0.25.0 \
> -    crate://crates.io/peeking_take_while/0.1.2 \
> -    crate://crates.io/pem/0.8.3 \
> -    crate://crates.io/percent-encoding/2.1.0 \
> -    crate://crates.io/petgraph/0.5.1 \
> -    crate://crates.io/picky-asn1-der/0.2.4 \
> -    crate://crates.io/picky-asn1-x509/0.4.0 \
> -    crate://crates.io/picky-asn1/0.3.1 \
> -    crate://crates.io/pin-project-lite/0.2.6 \
> -    crate://crates.io/pin-utils/0.1.0 \
> -    crate://crates.io/pkcs8/0.7.0 \
> -    crate://crates.io/pkg-config/0.3.19 \
> -    crate://crates.io/ppv-lite86/0.2.10 \
> -    crate://crates.io/primal-bit/0.3.0 \
> -    crate://crates.io/primal-check/0.3.1 \
> -    crate://crates.io/primal-estimate/0.3.1 \
> -    crate://crates.io/primal-sieve/0.3.1 \
> -    crate://crates.io/primal/0.3.0 \
> -    crate://crates.io/proc-macro-error-attr/1.0.4 \
> -    crate://crates.io/proc-macro-error/1.0.4 \
> -    crate://crates.io/proc-macro-hack/0.5.19 \
> -    crate://crates.io/proc-macro-nested/0.1.7 \
> -    crate://crates.io/proc-macro2/1.0.27 \
> -    crate://crates.io/prost-build/0.7.0 \
> -    crate://crates.io/prost-derive/0.6.1 \
> -    crate://crates.io/prost-derive/0.7.0 \
> -    crate://crates.io/prost-types/0.7.0 \
> -    crate://crates.io/prost/0.6.1 \
> -    crate://crates.io/prost/0.7.0 \
> -    crate://crates.io/protobuf-codegen/2.24.1 \
> -    crate://crates.io/protobuf/2.24.1 \
> -    crate://crates.io/protoc-grpcio/3.0.0 \
> -    crate://crates.io/protoc/2.24.1 \
> -    crate://crates.io/psa-crypto-sys/0.9.0 \
> -    crate://crates.io/psa-crypto/0.9.0 \
> -    crate://crates.io/quote/1.0.9 \
> -    crate://crates.io/radium/0.5.3 \
> -    crate://crates.io/rand/0.8.4 \
> -    crate://crates.io/rand_chacha/0.3.1 \
> -    crate://crates.io/rand_core/0.6.3 \
> -    crate://crates.io/rand_hc/0.3.1 \
> -    crate://crates.io/redox_syscall/0.2.9 \
> -    crate://crates.io/regex-syntax/0.6.25 \
> -    crate://crates.io/regex/1.4.6 \
> -    crate://crates.io/remove_dir_all/0.5.3 \
> -    crate://crates.io/ring/0.16.20 \
> -    crate://crates.io/rust-cryptoauthlib/0.4.0 \
> -    crate://crates.io/rustc-demangle/0.1.20 \
> -    crate://crates.io/rustc-hash/1.1.0 \
> -    crate://crates.io/rustc_version/0.2.3 \
> -    crate://crates.io/rusticata-macros/3.0.1 \
> -    crate://crates.io/rustversion/1.0.5 \
> -    crate://crates.io/ryu/1.0.5 \
> -    crate://crates.io/same-file/1.0.6 \
> -    crate://crates.io/scopeguard/1.1.0 \
> -    crate://crates.io/sd-notify/0.2.0 \
> -    crate://crates.io/secrecy/0.7.0 \
> -    crate://crates.io/semver-parser/0.7.0 \
> -    crate://crates.io/semver/0.9.0 \
> -    crate://crates.io/serde/1.0.126 \
> -    crate://crates.io/serde_bytes/0.11.5 \
> -    crate://crates.io/serde_derive/1.0.126 \
> -    crate://crates.io/serde_json/1.0.64 \
> -    crate://crates.io/shlex/0.1.1 \
> -    crate://crates.io/signal-hook-registry/1.4.0 \
> -    crate://crates.io/signal-hook/0.3.9 \
> -    crate://crates.io/simple_asn1/0.4.1 \
> -    crate://crates.io/simple_asn1/0.5.3 \
> -    crate://crates.io/slab/0.4.3 \
> -    crate://crates.io/smallvec/1.6.1 \
> -    crate://crates.io/spiffe/0.1.1 \
> -    crate://crates.io/spin/0.5.2 \
> -    crate://crates.io/spki/0.4.0 \
> -    crate://crates.io/stable_deref_trait/1.2.0 \
> -    crate://crates.io/static_assertions/1.1.0 \
> -    crate://crates.io/strsim/0.8.0 \
> -    crate://crates.io/structopt-derive/0.4.14 \
> -    crate://crates.io/structopt/0.3.21 \
> -    crate://crates.io/strum_macros/0.19.4 \
> -    crate://crates.io/syn/1.0.73 \
> -    crate://crates.io/synstructure/0.12.4 \
> -    crate://crates.io/tap/1.0.1 \
> -    crate://crates.io/target-lexicon/0.12.0 \
> -    crate://crates.io/tempfile/3.2.0 \
> -    crate://crates.io/termcolor/1.1.2 \
> -    crate://crates.io/textwrap/0.11.0 \
> -    crate://crates.io/thiserror-impl/1.0.25 \
> -    crate://crates.io/thiserror/1.0.25 \
> -    crate://crates.io/threadpool/1.8.1 \
> -    crate://crates.io/time/0.1.44 \
> -    crate://crates.io/tinyvec/1.2.0 \
> -    crate://crates.io/tinyvec_macros/0.1.0 \
> -    crate://crates.io/toml/0.5.8 \
> -    crate://crates.io/tss-esapi-sys/0.2.0 \
> -    crate://crates.io/tss-esapi/7.0.0-alpha.1 \
> -    crate://crates.io/typenum/1.13.0 \
> -    crate://crates.io/unicode-bidi/0.3.5 \
> -    crate://crates.io/unicode-normalization/0.1.19 \
> -    crate://crates.io/unicode-segmentation/1.7.1 \
> -    crate://crates.io/unicode-width/0.1.8 \
> -    crate://crates.io/unicode-xid/0.2.2 \
> -    crate://crates.io/untrusted/0.7.1 \
> -    crate://crates.io/url/2.2.2 \
> -    crate://crates.io/users/0.11.0 \
> -    crate://crates.io/uuid/0.8.2 \
> -    crate://crates.io/vcpkg/0.2.15 \
> -    crate://crates.io/vec_map/0.8.2 \
> -    crate://crates.io/version/3.0.0 \
> -    crate://crates.io/version_check/0.9.3 \
> -    crate://crates.io/walkdir/2.3.2 \
> -    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
> -    crate://crates.io/wasm-bindgen-backend/0.2.74 \
> -    crate://crates.io/wasm-bindgen-macro-support/0.2.74 \
> -    crate://crates.io/wasm-bindgen-macro/0.2.74 \
> -    crate://crates.io/wasm-bindgen-shared/0.2.74 \
> -    crate://crates.io/wasm-bindgen/0.2.74 \
> -    crate://crates.io/web-sys/0.3.51 \
> -    crate://crates.io/which/3.1.1 \
> -    crate://crates.io/which/4.1.0 \
> -    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> -    crate://crates.io/winapi-util/0.1.5 \
> -    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> -    crate://crates.io/winapi/0.3.9 \
> -    crate://crates.io/wyz/0.2.0 \
> -    crate://crates.io/x509-parser/0.9.2 \
> -    crate://crates.io/yasna/0.3.2 \
> -    crate://crates.io/zeroize/1.3.0 \
> -    crate://crates.io/zeroize_derive/1.1.0 \
> -"
> -
> -LIC_FILES_CHKSUM = " \
> -    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> -"
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> similarity index 96%
> rename from meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
> rename to meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> index 3f12139..d1d6c07 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> @@ -2,7 +2,8 @@ SUMMARY = "Platform AbstRaction for SECurity Daemon"
>   HOMEPAGE = "https://github.com/parallaxsecond/parsec"
>   LICENSE = "Apache-2.0"
>   
> -inherit cargo
> +inherit cargo pkgconfig
> +DEPENDS = "clang-native"
>   
>   SRC_URI += "crate://crates.io/parsec-service/${PV} \
>               file://parsec_init \
> @@ -10,14 +11,10 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
>               file://parsec-tmpfiles.conf \
>   "
>   
> -DEPENDS = "clang-native"
> -
> -PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO CRYPTOAUTHLIB"
> -
> +PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
>   have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
>   PACKAGECONFIG:append = " ${@bb.utils.contains('BBFILE_COLLECTIONS', 'tpm-layer', '${have_TPM}', '', d)}"
>   
> -
>   PACKAGECONFIG[ALL] = "all-providers cryptoki/generate-bindings tss-esapi/generate-bindings,,tpm2-tss libts,libts"
>   PACKAGECONFIG[TPM] = "tpm-provider tss-esapi/generate-bindings,,tpm2-tss"
>   PACKAGECONFIG[PKCS11] = "pkcs11-provider cryptoki/generate-bindings,"
> @@ -28,7 +25,7 @@ PACKAGECONFIG[TS] = "trusted-service-provider,,libts,libts"
>   PARSEC_FEATURES = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).strip().replace(' ', ',')}"
>   CARGO_BUILD_FLAGS += " --features ${PARSEC_FEATURES}"
>   
> -inherit pkgconfig systemd
> +inherit systemd
>   SYSTEMD_SERVICE:${PN} = "parsec.service"
>   
>   inherit update-rc.d
> @@ -73,6 +70,7 @@ FILES:${PN} += " \
>       ${sysconfdir}/parsec/config.toml \
>       ${libexecdir}/parsec/parsec \
>       ${systemd_unitdir}/system/parsec.service \
> +    ${localstatedir}/lib/parsec \
>       ${libdir}/tmpfiles.d/parsec-tmpfiles.conf \
>       ${sysconfdir}/init.d/parsec \
>   "
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.inc
> new file mode 100644
> index 0000000..b6934f8
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.inc
> @@ -0,0 +1,232 @@
> +# This file is created from parsec repository Cargo.lock using cargo-bitbake tool
> +
> +SRC_URI += " \
> +    crate://crates.io/ahash/0.7.6 \
> +    crate://crates.io/aho-corasick/0.7.18 \
> +    crate://crates.io/ansi_term/0.12.1 \
> +    crate://crates.io/anyhow/1.0.56 \
> +    crate://crates.io/arrayvec/0.5.2 \
> +    crate://crates.io/atty/0.2.14 \
> +    crate://crates.io/autocfg/1.1.0 \
> +    crate://crates.io/base64/0.12.3 \
> +    crate://crates.io/base64/0.13.0 \
> +    crate://crates.io/bincode/1.3.3 \
> +    crate://crates.io/bindgen/0.57.0 \
> +    crate://crates.io/bindgen/0.59.2 \
> +    crate://crates.io/bitfield/0.13.2 \
> +    crate://crates.io/bitflags/1.3.2 \
> +    crate://crates.io/bitvec/0.19.6 \
> +    crate://crates.io/bumpalo/3.9.1 \
> +    crate://crates.io/bytes/1.1.0 \
> +    crate://crates.io/cc/1.0.73 \
> +    crate://crates.io/cexpr/0.4.0 \
> +    crate://crates.io/cexpr/0.6.0 \
> +    crate://crates.io/cfg-if/1.0.0 \
> +    crate://crates.io/chrono/0.4.19 \
> +    crate://crates.io/clang-sys/1.3.1 \
> +    crate://crates.io/clap/2.34.0 \
> +    crate://crates.io/cmake/0.1.45 \
> +    crate://crates.io/const-oid/0.6.2 \
> +    crate://crates.io/cryptoauthlib-sys/0.2.2 \
> +    crate://crates.io/cryptoki-sys/0.1.3 \
> +    crate://crates.io/cryptoki/0.2.1 \
> +    crate://crates.io/data-encoding/2.3.2 \
> +    crate://crates.io/der-oid-macro/0.4.0 \
> +    crate://crates.io/der-parser/5.1.2 \
> +    crate://crates.io/der/0.4.5 \
> +    crate://crates.io/derivative/2.2.0 \
> +    crate://crates.io/either/1.6.1 \
> +    crate://crates.io/enumflags2/0.7.3 \
> +    crate://crates.io/enumflags2_derive/0.7.3 \
> +    crate://crates.io/env_logger/0.8.4 \
> +    crate://crates.io/env_logger/0.9.0 \
> +    crate://crates.io/fallible-iterator/0.2.0 \
> +    crate://crates.io/fallible-streaming-iterator/0.1.9 \
> +    crate://crates.io/fastrand/1.7.0 \
> +    crate://crates.io/fixedbitset/0.2.0 \
> +    crate://crates.io/form_urlencoded/1.0.1 \
> +    crate://crates.io/funty/1.1.0 \
> +    crate://crates.io/futures-channel/0.3.21 \
> +    crate://crates.io/futures-core/0.3.21 \
> +    crate://crates.io/futures-executor/0.3.21 \
> +    crate://crates.io/futures-io/0.3.21 \
> +    crate://crates.io/futures-macro/0.3.21 \
> +    crate://crates.io/futures-sink/0.3.21 \
> +    crate://crates.io/futures-task/0.3.21 \
> +    crate://crates.io/futures-util/0.3.21 \
> +    crate://crates.io/futures/0.3.21 \
> +    crate://crates.io/generic-array/0.14.5 \
> +    crate://crates.io/getrandom/0.2.5 \
> +    crate://crates.io/glob/0.3.0 \
> +    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
> +    crate://crates.io/grpcio/0.9.1 \
> +    crate://crates.io/hashbrown/0.11.2 \
> +    crate://crates.io/hashlink/0.7.0 \
> +    crate://crates.io/heck/0.3.3 \
> +    crate://crates.io/hermit-abi/0.1.19 \
> +    crate://crates.io/hex/0.4.3 \
> +    crate://crates.io/hostname-validator/1.1.0 \
> +    crate://crates.io/humantime/2.1.0 \
> +    crate://crates.io/idna/0.2.3 \
> +    crate://crates.io/indexmap/1.8.0 \
> +    crate://crates.io/instant/0.1.12 \
> +    crate://crates.io/itertools/0.10.3 \
> +    crate://crates.io/itoa/1.0.1 \
> +    crate://crates.io/js-sys/0.3.56 \
> +    crate://crates.io/jsonwebkey/0.3.2 \
> +    crate://crates.io/jsonwebtoken/7.2.0 \
> +    crate://crates.io/lazy_static/1.4.0 \
> +    crate://crates.io/lazycell/1.3.0 \
> +    crate://crates.io/lexical-core/0.7.6 \
> +    crate://crates.io/libc/0.2.120 \
> +    crate://crates.io/libloading/0.7.3 \
> +    crate://crates.io/libsqlite3-sys/0.23.2 \
> +    crate://crates.io/libz-sys/1.1.5 \
> +    crate://crates.io/lock_api/0.4.6 \
> +    crate://crates.io/log/0.4.14 \
> +    crate://crates.io/matches/0.1.9 \
> +    crate://crates.io/mbox/0.6.0 \
> +    crate://crates.io/memchr/2.4.1 \
> +    crate://crates.io/minimal-lexical/0.2.1 \
> +    crate://crates.io/multimap/0.8.3 \
> +    crate://crates.io/nom/5.1.2 \
> +    crate://crates.io/nom/6.1.2 \
> +    crate://crates.io/nom/7.1.1 \
> +    crate://crates.io/num-bigint/0.2.6 \
> +    crate://crates.io/num-bigint/0.3.3 \
> +    crate://crates.io/num-bigint/0.4.3 \
> +    crate://crates.io/num-complex/0.3.1 \
> +    crate://crates.io/num-derive/0.3.3 \
> +    crate://crates.io/num-integer/0.1.44 \
> +    crate://crates.io/num-iter/0.1.42 \
> +    crate://crates.io/num-rational/0.3.2 \
> +    crate://crates.io/num-traits/0.2.14 \
> +    crate://crates.io/num/0.3.1 \
> +    crate://crates.io/num_cpus/1.13.1 \
> +    crate://crates.io/oid-registry/0.1.5 \
> +    crate://crates.io/oid/0.2.1 \
> +    crate://crates.io/once_cell/1.10.0 \
> +    crate://crates.io/parking_lot/0.11.2 \
> +    crate://crates.io/parking_lot_core/0.8.5 \
> +    crate://crates.io/parsec-interface/0.26.0 \
> +    crate://crates.io/peeking_take_while/0.1.2 \
> +    crate://crates.io/pem/0.8.3 \
> +    crate://crates.io/percent-encoding/2.1.0 \
> +    crate://crates.io/pest/2.1.3 \
> +    crate://crates.io/petgraph/0.5.1 \
> +    crate://crates.io/picky-asn1-der/0.2.5 \
> +    crate://crates.io/picky-asn1-x509/0.6.1 \
> +    crate://crates.io/picky-asn1/0.3.3 \
> +    crate://crates.io/pin-project-lite/0.2.8 \
> +    crate://crates.io/pin-utils/0.1.0 \
> +    crate://crates.io/pkcs8/0.7.6 \
> +    crate://crates.io/pkg-config/0.3.24 \
> +    crate://crates.io/ppv-lite86/0.2.16 \
> +    crate://crates.io/proc-macro-error-attr/1.0.4 \
> +    crate://crates.io/proc-macro-error/1.0.4 \
> +    crate://crates.io/proc-macro2/1.0.36 \
> +    crate://crates.io/prost-build/0.8.0 \
> +    crate://crates.io/prost-derive/0.8.0 \
> +    crate://crates.io/prost-types/0.8.0 \
> +    crate://crates.io/prost/0.8.0 \
> +    crate://crates.io/protobuf/2.27.1 \
> +    crate://crates.io/psa-crypto-sys/0.9.2 \
> +    crate://crates.io/psa-crypto/0.9.1 \
> +    crate://crates.io/quote/1.0.15 \
> +    crate://crates.io/radium/0.5.3 \
> +    crate://crates.io/rand/0.8.5 \
> +    crate://crates.io/rand_chacha/0.3.1 \
> +    crate://crates.io/rand_core/0.6.3 \
> +    crate://crates.io/redox_syscall/0.2.11 \
> +    crate://crates.io/regex-syntax/0.6.25 \
> +    crate://crates.io/regex/1.5.5 \
> +    crate://crates.io/remove_dir_all/0.5.3 \
> +    crate://crates.io/ring/0.16.20 \
> +    crate://crates.io/rusqlite/0.26.3 \
> +    crate://crates.io/rust-cryptoauthlib/0.4.5 \
> +    crate://crates.io/rustc-hash/1.1.0 \
> +    crate://crates.io/rustc_version/0.3.3 \
> +    crate://crates.io/rusticata-macros/3.2.0 \
> +    crate://crates.io/rustversion/1.0.6 \
> +    crate://crates.io/ryu/1.0.9 \
> +    crate://crates.io/same-file/1.0.6 \
> +    crate://crates.io/scopeguard/1.1.0 \
> +    crate://crates.io/sd-notify/0.2.0 \
> +    crate://crates.io/secrecy/0.7.0 \
> +    crate://crates.io/semver-parser/0.10.2 \
> +    crate://crates.io/semver/0.11.0 \
> +    crate://crates.io/serde/1.0.136 \
> +    crate://crates.io/serde_bytes/0.11.5 \
> +    crate://crates.io/serde_derive/1.0.136 \
> +    crate://crates.io/serde_json/1.0.79 \
> +    crate://crates.io/shlex/0.1.1 \
> +    crate://crates.io/shlex/1.1.0 \
> +    crate://crates.io/signal-hook-registry/1.4.0 \
> +    crate://crates.io/signal-hook/0.3.13 \
> +    crate://crates.io/simple_asn1/0.4.1 \
> +    crate://crates.io/simple_asn1/0.5.4 \
> +    crate://crates.io/slab/0.4.5 \
> +    crate://crates.io/smallvec/1.8.0 \
> +    crate://crates.io/spiffe/0.2.0 \
> +    crate://crates.io/spin/0.5.2 \
> +    crate://crates.io/spki/0.4.1 \
> +    crate://crates.io/stable_deref_trait/1.2.0 \
> +    crate://crates.io/static_assertions/1.1.0 \
> +    crate://crates.io/strsim/0.8.0 \
> +    crate://crates.io/structopt-derive/0.4.18 \
> +    crate://crates.io/structopt/0.3.26 \
> +    crate://crates.io/strum_macros/0.21.1 \
> +    crate://crates.io/syn/1.0.88 \
> +    crate://crates.io/synstructure/0.12.6 \
> +    crate://crates.io/tap/1.0.1 \
> +    crate://crates.io/target-lexicon/0.12.3 \
> +    crate://crates.io/tempfile/3.3.0 \
> +    crate://crates.io/termcolor/1.1.3 \
> +    crate://crates.io/textwrap/0.11.0 \
> +    crate://crates.io/thiserror-impl/1.0.30 \
> +    crate://crates.io/thiserror/1.0.30 \
> +    crate://crates.io/threadpool/1.8.1 \
> +    crate://crates.io/time/0.1.44 \
> +    crate://crates.io/tinyvec/1.5.1 \
> +    crate://crates.io/tinyvec_macros/0.1.0 \
> +    crate://crates.io/toml/0.5.8 \
> +    crate://crates.io/tss-esapi-sys/0.3.0 \
> +    crate://crates.io/tss-esapi/7.0.1 \
> +    crate://crates.io/typenum/1.15.0 \
> +    crate://crates.io/ucd-trie/0.1.3 \
> +    crate://crates.io/unicode-bidi/0.3.7 \
> +    crate://crates.io/unicode-normalization/0.1.19 \
> +    crate://crates.io/unicode-segmentation/1.9.0 \
> +    crate://crates.io/unicode-width/0.1.9 \
> +    crate://crates.io/unicode-xid/0.2.2 \
> +    crate://crates.io/untrusted/0.7.1 \
> +    crate://crates.io/url/2.2.2 \
> +    crate://crates.io/users/0.11.0 \
> +    crate://crates.io/uuid/0.8.2 \
> +    crate://crates.io/vcpkg/0.2.15 \
> +    crate://crates.io/vec_map/0.8.2 \
> +    crate://crates.io/version/3.0.0 \
> +    crate://crates.io/version_check/0.9.4 \
> +    crate://crates.io/walkdir/2.3.2 \
> +    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
> +    crate://crates.io/wasm-bindgen-backend/0.2.79 \
> +    crate://crates.io/wasm-bindgen-macro-support/0.2.79 \
> +    crate://crates.io/wasm-bindgen-macro/0.2.79 \
> +    crate://crates.io/wasm-bindgen-shared/0.2.79 \
> +    crate://crates.io/wasm-bindgen/0.2.79 \
> +    crate://crates.io/web-sys/0.3.56 \
> +    crate://crates.io/which/4.2.4 \
> +    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi-util/0.1.5 \
> +    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi/0.3.9 \
> +    crate://crates.io/wyz/0.2.0 \
> +    crate://crates.io/x509-parser/0.9.2 \
> +    crate://crates.io/yasna/0.3.2 \
> +    crate://crates.io/zeroize/1.3.0 \
> +    crate://crates.io/zeroize_derive/1.3.2 \
> +"
> +
> +LIC_FILES_CHKSUM = " \
> +    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> +"
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb
> similarity index 100%
> rename from meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.bb
> rename to meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.inc b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.inc
> similarity index 61%
> rename from meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.inc
> rename to meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.inc
> index 567cc37..d17ec25 100644
> --- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.inc
> +++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.inc
> @@ -1,31 +1,30 @@
>   # This file is created from parsec-tool repository Cargo.lock using cargo-bitbake tool
>   
>   SRC_URI += " \
> -    crate://crates.io/aho-corasick/0.7.15 \
> -    crate://crates.io/ansi_term/0.11.0 \
> +    crate://crates.io/aho-corasick/0.7.18 \
>       crate://crates.io/ansi_term/0.12.1 \
> -    crate://crates.io/anyhow/1.0.44 \
> +    crate://crates.io/anyhow/1.0.56 \
>       crate://crates.io/arrayvec/0.5.2 \
>       crate://crates.io/atty/0.2.14 \
> -    crate://crates.io/autocfg/1.0.1 \
> +    crate://crates.io/autocfg/1.1.0 \
>       crate://crates.io/base64/0.12.3 \
>       crate://crates.io/base64/0.13.0 \
>       crate://crates.io/bincode/1.3.3 \
>       crate://crates.io/bindgen/0.57.0 \
>       crate://crates.io/bitflags/1.3.2 \
> -    crate://crates.io/bitvec/0.19.5 \
> +    crate://crates.io/bitvec/0.19.6 \
>       crate://crates.io/block-buffer/0.9.0 \
> -    crate://crates.io/bumpalo/3.7.1 \
> +    crate://crates.io/bumpalo/3.9.1 \
>       crate://crates.io/bytes/1.1.0 \
> -    crate://crates.io/cc/1.0.70 \
> +    crate://crates.io/cc/1.0.73 \
>       crate://crates.io/cexpr/0.4.0 \
>       crate://crates.io/cfg-if/1.0.0 \
>       crate://crates.io/chrono/0.4.19 \
> -    crate://crates.io/clang-sys/1.2.2 \
> -    crate://crates.io/clap/2.33.3 \
> -    crate://crates.io/clap/3.0.0-beta.4 \
> -    crate://crates.io/clap_derive/3.0.0-beta.4 \
> -    crate://crates.io/cmake/0.1.45 \
> +    crate://crates.io/clang-sys/1.3.1 \
> +    crate://crates.io/clap/2.34.0 \
> +    crate://crates.io/clap/3.0.0-beta.5 \
> +    crate://crates.io/clap_derive/3.0.0-beta.5 \
> +    crate://crates.io/cmake/0.1.48 \
>       crate://crates.io/const-oid/0.6.2 \
>       crate://crates.io/cpufeatures/0.2.1 \
>       crate://crates.io/data-encoding/2.3.2 \
> @@ -38,16 +37,16 @@ SRC_URI += " \
>       crate://crates.io/env_logger/0.8.4 \
>       crate://crates.io/form_urlencoded/1.0.1 \
>       crate://crates.io/funty/1.1.0 \
> -    crate://crates.io/futures-channel/0.3.17 \
> -    crate://crates.io/futures-core/0.3.17 \
> -    crate://crates.io/futures-executor/0.3.17 \
> -    crate://crates.io/futures-io/0.3.17 \
> -    crate://crates.io/futures-macro/0.3.17 \
> -    crate://crates.io/futures-sink/0.3.17 \
> -    crate://crates.io/futures-task/0.3.17 \
> -    crate://crates.io/futures-util/0.3.17 \
> -    crate://crates.io/futures/0.3.17 \
> -    crate://crates.io/generic-array/0.14.4 \
> +    crate://crates.io/futures-channel/0.3.21 \
> +    crate://crates.io/futures-core/0.3.21 \
> +    crate://crates.io/futures-executor/0.3.21 \
> +    crate://crates.io/futures-io/0.3.21 \
> +    crate://crates.io/futures-macro/0.3.21 \
> +    crate://crates.io/futures-sink/0.3.21 \
> +    crate://crates.io/futures-task/0.3.21 \
> +    crate://crates.io/futures-util/0.3.21 \
> +    crate://crates.io/futures/0.3.21 \
> +    crate://crates.io/generic-array/0.14.5 \
>       crate://crates.io/glob/0.3.0 \
>       crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
>       crate://crates.io/grpcio/0.9.1 \
> @@ -56,28 +55,28 @@ SRC_URI += " \
>       crate://crates.io/hermit-abi/0.1.19 \
>       crate://crates.io/humantime/2.1.0 \
>       crate://crates.io/idna/0.2.3 \
> -    crate://crates.io/indexmap/1.7.0 \
> -    crate://crates.io/instant/0.1.11 \
> -    crate://crates.io/itertools/0.10.1 \
> -    crate://crates.io/itoa/0.4.8 \
> -    crate://crates.io/js-sys/0.3.55 \
> +    crate://crates.io/indexmap/1.8.0 \
> +    crate://crates.io/instant/0.1.12 \
> +    crate://crates.io/itertools/0.10.3 \
> +    crate://crates.io/itoa/1.0.1 \
> +    crate://crates.io/js-sys/0.3.56 \
>       crate://crates.io/jsonwebkey/0.3.2 \
>       crate://crates.io/jsonwebtoken/7.2.0 \
>       crate://crates.io/lazy_static/1.4.0 \
>       crate://crates.io/lazycell/1.3.0 \
>       crate://crates.io/lexical-core/0.7.6 \
> -    crate://crates.io/libc/0.2.103 \
> -    crate://crates.io/libloading/0.7.0 \
> -    crate://crates.io/libz-sys/1.1.3 \
> -    crate://crates.io/lock_api/0.4.5 \
> +    crate://crates.io/libc/0.2.120 \
> +    crate://crates.io/libloading/0.7.3 \
> +    crate://crates.io/libz-sys/1.1.5 \
> +    crate://crates.io/lock_api/0.4.6 \
>       crate://crates.io/log/0.4.14 \
>       crate://crates.io/matches/0.1.9 \
> -    crate://crates.io/memchr/2.3.4 \
> +    crate://crates.io/memchr/2.4.1 \
>       crate://crates.io/nom/5.1.2 \
> -    crate://crates.io/nom/6.2.1 \
> +    crate://crates.io/nom/6.1.2 \
>       crate://crates.io/num-bigint/0.2.6 \
>       crate://crates.io/num-bigint/0.3.3 \
> -    crate://crates.io/num-bigint/0.4.2 \
> +    crate://crates.io/num-bigint/0.4.3 \
>       crate://crates.io/num-complex/0.3.1 \
>       crate://crates.io/num-derive/0.3.3 \
>       crate://crates.io/num-integer/0.1.44 \
> @@ -85,83 +84,84 @@ SRC_URI += " \
>       crate://crates.io/num-rational/0.3.2 \
>       crate://crates.io/num-traits/0.2.14 \
>       crate://crates.io/num/0.3.1 \
> +    crate://crates.io/num_threads/0.1.5 \
>       crate://crates.io/oid-registry/0.1.5 \
>       crate://crates.io/oid/0.2.1 \
> -    crate://crates.io/once_cell/1.8.0 \
> +    crate://crates.io/once_cell/1.10.0 \
>       crate://crates.io/opaque-debug/0.3.0 \
> -    crate://crates.io/os_str_bytes/3.1.0 \
> +    crate://crates.io/os_str_bytes/4.1.1 \
>       crate://crates.io/parking_lot/0.11.2 \
>       crate://crates.io/parking_lot_core/0.8.5 \
>       crate://crates.io/parsec-client/0.14.0 \
>       crate://crates.io/parsec-interface/0.26.0 \
>       crate://crates.io/peeking_take_while/0.1.2 \
>       crate://crates.io/pem/0.8.3 \
> -    crate://crates.io/pem/1.0.1 \
> +    crate://crates.io/pem/1.0.2 \
>       crate://crates.io/percent-encoding/2.1.0 \
>       crate://crates.io/picky-asn1-der/0.2.5 \
>       crate://crates.io/picky-asn1-x509/0.6.1 \
>       crate://crates.io/picky-asn1/0.3.3 \
> -    crate://crates.io/pin-project-lite/0.2.7 \
> +    crate://crates.io/pin-project-lite/0.2.8 \
>       crate://crates.io/pin-utils/0.1.0 \
>       crate://crates.io/pkcs8/0.7.6 \
> -    crate://crates.io/pkg-config/0.3.20 \
> +    crate://crates.io/pkg-config/0.3.24 \
>       crate://crates.io/proc-macro-error-attr/1.0.4 \
>       crate://crates.io/proc-macro-error/1.0.4 \
> -    crate://crates.io/proc-macro-hack/0.5.19 \
> -    crate://crates.io/proc-macro-nested/0.1.7 \
> -    crate://crates.io/proc-macro2/1.0.29 \
> +    crate://crates.io/proc-macro2/1.0.36 \
>       crate://crates.io/prost-derive/0.8.0 \
>       crate://crates.io/prost/0.8.0 \
> -    crate://crates.io/protobuf/2.25.1 \
> +    crate://crates.io/protobuf/2.27.1 \
>       crate://crates.io/psa-crypto-sys/0.9.2 \
>       crate://crates.io/psa-crypto/0.9.1 \
> -    crate://crates.io/quote/1.0.9 \
> +    crate://crates.io/quote/1.0.15 \
>       crate://crates.io/radium/0.5.3 \
> -    crate://crates.io/rcgen/0.8.14 \
> -    crate://crates.io/redox_syscall/0.2.10 \
> +    crate://crates.io/rcgen/0.9.2 \
> +    crate://crates.io/redox_syscall/0.2.11 \
>       crate://crates.io/regex-syntax/0.6.25 \
> -    crate://crates.io/regex/1.4.6 \
> +    crate://crates.io/regex/1.5.5 \
>       crate://crates.io/ring/0.16.20 \
>       crate://crates.io/rustc-hash/1.1.0 \
>       crate://crates.io/rusticata-macros/3.2.0 \
> -    crate://crates.io/rustversion/1.0.5 \
> -    crate://crates.io/ryu/1.0.5 \
> +    crate://crates.io/rustversion/1.0.6 \
> +    crate://crates.io/ryu/1.0.9 \
>       crate://crates.io/same-file/1.0.6 \
>       crate://crates.io/scopeguard/1.1.0 \
>       crate://crates.io/secrecy/0.7.0 \
> -    crate://crates.io/serde/1.0.130 \
> +    crate://crates.io/serde/1.0.136 \
>       crate://crates.io/serde_bytes/0.11.5 \
> -    crate://crates.io/serde_derive/1.0.130 \
> -    crate://crates.io/serde_json/1.0.68 \
> +    crate://crates.io/serde_derive/1.0.136 \
> +    crate://crates.io/serde_json/1.0.79 \
>       crate://crates.io/sha2/0.9.9 \
>       crate://crates.io/shlex/0.1.1 \
>       crate://crates.io/simple_asn1/0.4.1 \
>       crate://crates.io/simple_asn1/0.5.4 \
> -    crate://crates.io/slab/0.4.4 \
> -    crate://crates.io/smallvec/1.6.1 \
> +    crate://crates.io/slab/0.4.5 \
> +    crate://crates.io/smallvec/1.8.0 \
>       crate://crates.io/spiffe/0.2.0 \
>       crate://crates.io/spin/0.5.2 \
>       crate://crates.io/spki/0.4.1 \
>       crate://crates.io/static_assertions/1.1.0 \
>       crate://crates.io/strsim/0.10.0 \
>       crate://crates.io/strsim/0.8.0 \
> -    crate://crates.io/structopt-derive/0.4.16 \
> -    crate://crates.io/structopt/0.3.23 \
> -    crate://crates.io/syn/1.0.77 \
> -    crate://crates.io/synstructure/0.12.5 \
> +    crate://crates.io/structopt-derive/0.4.18 \
> +    crate://crates.io/structopt/0.3.26 \
> +    crate://crates.io/syn/1.0.89 \
> +    crate://crates.io/synstructure/0.12.6 \
>       crate://crates.io/tap/1.0.1 \
> -    crate://crates.io/termcolor/1.1.2 \
> +    crate://crates.io/termcolor/1.1.3 \
>       crate://crates.io/textwrap/0.11.0 \
>       crate://crates.io/textwrap/0.14.2 \
> -    crate://crates.io/thiserror-impl/1.0.29 \
> -    crate://crates.io/thiserror/1.0.29 \
> +    crate://crates.io/thiserror-impl/1.0.30 \
> +    crate://crates.io/thiserror/1.0.30 \
>       crate://crates.io/time/0.1.44 \
> -    crate://crates.io/tinyvec/1.5.0 \
> +    crate://crates.io/time/0.3.7 \
> +    crate://crates.io/tinyvec/1.5.1 \
>       crate://crates.io/tinyvec_macros/0.1.0 \
> -    crate://crates.io/typenum/1.14.0 \
> -    crate://crates.io/unicode-bidi/0.3.6 \
> +    crate://crates.io/typenum/1.15.0 \
> +    crate://crates.io/unicase/2.6.0 \
> +    crate://crates.io/unicode-bidi/0.3.7 \
>       crate://crates.io/unicode-normalization/0.1.19 \
> -    crate://crates.io/unicode-segmentation/1.8.0 \
> +    crate://crates.io/unicode-segmentation/1.9.0 \
>       crate://crates.io/unicode-width/0.1.9 \
>       crate://crates.io/unicode-xid/0.2.2 \
>       crate://crates.io/untrusted/0.7.1 \
> @@ -170,15 +170,15 @@ SRC_URI += " \
>       crate://crates.io/uuid/0.8.2 \
>       crate://crates.io/vcpkg/0.2.15 \
>       crate://crates.io/vec_map/0.8.2 \
> -    crate://crates.io/version_check/0.9.3 \
> +    crate://crates.io/version_check/0.9.4 \
>       crate://crates.io/walkdir/2.3.2 \
>       crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
> -    crate://crates.io/wasm-bindgen-backend/0.2.78 \
> -    crate://crates.io/wasm-bindgen-macro-support/0.2.78 \
> -    crate://crates.io/wasm-bindgen-macro/0.2.78 \
> -    crate://crates.io/wasm-bindgen-shared/0.2.78 \
> -    crate://crates.io/wasm-bindgen/0.2.78 \
> -    crate://crates.io/web-sys/0.3.55 \
> +    crate://crates.io/wasm-bindgen-backend/0.2.79 \
> +    crate://crates.io/wasm-bindgen-macro-support/0.2.79 \
> +    crate://crates.io/wasm-bindgen-macro/0.2.79 \
> +    crate://crates.io/wasm-bindgen-shared/0.2.79 \
> +    crate://crates.io/wasm-bindgen/0.2.79 \
> +    crate://crates.io/web-sys/0.3.56 \
>       crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
>       crate://crates.io/winapi-util/0.1.5 \
>       crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> @@ -186,9 +186,9 @@ SRC_URI += " \
>       crate://crates.io/wyz/0.2.0 \
>       crate://crates.io/x509-parser/0.9.2 \
>       crate://crates.io/yasna/0.3.2 \
> -    crate://crates.io/yasna/0.4.0 \
> +    crate://crates.io/yasna/0.5.0 \
>       crate://crates.io/zeroize/1.3.0 \
> -    crate://crates.io/zeroize_derive/1.2.0 \
> +    crate://crates.io/zeroize_derive/1.3.2 \
>   "
>   
>   LIC_FILES_CHKSUM = " \
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56684): https://lists.yoctoproject.org/g/yocto/message/56684
> Mute This Topic: https://lists.yoctoproject.org/mt/90317029/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


