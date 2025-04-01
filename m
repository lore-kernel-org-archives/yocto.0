Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC67C36008
	for <webhook@archiver.kernel.org>; Tue,  1 Apr 2025 06:30:50 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.12996.1743489045781223727
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Mar 2025 23:30:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Jk1IrSoi;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: marek.belisko@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39c2688619bso47572f8f.1
        for <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025 23:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743489043; x=1744093843; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xM3nUmlU2i+qTRf8qgDvFnDH87Ka1FHBgV4n+ei999Y=;
        b=Jk1IrSoi1K7wZhJUY8UnYSBO1FFVyIu1UTtmQfqkn44WHDUJrx3GLlb31ttAR1+6+p
         Ktw1dc6H1+RdX86CaHbwFIFikuxjJeysnD13xu08OPU+Xq1vCd73kFN3xopk8CuEqb6M
         lhHePIkt4H4q5lS25QEweaTwpoyeYcoLPpPs8EVOWqenmnVD+nJMdoClj1u0mk6Hxqvq
         6sItylpqcZn6lt6vrwZ6bz1Pz0vQ+0Zqb+xXs/T24s6ainDpNGarDczDQGrDOCVElS87
         xEpJJxNfa0xgaBOfl5PSSMzWFmGEW7cZMlnZpAdQgma3DVV+rXPYvUy8W+Q59kEMNoRp
         oISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743489043; x=1744093843;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xM3nUmlU2i+qTRf8qgDvFnDH87Ka1FHBgV4n+ei999Y=;
        b=v/qm5AlBSULpYtOCALhki+gjQ5mHyxxKs6mKRssX1b6j796oTLLc5xTsRVjwz7rSu3
         oWnh8fgF83t7IcoxaZFh1QNNWaNlNLvAYKDFuYqu8thZVONQ/W4LLmkQl+vAA6iK3tM3
         5hWY+QxXqQSZGYAMh3GmawAcRcispYPyl5BvFjYeHHft43UT13BcpqsF+yKe3wpu9BjP
         9yZmVTmcSSyF3LnJQY2LiyjYffwVtv4ltVctbrEEjHSkW0Ja90pVDaigmbfGvKVJ5CD+
         fQTklUJJCTRNEUWzN8KsFm9o27jvAm/VDtd4G370l6R+3QuZ6au+bsxNYpblZj42aiWG
         nQCQ==
X-Gm-Message-State: AOJu0YwRWkKGNDBjGS8mZdyklzpmx+Pg60rdOrbZNE82X4MFZpWRG1R8
	i5IALaYPE7EJMmKjYAsT3HcjZFD9u1cCEXIAhPw950u/nHoKi1dF1TBDiSEyE0161Viuv5OJyha
	l4kSLF+88Y4Jvj9R013+D6zUl5FPWb5/iVLI=
X-Gm-Gg: ASbGncsxcsSzIn7iMq2t7T93kup3JG8J4cIeBHjfoDY1xcdQVvrExIc+Yv8E3ZGqIE3
	JerVKHViaQTR/sOSwkcEBAXTAtKCvlzc/tuC67Rz+rPMF0SbnGW5u/OqTx/7u/yFNztMiA5cZiR
	s7VsX10SD/3xsDDLoi72OsU1nZdQ==
X-Google-Smtp-Source: AGHT+IFOsZJOIwQpJLmkSwQWIRgXp7Q402amEpsP5hqpOWDYwr0TPEgf52zkSqizvgVH88gtVlKJy0mSgww8n5O4vkw=
X-Received: by 2002:a05:6000:1a87:b0:390:e1c5:fe2 with SMTP id
 ffacd0b85a97d-39c2366aec8mr1305218f8f.38.1743489043016; Mon, 31 Mar 2025
 23:30:43 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 1 Apr 2025 08:30:31 +0200
X-Gm-Features: AQ5f1Jpwa85u_PQsBNbUwT-bTp6RGp91UrKRbVQXQ7If7gRSQzFpW7xHWsbm_dM
Message-ID: <CAAfyv37aFm=N2+T_-SCe2w4Nrv=hUY2qEuEZu_HTTWBWnD91aw@mail.gmail.com>
Subject: [meta-rust-mixins] scarthgap issue with building librsvg
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001434710631b1ad29"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 06:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65044

--0000000000001434710631b1ad29
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to build latest chromium on scarthgap branch and when added
meta-rust-mixin as dependency (branch scarthgap/rust) I'm seeing following:

ERROR: librsvg-native-2.59.2-r0 do_compile:
ExecutionError('/data/projects/test-chromium/build/tmp/work/x86_64-linux/li=
brsvg-native/2.59.2/temp/run.do_compile.4450',
1, None, None)
ERROR: Logfile of failure stored in:
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/temp/log.do_compile.4450
Log data follows:
| DEBUG: Executing shell function do_compile
| [0/1] env
PKG_CONFIG=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/librs=
vg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native
PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/=
librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/project=
s/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sy=
sroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/work=
/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
LD_LIBRARY_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/=
librsvg-native/2.59.2/build/rsvg:
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/librsvg-2.59.2/meson/cargo_wrapper.py
--cargo
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/recipe-sysroot-native/usr/bin/cargo
--manifest-path
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/librsvg-2.59.2/Cargo.toml
--project-build-root
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/build
--prefix
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/recipe-sysroot-native/usr
--libdir lib --release --target x86_64-unknown-linux-gnu --command=3Dbuild
--current-build-dir gdk-pixbuf-loader --current-source-dir
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/librsvg-2.59.2/gdk-pixbuf-loader
--packages pixbufloader-svg --extension so
| warning:
`/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/cargo_home/config`
is deprecated in favor of `config.toml`
| note: if you need to support cargo 1.38 or earlier, you can symlink
`config` to `config.toml`
|    Compiling futures-macro v0.3.30
|     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>           ] =
44/73: futures-macro
|    Compiling thiserror-impl v1.0.63
|     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>       =
  ] 51/73: futures-macro,
thiserror-...
|    Compiling glib-macros v0.20.0
|    Compiling pixbufloader-svg v0.0.1
(/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/librsvg-2.59.2/gdk-pixbuf-loader)
|     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D>     ] 62/73:
pixbufloader-svg(build), ...
| error: failed to run custom build command for `pixbufloader-svg v0.0.1
(/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/librsvg-2.59.2/gdk-pixbuf-loader)`
| note: To improve backtraces for build dependencies, set the
CARGO_PROFILE_RELEASE_BUILD_OVERRIDE_DEBUG=3Dtrue environment variable to
enable debug information generation.
|
| Caused by:
|   process didn't exit successfully:
`/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/build/target/release/build/pixbufloader-svg-b7156fa02de9df48/build-scr=
ipt-build`
(exit status: 101)
|   --- stdout
|   cargo:rerun-if-env-changed=3DLIBRSVG_2.0_UNINSTALLED_NO_PKG_CONFIG
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64-unknown-linux-gnu
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64_unknown_linux_gnu
|   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG
|   cargo:rerun-if-env-changed=3DPKG_CONFIG
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64-unknown-linux-gnu
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64_unknown_linux_gnu
|   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_PATH
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64-unknown-linux-gnu
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64_unknown_linux_gnu
|   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_LIBDIR
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR
|
cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64-unknown-linux-gn=
u
|
cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64_unknown_linux_gn=
u
|   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_SYSROOT_DIR
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR
|   cargo:rerun-if-env-changed=3DLIBRSVG_2.0_NO_PKG_CONFIG
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64-unknown-linux-gnu
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64_unknown_linux_gnu
|   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG
|   cargo:rerun-if-env-changed=3DPKG_CONFIG
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64-unknown-linux-gnu
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH_x86_64_unknown_linux_gnu
|   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_PATH
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_PATH
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64-unknown-linux-gnu
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64_unknown_linux_gnu
|   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_LIBDIR
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR
|
cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64-unknown-linux-gn=
u
|
cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64_unknown_linux_gn=
u
|   cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG_SYSROOT_DIR
|   cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR
|
|   --- stderr
|   thread 'main' panicked at gdk-pixbuf-loader/build.rs:9:40:
|   called `Result::unwrap()` on an `Err` value: PkgConfig(
|   pkg-config exited with status code 1
|   >
PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/=
librsvg-native/2.59.2/build/meson-uninstalled:/data/projects/test-chromium/=
build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr=
/lib/pkgconfig:/data/projects/test-chromium/build/tmp/work/x86_64-linux/lib=
rsvg-native/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/projects/=
test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson=
-uninstalled
PKG_CONFIG_LIBDIR=3D/data/projects/test-chromium/build/tmp/work/x86_64-linu=
x/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig
PKG_CONFIG_SYSROOT_DIR=3D PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=3D1
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/recipe-sysroot-native/usr/bin/pkg-config-native
--libs --cflags librsvg-2.0-uninstalled librsvg-2.0-uninstalled >=3D 2.57
|
|   The system library `librsvg-2.0-uninstalled` required by crate
`pixbufloader-svg` was not found.
|   The file `librsvg-2.0-uninstalled.pc` needs to be installed and the
PKG_CONFIG_PATH environment variable must contain its parent directory.
|   PKG_CONFIG_PATH contains the following:
|       -
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/build/meson-uninstalled
|       -
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/recipe-sysroot-native/usr/lib/pkgconfig
|       -
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/recipe-sysroot-native/usr/share/pkgconfig/data/projects/test-chromium/b=
uild/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
|
|   HINT: you may need to install a package such as
librsvg-2.0-uninstalled, librsvg-2.0-uninstalled-dev or
librsvg-2.0-uninstalled-devel.
|   )
|   stack backtrace:
|      0:     0x5597609b1565 -
<std::sys::backtrace::BacktraceLock::print::DisplayBacktrace as
core::fmt::Display>::fmt::h24ae4f7b383cce86
|      1:     0x5597609d6e8b - core::fmt::write::h0d782ef25b884623
|      2:     0x5597609aee6f - std::io::Write::write_fmt::h793365c8935b515e
|      3:     0x5597609b2851 -
std::panicking::default_hook::{{closure}}::h9c6a63ff4db62aa9
|      4:     0x5597609b252c -
std::panicking::default_hook::heaa506a56ae4dbcb
|      5:     0x5597609b2eb1 -
std::panicking::rust_panic_with_hook::he2c00aacf417eb92
|      6:     0x5597609b2d17 -
std::panicking::begin_panic_handler::{{closure}}::he4ff60a4333ba227
|      7:     0x5597609b1a29 -
std::sys::backtrace::__rust_end_short_backtrace::hd720b3b26bb01cca
|      8:     0x5597609b29a4 - rust_begin_unwind
|      9:     0x559760850963 - core::panicking::panic_fmt::h36d8e0f43781155=
f
|     10:     0x559760850d96 -
core::result::unwrap_failed::h40e21701b74e2b57
|     11:     0x55976085193f -
build_script_build::probe_system_deps::h95c2fa13d51a9e7c
|     12:     0x5597608519b6 - build_script_build::main::hbf1febc78145eea3
|     13:     0x559760851293 -
core::ops::function::FnOnce::call_once::h0f696004d3fddba5
|     14:     0x559760851246 -
std::sys::backtrace::__rust_begin_short_backtrace::h63760e37d0cd8098
|     15:     0x559760851229 -
std::rt::lang_start::{{closure}}::h2b6b05577a2c2113
|     16:     0x5597609ab8a0 -
std::rt::lang_start_internal::h85746f0b4dc6ccc5
|     17:     0x559760851207 - std::rt::lang_start::hbcf508b3d935c164
|     18:     0x5597608519d5 - main
|     19:     0x7f25d5695fdb - __libc_start_call_main
|     20:     0x7f25d5696099 - __libc_start_main_alias_2
|     21:     0x55976085111e - _start
|     22:                0x0 - <unknown>
| warning: build failed, waiting for other jobs to finish...
|     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D>    ] 63/73: futures-macro,
thiserror-...
|     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D>    ] 64/73: thiserror-impl,
glib-macros
|     Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D>   ] 65/73: glib-macros
| command:
['/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2=
.59.2/recipe-sysroot-native/usr/bin/cargo',
'build', '--locked', '--manifest-path',
'/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/librsvg-2.59.2/Cargo.toml',
'--target-dir',
'/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/build/target',
'--release', '--target', 'x86_64-unknown-linux-gnu', '-p',
'pixbufloader-svg']
| Traceback (most recent call last):
|   File
"/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/librsvg-2.59.2/meson/cargo_wrapper.py",
line 180, in <module>
|     subprocess.run(cargo_cmd, env=3Denv, check=3DTrue)
|   File
"/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/recipe-sysroot-native/usr/lib/python3.12/subprocess.py",
line 571, in run
|     raise CalledProcessError(retcode, process.args,
| subprocess.CalledProcessError: Command
'['/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/recipe-sysroot-native/usr/bin/cargo',
'build', '--locked', '--manifest-path',
'/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/librsvg-2.59.2/Cargo.toml',
'--target-dir',
'/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.=
59.2/build/target',
'--release', '--target', 'x86_64-unknown-linux-gnu', '-p',
'pixbufloader-svg']' returned non-zero exit status 101.
| FAILED: gdk-pixbuf-loader/libpixbufloader_svg.so
| env
PKG_CONFIG=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/librs=
vg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native
PKG_CONFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/=
librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/project=
s/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sy=
sroot-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/work=
/x86_64-linux/librsvg-native/2.59.2/build/meson-uninstalled
LD_LIBRARY_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/=
librsvg-native/2.59.2/build/rsvg:
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/librsvg-2.59.2/meson/cargo_wrapper.py
--cargo
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/recipe-sysroot-native/usr/bin/cargo
--manifest-path
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/librsvg-2.59.2/Cargo.toml
--project-build-root
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/build
--prefix
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/recipe-sysroot-native/usr
--libdir lib --release --target x86_64-unknown-linux-gnu --command=3Dbuild
--current-build-dir gdk-pixbuf-loader --current-source-dir
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/librsvg-2.59.2/gdk-pixbuf-loader
--packages pixbufloader-svg --extension so
| ninja: build stopped: subcommand failed.
| INFO: autodetecting backend as ninja
| INFO: calculating backend command to run:
/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.5=
9.2/recipe-sysroot-native/usr/bin/ninja
-j 32 -v
| WARNING: exit code 1 from a shell command.
ERROR: Task
(virtual:native:/data/projects/test-chromium/build/../sources/meta-rust-mix=
ins/recipes-gnome/librsvg/librsvg_2.59.2.bb:do_compile)
failed with exit code '1'

Am I missing some tools on my PC?

Thanks and BR,

marek

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

--0000000000001434710631b1ad29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br clear=3D"all"></div><div><br></div><div>I&#=
39;m trying to build latest chromium=C2=A0on scarthgap=C2=A0branch and when=
 added meta-rust-mixin as dependency (branch scarthgap/rust) I&#39;m seeing=
 following:</div><div><br></div><div>ERROR: librsvg-native-2.59.2-r0 do_com=
pile: ExecutionError(&#39;/data/projects/test-chromium/build/tmp/work/x86_6=
4-linux/librsvg-native/2.59.2/temp/run.do_compile.4450&#39;, 1, None, None)=
<br>ERROR: Logfile of failure stored in: /data/projects/test-chromium/build=
/tmp/work/x86_64-linux/librsvg-native/2.59.2/temp/log.do_compile.4450<br>Lo=
g data follows:<br>| DEBUG: Executing shell function do_compile<br>| [0/1] =
env PKG_CONFIG=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/l=
ibrsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-config-native PKG_CO=
NFIG_PATH=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsv=
g-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/projects/test=
-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-=
native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/work/x86_6=
4-linux/librsvg-native/2.59.2/build/meson-uninstalled LD_LIBRARY_PATH=3D/da=
ta/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2=
/build/rsvg: /data/projects/test-chromium/build/tmp/work/x86_64-linux/librs=
vg-native/2.59.2/librsvg-2.59.2/meson/cargo_wrapper.py --cargo /data/projec=
ts/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-s=
ysroot-native/usr/bin/cargo --manifest-path /data/projects/test-chromium/bu=
ild/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/Cargo.toml -=
-project-build-root /data/projects/test-chromium/build/tmp/work/x86_64-linu=
x/librsvg-native/2.59.2/build --prefix /data/projects/test-chromium/build/t=
mp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr --libd=
ir lib --release --target x86_64-unknown-linux-gnu --command=3Dbuild --curr=
ent-build-dir gdk-pixbuf-loader --current-source-dir /data/projects/test-ch=
romium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/gdk=
-pixbuf-loader --packages pixbufloader-svg --extension so<br>| warning: `/d=
ata/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.=
2/cargo_home/config` is deprecated in favor of `config.toml`<br>| note: if =
you need to support cargo 1.38 or earlier, you can symlink `config` to `con=
fig.toml`<br>| =C2=A0 =C2=A0Compiling futures-macro v0.3.30<br>| =C2=A0 =C2=
=A0 Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ] 44/73: futures-macro<br>| =C2=A0 =C2=A0Compiling=
 thiserror-impl v1.0.63<br>| =C2=A0 =C2=A0 Building [=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ] 51/73: fut=
ures-macro, thiserror-...<br>| =C2=A0 =C2=A0Compiling glib-macros v0.20.0<b=
r>| =C2=A0 =C2=A0Compiling pixbufloader-svg v0.0.1 (/data/projects/test-chr=
omium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/gdk-=
pixbuf-loader)<br>| =C2=A0 =C2=A0 Building [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt; =C2=A0 =C2=A0 ] 62/73: pixbufloader-s=
vg(build), ...<br>| error: failed to run custom build command for `pixbuflo=
ader-svg v0.0.1 (/data/projects/test-chromium/build/tmp/work/x86_64-linux/l=
ibrsvg-native/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader)`<br>| note: To impro=
ve backtraces for build dependencies, set the CARGO_PROFILE_RELEASE_BUILD_O=
VERRIDE_DEBUG=3Dtrue environment variable to enable debug information gener=
ation.<br>| <br>| Caused by:<br>| =C2=A0 process didn&#39;t exit successful=
ly: `/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/build/target/release/build/pixbufloader-svg-b7156fa02de9df48/build=
-script-build` (exit status: 101)<br>| =C2=A0 --- stdout<br>| =C2=A0 cargo:=
rerun-if-env-changed=3DLIBRSVG_2.0_UNINSTALLED_NO_PKG_CONFIG<br>| =C2=A0 ca=
rgo:rerun-if-env-changed=3DPKG_CONFIG_x86_64-unknown-linux-gnu<br>| =C2=A0 =
cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64_unknown_linux_gnu<br>| =C2=
=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG<br>| =C2=A0 cargo:rerun-if=
-env-changed=3DPKG_CONFIG<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONF=
IG_PATH_x86_64-unknown-linux-gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DP=
KG_CONFIG_PATH_x86_64_unknown_linux_gnu<br>| =C2=A0 cargo:rerun-if-env-chan=
ged=3DHOST_PKG_CONFIG_PATH<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CON=
FIG_PATH<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR_x86_64-=
unknown-linux-gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDI=
R_x86_64_unknown_linux_gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DHOST_PK=
G_CONFIG_LIBDIR<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_LIBDIR<=
br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_DIR_x86_64-unkn=
own-linux-gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_D=
IR_x86_64_unknown_linux_gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DHOST_P=
KG_CONFIG_SYSROOT_DIR<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_S=
YSROOT_DIR<br>| =C2=A0 cargo:rerun-if-env-changed=3DLIBRSVG_2.0_NO_PKG_CONF=
IG<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64-unknown-linux=
-gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_x86_64_unknown_lin=
ux_gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DHOST_PKG_CONFIG<br>| =C2=A0=
 cargo:rerun-if-env-changed=3DPKG_CONFIG<br>| =C2=A0 cargo:rerun-if-env-cha=
nged=3DPKG_CONFIG_PATH_x86_64-unknown-linux-gnu<br>| =C2=A0 cargo:rerun-if-=
env-changed=3DPKG_CONFIG_PATH_x86_64_unknown_linux_gnu<br>| =C2=A0 cargo:re=
run-if-env-changed=3DHOST_PKG_CONFIG_PATH<br>| =C2=A0 cargo:rerun-if-env-ch=
anged=3DPKG_CONFIG_PATH<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG=
_LIBDIR_x86_64-unknown-linux-gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DP=
KG_CONFIG_LIBDIR_x86_64_unknown_linux_gnu<br>| =C2=A0 cargo:rerun-if-env-ch=
anged=3DHOST_PKG_CONFIG_LIBDIR<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG=
_CONFIG_LIBDIR<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_CONFIG_SYSROOT_=
DIR_x86_64-unknown-linux-gnu<br>| =C2=A0 cargo:rerun-if-env-changed=3DPKG_C=
ONFIG_SYSROOT_DIR_x86_64_unknown_linux_gnu<br>| =C2=A0 cargo:rerun-if-env-c=
hanged=3DHOST_PKG_CONFIG_SYSROOT_DIR<br>| =C2=A0 cargo:rerun-if-env-changed=
=3DPKG_CONFIG_SYSROOT_DIR<br>| <br>| =C2=A0 --- stderr<br>| =C2=A0 thread &=
#39;main&#39; panicked at gdk-pixbuf-loader/build.rs:9:40:<br>| =C2=A0 call=
ed `Result::unwrap()` on an `Err` value: PkgConfig(<br>| =C2=A0 pkg-config =
exited with status code 1<br>| =C2=A0 &gt; PKG_CONFIG_PATH=3D/data/projects=
/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meso=
n-uninstalled:/data/projects/test-chromium/build/tmp/work/x86_64-linux/libr=
svg-native/2.59.2/recipe-sysroot-native/usr/lib/pkgconfig:/data/projects/te=
st-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroo=
t-native/usr/share/pkgconfig/data/projects/test-chromium/build/tmp/work/x86=
_64-linux/librsvg-native/2.59.2/build/meson-uninstalled PKG_CONFIG_LIBDIR=
=3D/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/=
2.59.2/recipe-sysroot-native/usr/lib/pkgconfig PKG_CONFIG_SYSROOT_DIR=3D PK=
G_CONFIG_ALLOW_SYSTEM_CFLAGS=3D1 /data/projects/test-chromium/build/tmp/wor=
k/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/pkg-conf=
ig-native --libs --cflags librsvg-2.0-uninstalled librsvg-2.0-uninstalled &=
gt;=3D 2.57<br>| <br>| =C2=A0 The system library `librsvg-2.0-uninstalled` =
required by crate `pixbufloader-svg` was not found.<br>| =C2=A0 The file `l=
ibrsvg-2.0-uninstalled.pc` needs to be installed and the PKG_CONFIG_PATH en=
vironment variable must contain its parent directory.<br>| =C2=A0 PKG_CONFI=
G_PATH contains the following:<br>| =C2=A0 =C2=A0 =C2=A0 - /data/projects/t=
est-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build/meson-=
uninstalled<br>| =C2=A0 =C2=A0 =C2=A0 - /data/projects/test-chromium/build/=
tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/lib/p=
kgconfig<br>| =C2=A0 =C2=A0 =C2=A0 - /data/projects/test-chromium/build/tmp=
/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/share/pk=
gconfig/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nat=
ive/2.59.2/build/meson-uninstalled<br>| <br>| =C2=A0 HINT: you may need to =
install a package such as librsvg-2.0-uninstalled, librsvg-2.0-uninstalled-=
dev or librsvg-2.0-uninstalled-devel.<br>| =C2=A0 )<br>| =C2=A0 stack backt=
race:<br>| =C2=A0 =C2=A0 =C2=A00: =C2=A0 =C2=A0 0x5597609b1565 - &lt;std::s=
ys::backtrace::BacktraceLock::print::DisplayBacktrace as core::fmt::Display=
&gt;::fmt::h24ae4f7b383cce86<br>| =C2=A0 =C2=A0 =C2=A01: =C2=A0 =C2=A0 0x55=
97609d6e8b - core::fmt::write::h0d782ef25b884623<br>| =C2=A0 =C2=A0 =C2=A02=
: =C2=A0 =C2=A0 0x5597609aee6f - std::io::Write::write_fmt::h793365c8935b51=
5e<br>| =C2=A0 =C2=A0 =C2=A03: =C2=A0 =C2=A0 0x5597609b2851 - std::panickin=
g::default_hook::{{closure}}::h9c6a63ff4db62aa9<br>| =C2=A0 =C2=A0 =C2=A04:=
 =C2=A0 =C2=A0 0x5597609b252c - std::panicking::default_hook::heaa506a56ae4=
dbcb<br>| =C2=A0 =C2=A0 =C2=A05: =C2=A0 =C2=A0 0x5597609b2eb1 - std::panick=
ing::rust_panic_with_hook::he2c00aacf417eb92<br>| =C2=A0 =C2=A0 =C2=A06: =
=C2=A0 =C2=A0 0x5597609b2d17 - std::panicking::begin_panic_handler::{{closu=
re}}::he4ff60a4333ba227<br>| =C2=A0 =C2=A0 =C2=A07: =C2=A0 =C2=A0 0x5597609=
b1a29 - std::sys::backtrace::__rust_end_short_backtrace::hd720b3b26bb01cca<=
br>| =C2=A0 =C2=A0 =C2=A08: =C2=A0 =C2=A0 0x5597609b29a4 - rust_begin_unwin=
d<br>| =C2=A0 =C2=A0 =C2=A09: =C2=A0 =C2=A0 0x559760850963 - core::panickin=
g::panic_fmt::h36d8e0f43781155f<br>| =C2=A0 =C2=A0 10: =C2=A0 =C2=A0 0x5597=
60850d96 - core::result::unwrap_failed::h40e21701b74e2b57<br>| =C2=A0 =C2=
=A0 11: =C2=A0 =C2=A0 0x55976085193f - build_script_build::probe_system_dep=
s::h95c2fa13d51a9e7c<br>| =C2=A0 =C2=A0 12: =C2=A0 =C2=A0 0x5597608519b6 - =
build_script_build::main::hbf1febc78145eea3<br>| =C2=A0 =C2=A0 13: =C2=A0 =
=C2=A0 0x559760851293 - core::ops::function::FnOnce::call_once::h0f696004d3=
fddba5<br>| =C2=A0 =C2=A0 14: =C2=A0 =C2=A0 0x559760851246 - std::sys::back=
trace::__rust_begin_short_backtrace::h63760e37d0cd8098<br>| =C2=A0 =C2=A0 1=
5: =C2=A0 =C2=A0 0x559760851229 - std::rt::lang_start::{{closure}}::h2b6b05=
577a2c2113<br>| =C2=A0 =C2=A0 16: =C2=A0 =C2=A0 0x5597609ab8a0 - std::rt::l=
ang_start_internal::h85746f0b4dc6ccc5<br>| =C2=A0 =C2=A0 17: =C2=A0 =C2=A0 =
0x559760851207 - std::rt::lang_start::hbcf508b3d935c164<br>| =C2=A0 =C2=A0 =
18: =C2=A0 =C2=A0 0x5597608519d5 - main<br>| =C2=A0 =C2=A0 19: =C2=A0 =C2=
=A0 0x7f25d5695fdb - __libc_start_call_main<br>| =C2=A0 =C2=A0 20: =C2=A0 =
=C2=A0 0x7f25d5696099 - __libc_start_main_alias_2<br>| =C2=A0 =C2=A0 21: =
=C2=A0 =C2=A0 0x55976085111e - _start<br>| =C2=A0 =C2=A0 22: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0 - &lt;unknown&gt;<br>| warning=
: build failed, waiting for other jobs to finish...<br>| =C2=A0 =C2=A0 Buil=
ding [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt=
; =C2=A0 =C2=A0] 63/73: futures-macro, thiserror-...<br>| =C2=A0 =C2=A0 Bui=
lding [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&g=
t; =C2=A0 =C2=A0] 64/73: thiserror-impl, glib-macros<br>| =C2=A0 =C2=A0 Bui=
lding [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D&gt; =C2=A0 ] 65/73: glib-macros<br>| command: [&#39;/data/projects/test=
-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-=
native/usr/bin/cargo&#39;, &#39;build&#39;, &#39;--locked&#39;, &#39;--mani=
fest-path&#39;, &#39;/data/projects/test-chromium/build/tmp/work/x86_64-lin=
ux/librsvg-native/2.59.2/librsvg-2.59.2/Cargo.toml&#39;, &#39;--target-dir&=
#39;, &#39;/data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg=
-native/2.59.2/build/target&#39;, &#39;--release&#39;, &#39;--target&#39;, =
&#39;x86_64-unknown-linux-gnu&#39;, &#39;-p&#39;, &#39;pixbufloader-svg&#39=
;]<br>| Traceback (most recent call last):<br>| =C2=A0 File &quot;/data/pro=
jects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librs=
vg-2.59.2/meson/cargo_wrapper.py&quot;, line 180, in &lt;module&gt;<br>| =
=C2=A0 =C2=A0 subprocess.run(cargo_cmd, env=3Denv, check=3DTrue)<br>| =C2=
=A0 File &quot;/data/projects/test-chromium/build/tmp/work/x86_64-linux/lib=
rsvg-native/2.59.2/recipe-sysroot-native/usr/lib/python3.12/subprocess.py&q=
uot;, line 571, in run<br>| =C2=A0 =C2=A0 raise CalledProcessError(retcode,=
 process.args,<br>| subprocess.CalledProcessError: Command &#39;[&#39;/data=
/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/r=
ecipe-sysroot-native/usr/bin/cargo&#39;, &#39;build&#39;, &#39;--locked&#39=
;, &#39;--manifest-path&#39;, &#39;/data/projects/test-chromium/build/tmp/w=
ork/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/Cargo.toml&#39;, &#39=
;--target-dir&#39;, &#39;/data/projects/test-chromium/build/tmp/work/x86_64=
-linux/librsvg-native/2.59.2/build/target&#39;, &#39;--release&#39;, &#39;-=
-target&#39;, &#39;x86_64-unknown-linux-gnu&#39;, &#39;-p&#39;, &#39;pixbuf=
loader-svg&#39;]&#39; returned non-zero exit status 101.<br>| FAILED: gdk-p=
ixbuf-loader/libpixbufloader_svg.so<br>| env PKG_CONFIG=3D/data/projects/te=
st-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroo=
t-native/usr/bin/pkg-config-native PKG_CONFIG_PATH=3D/data/projects/test-ch=
romium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/recipe-sysroot-nat=
ive/usr/lib/pkgconfig:/data/projects/test-chromium/build/tmp/work/x86_64-li=
nux/librsvg-native/2.59.2/recipe-sysroot-native/usr/share/pkgconfig/data/pr=
ojects/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/buil=
d/meson-uninstalled LD_LIBRARY_PATH=3D/data/projects/test-chromium/build/tm=
p/work/x86_64-linux/librsvg-native/2.59.2/build/rsvg: /data/projects/test-c=
hromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/librsvg-2.59.2/me=
son/cargo_wrapper.py --cargo /data/projects/test-chromium/build/tmp/work/x8=
6_64-linux/librsvg-native/2.59.2/recipe-sysroot-native/usr/bin/cargo --mani=
fest-path /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-=
native/2.59.2/librsvg-2.59.2/Cargo.toml --project-build-root /data/projects=
/test-chromium/build/tmp/work/x86_64-linux/librsvg-native/2.59.2/build --pr=
efix /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-nativ=
e/2.59.2/recipe-sysroot-native/usr --libdir lib --release --target x86_64-u=
nknown-linux-gnu --command=3Dbuild --current-build-dir gdk-pixbuf-loader --=
current-source-dir /data/projects/test-chromium/build/tmp/work/x86_64-linux=
/librsvg-native/2.59.2/librsvg-2.59.2/gdk-pixbuf-loader --packages pixbuflo=
ader-svg --extension so<br>| ninja: build stopped: subcommand failed.<br>| =
INFO: autodetecting backend as ninja<br>| INFO: calculating backend command=
 to run: /data/projects/test-chromium/build/tmp/work/x86_64-linux/librsvg-n=
ative/2.59.2/recipe-sysroot-native/usr/bin/ninja -j 32 -v<br>| WARNING: exi=
t code 1 from a shell command.<br>ERROR: Task (virtual:native:/data/project=
s/test-chromium/build/../sources/meta-rust-mixins/recipes-gnome/librsvg/lib=
rsvg_2.59.2.bb:do_compile) failed with exit code &#39;1&#39;<br></div><div>=
<br></div><div>Am I missing some tools on my PC?=C2=A0</div><div><br></div>=
<div>Thanks and BR,</div><div><br></div><div>marek</div><div><br></div><spa=
n class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"=
gmail_signature" data-smartmail=3D"gmail_signature">as simple and primitive=
 as possible<br>-------------------------------------------------<br>Marek =
Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Pr=
esov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<b=
r>twitter: #opennandra<br>web: <a href=3D"http://open-nandra.com" target=3D=
"_blank">http://open-nandra.com</a></div></div>

--0000000000001434710631b1ad29--

