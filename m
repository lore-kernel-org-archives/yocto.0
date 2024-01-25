Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CE6C47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 09:43:33 +0000 (UTC)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web10.13734.1706175808203223089
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 01:43:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HK1W2JmK;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-46b1419ad06so306819137.1
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 01:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706175807; x=1706780607; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=68C5JMn5aQe1eEOBt3dZsTYwKin25Cn523Hu03MHiaU=;
        b=HK1W2JmKtcT/H4nk3nmFyutQ0z32BMSaZu1wA0BtSgQ64irpDjBGFuvQAPT0NaucJU
         Hq0+sQNL4gzV/g7KltULZIZUX/76fY7TxqfpPya+QcPtDyMwUVpnHUymlj/TPLwUa+Z+
         w3UnSKjuhQAsCzREwhC1GkOX4gbwg/bMcNuKskG9BU4DfcA8RIgc+15a6zxDxJdhSX02
         JKNQ8P90NgTIn8z6coRhzifGzpU+BGo/H5lXsh5n+BOXzxZplnm8/pXnlE9p54pTjB0j
         8CZKMAtlWWgLuPYvKlOkGigsGWATrF3ZrVq4LJcZuqKpb4yC5tzfyTb27oYC0zS5S/MW
         GjNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706175807; x=1706780607;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=68C5JMn5aQe1eEOBt3dZsTYwKin25Cn523Hu03MHiaU=;
        b=GOvtDLGCZv7aNPw36PJp8jsJp9UCMCrc5Zu0OMsnEqvj8PB/vjG1w368rjIrlPaBDL
         7iMbs0nMsRSiIYxTHa+qsY467ejj/nP25zBia/2BX/7ZK15/9b2/34ogVrEywd+GMwN8
         GHBXkacM3rg7XgShgKT/h9gK3vS9Nv/vqtpwHVXoRQV0ZlV5nRy4XK9TrI//lLLRHcgp
         WioDE3oTG7PaYwdpB+GMyElkl1+UKrW8XDLS6Peb4ocf8lbAv2YaaY0qSsDGOcLVW5Kd
         Ec3SRNMEDjEJFIxDofUmRendne/0JofrGPVwvi4yU5ZAEkxIfXEvlYJR5jH2HCosCa2h
         a63Q==
X-Gm-Message-State: AOJu0YwmRJo49jimK5X8UKPBisT9JBH8l47BYhJcK+SayoOYcyfqGmbA
	RCmzEjCsxAMKm6sHbD9uAgVO6QTo83/1bT1xsjLZaEsHGorWX9DBOi64fOROV+fa9G6IPG62WWO
	4s73tZxTCNwwnqdw04woA0SmXvEgg2rIB2tQ=
X-Google-Smtp-Source: AGHT+IGXC8AhOv7ax9AYgRAE24gRz5H5p8V578isVPMKCnYngqeruQW8m+2MTZIfT+48QJ3h73K4fDVBAJGAu/Fph9s=
X-Received: by 2002:a05:6102:6ca:b0:46b:1919:d1d with SMTP id
 m10-20020a05610206ca00b0046b19190d1dmr289256vsg.28.1706175806896; Thu, 25 Jan
 2024 01:43:26 -0800 (PST)
MIME-Version: 1.0
References: <20240125001954.2197496-1-scott.murray@konsulko.com>
In-Reply-To: <20240125001954.2197496-1-scott.murray@konsulko.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 25 Jan 2024 09:43:15 +0000
Message-ID: <CANPvuRndLiJWS6+L58Lrva_3Ku+-OFLXtkT_nnibyyvMQF+vvg@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][PATCH 00/29] Populate kirkstone/rust
 branch (cover letter only)
To: yocto@lists.yoctoproject.org, scott.murray@konsulko.com
Content-Type: multipart/alternative; boundary="000000000000e50047060fc2025a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 09:43:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62284

--000000000000e50047060fc2025a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Scott Murray <scott.murray@konsulko.com> escreveu (quinta, 25/01/2024 =C3=
=A0(s)
00:20):

> As discussed on the last couple of YP technical calls, I have created
> a kirkstone/rust branch in meta-lts-mixins.  It backports the state of
> Rust support in master to kirkstone (so currently 1.74.1) the same way
> that the previous kirkstone/rust-1.68 and kirkstone/rust-1.70 branches
> did against mickledore and nanbield.  The aim with kirkstone/rust is to
> keep it up to date with the level of Rust support in master until the
> Kirkstone EOL in April 2026.
>

Hi Scott,

Thanks for taking care and doing this huge update.
Much appreciated.

Jose


>
> The majority of the patches listed below were manually picked from
> master and adapted on top of the kirkstone/rust-1.70 branch to create
> this new branch.  If you would like to look at the changes in detail,
> they are browsable at:
>
> https://git.yoctoproject.org/meta-lts-mixins/log/?h=3Dkirkstone/rust
>
> Changes:
>
> Alex Kiernan (14):
>   rust: Delete python2 configparser code path
>   rust: Drop TARGET_VENDOR export
>   rust: Drop targets and hosts override magic
>   cargo: Rename MANIFEST_PATH -> CARGO_MANIFEST_PATH
>   cargo: Move CARGO_MANIFEST_PATH/CARGO_SRC_DIR to cargo_common
>   rust: cargo: Convert single-valued variables to weak defaults
>   cargo: Add CARGO_LOCK_PATH for path to Cargo.lock
>   rust: Upgrade 1.70.0 -> 1.71.0
>   rust: Upgrade 1.71.0 -> 1.71.1
>   rust: Upgrade 1.71.1 -> 1.72.0
>   rust: Upgrade 1.72.0 -> 1.72.1
>   rust: Upgrade 1.72.1 -> 1.73.0
>   rust: Upgrade 1.73.0 -> 1.74.0
>   rust: Upgrade 1.74.0 -> 1.74.1
>
> Khem Raj (4):
>   rust-cross-canadian: Add riscv64 to cross-canadian hosts
>   librsvg: Fix build for riscv32
>   librsvg: Enable 64bit atomics in crossbeam again for riscv32
>   rust-common.bbclass: Define rust arch for x32 platforms
>
> Martin Jansa (1):
>   rust: drop PE, PR from /usr/src/debug paths
>
> Niko Mauno (1):
>   rust-llvm: Allow overriding LLVM target archs
>
> Ross Burton (1):
>   rust-llvm: remove python3native dependency
>
> Scott Murray (1):
>   Update README
>
> Sean Nyekjaer (2):
>   rust-cross-canadian: set CARGO_TARGET_<triple>_RUSTFLAGS
>   rust-cross-canadian: set CARGO_TARGET_<triple>_RUNNER for nativesdk
>
> Sundeep KOKKONDA (2):
>   rust: Split rustdoc into a separate package
>   rust: rustdoc reproducibility issue fix - disable PGO
>
> Yash Shinde (3):
>   oeqa/selftest: Add rust selftests
>   rust: Fix BOOTSTRAP_CARGO failure during Rust Oe-selftest
>   oeqa/selftest/rust: Add failed test cases to exclude list for Rust
>     Oe-selftest
>
>  README                                        |   30 +-
>  classes/cargo.bbclass                         |    9 +-
>  classes/cargo_common.bbclass                  |   19 +-
>  classes/rust-common.bbclass                   |    8 +-
>  conf/layer.conf                               |    2 +-
>  meta/lib/oeqa/selftest/cases/rust.py          |   85 +
>  .../rust/{cargo_1.70.0.bb =3D> cargo_1.74.1.bb} |    2 +-
>  ...-Do-not-use-LFS64-on-linux-with-musl.patch |  164 --
>  ...0001-Don-t-use-LFS64-symbols-on-musl.patch |  163 ++
>  ...e-absolute-paths-to-OUT_DIR-as-relat.patch |   67 +
>  ...Define-SOCK_NONBLOCK-with-O_NONBLOCK.patch |  122 ++
>  ...efine-SOCK_SEQPACKET-in-common-place.patch |  114 --
>  ...ine-F_SETLK-F_SETLKW-and-fix-F_GETLK.patch |   41 +
>  ...GETLK-F_OFD_SETLK-and-F_OFD_SETLKW-t.patch |  205 +++
>  ...-musl-Define-O_LARGEFILE-for-riscv32.patch |   32 +
>  ...efine-SOCK_SEQPACKET-in-common-place.patch |  115 ++
>  .../rust/files/getrandom-open64.patch         |   46 -
>  .../rust/files/hardcodepaths.patch            |   14 +-
>  .../rust/files/zlib-off64_t.patch             |   17 +-
>  ...ibstd-rs_1.70.0.bb =3D> libstd-rs_1.74.1.bb} |    9 +-
>  recipes-devtools/rust/rust-cross-canadian.inc |    7 +-
>  ....70.0.bb =3D> rust-cross-canadian_1.74.1.bb} |    0
>  ...ust-llvm_1.70.0.bb =3D> rust-llvm_1.74.1.bb} |   15 +-
>  recipes-devtools/rust/rust-snapshot.inc       |   64 +-
>  recipes-devtools/rust/rust-source.inc         |   15 +-
>  .../rust/{rust_1.70.0.bb =3D> rust_1.74.1.bb}   |   27 +-
>  .../librsvg/0001-Add-riscv32-support.patch    | 1511 +++++++++++++++++
>  recipes-gnome/librsvg/librsvg_2.56.3.bb       |    2 +-
>  28 files changed, 2480 insertions(+), 425 deletions(-)
>  create mode 100644 meta/lib/oeqa/selftest/cases/rust.py
>  rename recipes-devtools/rust/{cargo_1.70.0.bb =3D> cargo_1.74.1.bb} (96%=
)
>  delete mode 100644
> recipes-devtools/rust/files/0001-Do-not-use-LFS64-on-linux-with-musl.patc=
h
>  create mode 100644
> recipes-devtools/rust/files/0001-Don-t-use-LFS64-symbols-on-musl.patch
>  create mode 100644
> recipes-devtools/rust/files/0001-Revert-Map-source-absolute-paths-to-OUT_=
DIR-as-relat.patch
>  create mode 100644
> recipes-devtools/rust/files/0001-musl-Define-SOCK_NONBLOCK-with-O_NONBLOC=
K.patch
>  delete mode 100644
> recipes-devtools/rust/files/0001-musl-Define-SOCK_SEQPACKET-in-common-pla=
ce.patch
>  create mode 100644
> recipes-devtools/rust/files/0002-musl-riscv32-Define-F_SETLK-F_SETLKW-and=
-fix-F_GETLK.patch
>  create mode 100644
> recipes-devtools/rust/files/0003-musl-Move-F_OFD_GETLK-F_OFD_SETLK-and-F_=
OFD_SETLKW-t.patch
>  create mode 100644
> recipes-devtools/rust/files/0004-musl-Define-O_LARGEFILE-for-riscv32.patc=
h
>  create mode 100644
> recipes-devtools/rust/files/0005-musl-Define-SOCK_SEQPACKET-in-common-pla=
ce.patch
>  delete mode 100644 recipes-devtools/rust/files/getrandom-open64.patch
>  rename recipes-devtools/rust/{libstd-rs_1.70.0.bb =3D> libstd-rs_1.74.1.=
bb}
> (87%)
>  rename recipes-devtools/rust/{rust-cross-canadian_1.70.0.bb =3D>
> rust-cross-canadian_1.74.1.bb} (100%)
>  rename recipes-devtools/rust/{rust-llvm_1.70.0.bb =3D> rust-llvm_1.74.1.=
bb}
> (89%)
>  rename recipes-devtools/rust/{rust_1.70.0.bb =3D> rust_1.74.1.bb} (94%)
>  create mode 100644
> recipes-gnome/librsvg/librsvg/0001-Add-riscv32-support.patch
>
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62278):
> https://lists.yoctoproject.org/g/yocto/message/62278
> Mute This Topic: https://lists.yoctoproject.org/mt/103944524/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000e50047060fc2025a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Scott Murray &lt;<a href=3D"mailto:sc=
ott.murray@konsulko.com">scott.murray@konsulko.com</a>&gt; escreveu (quinta=
, 25/01/2024 =C3=A0(s) 00:20):<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">As discussed on the last couple of YP technical calls, I hav=
e created<br>
a kirkstone/rust branch in meta-lts-mixins.=C2=A0 It backports the state of=
<br>
Rust support in master to kirkstone (so currently 1.74.1) the same way<br>
that the previous kirkstone/rust-1.68 and kirkstone/rust-1.70 branches<br>
did against mickledore and nanbield.=C2=A0 The aim with kirkstone/rust is t=
o<br>
keep it up to date with the level of Rust support in master until the<br>
Kirkstone EOL in April 2026.<br></blockquote><div><br></div><div>Hi Scott,<=
br><br>Thanks for taking care and doing this huge update.</div><div>Much ap=
preciated.<br><br>Jose</div><div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
<br>
The majority of the patches listed below were manually picked from<br>
master and adapted on top of the kirkstone/rust-1.70 branch to create<br>
this new branch.=C2=A0 If you would like to look at the changes in detail,<=
br>
they are browsable at:<br>
<br>
<a href=3D"https://git.yoctoproject.org/meta-lts-mixins/log/?h=3Dkirkstone/=
rust" rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/met=
a-lts-mixins/log/?h=3Dkirkstone/rust</a><br>
<br>
Changes:<br>
<br>
Alex Kiernan (14):<br>
=C2=A0 rust: Delete python2 configparser code path<br>
=C2=A0 rust: Drop TARGET_VENDOR export<br>
=C2=A0 rust: Drop targets and hosts override magic<br>
=C2=A0 cargo: Rename MANIFEST_PATH -&gt; CARGO_MANIFEST_PATH<br>
=C2=A0 cargo: Move CARGO_MANIFEST_PATH/CARGO_SRC_DIR to cargo_common<br>
=C2=A0 rust: cargo: Convert single-valued variables to weak defaults<br>
=C2=A0 cargo: Add CARGO_LOCK_PATH for path to Cargo.lock<br>
=C2=A0 rust: Upgrade 1.70.0 -&gt; 1.71.0<br>
=C2=A0 rust: Upgrade 1.71.0 -&gt; 1.71.1<br>
=C2=A0 rust: Upgrade 1.71.1 -&gt; 1.72.0<br>
=C2=A0 rust: Upgrade 1.72.0 -&gt; 1.72.1<br>
=C2=A0 rust: Upgrade 1.72.1 -&gt; 1.73.0<br>
=C2=A0 rust: Upgrade 1.73.0 -&gt; 1.74.0<br>
=C2=A0 rust: Upgrade 1.74.0 -&gt; 1.74.1<br>
<br>
Khem Raj (4):<br>
=C2=A0 rust-cross-canadian: Add riscv64 to cross-canadian hosts<br>
=C2=A0 librsvg: Fix build for riscv32<br>
=C2=A0 librsvg: Enable 64bit atomics in crossbeam again for riscv32<br>
=C2=A0 rust-common.bbclass: Define rust arch for x32 platforms<br>
<br>
Martin Jansa (1):<br>
=C2=A0 rust: drop PE, PR from /usr/src/debug paths<br>
<br>
Niko Mauno (1):<br>
=C2=A0 rust-llvm: Allow overriding LLVM target archs<br>
<br>
Ross Burton (1):<br>
=C2=A0 rust-llvm: remove python3native dependency<br>
<br>
Scott Murray (1):<br>
=C2=A0 Update README<br>
<br>
Sean Nyekjaer (2):<br>
=C2=A0 rust-cross-canadian: set CARGO_TARGET_&lt;triple&gt;_RUSTFLAGS<br>
=C2=A0 rust-cross-canadian: set CARGO_TARGET_&lt;triple&gt;_RUNNER for nati=
vesdk<br>
<br>
Sundeep KOKKONDA (2):<br>
=C2=A0 rust: Split rustdoc into a separate package<br>
=C2=A0 rust: rustdoc reproducibility issue fix - disable PGO<br>
<br>
Yash Shinde (3):<br>
=C2=A0 oeqa/selftest: Add rust selftests<br>
=C2=A0 rust: Fix BOOTSTRAP_CARGO failure during Rust Oe-selftest<br>
=C2=A0 oeqa/selftest/rust: Add failed test cases to exclude list for Rust<b=
r>
=C2=A0 =C2=A0 Oe-selftest<br>
<br>
=C2=A0README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A030 +-<br>
=C2=A0classes/cargo.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 9 +-<br>
=C2=A0classes/cargo_common.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A019 +-<br>
=C2=A0classes/rust-common.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 8 +-<br>
=C2=A0conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 2=
 +-<br>
=C2=A0meta/lib/oeqa/selftest/cases/rust.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A085 +<br>
=C2=A0.../rust/{<a href=3D"http://cargo_1.70.0.bb" rel=3D"noreferrer" targe=
t=3D"_blank">cargo_1.70.0.bb</a> =3D&gt; <a href=3D"http://cargo_1.74.1.bb"=
 rel=3D"noreferrer" target=3D"_blank">cargo_1.74.1.bb</a>} |=C2=A0 =C2=A0 2=
 +-<br>
=C2=A0...-Do-not-use-LFS64-on-linux-with-musl.patch |=C2=A0 164 --<br>
=C2=A0...0001-Don-t-use-LFS64-symbols-on-musl.patch |=C2=A0 163 ++<br>
=C2=A0...e-absolute-paths-to-OUT_DIR-as-relat.patch |=C2=A0 =C2=A067 +<br>
=C2=A0...Define-SOCK_NONBLOCK-with-O_NONBLOCK.patch |=C2=A0 122 ++<br>
=C2=A0...efine-SOCK_SEQPACKET-in-common-place.patch |=C2=A0 114 --<br>
=C2=A0...ine-F_SETLK-F_SETLKW-and-fix-F_GETLK.patch |=C2=A0 =C2=A041 +<br>
=C2=A0...GETLK-F_OFD_SETLK-and-F_OFD_SETLKW-t.patch |=C2=A0 205 +++<br>
=C2=A0...-musl-Define-O_LARGEFILE-for-riscv32.patch |=C2=A0 =C2=A032 +<br>
=C2=A0...efine-SOCK_SEQPACKET-in-common-place.patch |=C2=A0 115 ++<br>
=C2=A0.../rust/files/getrandom-open64.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A046 -<br>
=C2=A0.../rust/files/hardcodepaths.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A014 +-<br>
=C2=A0.../rust/files/zlib-off64_t.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A017 +-<br>
=C2=A0...<a href=3D"http://ibstd-rs_1.70.0.bb" rel=3D"noreferrer" target=3D=
"_blank">ibstd-rs_1.70.0.bb</a> =3D&gt; <a href=3D"http://libstd-rs_1.74.1.=
bb" rel=3D"noreferrer" target=3D"_blank">libstd-rs_1.74.1.bb</a>} |=C2=A0 =
=C2=A0 9 +-<br>
=C2=A0recipes-devtools/rust/rust-cross-canadian.inc |=C2=A0 =C2=A0 7 +-<br>
=C2=A0....<a href=3D"http://70.0.bb" rel=3D"noreferrer" target=3D"_blank">7=
0.0.bb</a> =3D&gt; <a href=3D"http://rust-cross-canadian_1.74.1.bb" rel=3D"=
noreferrer" target=3D"_blank">rust-cross-canadian_1.74.1.bb</a>} |=C2=A0 =
=C2=A0 0<br>
=C2=A0...<a href=3D"http://ust-llvm_1.70.0.bb" rel=3D"noreferrer" target=3D=
"_blank">ust-llvm_1.70.0.bb</a> =3D&gt; <a href=3D"http://rust-llvm_1.74.1.=
bb" rel=3D"noreferrer" target=3D"_blank">rust-llvm_1.74.1.bb</a>} |=C2=A0 =
=C2=A015 +-<br>
=C2=A0recipes-devtools/rust/rust-snapshot.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 =C2=A064 +-<br>
=C2=A0recipes-devtools/rust/rust-source.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A015 +-<br>
=C2=A0.../rust/{<a href=3D"http://rust_1.70.0.bb" rel=3D"noreferrer" target=
=3D"_blank">rust_1.70.0.bb</a> =3D&gt; <a href=3D"http://rust_1.74.1.bb" re=
l=3D"noreferrer" target=3D"_blank">rust_1.74.1.bb</a>}=C2=A0 =C2=A0|=C2=A0 =
=C2=A027 +-<br>
=C2=A0.../librsvg/0001-Add-riscv32-support.patch=C2=A0 =C2=A0 | 1511 ++++++=
+++++++++++<br>
=C2=A0recipes-gnome/librsvg/<a href=3D"http://librsvg_2.56.3.bb" rel=3D"nor=
eferrer" target=3D"_blank">librsvg_2.56.3.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
|=C2=A0 =C2=A0 2 +-<br>
=C2=A028 files changed, 2480 insertions(+), 425 deletions(-)<br>
=C2=A0create mode 100644 meta/lib/oeqa/selftest/cases/rust.py<br>
=C2=A0rename recipes-devtools/rust/{<a href=3D"http://cargo_1.70.0.bb" rel=
=3D"noreferrer" target=3D"_blank">cargo_1.70.0.bb</a> =3D&gt; <a href=3D"ht=
tp://cargo_1.74.1.bb" rel=3D"noreferrer" target=3D"_blank">cargo_1.74.1.bb<=
/a>} (96%)<br>
=C2=A0delete mode 100644 recipes-devtools/rust/files/0001-Do-not-use-LFS64-=
on-linux-with-musl.patch<br>
=C2=A0create mode 100644 recipes-devtools/rust/files/0001-Don-t-use-LFS64-s=
ymbols-on-musl.patch<br>
=C2=A0create mode 100644 recipes-devtools/rust/files/0001-Revert-Map-source=
-absolute-paths-to-OUT_DIR-as-relat.patch<br>
=C2=A0create mode 100644 recipes-devtools/rust/files/0001-musl-Define-SOCK_=
NONBLOCK-with-O_NONBLOCK.patch<br>
=C2=A0delete mode 100644 recipes-devtools/rust/files/0001-musl-Define-SOCK_=
SEQPACKET-in-common-place.patch<br>
=C2=A0create mode 100644 recipes-devtools/rust/files/0002-musl-riscv32-Defi=
ne-F_SETLK-F_SETLKW-and-fix-F_GETLK.patch<br>
=C2=A0create mode 100644 recipes-devtools/rust/files/0003-musl-Move-F_OFD_G=
ETLK-F_OFD_SETLK-and-F_OFD_SETLKW-t.patch<br>
=C2=A0create mode 100644 recipes-devtools/rust/files/0004-musl-Define-O_LAR=
GEFILE-for-riscv32.patch<br>
=C2=A0create mode 100644 recipes-devtools/rust/files/0005-musl-Define-SOCK_=
SEQPACKET-in-common-place.patch<br>
=C2=A0delete mode 100644 recipes-devtools/rust/files/getrandom-open64.patch=
<br>
=C2=A0rename recipes-devtools/rust/{<a href=3D"http://libstd-rs_1.70.0.bb" =
rel=3D"noreferrer" target=3D"_blank">libstd-rs_1.70.0.bb</a> =3D&gt; <a hre=
f=3D"http://libstd-rs_1.74.1.bb" rel=3D"noreferrer" target=3D"_blank">libst=
d-rs_1.74.1.bb</a>} (87%)<br>
=C2=A0rename recipes-devtools/rust/{<a href=3D"http://rust-cross-canadian_1=
.70.0.bb" rel=3D"noreferrer" target=3D"_blank">rust-cross-canadian_1.70.0.b=
b</a> =3D&gt; <a href=3D"http://rust-cross-canadian_1.74.1.bb" rel=3D"noref=
errer" target=3D"_blank">rust-cross-canadian_1.74.1.bb</a>} (100%)<br>
=C2=A0rename recipes-devtools/rust/{<a href=3D"http://rust-llvm_1.70.0.bb" =
rel=3D"noreferrer" target=3D"_blank">rust-llvm_1.70.0.bb</a> =3D&gt; <a hre=
f=3D"http://rust-llvm_1.74.1.bb" rel=3D"noreferrer" target=3D"_blank">rust-=
llvm_1.74.1.bb</a>} (89%)<br>
=C2=A0rename recipes-devtools/rust/{<a href=3D"http://rust_1.70.0.bb" rel=
=3D"noreferrer" target=3D"_blank">rust_1.70.0.bb</a> =3D&gt; <a href=3D"htt=
p://rust_1.74.1.bb" rel=3D"noreferrer" target=3D"_blank">rust_1.74.1.bb</a>=
} (94%)<br>
=C2=A0create mode 100644 recipes-gnome/librsvg/librsvg/0001-Add-riscv32-sup=
port.patch<br>
<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62278): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62278" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62278</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103944524/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103944524/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000e50047060fc2025a--

