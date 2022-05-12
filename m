Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5368BC433EF
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 13:28:34 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web12.4157.1652362107301237787
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 06:28:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MEksafsh;
 spf=pass (domain: gmail.com, ip: 209.85.208.44,
 mailfrom: alex.kiernan@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id be20so6185614edb.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 06:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=iOV1KYnPZ7rRq2tkvoHVXovIf0lB0R7RqXHUV2yYuLQ=;
        b=MEksafshbeYKSqDmJPYUExpt6IqEn6V0LlSoLJBymE/Ec/Ya2gJ+jL47dphqBnydXr
         evXLiQxDw+oV6+p/0bGqKLlrImA0DGP4LPppIR+2U1HwoXtZ9uZOdjUZX4PC8z0ZUptw
         A84z7NR+uIPTIm9XSCAWACLBtZc9QDCuHeqjAmoBMHGAabPuKcj0qWGMy1AxlNsd11RL
         TCBLd+r6M429Swi4gxDcL4Xy430ks+a6pYeg5kSQbLwxA9yefaxYgw1GK4DmR0IxpZiX
         xO7oenqQMHnDsjRG63wU0DvG+QJAcwFRovwM6WNU4NpDwyDzFleGb2u7qegX4SXEl1i2
         nDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=iOV1KYnPZ7rRq2tkvoHVXovIf0lB0R7RqXHUV2yYuLQ=;
        b=cE4NkPXJoYlOD3nBXTmWt71g6mY+q+0qTmNqIKQt6w6QlnryXEAho68VJK/9dE7dlY
         ZhCEMXxC9DQ/PZ+lEKud1PO/RovAtIy4EijfmxGZky8qEmPxAi0AM16AnA2Wy9SH1G5g
         GwqP1L2ZmpXF1fS0z4Ahm22bKp/+4WGDpQYOIjQZSjajofIHivy3BTJ7vsAEpm9sa/Os
         I5c+g0r3sFVSa3EQiFuzYXn3pRRpTKOkqrYmDRQXj4xuIsEONDakywkGTXb9FSS5yzT3
         1K0uqI92EHmwSL+L7cHNAhxqI1Uxtc23Ygary8K3iA0KVSXX0yZJWvFaooPnMSaG6mr3
         2v1Q==
X-Gm-Message-State: AOAM532RSM7MZq6rlMSR2fcTbkX9WI1P4QSRQZtVxXVdzFGIIyRWjTqa
	0rXbDTrHIFYiIeGW75M9IiHFaWnGH1UOgr+xtfo=
X-Google-Smtp-Source: 
 ABdhPJxiEmQbrPWUP7HX0HI2dC0Ge0PWW2rGSkZfQigxx8nglpzLMbVPX4/8paTMk0JlAO7nqE+r17h0cNdip/lSnCw=
X-Received: by 2002:aa7:d708:0:b0:427:b5ee:b8f2 with SMTP id
 t8-20020aa7d708000000b00427b5eeb8f2mr35559729edq.404.1652362105712; Thu, 12
 May 2022 06:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
In-Reply-To: <e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Thu, 12 May 2022 14:28:13 +0100
Message-ID: 
 <CAO5Uq5TnUuDo1uC40qjOkGrVWfjDG98XbxchQ86wpVAXCch_eg@mail.gmail.com>
Subject: Re: [yocto] Problems with recipe for our Rust-Software
To: Felix Knorr <fknorr@neuroloop.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 13:28:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57076

On Thu, May 12, 2022 at 2:09 PM Felix Knorr <fknorr@neuroloop.de> wrote:
>
> Hey,
>
> I'm struggling with a recipe to build our rust project.
>
> I cannot use cargo-bitbake because we use the 2021 edition. Also the proj=
ect is quite complex. We have one repository with 4 different crates, some =
of them are linking c code. I'm trying to create a recipe by hand.
>

The HEAD of cargo-bitbake works fine for 2021 for us.

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
> Mute This Topic: https://lists.yoctoproject.org/mt/91057468/3618097
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kiernan@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Alex Kiernan

