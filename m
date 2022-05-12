Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29D23C433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 13:15:54 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web08.4015.1652361351099438460
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 06:15:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fX41RPdm;
 spf=pass (domain: gmail.com, ip: 209.85.208.175,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 16so6412378lju.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 06:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=z6U7Gu8CgBj/+pRpOCkl99WCZC9rkol95j7yA5XIshU=;
        b=fX41RPdmH4ol8/11E526dMG3OGeq7NfoCvT6pMc3BxH23p1GZQaW/IALF0QDWMuOth
         XsJXY8eCQGoxeVH9RjVdz3hK6P39FMJXQFlS7kfrZYrpjQU0twY6euIqo1IeTjRfF5Yn
         +R1JnC0F23k+UXVkJD76lSPlVXWsfSxqJsZdROd0RDSpN1PgVZPyqUlqdhzmf2Qx2yVQ
         wFmFg5g7amjbxgduaZ3quZDMPg0DOJOktWbcijHb/tluxjbFSzkd9kDkKH/cN3ySQ5JW
         ETRF1ZCxA7UzLga3qH+TH5SHlbZp+cSHG5R4aYpPCHln3F6yOnLmVKHDhcsCcxqw4Are
         BuRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=z6U7Gu8CgBj/+pRpOCkl99WCZC9rkol95j7yA5XIshU=;
        b=wXKGshfCmR84zsXJ0RTFkesVpwqj5d3u78BlRPir+UvEfANshscX9Z/UuS8DwOQM3c
         ILC7fxpj1C5Zbc+jsbgKVDx/3AeZzi8jfWdlT1Kzz52Pwg+s+mgZewe2kA9X3MvcVg2K
         H3XLHc4MxwskhqzJyD1Li4N9UpNh5l9ECsIAIU7ZjAJE4zwRS07t8B+VWsD5wF8cwMJI
         OSQ+eoAK5wQvgTmht7SWJAhFOtn8h2HthFbXMVNAg1EzSBUSz0Pqn/iObhXhnBdukeqf
         G67+i0K3Mpd3FVvTL/41sKV9SEPv3nStbw1pbunQFUvt5S2+Jz+621f/YDDju8ziWjx/
         +4ug==
X-Gm-Message-State: AOAM533PfKZwuprVGtTYr0IPUH6pegyHNqUoOUgerNhOnKPBCLqSvGH3
	VNuIqcqAGJJXSqdPPNJOSzfUBQoWROU8sFLt8Yk=
X-Google-Smtp-Source: 
 ABdhPJyFPJQI+MWP9Axta7oOXmgbR8jDWqIiXvcJ4fOoGPutdtKsa3mDmN6zJb9eReU2UNccftw9thdoZU1EHgwmENM=
X-Received: by 2002:a2e:2a83:0:b0:250:e45d:3509 with SMTP id
 q125-20020a2e2a83000000b00250e45d3509mr6908644ljq.56.1652361349192; Thu, 12
 May 2022 06:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
In-Reply-To: <e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 12 May 2022 15:15:37 +0200
Message-ID: 
 <CANNYZj_Nm_vk84CtdoCZL9x2ynu8+8FB-sRsM6o6wVsNXcX0Ww@mail.gmail.com>
Subject: Re: [yocto] Problems with recipe for our Rust-Software
To: Felix Knorr <fknorr@neuroloop.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 13:15:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57074

Accessing the network is not allowed from do_compile, or any other
task for that matter. You need to provide every needed item in SRC_URI
and rely on standard fetchers to form a complete source tree.

Alex

On Thu, 12 May 2022 at 15:09, Felix Knorr <fknorr@neuroloop.de> wrote:
>
> Hey,
>
> I'm struggling with a recipe to build our rust project.
>
> I cannot use cargo-bitbake because we use the 2021 edition. Also the proj=
ect is quite complex. We have one repository with 4 different crates, some =
of them are linking c code. I'm trying to create a recipe by hand.
>
> When I run bitbake for the recipe, it will error out with the following e=
rror message:
>
> ERROR: serve-1.0.0-r0 do_compile: ExecutionError('/home/felix/git/poky/bu=
ild/tmp/work/core2-64-poky-linux/serve/1.0.0-r0/temp/run.do_compile.400923'=
, 101, None, None)
> ERROR: Logfile of failure stored in: /home/felix/git/poky/build/tmp/work/=
core2-64-poky-linux/serve/1.0.0-r0/temp/log.do_compile.400923
> Log data follows:
> | DEBUG: Executing shell function do_compile
> |     Updating crates.io index
> | warning: spurious network error (2 tries remaining): failed to resolve =
address for github.com: Name or service not known; class=3DNet (12)
> | warning: spurious network error (1 tries remaining): failed to resolve =
address for github.com: Name or service not known; class=3DNet (12)
> | error: failed to get `anyhow` as a dependency of package `nlprog v0.1.0=
 (/home/felix/git/poky/build/tmp/work/core2-64-poky-linux/serve/1.0.0-r0/tm=
p/baroloop/programmer-rust/nlprog)`
> |
> | Caused by:
> |   failed to fetch `https://github.com/rust-lang/crates.io-index`
> |
> | Caused by:
> |   network failure seems to have happened
> |   if a proxy or similar is necessary `net.git-fetch-with-cli` may help =
here
> |   https://doc.rust-lang.org/cargo/reference/config.html#netgit-fetch-wi=
th-cli
> |
> | Caused by:
> |   failed to resolve address for github.com: Name or service not known; =
class=3DNet (12)
> | WARNING: exit code 101 from a shell command.
> ERROR: Task (/home/felix/git/baroloop/programmer-tablet/layers/meta-main/=
recipes-core/programmer/serve_1.0.0.bb:do_compile) failed with exit code '1=
'
>
> However, if I run the devshell for the recipe and run cargo, it will at l=
east be able to do the fetching. (It will currently fail in the linker step=
, but I assume thats because I haven't executed oe_cargo_fix_env)
>
> if I don't remove the http.multiplexing=3Dfalse from the cargo config, it=
 will just hang forever in the devshell (but not error out).
>
> If I set export CARGO_NET_GIT_FETCH_WITH_CLI=3Dtrue the error is slightly=
 different, but the git call that is then displayed also works in the devsh=
ell. Also using a crate://-fetcher doesn't work, which is why I added the C=
ARGO_DISABLE_BITBAKE_VENDORING =3D "1" I've been fighting this for hours an=
d can't come up with anything. I hope you can help me.
>
> PS: I'm using kirkstone, and I'm not having any url sections in my .gitco=
nfig
>
> This is the recipe:
>
> cargo
>
> SUMMARY =3D "Copy prebuild programmer serve into the image"
> LICENSE =3D "CLOSED"
> LIC_FILES_CHKSUM =3D ""
>
> SRC_URI=3D"\
>     file://${bl_path}/programmer-ui/dist \
>     file://${config_path}/files/session \
>     file:///tmp/baroloop \
> "
> #   crate://crates.io/tokio/1 \
> #   crate://crates.io/war/0.3 \
> #   crate://crates.io/byte/1 \
> #   crate://crates.io/log/0.4.8 \
> #   crate://crates.io/serde_json/1.0.75 \
> #   crate://crates.io/serde/1.0.133 \
> #   crate://crates.io/docopt/1.1.0 \
> #   crate://crates.io/colored/1.9.3 \
> #   crate://crates.io/chrono/0.4.11 \
> #   crate://crates.io/battery/0.7.7 \
> #   crate://crates.io/uuid/0.8.2 \
> #   crate://crates.io/thiserror/1.0 \
> #   crate://crates.io/anyhow/1 \
> #   crate://crates.io/clap/3.0 \
> #   crate://crates.io/futures/0.3 \
> #   crate://crates.io/wry/0.6.1
> S =3D "${WORKDIR}"
>
> RDEPENDS:${PN} =3D "\
>     eudev \
>     dbus \
> "
>
> DEPENDS =3D "\
>     eudev \
>     dbus \
> "
>
> # INSANE_SKIP:${PN} +=3D "file-rdeps"
>
> FILES:${PN} =3D "\
>     /home/neuro/serve \
>     /home/neuro/dist/** \
>     ${sysconfdir}/mini_x/session \
> "
>
> CARGO_DISABLE_BITBAKE_VENDORING =3D "1"
>
> do_compile() {
>     oe_cargo_fix_env
>
>     sed -i '/multiplexing =3D false/d' $CARGO_HOME/config
>     sed -i '/\[http\]/d' $CARGO_HOME/config
>     sed -i '/cainfo/d' $CARGO_HOME/config
>
>     export RUSTFLAGS=3D"${RUSTFLAGS}"
>     export RUST_TARGET_PATH=3D"${RUST_TARGET_PATH}"
>
>     export CARGO_NET_GIT_FETCH_WITH_CLI=3Dtrue
>     cd ${S}/tmp/baroloop/programmer-rust/
>     cargo build --release --bin serve
> }
>
> do_install() {
>     # this isn_t reached anyway
> # ...
> }
>
> --
> Mit freundlichen Gr=C3=BC=C3=9Fen neuroloop GmbH
> i.A. Felix Knorr
> Senior Software Developer
> --------------------------------------
> neuroloop GmbH
> Engesserstr. 4, 79108 Freiburg, Germany
>
> Amtsgericht Freiburg HRB 713935
>
> Gesch=C3=A4ftsf=C3=BChrer: Dr. Michael Lauk, Dr. Dennis Plachta
>
>
>
> The information contained in this communication is confidential, may be a=
ttorney-client privileged, may constitute inside information, and is intend=
ed only for the use of the addressee. It is the property of the company of =
the sender of this e-mail. Unauthorized use, disclosure, or copying of this=
 communication or any part thereof is strictly prohibited and may be unlawf=
ul. If you have received this communication in error, please notify us imme=
diately by return e-mail and destroy this communication and all copies ther=
eof, including all attachments.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57072): https://lists.yoctoproject.org/g/yocto/messag=
e/57072
> Mute This Topic: https://lists.yoctoproject.org/mt/91057468/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

