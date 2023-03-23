Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 091A1C6FD1C
	for <webhook@archiver.kernel.org>; Thu, 23 Mar 2023 11:45:20 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.70348.1679571915831627611
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Mar 2023 04:45:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=TT7qvk4Z;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id c19so26101747qtn.13
        for <yocto@lists.yoctoproject.org>; Thu, 23 Mar 2023 04:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679571915; x=1682163915;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a6vmvrzGSNXPFvrjZeABDgryYObfv2CjDTzmikqSwKg=;
        b=TT7qvk4ZkEYPhmonCUKKjbmu75uR2G5tHg0LaVQkO0+w0vXmq12HhisCWdsnlJe7dI
         lO2+EZTBAWoq+phWsGVEWra5V3TfUlfNZNDGEPxFGi4fFjSVZkc+DC0xVfx5t6G37k5d
         rPqBIQiDDT+22f1zO/InXoKv4MXN3UG6VnAhJijZL+sOyVmdvXf+6sYqCEWV3tCAxxih
         QGNILguUfw0XZa/83xOV+FrOvKceEvrN0Ir9F73rDvPaheeLITYzgpcsXq6URdsgGrS5
         o2Gzmkm8tnAYZrQMhLreSG34/BNxuaKICXMZlLTWqxbF0ykxeXTqe4uvvlyV0Cd9f4Df
         eMMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679571915; x=1682163915;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a6vmvrzGSNXPFvrjZeABDgryYObfv2CjDTzmikqSwKg=;
        b=kVPf7594E56knINyIGFajdvwhprC1TAHmrIFr3CbUWFY7NJTDjYPu8vwv03Drb6CkF
         kQL4UPAvSAhaJ9UrbwvAbyuSdXovNqdDfZ94hRIy0yUBN+yCmR0Xiixr42uX7E0XSG6q
         4aE1WWuB9HrFIODrGkDx1cB4okou37RgHx47v+wH6rdVOmhx2Et+yMpE9uHvAMaelKlw
         SSQL5si4qow1oIjvRQKiTOSCUa26BLOr6cc0agvdN/E0AXaTpKpXCIXBakP79akZafbD
         XvaBd+zgCje3FsI5MQkw8yaFo0XxZpoqWr3gNwi1mEETzimn9NKWoc1EyrQkgbmo660z
         omhQ==
X-Gm-Message-State: AO0yUKXvm79OLNaWRcxB4FTGwhkgwr9g3BtqM7OvjjZ5fUzA0N//pVVB
	GQ2EGUwFkwIBYDNb7klCXFEWERwDunwCJw==
X-Google-Smtp-Source: AK7set9oa6b22mDre52CuONFREM2ke8O/YaxvtA3GFUpxgn6xsvLS373xFznZFMR5GYBtyHKo2OAXQ==
X-Received: by 2002:a05:622a:14cb:b0:3d5:6eaf:fe8f with SMTP id u11-20020a05622a14cb00b003d56eaffe8fmr9455445qtx.11.1679571914407;
        Thu, 23 Mar 2023 04:45:14 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:7406:9de8:9567:a400? ([2600:1700:9190:ba10:7406:9de8:9567:a400])
        by smtp.gmail.com with ESMTPSA id q6-20020a374306000000b007424376ca4bsm7497043qka.18.2023.03.23.04.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 04:45:14 -0700 (PDT)
Message-ID: <3e087d67-e671-8829-6e00-776e7b3fc3ae@gmail.com>
Date: Thu, 23 Mar 2023 07:45:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH] parsec-service: update from 1.1.0
 to 1.2.0-rc1
Content-Language: en-US
To: Anton Antonov <Anton.Antonov@arm.com>
References: <20230323072457.639997-1-mikko.rapeli@linaro.org>
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>, yocto@lists.yoctoproject.org
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230323072457.639997-1-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Mar 2023 11:45:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59501

Anton,

On 3/23/23 3:24 AM, Mikko Rapeli wrote:
> parsec-service 1.1.0 fails to compile with latest tpm2-tss update
> in meta-security:

Can you Ack/Nack this patch?

-armin
>
> | error: failed to run custom build command for `tss-esapi v7.1.0`
> |
> | Caused by:
> |   process didn't exit successfully:
> `/oe/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1.1.0-r0/build/target/release/build/tss-esapi-5b5d9342bd16db73/build-script-build`
> (exit status: 101)
> |   --- stderr
> |   thread 'main' panicked at 'Unsupported TSS version: 4',
> /oe/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1.1.0-r0/cargo_home/bitbake/tss-esapi-7.1.0/build.rs:9:22
>
> and also latest meta-clang changes break the build with:
>
> |   thread 'main' panicked at '"enum_(unnamed_at_/oe/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1_1_0-r0/build/target/aarch64-trs-linux-gnu/release/build/psa-crypto-sys-b4f9ce2b7d8846b2/out/include/mbedtls/cipher_h_205_1)" is not a valid Ident', /oe/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1.1.0-r0/cargo_home/bitbake/proc-macro2-1.0.43/src/fallback.rs:730:9
> |   stack backtrace:
> |      0: rust_begin_unwind
> |      1: core::panicking::panic_fmt
> |      2: proc_macro2::fallback::validate_ident
> |      3: proc_macro2::fallback::Ident::_new
> |      4: proc_macro2::fallback::Ident::new
> |      5: proc_macro2::imp::Ident::new
> |      6: proc_macro2::Ident::new
> |      7: bindgen::ir::context::BindgenContext::rust_ident_raw
> |      8: bindgen::ir::context::BindgenContext::rust_ident
> |      9: <bindgen::ir::enum_ty::Enum as bindgen::codegen::CodeGenerator>::codegen
> |     10: <bindgen::ir::ty::Type as bindgen::codegen::CodeGenerator>::codegen
> |     11: <bindgen::ir::item::Item as bindgen::codegen::CodeGenerator>::codegen
> |     12: <bindgen::ir::module::Module as bindgen::codegen::CodeGenerator>::codegen::{{closure}}
> |     13: <bindgen::ir::module::Module as bindgen::codegen::CodeGenerator>::codegen
> |     14: <bindgen::ir::item::Item as bindgen::codegen::CodeGenerator>::codegen
> |     15: bindgen::codegen::codegen::{{closure}}
> |     16: bindgen::ir::context::BindgenContext::gen
> |     17: bindgen::codegen::codegen
> |     18: bindgen::Bindings::generate
> |     19: bindgen::Builder::generate
> |     20: build_script_build::common::generate_mbed_crypto_bindings
> |     21: build_script_build::operations::script_operations
> |     22: build_script_build::main
> |     23: core::ops::function::FnOnce::call_once
> |   note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.
>
> In both cases fix is to update to the master branch or 1.2.0-rc1 pre-release.
> Porting the individual patches did not work due to complex rust crate depencies.
>
> Added LICENSE file checksum. Using cargo-update-recipe-crates.bbclass from
> poky to maintain list of crates in the .inc file. Tested on qemu that
> parsec.service stars correctly and works with swtpm use cases.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>   .../parsec-service/parsec-service-crates.inc  | 449 ++++++++++++++++++
>   .../parsec-service/parsec-service_1.1.0.inc   | 223 ---------
>   ...e_1.1.0.bb => parsec-service_1.2.0-rc1.bb} |  14 +-
>   3 files changed, 459 insertions(+), 227 deletions(-)
>   create mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc
>   delete mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
>   rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.1.0.bb => parsec-service_1.2.0-rc1.bb} (91%)
>
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc
> new file mode 100644
> index 0000000..af7cb8d
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc
> @@ -0,0 +1,449 @@
> +# Autogenerated with 'bitbake -c update_crates parsec-service'
> +
> +# from Cargo.lock
> +SRC_URI += " \
> +    crate://crates.io/ahash/0.7.6 \
> +    crate://crates.io/aho-corasick/0.7.20 \
> +    crate://crates.io/ansi_term/0.12.1 \
> +    crate://crates.io/anyhow/1.0.69 \
> +    crate://crates.io/asn1-rs/0.3.1 \
> +    crate://crates.io/asn1-rs-derive/0.1.0 \
> +    crate://crates.io/asn1-rs-impl/0.1.0 \
> +    crate://crates.io/atty/0.2.14 \
> +    crate://crates.io/autocfg/1.1.0 \
> +    crate://crates.io/base64/0.13.1 \
> +    crate://crates.io/bincode/1.3.3 \
> +    crate://crates.io/bindgen/0.57.0 \
> +    crate://crates.io/bindgen/0.63.0 \
> +    crate://crates.io/bitfield/0.13.2 \
> +    crate://crates.io/bitflags/1.3.2 \
> +    crate://crates.io/bumpalo/3.12.0 \
> +    crate://crates.io/bytes/1.4.0 \
> +    crate://crates.io/cc/1.0.79 \
> +    crate://crates.io/cexpr/0.4.0 \
> +    crate://crates.io/cexpr/0.6.0 \
> +    crate://crates.io/cfg-if/1.0.0 \
> +    crate://crates.io/clang-sys/1.6.0 \
> +    crate://crates.io/clap/2.34.0 \
> +    crate://crates.io/cmake/0.1.45 \
> +    crate://crates.io/const-oid/0.7.1 \
> +    crate://crates.io/cryptoauthlib-sys/0.2.2 \
> +    crate://crates.io/cryptoki/0.3.1 \
> +    crate://crates.io/cryptoki-sys/0.1.5 \
> +    crate://crates.io/data-encoding/2.3.3 \
> +    crate://crates.io/der/0.5.1 \
> +    crate://crates.io/der-parser/7.0.0 \
> +    crate://crates.io/derivative/2.2.0 \
> +    crate://crates.io/displaydoc/0.2.3 \
> +    crate://crates.io/either/1.8.1 \
> +    crate://crates.io/enumflags2/0.7.5 \
> +    crate://crates.io/enumflags2_derive/0.7.4 \
> +    crate://crates.io/env_logger/0.8.4 \
> +    crate://crates.io/errno/0.2.8 \
> +    crate://crates.io/errno-dragonfly/0.1.2 \
> +    crate://crates.io/fallible-iterator/0.2.0 \
> +    crate://crates.io/fallible-streaming-iterator/0.1.9 \
> +    crate://crates.io/fastrand/1.9.0 \
> +    crate://crates.io/fixedbitset/0.2.0 \
> +    crate://crates.io/form_urlencoded/1.1.0 \
> +    crate://crates.io/futures/0.3.27 \
> +    crate://crates.io/futures-channel/0.3.27 \
> +    crate://crates.io/futures-core/0.3.27 \
> +    crate://crates.io/futures-executor/0.3.27 \
> +    crate://crates.io/futures-io/0.3.27 \
> +    crate://crates.io/futures-macro/0.3.27 \
> +    crate://crates.io/futures-sink/0.3.27 \
> +    crate://crates.io/futures-task/0.3.27 \
> +    crate://crates.io/futures-util/0.3.27 \
> +    crate://crates.io/generic-array/0.14.6 \
> +    crate://crates.io/getrandom/0.2.8 \
> +    crate://crates.io/glob/0.3.1 \
> +    crate://crates.io/grpcio/0.9.1 \
> +    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
> +    crate://crates.io/hashbrown/0.12.3 \
> +    crate://crates.io/hashlink/0.8.1 \
> +    crate://crates.io/heck/0.3.3 \
> +    crate://crates.io/hermit-abi/0.1.19 \
> +    crate://crates.io/hermit-abi/0.2.6 \
> +    crate://crates.io/hex/0.4.3 \
> +    crate://crates.io/hostname-validator/1.1.1 \
> +    crate://crates.io/humantime/2.1.0 \
> +    crate://crates.io/idna/0.3.0 \
> +    crate://crates.io/indexmap/1.9.2 \
> +    crate://crates.io/instant/0.1.12 \
> +    crate://crates.io/io-lifetimes/1.0.6 \
> +    crate://crates.io/itertools/0.10.5 \
> +    crate://crates.io/itoa/1.0.6 \
> +    crate://crates.io/js-sys/0.3.61 \
> +    crate://crates.io/jsonwebkey/0.3.5 \
> +    crate://crates.io/jsonwebtoken/8.2.0 \
> +    crate://crates.io/lazy_static/1.4.0 \
> +    crate://crates.io/lazycell/1.3.0 \
> +    crate://crates.io/libc/0.2.140 \
> +    crate://crates.io/libloading/0.7.4 \
> +    crate://crates.io/libsqlite3-sys/0.25.2 \
> +    crate://crates.io/libz-sys/1.1.8 \
> +    crate://crates.io/linux-raw-sys/0.1.4 \
> +    crate://crates.io/lock_api/0.4.9 \
> +    crate://crates.io/log/0.4.17 \
> +    crate://crates.io/mbox/0.6.0 \
> +    crate://crates.io/memchr/2.5.0 \
> +    crate://crates.io/minimal-lexical/0.2.1 \
> +    crate://crates.io/multimap/0.8.3 \
> +    crate://crates.io/nom/5.1.2 \
> +    crate://crates.io/nom/7.1.3 \
> +    crate://crates.io/num/0.4.0 \
> +    crate://crates.io/num-bigint/0.4.3 \
> +    crate://crates.io/num-complex/0.4.3 \
> +    crate://crates.io/num-derive/0.3.3 \
> +    crate://crates.io/num-integer/0.1.45 \
> +    crate://crates.io/num-iter/0.1.43 \
> +    crate://crates.io/num-rational/0.4.1 \
> +    crate://crates.io/num-traits/0.2.15 \
> +    crate://crates.io/num_cpus/1.15.0 \
> +    crate://crates.io/num_threads/0.1.6 \
> +    crate://crates.io/oid/0.2.1 \
> +    crate://crates.io/oid-registry/0.4.0 \
> +    crate://crates.io/once_cell/1.17.1 \
> +    crate://crates.io/parking_lot/0.11.2 \
> +    crate://crates.io/parking_lot_core/0.8.6 \
> +    crate://crates.io/parsec-interface/0.28.0 \
> +    crate://crates.io/peeking_take_while/0.1.2 \
> +    crate://crates.io/pem/1.1.1 \
> +    crate://crates.io/percent-encoding/2.2.0 \
> +    crate://crates.io/pest/2.5.6 \
> +    crate://crates.io/petgraph/0.5.1 \
> +    crate://crates.io/picky-asn1/0.3.3 \
> +    crate://crates.io/picky-asn1-der/0.2.5 \
> +    crate://crates.io/picky-asn1-x509/0.6.1 \
> +    crate://crates.io/pin-project-lite/0.2.9 \
> +    crate://crates.io/pin-utils/0.1.0 \
> +    crate://crates.io/pkcs8/0.8.0 \
> +    crate://crates.io/pkg-config/0.3.26 \
> +    crate://crates.io/ppv-lite86/0.2.17 \
> +    crate://crates.io/proc-macro-error/1.0.4 \
> +    crate://crates.io/proc-macro-error-attr/1.0.4 \
> +    crate://crates.io/proc-macro2/1.0.52 \
> +    crate://crates.io/prost/0.8.0 \
> +    crate://crates.io/prost-build/0.8.0 \
> +    crate://crates.io/prost-derive/0.8.0 \
> +    crate://crates.io/prost-types/0.8.0 \
> +    crate://crates.io/protobuf/2.28.0 \
> +    crate://crates.io/psa-crypto/0.10.0 \
> +    crate://crates.io/psa-crypto-sys/0.10.0 \
> +    crate://crates.io/quote/1.0.26 \
> +    crate://crates.io/rand/0.8.5 \
> +    crate://crates.io/rand_chacha/0.3.1 \
> +    crate://crates.io/rand_core/0.6.4 \
> +    crate://crates.io/redox_syscall/0.2.16 \
> +    crate://crates.io/regex/1.7.1 \
> +    crate://crates.io/regex-syntax/0.6.28 \
> +    crate://crates.io/ring/0.16.20 \
> +    crate://crates.io/rusqlite/0.28.0 \
> +    crate://crates.io/rust-cryptoauthlib/0.4.5 \
> +    crate://crates.io/rustc-hash/1.1.0 \
> +    crate://crates.io/rustc_version/0.3.3 \
> +    crate://crates.io/rusticata-macros/4.1.0 \
> +    crate://crates.io/rustix/0.36.9 \
> +    crate://crates.io/ryu/1.0.13 \
> +    crate://crates.io/same-file/1.0.6 \
> +    crate://crates.io/scopeguard/1.1.0 \
> +    crate://crates.io/sd-notify/0.3.0 \
> +    crate://crates.io/secrecy/0.7.0 \
> +    crate://crates.io/semver/0.11.0 \
> +    crate://crates.io/semver-parser/0.10.2 \
> +    crate://crates.io/serde/1.0.156 \
> +    crate://crates.io/serde_bytes/0.11.9 \
> +    crate://crates.io/serde_derive/1.0.156 \
> +    crate://crates.io/serde_json/1.0.94 \
> +    crate://crates.io/shlex/0.1.1 \
> +    crate://crates.io/shlex/1.1.0 \
> +    crate://crates.io/signal-hook/0.3.15 \
> +    crate://crates.io/signal-hook-registry/1.4.1 \
> +    crate://crates.io/simple_asn1/0.6.2 \
> +    crate://crates.io/slab/0.4.8 \
> +    crate://crates.io/smallvec/1.10.0 \
> +    crate://crates.io/spiffe/0.2.1 \
> +    crate://crates.io/spin/0.5.2 \
> +    crate://crates.io/spki/0.5.4 \
> +    crate://crates.io/stable_deref_trait/1.2.0 \
> +    crate://crates.io/strsim/0.8.0 \
> +    crate://crates.io/structopt/0.3.26 \
> +    crate://crates.io/structopt-derive/0.4.18 \
> +    crate://crates.io/strum_macros/0.21.1 \
> +    crate://crates.io/syn/1.0.109 \
> +    crate://crates.io/synstructure/0.12.6 \
> +    crate://crates.io/target-lexicon/0.12.6 \
> +    crate://crates.io/tempfile/3.4.0 \
> +    crate://crates.io/termcolor/1.2.0 \
> +    crate://crates.io/textwrap/0.11.0 \
> +    crate://crates.io/thiserror/1.0.39 \
> +    crate://crates.io/thiserror-impl/1.0.39 \
> +    crate://crates.io/threadpool/1.8.1 \
> +    crate://crates.io/time/0.3.15 \
> +    crate://crates.io/time-macros/0.2.4 \
> +    crate://crates.io/tinyvec/1.6.0 \
> +    crate://crates.io/tinyvec_macros/0.1.1 \
> +    crate://crates.io/toml/0.5.11 \
> +    crate://crates.io/tss-esapi/7.2.0 \
> +    crate://crates.io/tss-esapi-sys/0.4.0 \
> +    crate://crates.io/typenum/1.16.0 \
> +    crate://crates.io/ucd-trie/0.1.5 \
> +    crate://crates.io/unicode-bidi/0.3.11 \
> +    crate://crates.io/unicode-ident/1.0.8 \
> +    crate://crates.io/unicode-normalization/0.1.22 \
> +    crate://crates.io/unicode-segmentation/1.10.1 \
> +    crate://crates.io/unicode-width/0.1.10 \
> +    crate://crates.io/unicode-xid/0.2.4 \
> +    crate://crates.io/untrusted/0.7.1 \
> +    crate://crates.io/url/2.3.1 \
> +    crate://crates.io/users/0.11.0 \
> +    crate://crates.io/uuid/0.8.2 \
> +    crate://crates.io/vcpkg/0.2.15 \
> +    crate://crates.io/vec_map/0.8.2 \
> +    crate://crates.io/version_check/0.9.4 \
> +    crate://crates.io/walkdir/2.3.2 \
> +    crate://crates.io/wasi/0.11.0+wasi-snapshot-preview1 \
> +    crate://crates.io/wasm-bindgen/0.2.84 \
> +    crate://crates.io/wasm-bindgen-backend/0.2.84 \
> +    crate://crates.io/wasm-bindgen-macro/0.2.84 \
> +    crate://crates.io/wasm-bindgen-macro-support/0.2.84 \
> +    crate://crates.io/wasm-bindgen-shared/0.2.84 \
> +    crate://crates.io/web-sys/0.3.61 \
> +    crate://crates.io/which/4.4.0 \
> +    crate://crates.io/winapi/0.3.9 \
> +    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi-util/0.1.5 \
> +    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/windows-sys/0.42.0 \
> +    crate://crates.io/windows-sys/0.45.0 \
> +    crate://crates.io/windows-targets/0.42.2 \
> +    crate://crates.io/windows_aarch64_gnullvm/0.42.2 \
> +    crate://crates.io/windows_aarch64_msvc/0.42.2 \
> +    crate://crates.io/windows_i686_gnu/0.42.2 \
> +    crate://crates.io/windows_i686_msvc/0.42.2 \
> +    crate://crates.io/windows_x86_64_gnu/0.42.2 \
> +    crate://crates.io/windows_x86_64_gnullvm/0.42.2 \
> +    crate://crates.io/windows_x86_64_msvc/0.42.2 \
> +    crate://crates.io/x509-parser/0.13.2 \
> +    crate://crates.io/yasna/0.4.0 \
> +    crate://crates.io/zeroize/1.5.7 \
> +    crate://crates.io/zeroize_derive/1.3.3 \
> +"
> +# from fuzz/Cargo.lock
> +SRC_URI += " \
> +    crate://crates.io/ahash/0.7.6 \
> +    crate://crates.io/aho-corasick/0.7.19 \
> +    crate://crates.io/android_system_properties/0.1.5 \
> +    crate://crates.io/ansi_term/0.12.1 \
> +    crate://crates.io/anyhow/1.0.64 \
> +    crate://crates.io/arbitrary/0.4.7 \
> +    crate://crates.io/asn1-rs/0.3.1 \
> +    crate://crates.io/asn1-rs-derive/0.1.0 \
> +    crate://crates.io/asn1-rs-impl/0.1.0 \
> +    crate://crates.io/atty/0.2.14 \
> +    crate://crates.io/autocfg/1.1.0 \
> +    crate://crates.io/base64/0.13.0 \
> +    crate://crates.io/bincode/1.3.3 \
> +    crate://crates.io/bindgen/0.57.0 \
> +    crate://crates.io/bindgen/0.63.0 \
> +    crate://crates.io/bitfield/0.13.2 \
> +    crate://crates.io/bitflags/1.3.2 \
> +    crate://crates.io/bumpalo/3.11.0 \
> +    crate://crates.io/bytes/1.2.1 \
> +    crate://crates.io/cc/1.0.73 \
> +    crate://crates.io/cexpr/0.4.0 \
> +    crate://crates.io/cexpr/0.6.0 \
> +    crate://crates.io/cfg-if/1.0.0 \
> +    crate://crates.io/chrono/0.4.22 \
> +    crate://crates.io/clang-sys/1.3.3 \
> +    crate://crates.io/clap/2.34.0 \
> +    crate://crates.io/cmake/0.1.48 \
> +    crate://crates.io/const-oid/0.7.1 \
> +    crate://crates.io/core-foundation-sys/0.8.3 \
> +    crate://crates.io/cryptoki/0.3.1 \
> +    crate://crates.io/cryptoki-sys/0.1.5 \
> +    crate://crates.io/data-encoding/2.3.2 \
> +    crate://crates.io/der/0.5.1 \
> +    crate://crates.io/der-parser/7.0.0 \
> +    crate://crates.io/derivative/2.2.0 \
> +    crate://crates.io/derive_arbitrary/0.4.7 \
> +    crate://crates.io/displaydoc/0.2.3 \
> +    crate://crates.io/either/1.8.0 \
> +    crate://crates.io/enumflags2/0.7.5 \
> +    crate://crates.io/enumflags2_derive/0.7.4 \
> +    crate://crates.io/env_logger/0.8.4 \
> +    crate://crates.io/fallible-iterator/0.2.0 \
> +    crate://crates.io/fallible-streaming-iterator/0.1.9 \
> +    crate://crates.io/flexi_logger/0.14.8 \
> +    crate://crates.io/form_urlencoded/1.0.1 \
> +    crate://crates.io/futures/0.3.24 \
> +    crate://crates.io/futures-channel/0.3.24 \
> +    crate://crates.io/futures-core/0.3.24 \
> +    crate://crates.io/futures-executor/0.3.24 \
> +    crate://crates.io/futures-io/0.3.24 \
> +    crate://crates.io/futures-macro/0.3.24 \
> +    crate://crates.io/futures-sink/0.3.24 \
> +    crate://crates.io/futures-task/0.3.24 \
> +    crate://crates.io/futures-util/0.3.24 \
> +    crate://crates.io/generic-array/0.14.6 \
> +    crate://crates.io/getrandom/0.2.7 \
> +    crate://crates.io/glob/0.3.0 \
> +    crate://crates.io/grpcio/0.9.1 \
> +    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
> +    crate://crates.io/hashbrown/0.12.3 \
> +    crate://crates.io/hashlink/0.8.1 \
> +    crate://crates.io/heck/0.3.3 \
> +    crate://crates.io/hermit-abi/0.1.19 \
> +    crate://crates.io/hex/0.4.3 \
> +    crate://crates.io/hostname-validator/1.1.1 \
> +    crate://crates.io/humantime/2.1.0 \
> +    crate://crates.io/iana-time-zone/0.1.47 \
> +    crate://crates.io/idna/0.2.3 \
> +    crate://crates.io/instant/0.1.12 \
> +    crate://crates.io/itertools/0.10.3 \
> +    crate://crates.io/itoa/1.0.3 \
> +    crate://crates.io/js-sys/0.3.59 \
> +    crate://crates.io/jsonwebkey/0.3.5 \
> +    crate://crates.io/jsonwebtoken/8.1.1 \
> +    crate://crates.io/lazy_static/1.4.0 \
> +    crate://crates.io/lazycell/1.3.0 \
> +    crate://crates.io/libc/0.2.132 \
> +    crate://crates.io/libfuzzer-sys/0.3.5 \
> +    crate://crates.io/libloading/0.7.3 \
> +    crate://crates.io/libsqlite3-sys/0.25.2 \
> +    crate://crates.io/libz-sys/1.1.8 \
> +    crate://crates.io/lock_api/0.4.8 \
> +    crate://crates.io/log/0.4.17 \
> +    crate://crates.io/matches/0.1.9 \
> +    crate://crates.io/mbox/0.6.0 \
> +    crate://crates.io/memchr/2.5.0 \
> +    crate://crates.io/minimal-lexical/0.2.1 \
> +    crate://crates.io/nom/5.1.2 \
> +    crate://crates.io/nom/7.1.1 \
> +    crate://crates.io/num/0.4.0 \
> +    crate://crates.io/num-bigint/0.4.3 \
> +    crate://crates.io/num-complex/0.4.3 \
> +    crate://crates.io/num-derive/0.3.3 \
> +    crate://crates.io/num-integer/0.1.45 \
> +    crate://crates.io/num-iter/0.1.43 \
> +    crate://crates.io/num-rational/0.4.1 \
> +    crate://crates.io/num-traits/0.2.15 \
> +    crate://crates.io/num_cpus/1.13.1 \
> +    crate://crates.io/num_threads/0.1.6 \
> +    crate://crates.io/oid/0.2.1 \
> +    crate://crates.io/oid-registry/0.4.0 \
> +    crate://crates.io/once_cell/1.14.0 \
> +    crate://crates.io/parking_lot/0.11.2 \
> +    crate://crates.io/parking_lot_core/0.8.5 \
> +    crate://crates.io/parsec-client/0.15.0 \
> +    crate://crates.io/parsec-interface/0.28.0 \
> +    crate://crates.io/peeking_take_while/0.1.2 \
> +    crate://crates.io/pem/1.1.0 \
> +    crate://crates.io/percent-encoding/2.1.0 \
> +    crate://crates.io/pest/2.3.0 \
> +    crate://crates.io/picky-asn1/0.3.3 \
> +    crate://crates.io/picky-asn1-der/0.2.5 \
> +    crate://crates.io/picky-asn1-x509/0.6.1 \
> +    crate://crates.io/pin-project-lite/0.2.9 \
> +    crate://crates.io/pin-utils/0.1.0 \
> +    crate://crates.io/pkcs8/0.8.0 \
> +    crate://crates.io/pkg-config/0.3.25 \
> +    crate://crates.io/ppv-lite86/0.2.16 \
> +    crate://crates.io/proc-macro-error/1.0.4 \
> +    crate://crates.io/proc-macro-error-attr/1.0.4 \
> +    crate://crates.io/proc-macro2/1.0.43 \
> +    crate://crates.io/prost/0.8.0 \
> +    crate://crates.io/prost-derive/0.8.0 \
> +    crate://crates.io/protobuf/2.27.1 \
> +    crate://crates.io/psa-crypto/0.10.0 \
> +    crate://crates.io/psa-crypto-sys/0.10.0 \
> +    crate://crates.io/quote/1.0.21 \
> +    crate://crates.io/rand/0.8.5 \
> +    crate://crates.io/rand_chacha/0.3.1 \
> +    crate://crates.io/rand_core/0.6.3 \
> +    crate://crates.io/redox_syscall/0.2.16 \
> +    crate://crates.io/regex/1.6.0 \
> +    crate://crates.io/regex-syntax/0.6.27 \
> +    crate://crates.io/ring/0.16.20 \
> +    crate://crates.io/rusqlite/0.28.0 \
> +    crate://crates.io/rustc-hash/1.1.0 \
> +    crate://crates.io/rustc_version/0.3.3 \
> +    crate://crates.io/rusticata-macros/4.1.0 \
> +    crate://crates.io/ryu/1.0.11 \
> +    crate://crates.io/same-file/1.0.6 \
> +    crate://crates.io/scopeguard/1.1.0 \
> +    crate://crates.io/sd-notify/0.3.0 \
> +    crate://crates.io/secrecy/0.7.0 \
> +    crate://crates.io/semver/0.11.0 \
> +    crate://crates.io/semver-parser/0.10.2 \
> +    crate://crates.io/serde/1.0.144 \
> +    crate://crates.io/serde_bytes/0.11.7 \
> +    crate://crates.io/serde_derive/1.0.144 \
> +    crate://crates.io/serde_json/1.0.85 \
> +    crate://crates.io/shlex/0.1.1 \
> +    crate://crates.io/shlex/1.1.0 \
> +    crate://crates.io/signal-hook/0.3.14 \
> +    crate://crates.io/signal-hook-registry/1.4.0 \
> +    crate://crates.io/simple_asn1/0.6.2 \
> +    crate://crates.io/slab/0.4.7 \
> +    crate://crates.io/smallvec/1.9.0 \
> +    crate://crates.io/spiffe/0.2.1 \
> +    crate://crates.io/spin/0.5.2 \
> +    crate://crates.io/spki/0.5.4 \
> +    crate://crates.io/stable_deref_trait/1.2.0 \
> +    crate://crates.io/strsim/0.8.0 \
> +    crate://crates.io/structopt/0.3.26 \
> +    crate://crates.io/structopt-derive/0.4.18 \
> +    crate://crates.io/syn/1.0.99 \
> +    crate://crates.io/synstructure/0.12.6 \
> +    crate://crates.io/target-lexicon/0.12.4 \
> +    crate://crates.io/termcolor/1.1.3 \
> +    crate://crates.io/textwrap/0.11.0 \
> +    crate://crates.io/thiserror/1.0.34 \
> +    crate://crates.io/thiserror-impl/1.0.34 \
> +    crate://crates.io/threadpool/1.8.1 \
> +    crate://crates.io/time/0.1.44 \
> +    crate://crates.io/time/0.3.14 \
> +    crate://crates.io/time-macros/0.2.4 \
> +    crate://crates.io/tinyvec/1.6.0 \
> +    crate://crates.io/tinyvec_macros/0.1.0 \
> +    crate://crates.io/toml/0.4.10 \
> +    crate://crates.io/toml/0.5.9 \
> +    crate://crates.io/tss-esapi/7.2.0 \
> +    crate://crates.io/tss-esapi-sys/0.4.0 \
> +    crate://crates.io/typenum/1.15.0 \
> +    crate://crates.io/ucd-trie/0.1.5 \
> +    crate://crates.io/unicode-bidi/0.3.8 \
> +    crate://crates.io/unicode-ident/1.0.3 \
> +    crate://crates.io/unicode-normalization/0.1.21 \
> +    crate://crates.io/unicode-segmentation/1.9.0 \
> +    crate://crates.io/unicode-width/0.1.9 \
> +    crate://crates.io/unicode-xid/0.2.3 \
> +    crate://crates.io/untrusted/0.7.1 \
> +    crate://crates.io/url/2.2.2 \
> +    crate://crates.io/users/0.11.0 \
> +    crate://crates.io/uuid/0.8.2 \
> +    crate://crates.io/vcpkg/0.2.15 \
> +    crate://crates.io/vec_map/0.8.2 \
> +    crate://crates.io/version_check/0.9.4 \
> +    crate://crates.io/walkdir/2.3.2 \
> +    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
> +    crate://crates.io/wasi/0.11.0+wasi-snapshot-preview1 \
> +    crate://crates.io/wasm-bindgen/0.2.82 \
> +    crate://crates.io/wasm-bindgen-backend/0.2.82 \
> +    crate://crates.io/wasm-bindgen-macro/0.2.82 \
> +    crate://crates.io/wasm-bindgen-macro-support/0.2.82 \
> +    crate://crates.io/wasm-bindgen-shared/0.2.82 \
> +    crate://crates.io/web-sys/0.3.59 \
> +    crate://crates.io/which/4.3.0 \
> +    crate://crates.io/winapi/0.3.9 \
> +    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi-util/0.1.5 \
> +    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/x509-parser/0.13.2 \
> +    crate://crates.io/yansi/0.5.1 \
> +    crate://crates.io/yasna/0.4.0 \
> +    crate://crates.io/zeroize/1.5.7 \
> +    crate://crates.io/zeroize_derive/1.3.2 \
> +"
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
> deleted file mode 100644
> index c04bcbd..0000000
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
> +++ /dev/null
> @@ -1,223 +0,0 @@
> -# This file is created from parsec repository Cargo.lock using cargo-bitbake tool
> -
> -SRC_URI += " \
> -    crate://crates.io/ahash/0.7.6 \
> -    crate://crates.io/aho-corasick/0.7.19 \
> -    crate://crates.io/ansi_term/0.12.1 \
> -    crate://crates.io/anyhow/1.0.64 \
> -    crate://crates.io/asn1-rs-derive/0.1.0 \
> -    crate://crates.io/asn1-rs-impl/0.1.0 \
> -    crate://crates.io/asn1-rs/0.3.1 \
> -    crate://crates.io/atty/0.2.14 \
> -    crate://crates.io/autocfg/1.1.0 \
> -    crate://crates.io/base64/0.13.0 \
> -    crate://crates.io/bincode/1.3.3 \
> -    crate://crates.io/bindgen/0.57.0 \
> -    crate://crates.io/bindgen/0.59.2 \
> -    crate://crates.io/bitfield/0.13.2 \
> -    crate://crates.io/bitflags/1.3.2 \
> -    crate://crates.io/bumpalo/3.11.0 \
> -    crate://crates.io/bytes/1.2.1 \
> -    crate://crates.io/cc/1.0.73 \
> -    crate://crates.io/cexpr/0.4.0 \
> -    crate://crates.io/cexpr/0.6.0 \
> -    crate://crates.io/cfg-if/1.0.0 \
> -    crate://crates.io/clang-sys/1.3.3 \
> -    crate://crates.io/clap/2.34.0 \
> -    crate://crates.io/cmake/0.1.45 \
> -    crate://crates.io/const-oid/0.7.1 \
> -    crate://crates.io/cryptoauthlib-sys/0.2.2 \
> -    crate://crates.io/cryptoki-sys/0.1.4 \
> -    crate://crates.io/cryptoki/0.3.0 \
> -    crate://crates.io/data-encoding/2.3.2 \
> -    crate://crates.io/der-parser/7.0.0 \
> -    crate://crates.io/der/0.5.1 \
> -    crate://crates.io/derivative/2.2.0 \
> -    crate://crates.io/displaydoc/0.2.3 \
> -    crate://crates.io/either/1.8.0 \
> -    crate://crates.io/enumflags2/0.7.5 \
> -    crate://crates.io/enumflags2_derive/0.7.4 \
> -    crate://crates.io/env_logger/0.8.4 \
> -    crate://crates.io/env_logger/0.9.0 \
> -    crate://crates.io/fallible-iterator/0.2.0 \
> -    crate://crates.io/fallible-streaming-iterator/0.1.9 \
> -    crate://crates.io/fastrand/1.8.0 \
> -    crate://crates.io/fixedbitset/0.2.0 \
> -    crate://crates.io/form_urlencoded/1.0.1 \
> -    crate://crates.io/futures-channel/0.3.24 \
> -    crate://crates.io/futures-core/0.3.24 \
> -    crate://crates.io/futures-executor/0.3.24 \
> -    crate://crates.io/futures-io/0.3.24 \
> -    crate://crates.io/futures-macro/0.3.24 \
> -    crate://crates.io/futures-sink/0.3.24 \
> -    crate://crates.io/futures-task/0.3.24 \
> -    crate://crates.io/futures-util/0.3.24 \
> -    crate://crates.io/futures/0.3.24 \
> -    crate://crates.io/generic-array/0.14.6 \
> -    crate://crates.io/getrandom/0.2.7 \
> -    crate://crates.io/glob/0.3.0 \
> -    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
> -    crate://crates.io/grpcio/0.9.1 \
> -    crate://crates.io/hashbrown/0.11.2 \
> -    crate://crates.io/hashlink/0.7.0 \
> -    crate://crates.io/heck/0.3.3 \
> -    crate://crates.io/hermit-abi/0.1.19 \
> -    crate://crates.io/hex/0.4.3 \
> -    crate://crates.io/hostname-validator/1.1.1 \
> -    crate://crates.io/humantime/2.1.0 \
> -    crate://crates.io/idna/0.2.3 \
> -    crate://crates.io/indexmap/1.8.2 \
> -    crate://crates.io/instant/0.1.12 \
> -    crate://crates.io/itertools/0.10.3 \
> -    crate://crates.io/itoa/1.0.3 \
> -    crate://crates.io/js-sys/0.3.59 \
> -    crate://crates.io/jsonwebkey/0.3.5 \
> -    crate://crates.io/jsonwebtoken/8.1.1 \
> -    crate://crates.io/lazy_static/1.4.0 \
> -    crate://crates.io/lazycell/1.3.0 \
> -    crate://crates.io/libc/0.2.132 \
> -    crate://crates.io/libloading/0.7.3 \
> -    crate://crates.io/libsqlite3-sys/0.23.2 \
> -    crate://crates.io/libz-sys/1.1.8 \
> -    crate://crates.io/lock_api/0.4.8 \
> -    crate://crates.io/log/0.4.17 \
> -    crate://crates.io/matches/0.1.9 \
> -    crate://crates.io/mbox/0.6.0 \
> -    crate://crates.io/memchr/2.5.0 \
> -    crate://crates.io/minimal-lexical/0.2.1 \
> -    crate://crates.io/multimap/0.8.3 \
> -    crate://crates.io/nom/5.1.2 \
> -    crate://crates.io/nom/7.1.1 \
> -    crate://crates.io/num-bigint/0.4.3 \
> -    crate://crates.io/num-complex/0.4.2 \
> -    crate://crates.io/num-derive/0.3.3 \
> -    crate://crates.io/num-integer/0.1.45 \
> -    crate://crates.io/num-iter/0.1.43 \
> -    crate://crates.io/num-rational/0.4.1 \
> -    crate://crates.io/num-traits/0.2.15 \
> -    crate://crates.io/num/0.4.0 \
> -    crate://crates.io/num_cpus/1.13.1 \
> -    crate://crates.io/num_threads/0.1.6 \
> -    crate://crates.io/oid-registry/0.4.0 \
> -    crate://crates.io/oid/0.2.1 \
> -    crate://crates.io/once_cell/1.14.0 \
> -    crate://crates.io/parking_lot/0.11.2 \
> -    crate://crates.io/parking_lot_core/0.8.5 \
> -    crate://crates.io/parsec-interface/0.27.0 \
> -    crate://crates.io/peeking_take_while/0.1.2 \
> -    crate://crates.io/pem/1.1.0 \
> -    crate://crates.io/percent-encoding/2.1.0 \
> -    crate://crates.io/pest/2.3.0 \
> -    crate://crates.io/petgraph/0.5.1 \
> -    crate://crates.io/picky-asn1-der/0.2.5 \
> -    crate://crates.io/picky-asn1-x509/0.6.1 \
> -    crate://crates.io/picky-asn1/0.3.3 \
> -    crate://crates.io/pin-project-lite/0.2.9 \
> -    crate://crates.io/pin-utils/0.1.0 \
> -    crate://crates.io/pkcs8/0.8.0 \
> -    crate://crates.io/pkg-config/0.3.25 \
> -    crate://crates.io/ppv-lite86/0.2.16 \
> -    crate://crates.io/proc-macro-error-attr/1.0.4 \
> -    crate://crates.io/proc-macro-error/1.0.4 \
> -    crate://crates.io/proc-macro2/1.0.43 \
> -    crate://crates.io/prost-build/0.8.0 \
> -    crate://crates.io/prost-derive/0.8.0 \
> -    crate://crates.io/prost-types/0.8.0 \
> -    crate://crates.io/prost/0.8.0 \
> -    crate://crates.io/protobuf/2.27.1 \
> -    crate://crates.io/psa-crypto-sys/0.9.3 \
> -    crate://crates.io/psa-crypto/0.9.2 \
> -    crate://crates.io/quote/1.0.21 \
> -    crate://crates.io/rand/0.8.5 \
> -    crate://crates.io/rand_chacha/0.3.1 \
> -    crate://crates.io/rand_core/0.6.3 \
> -    crate://crates.io/redox_syscall/0.2.16 \
> -    crate://crates.io/regex-syntax/0.6.27 \
> -    crate://crates.io/regex/1.6.0 \
> -    crate://crates.io/remove_dir_all/0.5.3 \
> -    crate://crates.io/ring/0.16.20 \
> -    crate://crates.io/rusqlite/0.26.3 \
> -    crate://crates.io/rust-cryptoauthlib/0.4.5 \
> -    crate://crates.io/rustc-hash/1.1.0 \
> -    crate://crates.io/rustc_version/0.3.3 \
> -    crate://crates.io/rusticata-macros/4.1.0 \
> -    crate://crates.io/ryu/1.0.11 \
> -    crate://crates.io/same-file/1.0.6 \
> -    crate://crates.io/scopeguard/1.1.0 \
> -    crate://crates.io/sd-notify/0.2.0 \
> -    crate://crates.io/secrecy/0.7.0 \
> -    crate://crates.io/semver-parser/0.10.2 \
> -    crate://crates.io/semver/0.11.0 \
> -    crate://crates.io/serde/1.0.144 \
> -    crate://crates.io/serde_bytes/0.11.7 \
> -    crate://crates.io/serde_derive/1.0.144 \
> -    crate://crates.io/serde_json/1.0.85 \
> -    crate://crates.io/shlex/0.1.1 \
> -    crate://crates.io/shlex/1.1.0 \
> -    crate://crates.io/signal-hook-registry/1.4.0 \
> -    crate://crates.io/signal-hook/0.3.14 \
> -    crate://crates.io/simple_asn1/0.6.2 \
> -    crate://crates.io/slab/0.4.7 \
> -    crate://crates.io/smallvec/1.9.0 \
> -    crate://crates.io/spiffe/0.2.1 \
> -    crate://crates.io/spin/0.5.2 \
> -    crate://crates.io/spki/0.5.4 \
> -    crate://crates.io/stable_deref_trait/1.2.0 \
> -    crate://crates.io/strsim/0.8.0 \
> -    crate://crates.io/structopt-derive/0.4.18 \
> -    crate://crates.io/structopt/0.3.26 \
> -    crate://crates.io/strum_macros/0.21.1 \
> -    crate://crates.io/syn/1.0.99 \
> -    crate://crates.io/synstructure/0.12.6 \
> -    crate://crates.io/target-lexicon/0.12.4 \
> -    crate://crates.io/tempfile/3.3.0 \
> -    crate://crates.io/termcolor/1.1.3 \
> -    crate://crates.io/textwrap/0.11.0 \
> -    crate://crates.io/thiserror-impl/1.0.33 \
> -    crate://crates.io/thiserror/1.0.33 \
> -    crate://crates.io/threadpool/1.8.1 \
> -    crate://crates.io/time-macros/0.2.4 \
> -    crate://crates.io/time/0.3.14 \
> -    crate://crates.io/tinyvec/1.6.0 \
> -    crate://crates.io/tinyvec_macros/0.1.0 \
> -    crate://crates.io/toml/0.5.9 \
> -    crate://crates.io/tss-esapi-sys/0.3.0 \
> -    crate://crates.io/tss-esapi/7.1.0 \
> -    crate://crates.io/typenum/1.15.0 \
> -    crate://crates.io/ucd-trie/0.1.4 \
> -    crate://crates.io/unicode-bidi/0.3.8 \
> -    crate://crates.io/unicode-ident/1.0.3 \
> -    crate://crates.io/unicode-normalization/0.1.21 \
> -    crate://crates.io/unicode-segmentation/1.9.0 \
> -    crate://crates.io/unicode-width/0.1.9 \
> -    crate://crates.io/unicode-xid/0.2.3 \
> -    crate://crates.io/untrusted/0.7.1 \
> -    crate://crates.io/url/2.2.2 \
> -    crate://crates.io/users/0.11.0 \
> -    crate://crates.io/uuid/0.8.2 \
> -    crate://crates.io/vcpkg/0.2.15 \
> -    crate://crates.io/vec_map/0.8.2 \
> -    crate://crates.io/version/3.0.0 \
> -    crate://crates.io/version_check/0.9.4 \
> -    crate://crates.io/walkdir/2.3.2 \
> -    crate://crates.io/wasi/0.11.0+wasi-snapshot-preview1 \
> -    crate://crates.io/wasm-bindgen-backend/0.2.82 \
> -    crate://crates.io/wasm-bindgen-macro-support/0.2.82 \
> -    crate://crates.io/wasm-bindgen-macro/0.2.82 \
> -    crate://crates.io/wasm-bindgen-shared/0.2.82 \
> -    crate://crates.io/wasm-bindgen/0.2.82 \
> -    crate://crates.io/web-sys/0.3.59 \
> -    crate://crates.io/which/4.3.0 \
> -    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> -    crate://crates.io/winapi-util/0.1.5 \
> -    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> -    crate://crates.io/winapi/0.3.9 \
> -    crate://crates.io/x509-parser/0.13.2 \
> -    crate://crates.io/yasna/0.4.0 \
> -    crate://crates.io/zeroize/1.5.7 \
> -    crate://crates.io/zeroize_derive/1.3.2 \
> -"
> -
> -LIC_FILES_CHKSUM = " \
> -    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> -"
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0-rc1.bb
> similarity index 91%
> rename from meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb
> rename to meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0-rc1.bb
> index 218b776..7dfd214 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0-rc1.bb
> @@ -1,16 +1,22 @@
>   SUMMARY = "Platform AbstRaction for SECurity Daemon"
>   HOMEPAGE = "https://github.com/parallaxsecond/parsec"
>   LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
>   
> -inherit cargo pkgconfig
> -DEPENDS = "clang-native"
> +inherit cargo pkgconfig cargo-update-recipe-crates
>   
> -SRC_URI += "crate://crates.io/parsec-service/${PV} \
> +DEPENDS += "clang-native"
> +
> +SRC_URI += "git://github.com/parallaxsecond/parsec;protocol=https;branch=main \
>               file://parsec_init \
>               file://systemd.patch \
>               file://parsec-tmpfiles.conf \
>   "
>   
> +SRCREV = "f7eda9396eae530771b24b097b709d35d54e40c8"
> +
> +S = "${WORKDIR}/git"
> +
>   PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
>   have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
>   PACKAGECONFIG:append = " ${@bb.utils.contains('BBFILE_COLLECTIONS', 'tpm-layer', '${have_TPM}', '', d)}"
> @@ -82,7 +88,7 @@ FILES:${PN} += " \
>       ${sysconfdir}/init.d/parsec \
>   "
>   
> -require parsec-service_${PV}.inc
> +require parsec-service-crates.inc
>   
>   # The QA check has been temporarily disabled. An issue has been created
>   # upstream to fix this.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59495): https://lists.yoctoproject.org/g/yocto/message/59495
> Mute This Topic: https://lists.yoctoproject.org/mt/97796264/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


