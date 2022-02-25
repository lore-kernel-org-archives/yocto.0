Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17510C433EF
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 15:21:54 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web09.7561.1645802512824228566
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 07:21:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XD1aS07H;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id l9so4652273pls.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 07:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=w3yORsxb0AdBase/wUQcaUK5CzxI/3wb43hvmj7O1/E=;
        b=XD1aS07H8Lnmu3YavKoyTDKQ/F2Zb4kyZCd0oqMUCZrbS1XANhvZs3Nzbvksqo9AsO
         oq/my2C3EzSA8kKt+W9x+kpbiXvXn9dN2K1KMPi18bVbhQ78wQ6Yvc+zDIRjpCy6nAYS
         iBtGcVTxArHqVihQjXpxjDqgbK6COo8UKFkYAHGZnpsEJIowt5k22xKYw7Rv6fcC7yRB
         XBUqBBk1Z9sQ6PhWgobUUXIw9VK1LdVWCWeeycf+It3d/+k1NqI13DBLnwaAK0MZMsp6
         zGF5bmutzAKFjV9/FTaiekp3mLz33LFxD0scx3PrKXvEFcnuTBYJXfbEh3gkbhQXZU1h
         EelQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w3yORsxb0AdBase/wUQcaUK5CzxI/3wb43hvmj7O1/E=;
        b=DzqAOqwqRfUjIox/94+kUoub9z58Iwh0YEYa+L7GCdHt9svvaKas+IXIzEM0yGbeYn
         kHTMw1oAJ+RqmEy/U5n4RcivgGvYu0nJPtQb2zjTgUnm3psZJA7yTJ1zGkf4n6tFGTcY
         o7oDQMqgf6r7NKlzRdSLoJewEoxltGnavDejw5UTnlNgQEJvpC6+PH9HCRVIOUh8+dkI
         A4cdzCyxnVk6HmORiYGIAdVicywRwLp3xj80A54BiFEUACfHmn7DRFWXpFqpHL2HvJr/
         fRvyx0FF4uQ7nJSbz+q8U66vJzZwEslDffTxOY8e4CiqLXpPmkRifcKBEsq2BSLgurHR
         AQHA==
X-Gm-Message-State: AOAM532QR3TNX1nheFGhkm7EE2eKAq1I0cJfCFE+bbzHtYsTNES5ckG3
	j+LkEubcaYcZC2zf1DzVz/0=
X-Google-Smtp-Source: 
 ABdhPJwvNPOr9SCExA8xt98UnUkO6uiacmHbGjNQ2qycCZHlF4F07DhklP25t5qSpAFqpkud2H0jOQ==
X-Received: by 2002:a17:90a:d3d0:b0:1bb:f5b3:2fbf with SMTP id
 d16-20020a17090ad3d000b001bbf5b32fbfmr3636719pjw.87.1645802511946;
        Fri, 25 Feb 2022 07:21:51 -0800 (PST)
Received: from ?IPV6:2601:202:4180:a5c0:59da:4980:6faa:1736?
 ([2601:202:4180:a5c0:59da:4980:6faa:1736])
        by smtp.gmail.com with ESMTPSA id
 mi9-20020a17090b4b4900b001bc8dd413fesm2965710pjb.19.2022.02.25.07.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 07:21:51 -0800 (PST)
Message-ID: <ebff40a6-683f-5d84-bf4b-8e3a666127e4@gmail.com>
Date: Fri, 25 Feb 2022 07:21:50 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] [meta-security][PATCH] Upgrade parsec-tool to 0.5.1
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20220223140205.1996403-1-Anton.Antonov@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220223140205.1996403-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 15:21:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56280

merged.

thanks
Armin

On 2/23/22 06:02, Anton Antonov wrote:
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>   meta-parsec/conf/layer.conf                   |   2 +-
>   ...sec-tool_0.4.0.bb => parsec-tool_0.5.1.bb} |   0
>   ...c-tool_0.4.0.inc => parsec-tool_0.5.1.inc} | 166 ++++++++----------
>   3 files changed, 74 insertions(+), 94 deletions(-)
>   rename meta-parsec/recipes-parsec/parsec-tool/{parsec-tool_0.4.0.bb => parsec-tool_0.5.1.bb} (100%)
>   rename meta-parsec/recipes-parsec/parsec-tool/{parsec-tool_0.4.0.inc => parsec-tool_0.5.1.inc} (55%)
>
> diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
> index 19900bb..544cc4e 100644
> --- a/meta-parsec/conf/layer.conf
> +++ b/meta-parsec/conf/layer.conf
> @@ -10,5 +10,5 @@ BBFILE_PRIORITY_parsec-layer = "5"
>   
>   LAYERSERIES_COMPAT_parsec-layer = "kirkstone"
>   
> -LAYERDEPENDS_parsec-layer = "core clang-layer tpm-layer"
> +LAYERDEPENDS_parsec-layer = "core clang-layer"
>   BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.bb
> similarity index 100%
> rename from meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.bb
> rename to meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.bb
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.inc b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.inc
> similarity index 55%
> rename from meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.inc
> rename to meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.inc
> index e706112..567cc37 100644
> --- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.4.0.inc
> +++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.1.inc
> @@ -1,93 +1,83 @@
>   # This file is created from parsec-tool repository Cargo.lock using cargo-bitbake tool
>   
>   SRC_URI += " \
> -    crate://crates.io/addr2line/0.15.2 \
> -    crate://crates.io/adler/1.0.2 \
>       crate://crates.io/aho-corasick/0.7.15 \
>       crate://crates.io/ansi_term/0.11.0 \
>       crate://crates.io/ansi_term/0.12.1 \
> -    crate://crates.io/anyhow/1.0.42 \
> +    crate://crates.io/anyhow/1.0.44 \
>       crate://crates.io/arrayvec/0.5.2 \
>       crate://crates.io/atty/0.2.14 \
>       crate://crates.io/autocfg/1.0.1 \
> -    crate://crates.io/backtrace/0.3.59 \
>       crate://crates.io/base64/0.12.3 \
>       crate://crates.io/base64/0.13.0 \
>       crate://crates.io/bincode/1.3.3 \
>       crate://crates.io/bindgen/0.57.0 \
> -    crate://crates.io/bitflags/1.2.1 \
> +    crate://crates.io/bitflags/1.3.2 \
>       crate://crates.io/bitvec/0.19.5 \
>       crate://crates.io/block-buffer/0.9.0 \
> -    crate://crates.io/boringssl-src/0.3.0+688fc5c \
> -    crate://crates.io/bumpalo/3.7.0 \
> -    crate://crates.io/bytes/0.5.6 \
> -    crate://crates.io/cc/1.0.69 \
> +    crate://crates.io/bumpalo/3.7.1 \
> +    crate://crates.io/bytes/1.1.0 \
> +    crate://crates.io/cc/1.0.70 \
>       crate://crates.io/cexpr/0.4.0 \
>       crate://crates.io/cfg-if/1.0.0 \
>       crate://crates.io/chrono/0.4.19 \
> -    crate://crates.io/clang-sys/1.2.0 \
> +    crate://crates.io/clang-sys/1.2.2 \
>       crate://crates.io/clap/2.33.3 \
> -    crate://crates.io/clap/3.0.0-beta.2 \
> -    crate://crates.io/clap_derive/3.0.0-beta.2 \
> +    crate://crates.io/clap/3.0.0-beta.4 \
> +    crate://crates.io/clap_derive/3.0.0-beta.4 \
>       crate://crates.io/cmake/0.1.45 \
> -    crate://crates.io/const-oid/0.6.0 \
> -    crate://crates.io/cpufeatures/0.1.5 \
> +    crate://crates.io/const-oid/0.6.2 \
> +    crate://crates.io/cpufeatures/0.2.1 \
>       crate://crates.io/data-encoding/2.3.2 \
>       crate://crates.io/der-oid-macro/0.4.0 \
>       crate://crates.io/der-parser/5.1.2 \
> -    crate://crates.io/der/0.4.0 \
> +    crate://crates.io/der/0.4.5 \
>       crate://crates.io/derivative/2.2.0 \
>       crate://crates.io/digest/0.9.0 \
>       crate://crates.io/either/1.6.1 \
>       crate://crates.io/env_logger/0.8.4 \
> -    crate://crates.io/failure/0.1.8 \
> -    crate://crates.io/failure_derive/0.1.8 \
>       crate://crates.io/form_urlencoded/1.0.1 \
>       crate://crates.io/funty/1.1.0 \
> -    crate://crates.io/futures-channel/0.3.16 \
> -    crate://crates.io/futures-core/0.3.16 \
> -    crate://crates.io/futures-executor/0.3.16 \
> -    crate://crates.io/futures-io/0.3.16 \
> -    crate://crates.io/futures-macro/0.3.16 \
> -    crate://crates.io/futures-sink/0.3.16 \
> -    crate://crates.io/futures-task/0.3.16 \
> -    crate://crates.io/futures-util/0.3.16 \
> -    crate://crates.io/futures/0.3.16 \
> +    crate://crates.io/futures-channel/0.3.17 \
> +    crate://crates.io/futures-core/0.3.17 \
> +    crate://crates.io/futures-executor/0.3.17 \
> +    crate://crates.io/futures-io/0.3.17 \
> +    crate://crates.io/futures-macro/0.3.17 \
> +    crate://crates.io/futures-sink/0.3.17 \
> +    crate://crates.io/futures-task/0.3.17 \
> +    crate://crates.io/futures-util/0.3.17 \
> +    crate://crates.io/futures/0.3.17 \
>       crate://crates.io/generic-array/0.14.4 \
> -    crate://crates.io/getrandom/0.2.3 \
> -    crate://crates.io/gimli/0.24.0 \
>       crate://crates.io/glob/0.3.0 \
> -    crate://crates.io/grpcio-compiler/0.7.0 \
> -    crate://crates.io/grpcio-sys/0.9.0+1.38.0 \
> -    crate://crates.io/grpcio/0.9.0 \
> +    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
> +    crate://crates.io/grpcio/0.9.1 \
>       crate://crates.io/hashbrown/0.11.2 \
>       crate://crates.io/heck/0.3.3 \
>       crate://crates.io/hermit-abi/0.1.19 \
>       crate://crates.io/humantime/2.1.0 \
>       crate://crates.io/idna/0.2.3 \
>       crate://crates.io/indexmap/1.7.0 \
> -    crate://crates.io/instant/0.1.10 \
> -    crate://crates.io/itertools/0.8.2 \
> -    crate://crates.io/itoa/0.4.7 \
> -    crate://crates.io/js-sys/0.3.52 \
> +    crate://crates.io/instant/0.1.11 \
> +    crate://crates.io/itertools/0.10.1 \
> +    crate://crates.io/itoa/0.4.8 \
> +    crate://crates.io/js-sys/0.3.55 \
>       crate://crates.io/jsonwebkey/0.3.2 \
>       crate://crates.io/jsonwebtoken/7.2.0 \
>       crate://crates.io/lazy_static/1.4.0 \
>       crate://crates.io/lazycell/1.3.0 \
>       crate://crates.io/lexical-core/0.7.6 \
> -    crate://crates.io/libc/0.2.102 \
> +    crate://crates.io/libc/0.2.103 \
>       crate://crates.io/libloading/0.7.0 \
>       crate://crates.io/libz-sys/1.1.3 \
> -    crate://crates.io/lock_api/0.4.4 \
> +    crate://crates.io/lock_api/0.4.5 \
>       crate://crates.io/log/0.4.14 \
> -    crate://crates.io/matches/0.1.8 \
> +    crate://crates.io/matches/0.1.9 \
>       crate://crates.io/memchr/2.3.4 \
> -    crate://crates.io/miniz_oxide/0.4.4 \
>       crate://crates.io/nom/5.1.2 \
>       crate://crates.io/nom/6.2.1 \
>       crate://crates.io/num-bigint/0.2.6 \
> -    crate://crates.io/num-bigint/0.3.2 \
> -    crate://crates.io/num-bigint/0.4.0 \
> +    crate://crates.io/num-bigint/0.3.3 \
> +    crate://crates.io/num-bigint/0.4.2 \
>       crate://crates.io/num-complex/0.3.1 \
>       crate://crates.io/num-derive/0.3.3 \
>       crate://crates.io/num-integer/0.1.44 \
> @@ -95,94 +85,84 @@ SRC_URI += " \
>       crate://crates.io/num-rational/0.3.2 \
>       crate://crates.io/num-traits/0.2.14 \
>       crate://crates.io/num/0.3.1 \
> -    crate://crates.io/object/0.24.0 \
>       crate://crates.io/oid-registry/0.1.5 \
>       crate://crates.io/oid/0.2.1 \
>       crate://crates.io/once_cell/1.8.0 \
>       crate://crates.io/opaque-debug/0.3.0 \
> -    crate://crates.io/os_str_bytes/2.4.0 \
> -    crate://crates.io/parking_lot/0.11.1 \
> -    crate://crates.io/parking_lot_core/0.8.3 \
> -    crate://crates.io/parsec-client/0.13.0 \
> -    crate://crates.io/parsec-interface/0.25.0 \
> +    crate://crates.io/os_str_bytes/3.1.0 \
> +    crate://crates.io/parking_lot/0.11.2 \
> +    crate://crates.io/parking_lot_core/0.8.5 \
> +    crate://crates.io/parsec-client/0.14.0 \
> +    crate://crates.io/parsec-interface/0.26.0 \
>       crate://crates.io/peeking_take_while/0.1.2 \
>       crate://crates.io/pem/0.8.3 \
> +    crate://crates.io/pem/1.0.1 \
>       crate://crates.io/percent-encoding/2.1.0 \
>       crate://crates.io/picky-asn1-der/0.2.5 \
>       crate://crates.io/picky-asn1-x509/0.6.1 \
>       crate://crates.io/picky-asn1/0.3.3 \
>       crate://crates.io/pin-project-lite/0.2.7 \
>       crate://crates.io/pin-utils/0.1.0 \
> -    crate://crates.io/pkcs8/0.7.5 \
> -    crate://crates.io/pkg-config/0.3.19 \
> -    crate://crates.io/ppv-lite86/0.2.10 \
> +    crate://crates.io/pkcs8/0.7.6 \
> +    crate://crates.io/pkg-config/0.3.20 \
>       crate://crates.io/proc-macro-error-attr/1.0.4 \
>       crate://crates.io/proc-macro-error/1.0.4 \
>       crate://crates.io/proc-macro-hack/0.5.19 \
>       crate://crates.io/proc-macro-nested/0.1.7 \
> -    crate://crates.io/proc-macro2/1.0.28 \
> -    crate://crates.io/prost-derive/0.6.1 \
> -    crate://crates.io/prost/0.6.1 \
> -    crate://crates.io/protobuf-codegen/2.24.1 \
> -    crate://crates.io/protobuf/2.24.1 \
> -    crate://crates.io/protoc-grpcio/3.0.0 \
> -    crate://crates.io/protoc/2.24.1 \
> -    crate://crates.io/psa-crypto-sys/0.9.0 \
> -    crate://crates.io/psa-crypto/0.9.0 \
> +    crate://crates.io/proc-macro2/1.0.29 \
> +    crate://crates.io/prost-derive/0.8.0 \
> +    crate://crates.io/prost/0.8.0 \
> +    crate://crates.io/protobuf/2.25.1 \
> +    crate://crates.io/psa-crypto-sys/0.9.2 \
> +    crate://crates.io/psa-crypto/0.9.1 \
>       crate://crates.io/quote/1.0.9 \
>       crate://crates.io/radium/0.5.3 \
> -    crate://crates.io/rand/0.8.4 \
> -    crate://crates.io/rand_chacha/0.3.1 \
> -    crate://crates.io/rand_core/0.6.3 \
> -    crate://crates.io/rand_hc/0.3.1 \
> -    crate://crates.io/redox_syscall/0.2.9 \
> +    crate://crates.io/rcgen/0.8.14 \
> +    crate://crates.io/redox_syscall/0.2.10 \
>       crate://crates.io/regex-syntax/0.6.25 \
>       crate://crates.io/regex/1.4.6 \
> -    crate://crates.io/remove_dir_all/0.5.3 \
>       crate://crates.io/ring/0.16.20 \
> -    crate://crates.io/rustc-demangle/0.1.20 \
>       crate://crates.io/rustc-hash/1.1.0 \
> -    crate://crates.io/rusticata-macros/3.1.0 \
> +    crate://crates.io/rusticata-macros/3.2.0 \
>       crate://crates.io/rustversion/1.0.5 \
>       crate://crates.io/ryu/1.0.5 \
>       crate://crates.io/same-file/1.0.6 \
>       crate://crates.io/scopeguard/1.1.0 \
>       crate://crates.io/secrecy/0.7.0 \
> -    crate://crates.io/serde/1.0.127 \
> +    crate://crates.io/serde/1.0.130 \
>       crate://crates.io/serde_bytes/0.11.5 \
> -    crate://crates.io/serde_derive/1.0.127 \
> -    crate://crates.io/serde_json/1.0.66 \
> -    crate://crates.io/sha2/0.9.5 \
> +    crate://crates.io/serde_derive/1.0.130 \
> +    crate://crates.io/serde_json/1.0.68 \
> +    crate://crates.io/sha2/0.9.9 \
>       crate://crates.io/shlex/0.1.1 \
>       crate://crates.io/simple_asn1/0.4.1 \
>       crate://crates.io/simple_asn1/0.5.4 \
> -    crate://crates.io/slab/0.4.3 \
> +    crate://crates.io/slab/0.4.4 \
>       crate://crates.io/smallvec/1.6.1 \
> -    crate://crates.io/spiffe/0.1.1 \
> +    crate://crates.io/spiffe/0.2.0 \
>       crate://crates.io/spin/0.5.2 \
> -    crate://crates.io/spki/0.4.0 \
> +    crate://crates.io/spki/0.4.1 \
>       crate://crates.io/static_assertions/1.1.0 \
>       crate://crates.io/strsim/0.10.0 \
>       crate://crates.io/strsim/0.8.0 \
> -    crate://crates.io/structopt-derive/0.4.15 \
> -    crate://crates.io/structopt/0.3.22 \
> -    crate://crates.io/syn/1.0.74 \
> +    crate://crates.io/structopt-derive/0.4.16 \
> +    crate://crates.io/structopt/0.3.23 \
> +    crate://crates.io/syn/1.0.77 \
>       crate://crates.io/synstructure/0.12.5 \
>       crate://crates.io/tap/1.0.1 \
> -    crate://crates.io/tempfile/3.2.0 \
>       crate://crates.io/termcolor/1.1.2 \
>       crate://crates.io/textwrap/0.11.0 \
> -    crate://crates.io/textwrap/0.12.1 \
> -    crate://crates.io/thiserror-impl/1.0.26 \
> -    crate://crates.io/thiserror/1.0.26 \
> +    crate://crates.io/textwrap/0.14.2 \
> +    crate://crates.io/thiserror-impl/1.0.29 \
> +    crate://crates.io/thiserror/1.0.29 \
>       crate://crates.io/time/0.1.44 \
> -    crate://crates.io/tinyvec/1.3.1 \
> +    crate://crates.io/tinyvec/1.5.0 \
>       crate://crates.io/tinyvec_macros/0.1.0 \
> -    crate://crates.io/typenum/1.13.0 \
> -    crate://crates.io/unicode-bidi/0.3.5 \
> +    crate://crates.io/typenum/1.14.0 \
> +    crate://crates.io/unicode-bidi/0.3.6 \
>       crate://crates.io/unicode-normalization/0.1.19 \
>       crate://crates.io/unicode-segmentation/1.8.0 \
> -    crate://crates.io/unicode-width/0.1.8 \
> +    crate://crates.io/unicode-width/0.1.9 \
>       crate://crates.io/unicode-xid/0.2.2 \
>       crate://crates.io/untrusted/0.7.1 \
>       crate://crates.io/url/2.2.2 \
> @@ -193,13 +173,12 @@ SRC_URI += " \
>       crate://crates.io/version_check/0.9.3 \
>       crate://crates.io/walkdir/2.3.2 \
>       crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
> -    crate://crates.io/wasm-bindgen-backend/0.2.75 \
> -    crate://crates.io/wasm-bindgen-macro-support/0.2.75 \
> -    crate://crates.io/wasm-bindgen-macro/0.2.75 \
> -    crate://crates.io/wasm-bindgen-shared/0.2.75 \
> -    crate://crates.io/wasm-bindgen/0.2.75 \
> -    crate://crates.io/web-sys/0.3.52 \
> -    crate://crates.io/which/4.2.2 \
> +    crate://crates.io/wasm-bindgen-backend/0.2.78 \
> +    crate://crates.io/wasm-bindgen-macro-support/0.2.78 \
> +    crate://crates.io/wasm-bindgen-macro/0.2.78 \
> +    crate://crates.io/wasm-bindgen-shared/0.2.78 \
> +    crate://crates.io/wasm-bindgen/0.2.78 \
> +    crate://crates.io/web-sys/0.3.55 \
>       crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
>       crate://crates.io/winapi-util/0.1.5 \
>       crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> @@ -207,8 +186,9 @@ SRC_URI += " \
>       crate://crates.io/wyz/0.2.0 \
>       crate://crates.io/x509-parser/0.9.2 \
>       crate://crates.io/yasna/0.3.2 \
> +    crate://crates.io/yasna/0.4.0 \
>       crate://crates.io/zeroize/1.3.0 \
> -    crate://crates.io/zeroize_derive/1.1.0 \
> +    crate://crates.io/zeroize_derive/1.2.0 \
>   "
>   
>   LIC_FILES_CHKSUM = " \
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56263): https://lists.yoctoproject.org/g/yocto/message/56263
> Mute This Topic: https://lists.yoctoproject.org/mt/89341085/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


