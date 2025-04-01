Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6633C3601A
	for <webhook@archiver.kernel.org>; Tue,  1 Apr 2025 08:13:00 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.13983.1743495176412245914
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Apr 2025 01:12:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DpGUQOO8;
 spf=pass (domain: gmail.com, ip: 209.85.221.45, mailfrom: marek.belisko@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39149bccb69so4668345f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 01:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743495175; x=1744099975; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7+y1Nhjkg1vjFKrEouJjCUa4ygatNJhi/nRO4cQAGp8=;
        b=DpGUQOO8mCeovyrtG4sv/znEXLKLkZxRnoPEeWpy2t0flVDcxeOPq/jzB6bD9UdxmZ
         BWJqA9u9yvxSp7G+p0dGc46urqcMzrxFaMEDoVxlDusw4qHnCk5bXLf/Clh6gHfosJbq
         iNWDALJ7Cg1Rj9bM2J3RuR2bDW+qDJbeGkNSV9PXfRqnVBNu9di//knGhANoyoCLSMGC
         2CJAzh7pvJAwfFhzgk81mO3owS5LsAZpIx0XgSre5i5pVpJRguIN9wbRqq9qO8G8jxCF
         Lvu5My9XRslNpBaEAAcCjU0ffc4JDAZLiYKyNmELey2Om8P06XmpLN5eXBdjZUME9s4M
         Hgog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743495175; x=1744099975;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7+y1Nhjkg1vjFKrEouJjCUa4ygatNJhi/nRO4cQAGp8=;
        b=mz/4hKsiHoZZ0y/UanE7nLm3Vs+6zMbVAkVcbvWFZXA1vCEXW7SEv7rAhPfN8EvU4M
         U9EJnWWPL0zIMuNv5biaJqq/TJPNMiN4LiJrGK9tNudoefq9mQ0xO6Gqe8yycNr35RGI
         NWrvMJ4NZgM7vHF1G7ohH+i3aIPsLFgFKcVepTsYRZr7Pv8fj8q9oQ9iEhW0lFqy4Yuj
         U4250446CcRqw9b0ThE9J1QQCl8AtN5WG6PZUmJ4Ax+NcMqU9eU796EBmdYkbIfVv2zc
         R5CK3EDcRwjZAjFVWjXMcLx1rLZQtAByxutS7Tf539b7RFp/Z5Xewq09AGGD0uE3qi6x
         DwuQ==
X-Gm-Message-State: AOJu0Yz17+eQUl0kxagXLwnnHpuhD+HhQlQGR8Lq5efYPKfIoMa4jQbS
	0qU9WHDR3UlWQo08Lb5ow4gbK2bum9r3Lsdz4wBBtGpFVwfMk9bItDl5dTvKQbjUX6lDLXTenmD
	XITXz+7C0e1AVhbGxKKX9rdE7VXM=
X-Gm-Gg: ASbGnctevG6vvnQXoqaNWZ7iEhILg1jDNGhzUQCLo/yIK6mmDCJ/7d5eMV6YqRtT2hM
	ahgerV8WUvkoDb0alI+ZEK1m1QVNDUfl1YcQqTZsN2J0fFMfTQgkhk/NnVc2Zm3skGjBiWomwer
	HNsCbdLOSnWfaBz/3LgQ4oz9PgBQ==
X-Google-Smtp-Source: AGHT+IE3lZbb650YyiOEZlsky/Sfm78tbSG4TMdnJddpRLEnuAzkmRYTwej/O5dRCDzd8O6HZgTBPBmME9nH4s5SOMw=
X-Received: by 2002:a05:6000:2406:b0:39c:1424:1cb3 with SMTP id
 ffacd0b85a97d-39c14241cfemr9346510f8f.5.1743495174368; Tue, 01 Apr 2025
 01:12:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37aFm=N2+T_-SCe2w4Nrv=hUY2qEuEZu_HTTWBWnD91aw@mail.gmail.com>
 <4d14381f-8198-40cd-9449-1f78a1fa4589@gmail.com>
In-Reply-To: <4d14381f-8198-40cd-9449-1f78a1fa4589@gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 1 Apr 2025 10:12:42 +0200
X-Gm-Features: AQ5f1JoyNMKMIVKv03TjjzbPR4KVXNJ_1ie6jQR_7rySKYzCLi179kuRNSoSaUI
Message-ID: <CAAfyv34rOOjKv-LfQMFHeo3NhgzK5mx9ct571+2ntd7Sp0yzDg@mail.gmail.com>
Subject: Re: [yocto] [meta-rust-mixins] scarthgap issue with building librsvg
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000089363e0631b31a0c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 08:13:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65046

--00000000000089363e0631b31a0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 1, 2025 at 8:38=E2=80=AFAM Gyorgy Sarvari <skandigraun@gmail.co=
m> wrote:

> Make sure to have this commit in your oe-core:
>
> https://github.com/yoctoproject/poky/commit/c7e8807ddd2671956d9e1d15303e3=
6dff9a22727
> - this supposed to solve it.
>
Thanks, that did the trick.

>
> On 4/1/25 08:30, Marek Belisko via lists.yoctoproject.org wrote:
> > Hello,
> >
> > I'm trying to build latest chromium on scarthgap branch and when added
> > meta-rust-mixin as dependency (branch scarthgap/rust) I'm seeing
> > following:
> >
> > ERROR: librsvg-native-2.59.2-r0 do_compile:
> >
> ExecutionError('/data/projects/test-chromium/build/tmp/work/x86_64-linux/=
librsvg-native/2.59.2/temp/run.do_compile.4450',
> > 1, None, None)
> > ERROR: Logfile of failure stored in:
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/temp/log.do_compile.4450
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | [0/1] env
> >
> PKG_CONFIG=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/lib=
rsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native
> >
> PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linu=
x/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/proje=
cts/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-=
sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/wo=
rk/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
> >
> LD_LIBRARY_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linu=
x/librsvg-native/2.59.2/build/rsvg:
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/librsvg-2.59.2/meson/cargo_wrapper.py
> > --cargo
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr/bin/cargo
> > --manifest-path
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/librsvg-2.59.2/Cargo.toml
> > --project-build-root
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/build
> > --prefix
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr
> > --libdir lib --release --target x86_64-unknown-linux-gnu
> > --command=3Dbuild --current-build-dir gdk-pixbuf-loader
> > --current-source-dir
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/librsvg-2.59.2/gdk-pixbuf-loader
> > --packages pixbufloader-svg --extension so
> > | warning:
> >
> `/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/cargo_home/config`
> > is deprecated in favor of `config.toml`
> > | note: if you need to support cargo 1.38 or earlier, you can symlink
> > `config` to `config.toml`
> > |    Compiling futures-macro v0.3.30
> > |     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>         =
  ] 44/73: futures-macro
> > |    Compiling thiserror-impl v1.0.63
> > |     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>   =
      ] 51/73: futures-macro,
> > thiserror-...
> > |    Compiling glib-macros v0.20.0
> > |    Compiling pixbufloader-svg v0.0.1
> >
> (/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/librsvg-2.59.2/gdk-pixbuf-loader)
> > |     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D>     ] 62/73:
> > pixbufloader-svg(build), ...
> > | error: failed to run custom build command for `pixbufloader-svg
> > v0.0.1
> >
> (/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/librsvg-2.59.2/gdk-pixbuf-loader)`
> > | note: To improve backtraces for build dependencies, set the
> > CARGO_PROFILE_RELEASE_BUILD_OVERRIDE_DEBUG=3Dtrue environment variable
> > to enable debug information generation.
> > |
> > | Caused by:
> > |   process didn't exit successfully:
> >
> `/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/build/target/release/build/pixbufloader-svg-b7156fa02de9df48/build-s=
cript-build`
> > (exit status: 101)
> > |   --- stdout
> > |   cargo:rerun-if-env-changed=3DLIBRSVG_2.0_UNINSTALLED_NO_PKG_CONFIG
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64-unknown-linux-gnu
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64_unknown_linux_gnu
> > |   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64-unknown-linux-g=
nu
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64_unknown_linux_g=
nu
> > |   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_PATH
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64-unknown-linux=
-gnu
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64_unknown_linux=
_gnu
> > |   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_LIBDIR
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR
> > |
> >
> cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64-unknown-linux-=
gnu
> > |
> >
> cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64_unknown_linux_=
gnu
> > |   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_SYSROOT_DIR
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR
> > |   cargo:rerun-if-env-changed=3DLIBRSVG_2.0_NO_PKG_CONFIG
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64-unknown-linux-gnu
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64_unknown_linux_gnu
> > |   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64-unknown-linux-g=
nu
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64_unknown_linux_g=
nu
> > |   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_PATH
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64-unknown-linux=
-gnu
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64_unknown_linux=
_gnu
> > |   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_LIBDIR
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR
> > |
> >
> cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64-unknown-linux-=
gnu
> > |
> >
> cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64_unknown_linux_=
gnu
> > |   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_SYSROOT_DIR
> > |   cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR
> > |
> > |   --- stderr
> > |   thread 'main' panicked at gdk-pixbuf-loader/build.rs:9:40:
> > |   called `Result::unwrap()` on an `Err` value: PkgConfig(
> > |   pkg-config exited with status code 1
> > |   >
> >
> PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linu=
x/librsvg-native/2.59.2/build/meson-uninstalled:/data/projects/test-chromiu=
m/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/u=
sr/lib/pkgconfig:/data/projects/test-chromium/build/tmp/work/x86_64-linux/l=
ibrsvg-native/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/project=
s/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/mes=
on-uninstalled
> >
> PKG_CONFIG_LIBDIR=3D/data/projects/test-chromium/build/tmp/work/x86_64-li=
nux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig
> > PKG_CONFIG_SYSROOT_DIR=3D PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=3D1
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr/bin/pkg-config-native
> > --libs --cflags librsvg-2.0-uninstalled librsvg-2.0-uninstalled >=3D 2.=
57
> > |
> > |   The system library `librsvg-2.0-uninstalled` required by crate
> > `pixbufloader-svg` was not found.
> > |   The file `librsvg-2.0-uninstalled.pc` needs to be installed and
> > the PKG_CONFIG_PATH environment variable must contain its parent
> > directory.
> > |   PKG_CONFIG_PATH contains the following:
> > |       -
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/build/meson-uninstalled
> > |       -
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr/lib/pkgconfig
> > |       -
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/projects/test-chromium=
/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
> > |
> > |   HINT: you may need to install a package such as
> > librsvg-2.0-uninstalled, librsvg-2.0-uninstalled-dev or
> > librsvg-2.0-uninstalled-devel.
> > |   )
> > |   stack backtrace:
> > |      0:     0x5597609b1565 -
> > <std::sys::backtrace::BacktraceLock::print::DisplayBacktrace as
> > core::fmt::Display>::fmt::h24ae4f7b383cce86
> > |      1:     0x5597609d6e8b - core::fmt::write::h0d782ef25b884623
> > |      2:     0x5597609aee6f -
> > std::io::Write::write_fmt::h793365c8935b515e
> > |      3:     0x5597609b2851 -
> > std::panicking::default_hook::{{closure}}::h9c6a63ff4db62aa9
> > |      4:     0x5597609b252c -
> > std::panicking::default_hook::heaa506a56ae4dbcb
> > |      5:     0x5597609b2eb1 -
> > std::panicking::rust_panic_with_hook::he2c00aacf417eb92
> > |      6:     0x5597609b2d17 -
> > std::panicking::begin_panic_handler::{{closure}}::he4ff60a4333ba227
> > |      7:     0x5597609b1a29 -
> > std::sys::backtrace::__rust_end_short_backtrace::hd720b3b26bb01cca
> > |      8:     0x5597609b29a4 - rust_begin_unwind
> > |      9:     0x559760850963 -
> > core::panicking::panic_fmt::h36d8e0f43781155f
> > |     10:     0x559760850d96 -
> > core::result::unwrap_failed::h40e21701b74e2b57
> > |     11:     0x55976085193f -
> > build_script_build::probe_system_deps::h95c2fa13d51a9e7c
> > |     12:     0x5597608519b6 -
> build_script_build::main::hbf1febc78145eea3
> > |     13:     0x559760851293 -
> > core::ops::function::FnOnce::call_once::h0f696004d3fddba5
> > |     14:     0x559760851246 -
> > std::sys::backtrace::__rust_begin_short_backtrace::h63760e37d0cd8098
> > |     15:     0x559760851229 -
> > std::rt::lang_start::{{closure}}::h2b6b05577a2c2113
> > |     16:     0x5597609ab8a0 -
> > std::rt::lang_start_internal::h85746f0b4dc6ccc5
> > |     17:     0x559760851207 - std::rt::lang_start::hbcf508b3d935c164
> > |     18:     0x5597608519d5 - main
> > |     19:     0x7f25d5695fdb - __libc_start_call_main
> > |     20:     0x7f25d5696099 - __libc_start_main_alias_2
> > |     21:     0x55976085111e - _start
> > |     22:                0x0 - <unknown>
> > | warning: build failed, waiting for other jobs to finish...
> > |     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D>    ] 63/73: futures-macro,
> > thiserror-...
> > |     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D>    ] 64/73: thiserror-impl,
> > glib-macros
> > |     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D>   ] 65/73: glib-macros
> > | command:
> >
> ['/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native=
/2.59.2/recipe-sysroot-native/usr/bin/cargo',
> > 'build', '--locked', '--manifest-path',
> >
> '/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/librsvg-2.59.2/Cargo.toml',
> > '--target-dir',
> >
> '/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/build/target',
> > '--release', '--target', 'x86_64-unknown-linux-gnu', '-p',
> > 'pixbufloader-svg']
> > | Traceback (most recent call last):
> > |   File
> >
> "/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/librsvg-2.59.2/meson/cargo_wrapper.py",
> > line 180, in <module>
> > |     subprocess.run(cargo_cmd, env=3Denv, check=3DTrue)
> > |   File
> >
> "/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/recipe-sysroot-native/usr/lib/python3.12/subprocess.py",
> > line 571, in run
> > |     raise CalledProcessError(retcode, process.args,
> > | subprocess.CalledProcessError: Command
> >
> '['/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr/bin/cargo',
> > 'build', '--locked', '--manifest-path',
> >
> '/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/librsvg-2.59.2/Cargo.toml',
> > '--target-dir',
> >
> '/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/build/target',
> > '--release', '--target', 'x86_64-unknown-linux-gnu', '-p',
> > 'pixbufloader-svg']' returned non-zero exit status 101.
> > | FAILED: gdk-pixbuf-loader/libpixbufloader_svg.so
> > | env
> >
> PKG_CONFIG=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/lib=
rsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native
> >
> PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linu=
x/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/proje=
cts/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-=
sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/wo=
rk/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
> >
> LD_LIBRARY_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linu=
x/librsvg-native/2.59.2/build/rsvg:
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/librsvg-2.59.2/meson/cargo_wrapper.py
> > --cargo
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr/bin/cargo
> > --manifest-path
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/librsvg-2.59.2/Cargo.toml
> > --project-build-root
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/build
> > --prefix
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr
> > --libdir lib --release --target x86_64-unknown-linux-gnu
> > --command=3Dbuild --current-build-dir gdk-pixbuf-loader
> > --current-source-dir
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/librsvg-2.59.2/gdk-pixbuf-loader
> > --packages pixbufloader-svg --extension so
> > | ninja: build stopped: subcommand failed.
> > | INFO: autodetecting backend as ninja
> > | INFO: calculating backend command to run:
> >
> /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr/bin/ninja
> > -j 32 -v
> > | WARNING: exit code 1 from a shell command.
> > ERROR: Task
> >
> (virtual:native:/data/projects/test-chromium/build/../sources/meta-rust-m=
ixins/recipes-gnome/librsvg/librsvg_2.59.2.bb:
> do_compile)
> > failed with exit code '1'
> >
> > Am I missing some tools on my PC?
> >
> > Thanks and BR,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65044):
> https://lists.yoctoproject.org/g/yocto/message/65044
> > Mute This Topic: https://lists.yoctoproject.org/mt/112020564/6084445
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> skandigraun@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>


--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000089363e0631b31a0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 1, 2025=
 at 8:38=E2=80=AFAM Gyorgy Sarvari &lt;<a href=3D"mailto:skandigraun@gmail.=
com">skandigraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Make sure to have this commit in your oe-core:<br=
>
<a href=3D"https://github.com/yoctoproject/poky/commit/c7e8807ddd2671956d9e=
1d15303e36dff9a22727" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/yoctoproject/poky/commit/c7e8807ddd2671956d9e1d15303e36dff9a22727</a><br=
>
- this supposed to solve it.<br></blockquote><div>Thanks, that did the tric=
k.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
On 4/1/25 08:30, Marek Belisko via <a href=3D"http://lists.yoctoproject.org=
" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br=
>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m trying to build latest chromium=C2=A0on scarthgap=C2=A0branch =
and when added<br>
&gt; meta-rust-mixin as dependency (branch scarthgap/rust) I&#39;m seeing<b=
r>
&gt; following:<br>
&gt;<br>
&gt; ERROR: librsvg-native-2.59.2-r0 do_compile:<br>
&gt; ExecutionError(&#39;/data/projects/test-chromium/build/tmp/work/x86_64=
-linux/librsvg-native/2.59.2/temp/run.do_compile.4450&#39;,<br>
&gt; 1, None, None)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/temp/log.do_compile.4450<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | [0/1] env<br>
&gt; PKG_CONFIG=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/=
librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native<br>
&gt; PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-l=
inux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/pr=
ojects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/reci=
pe-sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp=
/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled<br>
&gt; LD_LIBRARY_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-l=
inux/librsvg-native/2.59.2/build/rsvg:<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/librsvg-2.59.2/meson/cargo_wrapper.py<br>
&gt; --cargo<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr/bin/cargo<br>
&gt; --manifest-path<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/librsvg-2.59.2/Cargo.toml<br>
&gt; --project-build-root<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/build<br>
&gt; --prefix<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr<br>
&gt; --libdir lib --release --target x86_64-unknown-linux-gnu<br>
&gt; --command=3Dbuild --current-build-dir gdk-pixbuf-loader<br>
&gt; --current-source-dir<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader<br>
&gt; --packages pixbufloader-svg --extension so<br>
&gt; | warning:<br>
&gt; `/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nati=
ve/2.59.2/cargo_home/config`<br>
&gt; is deprecated in favor of `config.toml`<br>
&gt; | note: if you need to support cargo 1.38 or earlier, you can symlink<=
br>
&gt; `config` to `config.toml`<br>
&gt; | =C2=A0 =C2=A0Compiling futures-macro v0.3.30<br>
&gt; | =C2=A0 =C2=A0 Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ] 44/73: futures-macro<br>
&gt; | =C2=A0 =C2=A0Compiling thiserror-impl v1.0.63<br>
&gt; | =C2=A0 =C2=A0 Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ] 51/73: futures-macro,<br>
&gt; thiserror-...<br>
&gt; | =C2=A0 =C2=A0Compiling glib-macros v0.20.0<br>
&gt; | =C2=A0 =C2=A0Compiling pixbufloader-svg v0.0.1<br>
&gt; (/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nati=
ve/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader)<br>
&gt; | =C2=A0 =C2=A0 Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D&gt; =C2=A0 =C2=A0 ] 62/73:<br>
&gt; pixbufloader-svg(build), ...<br>
&gt; | error: failed to run custom build command for `pixbufloader-svg<br>
&gt; v0.0.1<br>
&gt; (/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nati=
ve/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader)`<br>
&gt; | note: To improve backtraces for build dependencies, set the<br>
&gt; CARGO_PROFILE_RELEASE_BUILD_OVERRIDE_DEBUG=3Dtrue environment variable=
<br>
&gt; to enable debug information generation.<br>
&gt; |<br>
&gt; | Caused by:<br>
&gt; | =C2=A0 process didn&#39;t exit successfully:<br>
&gt; `/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nati=
ve/2.59.2/build/target/release/build/pixbufloader-svg-b7156fa02de9df48/buil=
d-script-build`<br>
&gt; (exit status: 101)<br>
&gt; | =C2=A0 --- stdout<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DLIBRSVG_2.0_UNINSTALLED_NO_PKG_C=
ONFIG<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64-unknown-linux-=
gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64_unknown_linux_=
gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64-unknown-l=
inux-gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64_unknown_l=
inux_gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_PATH<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64-unknown=
-linux-gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64_unknown=
_linux_gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_LIBDIR<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR<br>
&gt; | =C2=A0<br>
&gt; cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64-unknown-lin=
ux-gnu<br>
&gt; | =C2=A0<br>
&gt; cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64_unknown_lin=
ux_gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_SYSROOT_DIR<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DLIBRSVG_2.0_NO_PKG_CONFIG<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64-unknown-linux-=
gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64_unknown_linux_=
gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64-unknown-l=
inux-gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64_unknown_l=
inux_gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_PATH<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64-unknown=
-linux-gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64_unknown=
_linux_gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_LIBDIR<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR<br>
&gt; | =C2=A0<br>
&gt; cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64-unknown-lin=
ux-gnu<br>
&gt; | =C2=A0<br>
&gt; cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64_unknown_lin=
ux_gnu<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_SYSROOT_DIR<br>
&gt; | =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR<br>
&gt; |<br>
&gt; | =C2=A0 --- stderr<br>
&gt; | =C2=A0 thread &#39;main&#39; panicked at gdk-pixbuf-loader/<a href=
=3D"http://build.rs:9" target=3D"_blank">build.rs:9</a>:40:<br>
&gt; | =C2=A0 called `Result::unwrap()` on an `Err` value: PkgConfig(<br>
&gt; | =C2=A0 pkg-config exited with status code 1<br>
&gt; | =C2=A0 &gt;<br>
&gt; PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-l=
inux/librsvg-native/2.59.2/build/meson-uninstalled:/data/projects/test-chro=
mium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-nativ=
e/usr/lib/pkgconfig:/data/projects/test-chromium/build/tmp/work/x86_64-linu=
x/librsvg-native/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/proj=
ects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/=
meson-uninstalled<br>
&gt; PKG_CONFIG_LIBDIR=3D/data/projects/test-chromium/build/tmp/work/x86_64=
-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig<br>
&gt; PKG_CONFIG_SYSROOT_DIR=3D PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=3D1<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native<br>
&gt; --libs --cflags librsvg-2.0-uninstalled librsvg-2.0-uninstalled &gt;=
=3D 2.57<br>
&gt; |<br>
&gt; | =C2=A0 The system library `librsvg-2.0-uninstalled` required by crat=
e<br>
&gt; `pixbufloader-svg` was not found.<br>
&gt; | =C2=A0 The file `librsvg-2.0-uninstalled.pc` needs to be installed a=
nd<br>
&gt; the PKG_CONFIG_PATH environment variable must contain its parent<br>
&gt; directory.<br>
&gt; | =C2=A0 PKG_CONFIG_PATH contains the following:<br>
&gt; | =C2=A0 =C2=A0 =C2=A0 -<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/build/meson-uninstalled<br>
&gt; | =C2=A0 =C2=A0 =C2=A0 -<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig<br>
&gt; | =C2=A0 =C2=A0 =C2=A0 -<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/projects/test-chrom=
ium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstall=
ed<br>
&gt; |<br>
&gt; | =C2=A0 HINT: you may need to install a package such as<br>
&gt; librsvg-2.0-uninstalled, librsvg-2.0-uninstalled-dev or<br>
&gt; librsvg-2.0-uninstalled-devel.<br>
&gt; | =C2=A0 )<br>
&gt; | =C2=A0 stack backtrace:<br>
&gt; | =C2=A0 =C2=A0 =C2=A00: =C2=A0 =C2=A0 0x5597609b1565 -<br>
&gt; &lt;std::sys::backtrace::BacktraceLock::print::DisplayBacktrace as<br>
&gt; core::fmt::Display&gt;::fmt::h24ae4f7b383cce86<br>
&gt; | =C2=A0 =C2=A0 =C2=A01: =C2=A0 =C2=A0 0x5597609d6e8b - core::fmt::wri=
te::h0d782ef25b884623<br>
&gt; | =C2=A0 =C2=A0 =C2=A02: =C2=A0 =C2=A0 0x5597609aee6f -<br>
&gt; std::io::Write::write_fmt::h793365c8935b515e<br>
&gt; | =C2=A0 =C2=A0 =C2=A03: =C2=A0 =C2=A0 0x5597609b2851 -<br>
&gt; std::panicking::default_hook::{{closure}}::h9c6a63ff4db62aa9<br>
&gt; | =C2=A0 =C2=A0 =C2=A04: =C2=A0 =C2=A0 0x5597609b252c -<br>
&gt; std::panicking::default_hook::heaa506a56ae4dbcb<br>
&gt; | =C2=A0 =C2=A0 =C2=A05: =C2=A0 =C2=A0 0x5597609b2eb1 -<br>
&gt; std::panicking::rust_panic_with_hook::he2c00aacf417eb92<br>
&gt; | =C2=A0 =C2=A0 =C2=A06: =C2=A0 =C2=A0 0x5597609b2d17 -<br>
&gt; std::panicking::begin_panic_handler::{{closure}}::he4ff60a4333ba227<br=
>
&gt; | =C2=A0 =C2=A0 =C2=A07: =C2=A0 =C2=A0 0x5597609b1a29 -<br>
&gt; std::sys::backtrace::__rust_end_short_backtrace::hd720b3b26bb01cca<br>
&gt; | =C2=A0 =C2=A0 =C2=A08: =C2=A0 =C2=A0 0x5597609b29a4 - rust_begin_unw=
ind<br>
&gt; | =C2=A0 =C2=A0 =C2=A09: =C2=A0 =C2=A0 0x559760850963 -<br>
&gt; core::panicking::panic_fmt::h36d8e0f43781155f<br>
&gt; | =C2=A0 =C2=A0 10: =C2=A0 =C2=A0 0x559760850d96 -<br>
&gt; core::result::unwrap_failed::h40e21701b74e2b57<br>
&gt; | =C2=A0 =C2=A0 11: =C2=A0 =C2=A0 0x55976085193f -<br>
&gt; build_script_build::probe_system_deps::h95c2fa13d51a9e7c<br>
&gt; | =C2=A0 =C2=A0 12: =C2=A0 =C2=A0 0x5597608519b6 - build_script_build:=
:main::hbf1febc78145eea3<br>
&gt; | =C2=A0 =C2=A0 13: =C2=A0 =C2=A0 0x559760851293 -<br>
&gt; core::ops::function::FnOnce::call_once::h0f696004d3fddba5<br>
&gt; | =C2=A0 =C2=A0 14: =C2=A0 =C2=A0 0x559760851246 -<br>
&gt; std::sys::backtrace::__rust_begin_short_backtrace::h63760e37d0cd8098<b=
r>
&gt; | =C2=A0 =C2=A0 15: =C2=A0 =C2=A0 0x559760851229 -<br>
&gt; std::rt::lang_start::{{closure}}::h2b6b05577a2c2113<br>
&gt; | =C2=A0 =C2=A0 16: =C2=A0 =C2=A0 0x5597609ab8a0 -<br>
&gt; std::rt::lang_start_internal::h85746f0b4dc6ccc5<br>
&gt; | =C2=A0 =C2=A0 17: =C2=A0 =C2=A0 0x559760851207 - std::rt::lang_start=
::hbcf508b3d935c164<br>
&gt; | =C2=A0 =C2=A0 18: =C2=A0 =C2=A0 0x5597608519d5 - main<br>
&gt; | =C2=A0 =C2=A0 19: =C2=A0 =C2=A0 0x7f25d5695fdb - __libc_start_call_m=
ain<br>
&gt; | =C2=A0 =C2=A0 20: =C2=A0 =C2=A0 0x7f25d5696099 - __libc_start_main_a=
lias_2<br>
&gt; | =C2=A0 =C2=A0 21: =C2=A0 =C2=A0 0x55976085111e - _start<br>
&gt; | =C2=A0 =C2=A0 22: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00x0 - &lt;unknown&gt;<br>
&gt; | warning: build failed, waiting for other jobs to finish...<br>
&gt; | =C2=A0 =C2=A0 Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D&gt; =C2=A0 =C2=A0] 63/73: futures-macro,<br>
&gt; thiserror-...<br>
&gt; | =C2=A0 =C2=A0 Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D&gt; =C2=A0 =C2=A0] 64/73: thiserror-impl,<br>
&gt; glib-macros<br>
&gt; | =C2=A0 =C2=A0 Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt; =C2=A0 ] 65/73: glib-macros<br>
&gt; | command:<br>
&gt; [&#39;/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg=
-native/2.59.2/recipe-sysroot-native/usr/bin/cargo&#39;,<br>
&gt; &#39;build&#39;, &#39;--locked&#39;, &#39;--manifest-path&#39;,<br>
&gt; &#39;/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-=
native/2.59.2/librsvg-2.59.2/Cargo.toml&#39;,<br>
&gt; &#39;--target-dir&#39;,<br>
&gt; &#39;/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-=
native/2.59.2/build/target&#39;,<br>
&gt; &#39;--release&#39;, &#39;--target&#39;, &#39;x86_64-unknown-linux-gnu=
&#39;, &#39;-p&#39;,<br>
&gt; &#39;pixbufloader-svg&#39;]<br>
&gt; | Traceback (most recent call last):<br>
&gt; | =C2=A0 File<br>
&gt; &quot;/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg=
-native/2.59.2/librsvg-2.59.2/meson/cargo_wrapper.py&quot;,<br>
&gt; line 180, in &lt;module&gt;<br>
&gt; | =C2=A0 =C2=A0 subprocess.run(cargo_cmd, env=3Denv, check=3DTrue)<br>
&gt; | =C2=A0 File<br>
&gt; &quot;/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg=
-native/2.59.2/recipe-sysroot-native/usr/lib/python3.12/subprocess.py&quot;=
,<br>
&gt; line 571, in run<br>
&gt; | =C2=A0 =C2=A0 raise CalledProcessError(retcode, process.args,<br>
&gt; | subprocess.CalledProcessError: Command<br>
&gt; &#39;[&#39;/data/projects/test-chromium/build/tmp/work/x86_64-linux/li=
brsvg-native/2.59.2/recipe-sysroot-native/usr/bin/cargo&#39;,<br>
&gt; &#39;build&#39;, &#39;--locked&#39;, &#39;--manifest-path&#39;,<br>
&gt; &#39;/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-=
native/2.59.2/librsvg-2.59.2/Cargo.toml&#39;,<br>
&gt; &#39;--target-dir&#39;,<br>
&gt; &#39;/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-=
native/2.59.2/build/target&#39;,<br>
&gt; &#39;--release&#39;, &#39;--target&#39;, &#39;x86_64-unknown-linux-gnu=
&#39;, &#39;-p&#39;,<br>
&gt; &#39;pixbufloader-svg&#39;]&#39; returned non-zero exit status 101.<br=
>
&gt; | FAILED: gdk-pixbuf-loader/libpixbufloader_svg.so<br>
&gt; | env<br>
&gt; PKG_CONFIG=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/=
librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native<br>
&gt; PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-l=
inux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/pr=
ojects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/reci=
pe-sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp=
/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled<br>
&gt; LD_LIBRARY_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-l=
inux/librsvg-native/2.59.2/build/rsvg:<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/librsvg-2.59.2/meson/cargo_wrapper.py<br>
&gt; --cargo<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr/bin/cargo<br>
&gt; --manifest-path<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/librsvg-2.59.2/Cargo.toml<br>
&gt; --project-build-root<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/build<br>
&gt; --prefix<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr<br>
&gt; --libdir lib --release --target x86_64-unknown-linux-gnu<br>
&gt; --command=3Dbuild --current-build-dir gdk-pixbuf-loader<br>
&gt; --current-source-dir<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader<br>
&gt; --packages pixbufloader-svg --extension so<br>
&gt; | ninja: build stopped: subcommand failed.<br>
&gt; | INFO: autodetecting backend as ninja<br>
&gt; | INFO: calculating backend command to run:<br>
&gt; /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr/bin/ninja<br>
&gt; -j 32 -v<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; ERROR: Task<br>
&gt; (virtual:native:/data/projects/test-chromium/build/../sources/meta-rus=
t-mixins/recipes-gnome/librsvg/librsvg_2.59.2.bb:do_compile)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; Am I missing some tools on my PC?=C2=A0<br>
&gt;<br>
&gt; Thanks and BR,<br>
&gt;<br>
&gt; marek<br>
&gt;<br>
&gt; -- <br>
&gt; as simple and primitive as possible<br>
&gt; -------------------------------------------------<br>
&gt; Marek Belisko - OPEN-NANDRA<br>
&gt; Freelance Developer<br>
&gt;<br>
&gt; Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
&gt; Tel: +421 915 052 184<br>
&gt; skype: marekwhite<br>
&gt; twitter: #opennandra<br>
&gt; web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_=
blank">http://open-nandra.com</a><br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#65044): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/65044" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/65044</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11202056=
4/6084445" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/112020564/6084445</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skan=
digraun@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">as simple and primitive as possible<br>--------------------------=
-----------------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Develop=
er<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 9=
15 052 184<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"=
http://open-nandra.com" target=3D"_blank">http://open-nandra.com</a></div><=
/div>

--00000000000089363e0631b31a0c--

