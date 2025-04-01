Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B321C36008
	for <webhook@archiver.kernel.org>; Tue,  1 Apr 2025 06:38:20 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.13057.1743489491882553588
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Mar 2025 23:38:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=i0UIG7QI;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e5e22e6ed2so7792471a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025 23:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743489490; x=1744094290; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RfAK+2ovr2s/uXZWyy6q4RCxIDZ9Q7BG0VtVjpflrKk=;
        b=i0UIG7QIpo12pm3RqrJt1ZYj6EIW6P4SAvgxqpAoaYmoyo8bTS3efqXJ8YBlNI5z9s
         7pc8E1LXsw9FoMtGtI7xTr1srVNoHQSYeMDWbihRfKNFuFiXRE+519cFVpbC4l1dnF7w
         3W0saiSJkL+J+nunv1odJ+zOmFSU/dVk49qemlmpnuAi+s47/JwWEzU4fVgPmKTKF5d4
         OBN3JCnXcDSY08dZ6cp9KpfZQoPRwClPBvavAtQ/KgALAlyRQu2iPl1X67KUQXVIRcH/
         PJ+pSZ/w9yC0m2vRL80vAiYoAJpS78XhCJQrBpC4k68poi+T2fa6/rLSGHIRs+mcovSB
         32Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743489490; x=1744094290;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RfAK+2ovr2s/uXZWyy6q4RCxIDZ9Q7BG0VtVjpflrKk=;
        b=tqr+07Ya49HORXM8xQaNbnlI/TVDjqtJ7fyNyvR1jEQtErGuQMzCdIQ0aHeTsAlGIO
         ldW3Y/cdd/W2/zyfO9RK1DPp6GOdyq3a61tAaNBQZ2LMMP5B6738ff+Z1FAWDEkaoYM1
         ZOxz5hOZ0RV5GXzg/7Z9kXYsUT3DQth+3XdEaMbQ0D7XnGXUb3M1CUD/b72iOgwHjuzF
         IHTLi8s8ejgfsQzt4c73bwKHvUrf3fGyzmGNVpo5HdMywjKfLWkTDakAQ7o65F1vAG+Y
         cDw6oAEPqr1GS/mHZdqLv5mxRnZCwSzqTevDQzWx8/Dc8n5X0MSUaeG/RLn8gK5aQ9xn
         IRjA==
X-Gm-Message-State: AOJu0YxWtQ63lPPdVvjDS6Xb+pzHS3Zn8PG//YAVUeT+2dgzt/Mjpajt
	JITgnpOi+ixJ7E+tXEKlhb14xMnCH4anGWIaMx2wfzMAOYE8yom8vxhs6w==
X-Gm-Gg: ASbGncuu3ovEx8KY/eEVYbumYYG2Gc9PHL0s6h5IpjWLexxvBJtNZYM+ZMM2qs7KAr2
	82kuydvRcPSotMQPUnsqp+NUK4TvqdWpFg+ZgR+pcJPVttB7kkIjxlaOB0ONk6uMp99PcDXymza
	2i50Kz7XcKESeIQGdTh2qeSgg21Aqo+3aLzBXW62rp5RDOaljV3dhx6rpBK0JGBlCUmlvAK3vnz
	r1E6yA7yDGJKcmsCJeEoWv8T7+zKP4F7L62nJYpzwyRp/nRwMTxgvMcNWkmPTMfo1r7S3gPApk9
	zjCw+VdvDwIGuLrEZ3xycGWPDw4QELoTZEn8WgeS9bYTZaTnjFPD
X-Google-Smtp-Source: AGHT+IF6GasTZXQmhI+8PAd1is56i4nuyhXL7NPZLjE5gVOUjOFTQ2nxUlz/2Hg4zLJ94BkmOMqMqA==
X-Received: by 2002:a05:6402:90a:b0:5e7:f707:d7c4 with SMTP id 4fb4d7f45d1cf-5edfde203f5mr9020499a12.31.1743489489847;
        Mon, 31 Mar 2025 23:38:09 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc1493d9dsm6631612a12.0.2025.03.31.23.38.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 23:38:09 -0700 (PDT)
Message-ID: <4d14381f-8198-40cd-9449-1f78a1fa4589@gmail.com>
Date: Tue, 1 Apr 2025 08:38:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rust-mixins] scarthgap issue with building librsvg
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
References: <CAAfyv37aFm=N2+T_-SCe2w4Nrv=hUY2qEuEZu_HTTWBWnD91aw@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAAfyv37aFm=N2+T_-SCe2w4Nrv=hUY2qEuEZu_HTTWBWnD91aw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 06:38:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65045

Make sure to have this commit in your oe-core:
https://github.com/yoctoproject/poky/commit/c7e8807ddd2671956d9e1d15303e36dff9a22727
- this supposed to solve it.

On 4/1/25 08:30, Marek Belisko via lists.yoctoproject.org wrote:
> Hello,
>
> I'm trying to build latest chromium on scarthgap branch and when added
> meta-rust-mixin as dependency (branch scarthgap/rust) I'm seeing
> following:
>
> ERROR: librsvg-native-2.59.2-r0 do_compile:
> ExecutionError('/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/temp/run.do_compile.4450',
> 1, None, None)
> ERROR: Logfile of failure stored in:
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/temp/log.do_compile.4450
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | [0/1] env
> PKG_CONFIG=/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native
> PKG_CONFIG_PATH=/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
> LD_LIBRARY_PATH=/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/rsvg:
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/meson/cargo_wrapper.py
> --cargo
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/cargo
> --manifest-path
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/Cargo.toml
> --project-build-root
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build
> --prefix
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr
> --libdir lib --release --target x86_64-unknown-linux-gnu
> --command=build --current-build-dir gdk-pixbuf-loader
> --current-source-dir
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader
> --packages pixbufloader-svg --extension so
> | warning:
> `/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/cargo_home/config`
> is deprecated in favor of `config.toml`
> | note: if you need to support cargo 1.38 or earlier, you can symlink
> `config` to `config.toml`
> |    Compiling futures-macro v0.3.30
> |     Building [===============>           ] 44/73: futures-macro
> |    Compiling thiserror-impl v1.0.63
> |     Building [=================>         ] 51/73: futures-macro,
> thiserror-...
> |    Compiling glib-macros v0.20.0
> |    Compiling pixbufloader-svg v0.0.1
> (/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader)
> |     Building [=====================>     ] 62/73:
> pixbufloader-svg(build), ...
> | error: failed to run custom build command for `pixbufloader-svg
> v0.0.1
> (/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader)`
> | note: To improve backtraces for build dependencies, set the
> CARGO_PROFILE_RELEASE_BUILD_OVERRIDE_DEBUG=true environment variable
> to enable debug information generation.
> |
> | Caused by:
> |   process didn't exit successfully:
> `/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/target/release/build/pixbufloader-svg-b7156fa02de9df48/build-script-build`
> (exit status: 101)
> |   --- stdout
> |   cargo:rerun-if-env-changed=LIBRSVG_2.0_UNINSTALLED_NO_PKG_CONFIG
> |   cargo:rerun-if-env-changed=PKG_CONFIG_x86_64-unknown-linux-gnu
> |   cargo:rerun-if-env-changed=PKG_CONFIG_x86_64_unknown_linux_gnu
> |   cargo:rerun-if-env-changed=HOST_PKG_CONFIG
> |   cargo:rerun-if-env-changed=PKG_CONFIG
> |   cargo:rerun-if-env-changed=PKG_CONFIG_PATH_x86_64-unknown-linux-gnu
> |   cargo:rerun-if-env-changed=PKG_CONFIG_PATH_x86_64_unknown_linux_gnu
> |   cargo:rerun-if-env-changed=HOST_PKG_CONFIG_PATH
> |   cargo:rerun-if-env-changed=PKG_CONFIG_PATH
> |   cargo:rerun-if-env-changed=PKG_CONFIG_LIBDIR_x86_64-unknown-linux-gnu
> |   cargo:rerun-if-env-changed=PKG_CONFIG_LIBDIR_x86_64_unknown_linux_gnu
> |   cargo:rerun-if-env-changed=HOST_PKG_CONFIG_LIBDIR
> |   cargo:rerun-if-env-changed=PKG_CONFIG_LIBDIR
> |  
> cargo:rerun-if-env-changed=PKG_CONFIG_SYSROOT_DIR_x86_64-unknown-linux-gnu
> |  
> cargo:rerun-if-env-changed=PKG_CONFIG_SYSROOT_DIR_x86_64_unknown_linux_gnu
> |   cargo:rerun-if-env-changed=HOST_PKG_CONFIG_SYSROOT_DIR
> |   cargo:rerun-if-env-changed=PKG_CONFIG_SYSROOT_DIR
> |   cargo:rerun-if-env-changed=LIBRSVG_2.0_NO_PKG_CONFIG
> |   cargo:rerun-if-env-changed=PKG_CONFIG_x86_64-unknown-linux-gnu
> |   cargo:rerun-if-env-changed=PKG_CONFIG_x86_64_unknown_linux_gnu
> |   cargo:rerun-if-env-changed=HOST_PKG_CONFIG
> |   cargo:rerun-if-env-changed=PKG_CONFIG
> |   cargo:rerun-if-env-changed=PKG_CONFIG_PATH_x86_64-unknown-linux-gnu
> |   cargo:rerun-if-env-changed=PKG_CONFIG_PATH_x86_64_unknown_linux_gnu
> |   cargo:rerun-if-env-changed=HOST_PKG_CONFIG_PATH
> |   cargo:rerun-if-env-changed=PKG_CONFIG_PATH
> |   cargo:rerun-if-env-changed=PKG_CONFIG_LIBDIR_x86_64-unknown-linux-gnu
> |   cargo:rerun-if-env-changed=PKG_CONFIG_LIBDIR_x86_64_unknown_linux_gnu
> |   cargo:rerun-if-env-changed=HOST_PKG_CONFIG_LIBDIR
> |   cargo:rerun-if-env-changed=PKG_CONFIG_LIBDIR
> |  
> cargo:rerun-if-env-changed=PKG_CONFIG_SYSROOT_DIR_x86_64-unknown-linux-gnu
> |  
> cargo:rerun-if-env-changed=PKG_CONFIG_SYSROOT_DIR_x86_64_unknown_linux_gnu
> |   cargo:rerun-if-env-changed=HOST_PKG_CONFIG_SYSROOT_DIR
> |   cargo:rerun-if-env-changed=PKG_CONFIG_SYSROOT_DIR
> |
> |   --- stderr
> |   thread 'main' panicked at gdk-pixbuf-loader/build.rs:9:40:
> |   called `Result::unwrap()` on an `Err` value: PkgConfig(
> |   pkg-config exited with status code 1
> |   >
> PKG_CONFIG_PATH=/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled:/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
> PKG_CONFIG_LIBDIR=/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig
> PKG_CONFIG_SYSROOT_DIR= PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=1
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native
> --libs --cflags librsvg-2.0-uninstalled librsvg-2.0-uninstalled >= 2.57
> |
> |   The system library `librsvg-2.0-uninstalled` required by crate
> `pixbufloader-svg` was not found.
> |   The file `librsvg-2.0-uninstalled.pc` needs to be installed and
> the PKG_CONFIG_PATH environment variable must contain its parent
> directory.
> |   PKG_CONFIG_PATH contains the following:
> |       -
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
> |       -
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig
> |       -
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
> |
> |   HINT: you may need to install a package such as
> librsvg-2.0-uninstalled, librsvg-2.0-uninstalled-dev or
> librsvg-2.0-uninstalled-devel.
> |   )
> |   stack backtrace:
> |      0:     0x5597609b1565 -
> <std::sys::backtrace::BacktraceLock::print::DisplayBacktrace as
> core::fmt::Display>::fmt::h24ae4f7b383cce86
> |      1:     0x5597609d6e8b - core::fmt::write::h0d782ef25b884623
> |      2:     0x5597609aee6f -
> std::io::Write::write_fmt::h793365c8935b515e
> |      3:     0x5597609b2851 -
> std::panicking::default_hook::{{closure}}::h9c6a63ff4db62aa9
> |      4:     0x5597609b252c -
> std::panicking::default_hook::heaa506a56ae4dbcb
> |      5:     0x5597609b2eb1 -
> std::panicking::rust_panic_with_hook::he2c00aacf417eb92
> |      6:     0x5597609b2d17 -
> std::panicking::begin_panic_handler::{{closure}}::he4ff60a4333ba227
> |      7:     0x5597609b1a29 -
> std::sys::backtrace::__rust_end_short_backtrace::hd720b3b26bb01cca
> |      8:     0x5597609b29a4 - rust_begin_unwind
> |      9:     0x559760850963 -
> core::panicking::panic_fmt::h36d8e0f43781155f
> |     10:     0x559760850d96 -
> core::result::unwrap_failed::h40e21701b74e2b57
> |     11:     0x55976085193f -
> build_script_build::probe_system_deps::h95c2fa13d51a9e7c
> |     12:     0x5597608519b6 - build_script_build::main::hbf1febc78145eea3
> |     13:     0x559760851293 -
> core::ops::function::FnOnce::call_once::h0f696004d3fddba5
> |     14:     0x559760851246 -
> std::sys::backtrace::__rust_begin_short_backtrace::h63760e37d0cd8098
> |     15:     0x559760851229 -
> std::rt::lang_start::{{closure}}::h2b6b05577a2c2113
> |     16:     0x5597609ab8a0 -
> std::rt::lang_start_internal::h85746f0b4dc6ccc5
> |     17:     0x559760851207 - std::rt::lang_start::hbcf508b3d935c164
> |     18:     0x5597608519d5 - main
> |     19:     0x7f25d5695fdb - __libc_start_call_main
> |     20:     0x7f25d5696099 - __libc_start_main_alias_2
> |     21:     0x55976085111e - _start
> |     22:                0x0 - <unknown>
> | warning: build failed, waiting for other jobs to finish...
> |     Building [======================>    ] 63/73: futures-macro,
> thiserror-...
> |     Building [======================>    ] 64/73: thiserror-impl,
> glib-macros
> |     Building [=======================>   ] 65/73: glib-macros
> | command:
> ['/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/cargo',
> 'build', '--locked', '--manifest-path',
> '/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/Cargo.toml',
> '--target-dir',
> '/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/target',
> '--release', '--target', 'x86_64-unknown-linux-gnu', '-p',
> 'pixbufloader-svg']
> | Traceback (most recent call last):
> |   File
> "/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/meson/cargo_wrapper.py",
> line 180, in <module>
> |     subprocess.run(cargo_cmd, env=env, check=True)
> |   File
> "/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/python3.12/subprocess.py",
> line 571, in run
> |     raise CalledProcessError(retcode, process.args,
> | subprocess.CalledProcessError: Command
> '['/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/cargo',
> 'build', '--locked', '--manifest-path',
> '/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/Cargo.toml',
> '--target-dir',
> '/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/target',
> '--release', '--target', 'x86_64-unknown-linux-gnu', '-p',
> 'pixbufloader-svg']' returned non-zero exit status 101.
> | FAILED: gdk-pixbuf-loader/libpixbufloader_svg.so
> | env
> PKG_CONFIG=/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native
> PKG_CONFIG_PATH=/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
> LD_LIBRARY_PATH=/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/rsvg:
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/meson/cargo_wrapper.py
> --cargo
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/cargo
> --manifest-path
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/Cargo.toml
> --project-build-root
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build
> --prefix
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr
> --libdir lib --release --target x86_64-unknown-linux-gnu
> --command=build --current-build-dir gdk-pixbuf-loader
> --current-source-dir
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader
> --packages pixbufloader-svg --extension so
> | ninja: build stopped: subcommand failed.
> | INFO: autodetecting backend as ninja
> | INFO: calculating backend command to run:
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/ninja
> -j 32 -v
> | WARNING: exit code 1 from a shell command.
> ERROR: Task
> (virtual:native:/data/projects/test-chromium/build/../sources/meta-rust-mixins/recipes-gnome/librsvg/librsvg_2.59.2.bb:do_compile)
> failed with exit code '1'
>
> Am I missing some tools on my PC? 
>
> Thanks and BR,
>
> marek
>
> -- 
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65044): https://lists.yoctoproject.org/g/yocto/message/65044
> Mute This Topic: https://lists.yoctoproject.org/mt/112020564/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

