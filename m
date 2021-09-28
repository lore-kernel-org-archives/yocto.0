Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C1D8C433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 23:30:56 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web09.1929.1632871855554878436
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:30:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ApryHD/M;
 spf=pass (domain: gmail.com, ip: 209.85.215.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id s75so721503pgs.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=X6R17lAN5GI3N2FqHDBZWU8U2p5LJwYA+5Rik7Pk/Y4=;
        b=ApryHD/M4uC4HgqGtLGtAK3WD1OxWbjlQyqDZg2gb1TehUDSjenGwLp7z5JHqZroic
         J3isy1CgN0H0bVriwjHBQkz5x25Znb8uSexY7CTUGtVv8LqVvPHHM3Agf3PGGKlNQ6Bl
         DNH0lxnwSp+Cz4JZ32YDxymXCxtzwB+AJRQ+PN8nC+Ao16T0bgj2sgH5ElB31lwpBEMI
         gx0q9bbjRAgYwaWjiTVCWoCw19IYOLgp575GDWEsrGfwG21KH3dt2VT3wq3HHCXmFijU
         XERlpicVtBdt23nhhr/mfzm8yEw8w3siafvTJgyQim1rn7sjOxrxqqYnSQYPVfu7b+zy
         oSzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=X6R17lAN5GI3N2FqHDBZWU8U2p5LJwYA+5Rik7Pk/Y4=;
        b=37hL+e+B71Ruhpdi9zMifFqizsDB0ZKmgpnQp9VRHcPZpMQfajfTBwjOYEhmrk9hNX
         l5pOaSq4fZPzxvMvCzYrmHud2DqouIqnTwakIiX5OQsFHuzH2necmSrQHzB7ppWv/nK4
         Dv5khyMCzBuu0DRXoidNtTTQDdnq9eXgh7gHyT+X2fAiJJRS5sZXpoESoJ+gHyimiKL1
         3Om9MPKpBFJ0MQ23ajCKaiIrlF6MRqr1wI7oVt5kT6JHS9oM9Jm5D63DxsL/1FFe+QJo
         TYeu0v4H8nyKxnzWXIBbKbsnx7XYUEF/hDVPAlX+9QdgZjvF7HlN7DrVG6drUhj9EvRa
         +AuA==
X-Gm-Message-State: AOAM530hh5PSaFlW64EKvRYQuyi0Y04iuYDPdq6A8ID+5dq5UxD58Hai
	O1xHIPh6TkfAgjvKoU/k3BZkNHZFRNM=
X-Google-Smtp-Source: 
 ABdhPJwL26WlZxrAUc7lr5UXD7SCYjDHNPjNMR7AgQhN31tZGiXHellZIZqlenPGg9e1J7G02x3MpA==
X-Received: by 2002:a63:1c47:: with SMTP id c7mr7009157pgm.40.1632871854602;
        Tue, 28 Sep 2021 16:30:54 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:b669:1b22:84ea:4511?
 ([2601:202:4180:a5c0:b669:1b22:84ea:4511])
        by smtp.gmail.com with ESMTPSA id
 a10sm228193pgd.91.2021.09.28.16.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 16:30:54 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] Upgrade parsec-service 0.8.1 and
 parsec-tool 0.4.0
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20210927195720.2066221-1-Anton.Antonov@arm.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <95263e19-e663-2f27-4202-ca0c64398434@gmail.com>
Date: Tue, 28 Sep 2021 16:30:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927195720.2066221-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 23:30:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54896

merged.

On 9/27/21 12:57 PM, Anton Antonov wrote:
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>  .../parsec-service/files/cryptoki.patch       |  18 --
>  .../parsec-service/parsec-service_0.7.0.inc   | 147 -----------
>  ...rvice_0.7.0.bb => parsec-service_0.8.1.bb} |  15 +-
>  .../parsec-service/parsec-service_0.8.1.inc   | 246 ++++++++++++++++++
>  .../parsec-tool/parsec-tool_0.3.0.inc         | 127 ---------
>  ...sec-tool_0.3.0.bb => parsec-tool_0.4.0.bb} |   3 +
>  .../parsec-tool/parsec-tool_0.4.0.inc         | 216 +++++++++++++++
>  7 files changed, 477 insertions(+), 295 deletions(-)
>  delete mode 100644 meta-parsec/recipes-parsec/parsec-service/files/cryptoki.patch
>  delete mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.inc
>  rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_0.7.0.bb => parsec-service_0.8.1.bb} (77%)
>  create mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.inc
>  delete mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.inc
>  rename meta-parsec/recipes-parsec/parsec-tool/{parsec-tool_0.3.0.bb => parsec-tool_0.4.0.bb} (75%)
>  create mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.inc
>
> diff --git a/meta-parsec/recipes-parsec/parsec-service/files/cryptoki.patch b/meta-parsec/recipes-parsec/parsec-service/files/cryptoki.patch
> deleted file mode 100644
> index c234479..0000000
> --- a/meta-parsec/recipes-parsec/parsec-service/files/cryptoki.patch
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -
> -Use cryptoki v0.1.1 which supports the "generate-bindings" feature
> -required for building Parsec service 0.7.0 in Yocto.
> -
> -Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> -Upstream-Status: Submitted
> -
> ---- a/Cargo.toml	2021-04-01 10:29:50.333687763 +0100
> -+++ b/Cargo.toml	2021-04-01 10:27:13.051860002 +0100
> -@@ -37,7 +37,7 @@
> - version = "1.3.1"
> - 
> - [dependencies.cryptoki]
> --version = "0.1.0"
> -+version = "0.1.1"
> - features = ["psa-crypto-conversions"]
> - optional = true
> - 
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.inc
> deleted file mode 100644
> index 59a47f9..0000000
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.inc
> +++ /dev/null
> @@ -1,147 +0,0 @@
> -# This file is created from parsec-service repository Cargo.lock using cargo-bitbake tool
> -
> -SRC_URI += " \
> -    crate://crates.io/aho-corasick/0.7.15 \
> -    crate://crates.io/ansi_term/0.11.0 \
> -    crate://crates.io/anyhow/1.0.38 \
> -    crate://crates.io/atty/0.2.14 \
> -    crate://crates.io/autocfg/1.0.1 \
> -    crate://crates.io/base64/0.12.3 \
> -    crate://crates.io/base64/0.13.0 \
> -    crate://crates.io/bincode/1.3.2 \
> -    crate://crates.io/bindgen/0.56.0 \
> -    crate://crates.io/bindgen/0.57.0 \
> -    crate://crates.io/bitfield/0.13.2 \
> -    crate://crates.io/bitflags/1.2.1 \
> -    crate://crates.io/byteorder/1.3.4 \
> -    crate://crates.io/bytes/0.5.6 \
> -    crate://crates.io/bytes/1.0.1 \
> -    crate://crates.io/cc/1.0.67 \
> -    crate://crates.io/cexpr/0.4.0 \
> -    crate://crates.io/cfg-if/1.0.0 \
> -    crate://crates.io/clang-sys/1.1.1 \
> -    crate://crates.io/clap/2.33.3 \
> -    crate://crates.io/cmake/0.1.45 \
> -    crate://crates.io/cryptoauthlib-sys/0.1.0 \
> -    crate://crates.io/cryptoki-sys/0.1.1 \
> -    crate://crates.io/cryptoki/0.1.1 \
> -    crate://crates.io/derivative/2.2.0 \
> -    crate://crates.io/either/1.6.1 \
> -    crate://crates.io/enumflags2/0.6.4 \
> -    crate://crates.io/enumflags2_derive/0.6.4 \
> -    crate://crates.io/env_logger/0.8.3 \
> -    crate://crates.io/fixedbitset/0.2.0 \
> -    crate://crates.io/getrandom/0.2.2 \
> -    crate://crates.io/glob/0.3.0 \
> -    crate://crates.io/hashbrown/0.9.1 \
> -    crate://crates.io/heck/0.3.2 \
> -    crate://crates.io/hermit-abi/0.1.18 \
> -    crate://crates.io/hex/0.4.3 \
> -    crate://crates.io/hostname-validator/1.0.0 \
> -    crate://crates.io/humantime/2.1.0 \
> -    crate://crates.io/indexmap/1.6.2 \
> -    crate://crates.io/itertools/0.8.2 \
> -    crate://crates.io/itertools/0.9.0 \
> -    crate://crates.io/lazy_static/1.4.0 \
> -    crate://crates.io/lazycell/1.3.0 \
> -    crate://crates.io/libc/0.2.89 \
> -    crate://crates.io/libloading/0.7.0 \
> -    crate://crates.io/log/0.4.14 \
> -    crate://crates.io/mbox/0.5.0 \
> -    crate://crates.io/memchr/2.3.4 \
> -    crate://crates.io/multimap/0.8.3 \
> -    crate://crates.io/nom/5.1.2 \
> -    crate://crates.io/num-bigint/0.3.2 \
> -    crate://crates.io/num-complex/0.3.1 \
> -    crate://crates.io/num-derive/0.3.3 \
> -    crate://crates.io/num-integer/0.1.44 \
> -    crate://crates.io/num-iter/0.1.42 \
> -    crate://crates.io/num-rational/0.3.2 \
> -    crate://crates.io/num-traits/0.2.14 \
> -    crate://crates.io/num/0.3.1 \
> -    crate://crates.io/num_cpus/1.13.0 \
> -    crate://crates.io/oid/0.1.1 \
> -    crate://crates.io/parsec-interface/0.24.0 \
> -    crate://crates.io/peeking_take_while/0.1.2 \
> -    crate://crates.io/petgraph/0.5.1 \
> -    crate://crates.io/picky-asn1-der/0.2.4 \
> -    crate://crates.io/picky-asn1-x509/0.4.0 \
> -    crate://crates.io/picky-asn1/0.3.1 \
> -    crate://crates.io/pkg-config/0.3.19 \
> -    crate://crates.io/ppv-lite86/0.2.10 \
> -    crate://crates.io/proc-macro-error-attr/1.0.4 \
> -    crate://crates.io/proc-macro-error/1.0.4 \
> -    crate://crates.io/proc-macro2/1.0.24 \
> -    crate://crates.io/prost-build/0.6.1 \
> -    crate://crates.io/prost-build/0.7.0 \
> -    crate://crates.io/prost-derive/0.6.1 \
> -    crate://crates.io/prost-derive/0.7.0 \
> -    crate://crates.io/prost-types/0.6.1 \
> -    crate://crates.io/prost-types/0.7.0 \
> -    crate://crates.io/prost/0.6.1 \
> -    crate://crates.io/prost/0.7.0 \
> -    crate://crates.io/psa-crypto-sys/0.8.0 \
> -    crate://crates.io/psa-crypto/0.8.0 \
> -    crate://crates.io/quote/1.0.9 \
> -    crate://crates.io/rand/0.8.3 \
> -    crate://crates.io/rand_chacha/0.3.0 \
> -    crate://crates.io/rand_core/0.6.2 \
> -    crate://crates.io/rand_hc/0.3.0 \
> -    crate://crates.io/redox_syscall/0.2.5 \
> -    crate://crates.io/regex-syntax/0.6.23 \
> -    crate://crates.io/regex/1.4.5 \
> -    crate://crates.io/remove_dir_all/0.5.3 \
> -    crate://crates.io/rust-cryptoauthlib/0.1.0 \
> -    crate://crates.io/rustc-hash/1.1.0 \
> -    crate://crates.io/rustc_version/0.2.3 \
> -    crate://crates.io/same-file/1.0.6 \
> -    crate://crates.io/sd-notify/0.2.0 \
> -    crate://crates.io/secrecy/0.7.0 \
> -    crate://crates.io/semver-parser/0.7.0 \
> -    crate://crates.io/semver/0.9.0 \
> -    crate://crates.io/serde/1.0.124 \
> -    crate://crates.io/serde_bytes/0.11.5 \
> -    crate://crates.io/serde_derive/1.0.124 \
> -    crate://crates.io/shlex/0.1.1 \
> -    crate://crates.io/signal-hook-registry/1.3.0 \
> -    crate://crates.io/signal-hook/0.3.7 \
> -    crate://crates.io/stable_deref_trait/1.2.0 \
> -    crate://crates.io/strsim/0.8.0 \
> -    crate://crates.io/structopt-derive/0.4.14 \
> -    crate://crates.io/structopt/0.3.21 \
> -    crate://crates.io/strum_macros/0.19.4 \
> -    crate://crates.io/syn/1.0.64 \
> -    crate://crates.io/synstructure/0.12.4 \
> -    crate://crates.io/tempfile/3.2.0 \
> -    crate://crates.io/termcolor/1.1.2 \
> -    crate://crates.io/textwrap/0.11.0 \
> -    crate://crates.io/thiserror-impl/1.0.24 \
> -    crate://crates.io/thiserror/1.0.24 \
> -    crate://crates.io/threadpool/1.8.1 \
> -    crate://crates.io/toml/0.5.8 \
> -    crate://crates.io/tss-esapi-sys/0.1.0 \
> -    crate://crates.io/tss-esapi/5.0.0 \
> -    crate://crates.io/unicode-segmentation/1.7.1 \
> -    crate://crates.io/unicode-width/0.1.8 \
> -    crate://crates.io/unicode-xid/0.2.1 \
> -    crate://crates.io/users/0.11.0 \
> -    crate://crates.io/uuid/0.8.2 \
> -    crate://crates.io/vec_map/0.8.2 \
> -    crate://crates.io/version/3.0.0 \
> -    crate://crates.io/version_check/0.9.3 \
> -    crate://crates.io/walkdir/2.3.1 \
> -    crate://crates.io/wasi/0.10.2+wasi-snapshot-preview1 \
> -    crate://crates.io/which/3.1.1 \
> -    crate://crates.io/which/4.0.2 \
> -    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> -    crate://crates.io/winapi-util/0.1.5 \
> -    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> -    crate://crates.io/winapi/0.3.9 \
> -    crate://crates.io/zeroize/1.2.0 \
> -    crate://crates.io/zeroize_derive/1.0.1 \
> -    file://cryptoki.patch \
> -"
> -
> -LIC_FILES_CHKSUM = " \
> -    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> -"
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
> similarity index 77%
> rename from meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> rename to meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
> index 5f7a99b..b8bfa98 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
> @@ -10,9 +10,18 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
>              file://parsec-tmpfiles.conf \
>  "
>  
> -DEPENDS = "tpm2-tss clang-native"
> -
> -CARGO_BUILD_FLAGS += " --features all-providers,cryptoki/generate-bindings,tss-esapi/generate-bindings"
> +DEPENDS = "clang-native"
> +
> +PACKAGECONFIG ??= "TPM PKCS11 MBED-CRYPTO CRYPTOAUTHLIB"
> +PACKAGECONFIG[ALL] = "all-providers,,tpm2-tss libts,libts"
> +PACKAGECONFIG[TPM] = "tpm-provider,,tpm2-tss"
> +PACKAGECONFIG[PKCS11] = "pkcs11-provider,"
> +PACKAGECONFIG[MBED-CRYPTO] = "mbed-crypto-provider,"
> +PACKAGECONFIG[CRYPTOAUTHLIB] = "cryptoauthlib-provider,"
> +PACKAGECONFIG[TS] = "trusted-service-provider,,libts,libts"
> +
> +PARSEC_PROVIDERS = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).replace(' ', ',')}"
> +CARGO_BUILD_FLAGS += " --features ${PARSEC_PROVIDERS},cryptoki/generate-bindings,tss-esapi/generate-bindings"
>  
>  inherit systemd
>  SYSTEMD_SERVICE:${PN} = "parsec.service"
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.inc
> new file mode 100644
> index 0000000..fd88e87
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.inc
> @@ -0,0 +1,246 @@
> +# This file is created from parsec-service repository Cargo.lock using cargo-bitbake tool
> +
> +SRC_URI += " \
> +    crate://crates.io/addr2line/0.15.2 \
> +    crate://crates.io/adler/1.0.2 \
> +    crate://crates.io/aho-corasick/0.7.15 \
> +    crate://crates.io/ansi_term/0.11.0 \
> +    crate://crates.io/anyhow/1.0.41 \
> +    crate://crates.io/arrayvec/0.5.2 \
> +    crate://crates.io/atty/0.2.14 \
> +    crate://crates.io/autocfg/1.0.1 \
> +    crate://crates.io/backtrace/0.3.59 \
> +    crate://crates.io/base64/0.12.3 \
> +    crate://crates.io/base64/0.13.0 \
> +    crate://crates.io/bincode/1.3.3 \
> +    crate://crates.io/bindgen/0.56.0 \
> +    crate://crates.io/bindgen/0.57.0 \
> +    crate://crates.io/bitfield/0.13.2 \
> +    crate://crates.io/bitflags/1.2.1 \
> +    crate://crates.io/bitvec/0.19.5 \
> +    crate://crates.io/boringssl-src/0.3.0+688fc5c \
> +    crate://crates.io/bumpalo/3.7.0 \
> +    crate://crates.io/bytes/0.5.6 \
> +    crate://crates.io/bytes/1.0.1 \
> +    crate://crates.io/cc/1.0.68 \
> +    crate://crates.io/cexpr/0.4.0 \
> +    crate://crates.io/cfg-if/1.0.0 \
> +    crate://crates.io/chrono/0.4.19 \
> +    crate://crates.io/clang-sys/1.2.0 \
> +    crate://crates.io/clap/2.33.3 \
> +    crate://crates.io/cmake/0.1.45 \
> +    crate://crates.io/const-oid/0.6.0 \
> +    crate://crates.io/cryptoauthlib-sys/0.2.0 \
> +    crate://crates.io/cryptoki-sys/0.1.2 \
> +    crate://crates.io/cryptoki/0.2.0 \
> +    crate://crates.io/data-encoding/2.3.2 \
> +    crate://crates.io/der-oid-macro/0.4.0 \
> +    crate://crates.io/der-parser/5.1.0 \
> +    crate://crates.io/der/0.4.0 \
> +    crate://crates.io/derivative/2.2.0 \
> +    crate://crates.io/either/1.6.1 \
> +    crate://crates.io/enumflags2/0.6.4 \
> +    crate://crates.io/enumflags2_derive/0.6.4 \
> +    crate://crates.io/env_logger/0.8.4 \
> +    crate://crates.io/failure/0.1.8 \
> +    crate://crates.io/failure_derive/0.1.8 \
> +    crate://crates.io/fixedbitset/0.2.0 \
> +    crate://crates.io/form_urlencoded/1.0.1 \
> +    crate://crates.io/funty/1.1.0 \
> +    crate://crates.io/futures-channel/0.3.15 \
> +    crate://crates.io/futures-core/0.3.15 \
> +    crate://crates.io/futures-executor/0.3.15 \
> +    crate://crates.io/futures-io/0.3.15 \
> +    crate://crates.io/futures-macro/0.3.15 \
> +    crate://crates.io/futures-sink/0.3.15 \
> +    crate://crates.io/futures-task/0.3.15 \
> +    crate://crates.io/futures-util/0.3.15 \
> +    crate://crates.io/futures/0.3.15 \
> +    crate://crates.io/generic-array/0.14.4 \
> +    crate://crates.io/getrandom/0.2.3 \
> +    crate://crates.io/gimli/0.24.0 \
> +    crate://crates.io/glob/0.3.0 \
> +    crate://crates.io/grpcio-compiler/0.7.0 \
> +    crate://crates.io/grpcio-sys/0.9.0+1.38.0 \
> +    crate://crates.io/grpcio/0.9.0 \
> +    crate://crates.io/hamming/0.1.3 \
> +    crate://crates.io/hashbrown/0.9.1 \
> +    crate://crates.io/heck/0.3.3 \
> +    crate://crates.io/hermit-abi/0.1.18 \
> +    crate://crates.io/hex/0.4.3 \
> +    crate://crates.io/hostname-validator/1.1.0 \
> +    crate://crates.io/humantime/2.1.0 \
> +    crate://crates.io/idna/0.2.3 \
> +    crate://crates.io/indexmap/1.6.2 \
> +    crate://crates.io/instant/0.1.9 \
> +    crate://crates.io/itertools/0.8.2 \
> +    crate://crates.io/itertools/0.9.0 \
> +    crate://crates.io/itoa/0.4.7 \
> +    crate://crates.io/js-sys/0.3.51 \
> +    crate://crates.io/jsonwebkey/0.3.2 \
> +    crate://crates.io/jsonwebtoken/7.2.0 \
> +    crate://crates.io/lazy_static/1.4.0 \
> +    crate://crates.io/lazycell/1.3.0 \
> +    crate://crates.io/lexical-core/0.7.6 \
> +    crate://crates.io/libc/0.2.97 \
> +    crate://crates.io/libloading/0.7.0 \
> +    crate://crates.io/libz-sys/1.1.3 \
> +    crate://crates.io/lock_api/0.4.4 \
> +    crate://crates.io/log/0.4.14 \
> +    crate://crates.io/matches/0.1.8 \
> +    crate://crates.io/mbox/0.5.0 \
> +    crate://crates.io/memchr/2.3.4 \
> +    crate://crates.io/miniz_oxide/0.4.4 \
> +    crate://crates.io/multimap/0.8.3 \
> +    crate://crates.io/nom/5.1.2 \
> +    crate://crates.io/nom/6.2.0 \
> +    crate://crates.io/num-bigint/0.2.6 \
> +    crate://crates.io/num-bigint/0.3.2 \
> +    crate://crates.io/num-bigint/0.4.0 \
> +    crate://crates.io/num-complex/0.3.1 \
> +    crate://crates.io/num-derive/0.3.3 \
> +    crate://crates.io/num-integer/0.1.44 \
> +    crate://crates.io/num-iter/0.1.42 \
> +    crate://crates.io/num-rational/0.3.2 \
> +    crate://crates.io/num-traits/0.2.14 \
> +    crate://crates.io/num/0.3.1 \
> +    crate://crates.io/num_cpus/1.13.0 \
> +    crate://crates.io/object/0.24.0 \
> +    crate://crates.io/oid-registry/0.1.3 \
> +    crate://crates.io/oid/0.1.1 \
> +    crate://crates.io/once_cell/1.8.0 \
> +    crate://crates.io/parking_lot/0.11.1 \
> +    crate://crates.io/parking_lot_core/0.8.3 \
> +    crate://crates.io/parsec-interface/0.25.0 \
> +    crate://crates.io/peeking_take_while/0.1.2 \
> +    crate://crates.io/pem/0.8.3 \
> +    crate://crates.io/percent-encoding/2.1.0 \
> +    crate://crates.io/petgraph/0.5.1 \
> +    crate://crates.io/picky-asn1-der/0.2.4 \
> +    crate://crates.io/picky-asn1-x509/0.4.0 \
> +    crate://crates.io/picky-asn1/0.3.1 \
> +    crate://crates.io/pin-project-lite/0.2.6 \
> +    crate://crates.io/pin-utils/0.1.0 \
> +    crate://crates.io/pkcs8/0.7.0 \
> +    crate://crates.io/pkg-config/0.3.19 \
> +    crate://crates.io/ppv-lite86/0.2.10 \
> +    crate://crates.io/primal-bit/0.3.0 \
> +    crate://crates.io/primal-check/0.3.1 \
> +    crate://crates.io/primal-estimate/0.3.1 \
> +    crate://crates.io/primal-sieve/0.3.1 \
> +    crate://crates.io/primal/0.3.0 \
> +    crate://crates.io/proc-macro-error-attr/1.0.4 \
> +    crate://crates.io/proc-macro-error/1.0.4 \
> +    crate://crates.io/proc-macro-hack/0.5.19 \
> +    crate://crates.io/proc-macro-nested/0.1.7 \
> +    crate://crates.io/proc-macro2/1.0.27 \
> +    crate://crates.io/prost-build/0.7.0 \
> +    crate://crates.io/prost-derive/0.6.1 \
> +    crate://crates.io/prost-derive/0.7.0 \
> +    crate://crates.io/prost-types/0.7.0 \
> +    crate://crates.io/prost/0.6.1 \
> +    crate://crates.io/prost/0.7.0 \
> +    crate://crates.io/protobuf-codegen/2.24.1 \
> +    crate://crates.io/protobuf/2.24.1 \
> +    crate://crates.io/protoc-grpcio/3.0.0 \
> +    crate://crates.io/protoc/2.24.1 \
> +    crate://crates.io/psa-crypto-sys/0.9.0 \
> +    crate://crates.io/psa-crypto/0.9.0 \
> +    crate://crates.io/quote/1.0.9 \
> +    crate://crates.io/radium/0.5.3 \
> +    crate://crates.io/rand/0.8.4 \
> +    crate://crates.io/rand_chacha/0.3.1 \
> +    crate://crates.io/rand_core/0.6.3 \
> +    crate://crates.io/rand_hc/0.3.1 \
> +    crate://crates.io/redox_syscall/0.2.9 \
> +    crate://crates.io/regex-syntax/0.6.25 \
> +    crate://crates.io/regex/1.4.6 \
> +    crate://crates.io/remove_dir_all/0.5.3 \
> +    crate://crates.io/ring/0.16.20 \
> +    crate://crates.io/rust-cryptoauthlib/0.4.0 \
> +    crate://crates.io/rustc-demangle/0.1.20 \
> +    crate://crates.io/rustc-hash/1.1.0 \
> +    crate://crates.io/rustc_version/0.2.3 \
> +    crate://crates.io/rusticata-macros/3.0.1 \
> +    crate://crates.io/rustversion/1.0.5 \
> +    crate://crates.io/ryu/1.0.5 \
> +    crate://crates.io/same-file/1.0.6 \
> +    crate://crates.io/scopeguard/1.1.0 \
> +    crate://crates.io/sd-notify/0.2.0 \
> +    crate://crates.io/secrecy/0.7.0 \
> +    crate://crates.io/semver-parser/0.7.0 \
> +    crate://crates.io/semver/0.9.0 \
> +    crate://crates.io/serde/1.0.126 \
> +    crate://crates.io/serde_bytes/0.11.5 \
> +    crate://crates.io/serde_derive/1.0.126 \
> +    crate://crates.io/serde_json/1.0.64 \
> +    crate://crates.io/shlex/0.1.1 \
> +    crate://crates.io/signal-hook-registry/1.4.0 \
> +    crate://crates.io/signal-hook/0.3.9 \
> +    crate://crates.io/simple_asn1/0.4.1 \
> +    crate://crates.io/simple_asn1/0.5.3 \
> +    crate://crates.io/slab/0.4.3 \
> +    crate://crates.io/smallvec/1.6.1 \
> +    crate://crates.io/spiffe/0.1.1 \
> +    crate://crates.io/spin/0.5.2 \
> +    crate://crates.io/spki/0.4.0 \
> +    crate://crates.io/stable_deref_trait/1.2.0 \
> +    crate://crates.io/static_assertions/1.1.0 \
> +    crate://crates.io/strsim/0.8.0 \
> +    crate://crates.io/structopt-derive/0.4.14 \
> +    crate://crates.io/structopt/0.3.21 \
> +    crate://crates.io/strum_macros/0.19.4 \
> +    crate://crates.io/syn/1.0.73 \
> +    crate://crates.io/synstructure/0.12.4 \
> +    crate://crates.io/tap/1.0.1 \
> +    crate://crates.io/target-lexicon/0.12.0 \
> +    crate://crates.io/tempfile/3.2.0 \
> +    crate://crates.io/termcolor/1.1.2 \
> +    crate://crates.io/textwrap/0.11.0 \
> +    crate://crates.io/thiserror-impl/1.0.25 \
> +    crate://crates.io/thiserror/1.0.25 \
> +    crate://crates.io/threadpool/1.8.1 \
> +    crate://crates.io/time/0.1.44 \
> +    crate://crates.io/tinyvec/1.2.0 \
> +    crate://crates.io/tinyvec_macros/0.1.0 \
> +    crate://crates.io/toml/0.5.8 \
> +    crate://crates.io/tss-esapi-sys/0.2.0 \
> +    crate://crates.io/tss-esapi/7.0.0-alpha.1 \
> +    crate://crates.io/typenum/1.13.0 \
> +    crate://crates.io/unicode-bidi/0.3.5 \
> +    crate://crates.io/unicode-normalization/0.1.19 \
> +    crate://crates.io/unicode-segmentation/1.7.1 \
> +    crate://crates.io/unicode-width/0.1.8 \
> +    crate://crates.io/unicode-xid/0.2.2 \
> +    crate://crates.io/untrusted/0.7.1 \
> +    crate://crates.io/url/2.2.2 \
> +    crate://crates.io/users/0.11.0 \
> +    crate://crates.io/uuid/0.8.2 \
> +    crate://crates.io/vcpkg/0.2.15 \
> +    crate://crates.io/vec_map/0.8.2 \
> +    crate://crates.io/version/3.0.0 \
> +    crate://crates.io/version_check/0.9.3 \
> +    crate://crates.io/walkdir/2.3.2 \
> +    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
> +    crate://crates.io/wasm-bindgen-backend/0.2.74 \
> +    crate://crates.io/wasm-bindgen-macro-support/0.2.74 \
> +    crate://crates.io/wasm-bindgen-macro/0.2.74 \
> +    crate://crates.io/wasm-bindgen-shared/0.2.74 \
> +    crate://crates.io/wasm-bindgen/0.2.74 \
> +    crate://crates.io/web-sys/0.3.51 \
> +    crate://crates.io/which/3.1.1 \
> +    crate://crates.io/which/4.1.0 \
> +    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi-util/0.1.5 \
> +    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi/0.3.9 \
> +    crate://crates.io/wyz/0.2.0 \
> +    crate://crates.io/x509-parser/0.9.2 \
> +    crate://crates.io/yasna/0.3.2 \
> +    crate://crates.io/zeroize/1.3.0 \
> +    crate://crates.io/zeroize_derive/1.1.0 \
> +"
> +
> +LIC_FILES_CHKSUM = " \
> +    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> +"
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.inc b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.inc
> deleted file mode 100644
> index 9560dcf..0000000
> --- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.inc
> +++ /dev/null
> @@ -1,127 +0,0 @@
> -# This file is created from parsec-tool repository Cargo.lock using cargo-bitbake tool
> -
> -SRC_URI += " \
> -    crate://crates.io/aho-corasick/0.7.15 \
> -    crate://crates.io/ansi_term/0.11.0 \
> -    crate://crates.io/ansi_term/0.12.1 \
> -    crate://crates.io/anyhow/1.0.38 \
> -    crate://crates.io/atty/0.2.14 \
> -    crate://crates.io/autocfg/1.0.1 \
> -    crate://crates.io/base64/0.13.0 \
> -    crate://crates.io/bincode/1.3.1 \
> -    crate://crates.io/bitflags/1.2.1 \
> -    crate://crates.io/block-buffer/0.9.0 \
> -    crate://crates.io/byteorder/1.4.2 \
> -    crate://crates.io/bytes/0.5.6 \
> -    crate://crates.io/cc/1.0.66 \
> -    crate://crates.io/cfg-if/1.0.0 \
> -    crate://crates.io/clap/2.33.3 \
> -    crate://crates.io/clap/3.0.0-beta.2 \
> -    crate://crates.io/clap_derive/3.0.0-beta.2 \
> -    crate://crates.io/cmake/0.1.45 \
> -    crate://crates.io/cpuid-bool/0.1.2 \
> -    crate://crates.io/derivative/2.2.0 \
> -    crate://crates.io/digest/0.9.0 \
> -    crate://crates.io/either/1.6.1 \
> -    crate://crates.io/env_logger/0.8.3 \
> -    crate://crates.io/fixedbitset/0.2.0 \
> -    crate://crates.io/form_urlencoded/1.0.0 \
> -    crate://crates.io/generic-array/0.14.4 \
> -    crate://crates.io/getrandom/0.2.2 \
> -    crate://crates.io/hashbrown/0.9.1 \
> -    crate://crates.io/heck/0.3.2 \
> -    crate://crates.io/hermit-abi/0.1.18 \
> -    crate://crates.io/humantime/2.1.0 \
> -    crate://crates.io/idna/0.2.1 \
> -    crate://crates.io/indexmap/1.6.1 \
> -    crate://crates.io/itertools/0.8.2 \
> -    crate://crates.io/lazy_static/1.4.0 \
> -    crate://crates.io/libc/0.2.86 \
> -    crate://crates.io/log/0.4.14 \
> -    crate://crates.io/matches/0.1.8 \
> -    crate://crates.io/memchr/2.3.4 \
> -    crate://crates.io/multimap/0.8.2 \
> -    crate://crates.io/num-bigint/0.3.1 \
> -    crate://crates.io/num-complex/0.3.1 \
> -    crate://crates.io/num-derive/0.3.3 \
> -    crate://crates.io/num-integer/0.1.44 \
> -    crate://crates.io/num-iter/0.1.42 \
> -    crate://crates.io/num-rational/0.3.2 \
> -    crate://crates.io/num-traits/0.2.14 \
> -    crate://crates.io/num/0.3.1 \
> -    crate://crates.io/oid/0.1.1 \
> -    crate://crates.io/once_cell/1.5.2 \
> -    crate://crates.io/opaque-debug/0.3.0 \
> -    crate://crates.io/os_str_bytes/2.4.0 \
> -    crate://crates.io/parsec-client/0.12.0 \
> -    crate://crates.io/parsec-interface/0.24.0 \
> -    crate://crates.io/pem/0.8.3 \
> -    crate://crates.io/percent-encoding/2.1.0 \
> -    crate://crates.io/petgraph/0.5.1 \
> -    crate://crates.io/picky-asn1-der/0.2.4 \
> -    crate://crates.io/picky-asn1/0.3.1 \
> -    crate://crates.io/ppv-lite86/0.2.10 \
> -    crate://crates.io/proc-macro-error-attr/1.0.4 \
> -    crate://crates.io/proc-macro-error/1.0.4 \
> -    crate://crates.io/proc-macro2/1.0.24 \
> -    crate://crates.io/prost-build/0.6.1 \
> -    crate://crates.io/prost-derive/0.6.1 \
> -    crate://crates.io/prost-types/0.6.1 \
> -    crate://crates.io/prost/0.6.1 \
> -    crate://crates.io/psa-crypto-sys/0.8.0 \
> -    crate://crates.io/psa-crypto/0.8.0 \
> -    crate://crates.io/quote/1.0.9 \
> -    crate://crates.io/rand/0.8.3 \
> -    crate://crates.io/rand_chacha/0.3.0 \
> -    crate://crates.io/rand_core/0.6.2 \
> -    crate://crates.io/rand_hc/0.3.0 \
> -    crate://crates.io/redox_syscall/0.2.5 \
> -    crate://crates.io/regex-syntax/0.6.22 \
> -    crate://crates.io/regex/1.4.3 \
> -    crate://crates.io/remove_dir_all/0.5.3 \
> -    crate://crates.io/same-file/1.0.6 \
> -    crate://crates.io/secrecy/0.7.0 \
> -    crate://crates.io/serde/1.0.123 \
> -    crate://crates.io/serde_bytes/0.11.5 \
> -    crate://crates.io/serde_derive/1.0.123 \
> -    crate://crates.io/sha2/0.9.3 \
> -    crate://crates.io/strsim/0.10.0 \
> -    crate://crates.io/strsim/0.8.0 \
> -    crate://crates.io/structopt-derive/0.4.14 \
> -    crate://crates.io/structopt/0.3.21 \
> -    crate://crates.io/syn/1.0.60 \
> -    crate://crates.io/synstructure/0.12.4 \
> -    crate://crates.io/tempfile/3.2.0 \
> -    crate://crates.io/termcolor/1.1.2 \
> -    crate://crates.io/textwrap/0.11.0 \
> -    crate://crates.io/textwrap/0.12.1 \
> -    crate://crates.io/thiserror-impl/1.0.23 \
> -    crate://crates.io/thiserror/1.0.23 \
> -    crate://crates.io/thread_local/1.1.3 \
> -    crate://crates.io/tinyvec/1.1.1 \
> -    crate://crates.io/tinyvec_macros/0.1.0 \
> -    crate://crates.io/typenum/1.12.0 \
> -    crate://crates.io/unicode-bidi/0.3.4 \
> -    crate://crates.io/unicode-normalization/0.1.17 \
> -    crate://crates.io/unicode-segmentation/1.7.1 \
> -    crate://crates.io/unicode-width/0.1.8 \
> -    crate://crates.io/unicode-xid/0.2.1 \
> -    crate://crates.io/url/2.2.0 \
> -    crate://crates.io/users/0.10.0 \
> -    crate://crates.io/uuid/0.8.2 \
> -    crate://crates.io/vec_map/0.8.2 \
> -    crate://crates.io/version_check/0.9.2 \
> -    crate://crates.io/walkdir/2.3.1 \
> -    crate://crates.io/wasi/0.10.2+wasi-snapshot-preview1 \
> -    crate://crates.io/which/3.1.1 \
> -    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> -    crate://crates.io/winapi-util/0.1.5 \
> -    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> -    crate://crates.io/winapi/0.3.9 \
> -    crate://crates.io/zeroize/1.2.0 \
> -    crate://crates.io/zeroize_derive/1.0.1 \
> -"
> -
> -LIC_FILES_CHKSUM = " \
> -    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> -"
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.bb
> similarity index 75%
> rename from meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> rename to meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.bb
> index 881f8d8..4b053b9 100644
> --- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.bb
> @@ -7,9 +7,12 @@ inherit cargo
>  SRC_URI += "crate://crates.io/parsec-tool/${PV} \
>  "
>  
> +RDEPENDS:${PN} = "openssl-bin"
> +
>  do_install() {
>    install -d ${D}/${bindir}
>    install -m 755 "${B}/target/${TARGET_SYS}/release/parsec-tool" "${D}${bindir}/parsec-tool"
> +  install -m 755 "${S}/tests/parsec-cli-tests.sh" "${D}${bindir}/parsec-cli-tests.sh"
>  }
>  
>  require parsec-tool_${PV}.inc
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.inc b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.inc
> new file mode 100644
> index 0000000..e706112
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.inc
> @@ -0,0 +1,216 @@
> +# This file is created from parsec-tool repository Cargo.lock using cargo-bitbake tool
> +
> +SRC_URI += " \
> +    crate://crates.io/addr2line/0.15.2 \
> +    crate://crates.io/adler/1.0.2 \
> +    crate://crates.io/aho-corasick/0.7.15 \
> +    crate://crates.io/ansi_term/0.11.0 \
> +    crate://crates.io/ansi_term/0.12.1 \
> +    crate://crates.io/anyhow/1.0.42 \
> +    crate://crates.io/arrayvec/0.5.2 \
> +    crate://crates.io/atty/0.2.14 \
> +    crate://crates.io/autocfg/1.0.1 \
> +    crate://crates.io/backtrace/0.3.59 \
> +    crate://crates.io/base64/0.12.3 \
> +    crate://crates.io/base64/0.13.0 \
> +    crate://crates.io/bincode/1.3.3 \
> +    crate://crates.io/bindgen/0.57.0 \
> +    crate://crates.io/bitflags/1.2.1 \
> +    crate://crates.io/bitvec/0.19.5 \
> +    crate://crates.io/block-buffer/0.9.0 \
> +    crate://crates.io/boringssl-src/0.3.0+688fc5c \
> +    crate://crates.io/bumpalo/3.7.0 \
> +    crate://crates.io/bytes/0.5.6 \
> +    crate://crates.io/cc/1.0.69 \
> +    crate://crates.io/cexpr/0.4.0 \
> +    crate://crates.io/cfg-if/1.0.0 \
> +    crate://crates.io/chrono/0.4.19 \
> +    crate://crates.io/clang-sys/1.2.0 \
> +    crate://crates.io/clap/2.33.3 \
> +    crate://crates.io/clap/3.0.0-beta.2 \
> +    crate://crates.io/clap_derive/3.0.0-beta.2 \
> +    crate://crates.io/cmake/0.1.45 \
> +    crate://crates.io/const-oid/0.6.0 \
> +    crate://crates.io/cpufeatures/0.1.5 \
> +    crate://crates.io/data-encoding/2.3.2 \
> +    crate://crates.io/der-oid-macro/0.4.0 \
> +    crate://crates.io/der-parser/5.1.2 \
> +    crate://crates.io/der/0.4.0 \
> +    crate://crates.io/derivative/2.2.0 \
> +    crate://crates.io/digest/0.9.0 \
> +    crate://crates.io/either/1.6.1 \
> +    crate://crates.io/env_logger/0.8.4 \
> +    crate://crates.io/failure/0.1.8 \
> +    crate://crates.io/failure_derive/0.1.8 \
> +    crate://crates.io/form_urlencoded/1.0.1 \
> +    crate://crates.io/funty/1.1.0 \
> +    crate://crates.io/futures-channel/0.3.16 \
> +    crate://crates.io/futures-core/0.3.16 \
> +    crate://crates.io/futures-executor/0.3.16 \
> +    crate://crates.io/futures-io/0.3.16 \
> +    crate://crates.io/futures-macro/0.3.16 \
> +    crate://crates.io/futures-sink/0.3.16 \
> +    crate://crates.io/futures-task/0.3.16 \
> +    crate://crates.io/futures-util/0.3.16 \
> +    crate://crates.io/futures/0.3.16 \
> +    crate://crates.io/generic-array/0.14.4 \
> +    crate://crates.io/getrandom/0.2.3 \
> +    crate://crates.io/gimli/0.24.0 \
> +    crate://crates.io/glob/0.3.0 \
> +    crate://crates.io/grpcio-compiler/0.7.0 \
> +    crate://crates.io/grpcio-sys/0.9.0+1.38.0 \
> +    crate://crates.io/grpcio/0.9.0 \
> +    crate://crates.io/hashbrown/0.11.2 \
> +    crate://crates.io/heck/0.3.3 \
> +    crate://crates.io/hermit-abi/0.1.19 \
> +    crate://crates.io/humantime/2.1.0 \
> +    crate://crates.io/idna/0.2.3 \
> +    crate://crates.io/indexmap/1.7.0 \
> +    crate://crates.io/instant/0.1.10 \
> +    crate://crates.io/itertools/0.8.2 \
> +    crate://crates.io/itoa/0.4.7 \
> +    crate://crates.io/js-sys/0.3.52 \
> +    crate://crates.io/jsonwebkey/0.3.2 \
> +    crate://crates.io/jsonwebtoken/7.2.0 \
> +    crate://crates.io/lazy_static/1.4.0 \
> +    crate://crates.io/lazycell/1.3.0 \
> +    crate://crates.io/lexical-core/0.7.6 \
> +    crate://crates.io/libc/0.2.102 \
> +    crate://crates.io/libloading/0.7.0 \
> +    crate://crates.io/libz-sys/1.1.3 \
> +    crate://crates.io/lock_api/0.4.4 \
> +    crate://crates.io/log/0.4.14 \
> +    crate://crates.io/matches/0.1.8 \
> +    crate://crates.io/memchr/2.3.4 \
> +    crate://crates.io/miniz_oxide/0.4.4 \
> +    crate://crates.io/nom/5.1.2 \
> +    crate://crates.io/nom/6.2.1 \
> +    crate://crates.io/num-bigint/0.2.6 \
> +    crate://crates.io/num-bigint/0.3.2 \
> +    crate://crates.io/num-bigint/0.4.0 \
> +    crate://crates.io/num-complex/0.3.1 \
> +    crate://crates.io/num-derive/0.3.3 \
> +    crate://crates.io/num-integer/0.1.44 \
> +    crate://crates.io/num-iter/0.1.42 \
> +    crate://crates.io/num-rational/0.3.2 \
> +    crate://crates.io/num-traits/0.2.14 \
> +    crate://crates.io/num/0.3.1 \
> +    crate://crates.io/object/0.24.0 \
> +    crate://crates.io/oid-registry/0.1.5 \
> +    crate://crates.io/oid/0.2.1 \
> +    crate://crates.io/once_cell/1.8.0 \
> +    crate://crates.io/opaque-debug/0.3.0 \
> +    crate://crates.io/os_str_bytes/2.4.0 \
> +    crate://crates.io/parking_lot/0.11.1 \
> +    crate://crates.io/parking_lot_core/0.8.3 \
> +    crate://crates.io/parsec-client/0.13.0 \
> +    crate://crates.io/parsec-interface/0.25.0 \
> +    crate://crates.io/peeking_take_while/0.1.2 \
> +    crate://crates.io/pem/0.8.3 \
> +    crate://crates.io/percent-encoding/2.1.0 \
> +    crate://crates.io/picky-asn1-der/0.2.5 \
> +    crate://crates.io/picky-asn1-x509/0.6.1 \
> +    crate://crates.io/picky-asn1/0.3.3 \
> +    crate://crates.io/pin-project-lite/0.2.7 \
> +    crate://crates.io/pin-utils/0.1.0 \
> +    crate://crates.io/pkcs8/0.7.5 \
> +    crate://crates.io/pkg-config/0.3.19 \
> +    crate://crates.io/ppv-lite86/0.2.10 \
> +    crate://crates.io/proc-macro-error-attr/1.0.4 \
> +    crate://crates.io/proc-macro-error/1.0.4 \
> +    crate://crates.io/proc-macro-hack/0.5.19 \
> +    crate://crates.io/proc-macro-nested/0.1.7 \
> +    crate://crates.io/proc-macro2/1.0.28 \
> +    crate://crates.io/prost-derive/0.6.1 \
> +    crate://crates.io/prost/0.6.1 \
> +    crate://crates.io/protobuf-codegen/2.24.1 \
> +    crate://crates.io/protobuf/2.24.1 \
> +    crate://crates.io/protoc-grpcio/3.0.0 \
> +    crate://crates.io/protoc/2.24.1 \
> +    crate://crates.io/psa-crypto-sys/0.9.0 \
> +    crate://crates.io/psa-crypto/0.9.0 \
> +    crate://crates.io/quote/1.0.9 \
> +    crate://crates.io/radium/0.5.3 \
> +    crate://crates.io/rand/0.8.4 \
> +    crate://crates.io/rand_chacha/0.3.1 \
> +    crate://crates.io/rand_core/0.6.3 \
> +    crate://crates.io/rand_hc/0.3.1 \
> +    crate://crates.io/redox_syscall/0.2.9 \
> +    crate://crates.io/regex-syntax/0.6.25 \
> +    crate://crates.io/regex/1.4.6 \
> +    crate://crates.io/remove_dir_all/0.5.3 \
> +    crate://crates.io/ring/0.16.20 \
> +    crate://crates.io/rustc-demangle/0.1.20 \
> +    crate://crates.io/rustc-hash/1.1.0 \
> +    crate://crates.io/rusticata-macros/3.1.0 \
> +    crate://crates.io/rustversion/1.0.5 \
> +    crate://crates.io/ryu/1.0.5 \
> +    crate://crates.io/same-file/1.0.6 \
> +    crate://crates.io/scopeguard/1.1.0 \
> +    crate://crates.io/secrecy/0.7.0 \
> +    crate://crates.io/serde/1.0.127 \
> +    crate://crates.io/serde_bytes/0.11.5 \
> +    crate://crates.io/serde_derive/1.0.127 \
> +    crate://crates.io/serde_json/1.0.66 \
> +    crate://crates.io/sha2/0.9.5 \
> +    crate://crates.io/shlex/0.1.1 \
> +    crate://crates.io/simple_asn1/0.4.1 \
> +    crate://crates.io/simple_asn1/0.5.4 \
> +    crate://crates.io/slab/0.4.3 \
> +    crate://crates.io/smallvec/1.6.1 \
> +    crate://crates.io/spiffe/0.1.1 \
> +    crate://crates.io/spin/0.5.2 \
> +    crate://crates.io/spki/0.4.0 \
> +    crate://crates.io/static_assertions/1.1.0 \
> +    crate://crates.io/strsim/0.10.0 \
> +    crate://crates.io/strsim/0.8.0 \
> +    crate://crates.io/structopt-derive/0.4.15 \
> +    crate://crates.io/structopt/0.3.22 \
> +    crate://crates.io/syn/1.0.74 \
> +    crate://crates.io/synstructure/0.12.5 \
> +    crate://crates.io/tap/1.0.1 \
> +    crate://crates.io/tempfile/3.2.0 \
> +    crate://crates.io/termcolor/1.1.2 \
> +    crate://crates.io/textwrap/0.11.0 \
> +    crate://crates.io/textwrap/0.12.1 \
> +    crate://crates.io/thiserror-impl/1.0.26 \
> +    crate://crates.io/thiserror/1.0.26 \
> +    crate://crates.io/time/0.1.44 \
> +    crate://crates.io/tinyvec/1.3.1 \
> +    crate://crates.io/tinyvec_macros/0.1.0 \
> +    crate://crates.io/typenum/1.13.0 \
> +    crate://crates.io/unicode-bidi/0.3.5 \
> +    crate://crates.io/unicode-normalization/0.1.19 \
> +    crate://crates.io/unicode-segmentation/1.8.0 \
> +    crate://crates.io/unicode-width/0.1.8 \
> +    crate://crates.io/unicode-xid/0.2.2 \
> +    crate://crates.io/untrusted/0.7.1 \
> +    crate://crates.io/url/2.2.2 \
> +    crate://crates.io/users/0.10.0 \
> +    crate://crates.io/uuid/0.8.2 \
> +    crate://crates.io/vcpkg/0.2.15 \
> +    crate://crates.io/vec_map/0.8.2 \
> +    crate://crates.io/version_check/0.9.3 \
> +    crate://crates.io/walkdir/2.3.2 \
> +    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
> +    crate://crates.io/wasm-bindgen-backend/0.2.75 \
> +    crate://crates.io/wasm-bindgen-macro-support/0.2.75 \
> +    crate://crates.io/wasm-bindgen-macro/0.2.75 \
> +    crate://crates.io/wasm-bindgen-shared/0.2.75 \
> +    crate://crates.io/wasm-bindgen/0.2.75 \
> +    crate://crates.io/web-sys/0.3.52 \
> +    crate://crates.io/which/4.2.2 \
> +    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi-util/0.1.5 \
> +    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi/0.3.9 \
> +    crate://crates.io/wyz/0.2.0 \
> +    crate://crates.io/x509-parser/0.9.2 \
> +    crate://crates.io/yasna/0.3.2 \
> +    crate://crates.io/zeroize/1.3.0 \
> +    crate://crates.io/zeroize_derive/1.1.0 \
> +"
> +
> +LIC_FILES_CHKSUM = " \
> +    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> +"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54881): https://lists.yoctoproject.org/g/yocto/message/54881
> Mute This Topic: https://lists.yoctoproject.org/mt/85909821/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


