Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9762.1579603959898226410
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 02:52:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=I5tIciWd;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC53FE0144C; Tue, 21 Jan 2020 02:52:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBDBEE011BE
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 02:52:35 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id d62so2093981oia.11
        for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 02:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oMqOmUX0dkEYh+xzR06/bUEUeQ5mt5bY3TwRRD5uSKw=;
        b=I5tIciWdmuu16Vzm/KwGycfxWUPW8VwiPEND8SuDx424YXHBCuMvq8CDfxb406/His
         FDsfuj5XoPMS4PKcP6MxAsJP8GczwWCNEnhfoFA4jgqUXLtM6iaFBVYwmed1XcSIMv5V
         nnupVFfl9PL1swFT65TTJlcdJkNhrlyJKPGKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oMqOmUX0dkEYh+xzR06/bUEUeQ5mt5bY3TwRRD5uSKw=;
        b=dzmUOBzFcCSYBE2QzHCVaXiyO3lcXaBWH/Ruhcoe5wnlTb6Ocs0cybVKKeIc0mWXBf
         UOki3iluDHnot034hL0xuQsudYUASec4U220BM2+/Rtre3O/gn5QCHn0kIkbFJii4z46
         SFwXJYNi/ZgdiZd+isKy7vGoqMi8JPCMHdxRE7lyj2WbxxPaLbdi0H0FgKyv3t7+DLy9
         C0ydnr5LlKknbWKY6aYujboOdAN6ABrwHMwPP9BhQZSLU1nJXxBrwpor7FsB7L/uVCUR
         htLzxMnkBHGZrNSfNaIwzqYZJ+3YdmPVnsUbYbzxovipnBFCKnXxIAoXr9PsA8Ymkouy
         oFuA==
X-Gm-Message-State: APjAAAVIQsz+OltuH6AfXyagYPYMukUzQsdXHvmTHM5Lmsbpn5Edj0DA
	7tFS3Jg/XN/wWFJrJSYxit8XseiG5WdwA67mdAKbf9ydhl5NvSax
X-Google-Smtp-Source: APXvYqx8tWGyk8nhCHHEktvbZstbOZYvKeZDoz8jhtVtQfNgxZ5yq9VOWSc7YD/djl+5iLjLssQiUuloUD8u+3/46ZQ=
X-Received: by 2002:a05:6808:2c4:: with SMTP id a4mr2421389oid.22.1579603955310;
 Tue, 21 Jan 2020 02:52:35 -0800 (PST)
MIME-Version: 1.0
References: <20200121100732.1441871-1-stefan@agner.ch> <CAM9ZRVt2P=yVkg9KgnoVYDthSStyqT3oU5ZK6HRxsQ=q_M2OvQ@mail.gmail.com>
 <7ee90ef9aaf6565d37a13290845daf00@agner.ch>
In-Reply-To: <7ee90ef9aaf6565d37a13290845daf00@agner.ch>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 21 Jan 2020 10:52:23 +0000
Message-ID: <CAM9ZRVtAohLCu9NA-iP=6PdGRV_QjGERKDRQJ1ji0a2AfEtWPw@mail.gmail.com>
Subject: Re: [yocto] [psplash][PATCH v2] add systemd support
To: Stefan Agner <stefan@agner.ch>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, Stefan Agner <stefan.agner@toradex.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 Jan 2020 at 10:44, Stefan Agner <stefan@agner.ch> wrote:
>
> On 2020-01-21 11:24, Paul Barker wrote:
> > On Tue, 21 Jan 2020 at 10:07, Stefan Agner <stefan@agner.ch> wrote:
> >>
> >> From: Stefan Agner <stefan.agner@toradex.com>
> >>
> >> This adds optional systemd support. When enabled, an utility called
> >> psplash-systemd is built. This tool will connect to systemd using the
> >> system bus to obtain progress information and communicate that to
> >> psplash. Once full boot progress is reported by systemd psplash
> >> psplash is closed using the quit command.
> >>
> >> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> >
> > Looks like your email client or mail server has made a mess of this
> > one - it's "Content-Type: multipart/mixed" with quoted-printable
> > encoding for the text.
>
> Hm, I did send it using git send-email:
> $ git send-email --to=richard.purdie@linuxfoundation.org
> --to=yocto@yoctoproject.org --cc=stefan@agner.ch
> v2-0001-add-systemd-support.patch
>
> When I look at the email delivered to my inbox it has no "Content-Type",
> not sure if that is a problem? I use my setup since quite a while
> successfully on mailing lists...

Very strange. Something has changed it, I don't see an `X-Mailer:
git-send-email` header.

Looking at it on groups.io
(https://lists.yoctoproject.org/g/yocto/message/48061) I can see line
wrapping and the additional "=" sequences quoted-printable adds in.

>
> >
> > Could you try re-sending with `git send-email`? I'd like to test this
> > one out myself as I've been using psplash with systemd via a bodge
> > copied from AGL for a while now - that doesn't show proper progress
> > though it just spins the bar around.
>
> Interested to see how it works on your side. Progress works quite
> nicely, the only downside is that systemd's progress information is not
> really linear, so usually the progress bar makes progress quite quickly
> and starts to slow down towards the end... It is not ideal, but better
> than nothing IMHO :-)
>
> I will send a psplash recipe update once this gets merged, but something
> like this should help if you want to give it a try already:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> inherit systemd
>
> SRC_URI += " \
>     file://0001-add-systemd-support.patch \
>     ${SPLASH_PATCH} \
> "
>
> SYSTEMD_PACKAGES =
> "${@bb.utils.contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
> SYSTEMD_SERVICE_${PN} +=
> "${@bb.utils.contains('DISTRO_FEATURES','systemd','psplash-start.service','',d)}"
>
> PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"
>
> PACKAGECONFIG[systemd] = "--with-systemd,--without-systemd,systemd"
>
> do_install_append () {
>         install -d ${D}${systemd_unitdir}/system
> }
>
> And a unit file like this:
>
> [Unit]
> Description=Starts Psplash Boot screen
> DefaultDependencies=no
>
> [Service]
> ExecStart=/usr/bin/psplash-systemd
>
> [Install]
> WantedBy=sysinit.target

Thanks for that, I'll let you know when I've had chance to give it a try.

Thanks,
Paul
