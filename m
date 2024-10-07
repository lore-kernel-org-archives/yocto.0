Return-Path: <dbaryshkov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00DECFB455
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 19:07:38 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.137.1728328055522223041
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Oct 2024 12:07:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NkpuOzJT;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: dbaryshkov@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c5bca59416so6605021a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 12:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728328054; x=1728932854; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXEaypFZblBvsQr9HTbAqa0F3xp2CxB6j4cX5zhJ8b8=;
        b=NkpuOzJTcKMtE6gSswh0H8Rvh83xBbQnLuFLAlU8wRTAXrSXM7eb7q/Xn/PBi5yytK
         QzpAwEd7YArXM1P4nPnT4hFrIC7O4yaiHMB6YHoMA0j7W6Mv/o+viKkEdTGdh058o4PL
         2u6ZcNppfQFJWX9iSGs7/z88Nm85AMHab1Wi0pywE68xj6TxrLXE7sDYW5cZpaMbaYU9
         S8PAT/wjVfYTl9WONDnZDzEHBbwEbG4kqpJ8MTqzJPUWcGYK6CGeWayME/Ap4HRy0U+V
         C8XJtZ+quggcaRXKsMy8eY6ipo9FBPq0OhPZWllT22oFFHFHL1JA3d/BFD9gEo7XweCB
         pR+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728328054; x=1728932854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dXEaypFZblBvsQr9HTbAqa0F3xp2CxB6j4cX5zhJ8b8=;
        b=Oqe9nxqH67846CUJd/lXzEa54bVwM0IqsxgkNpdUSOOnc4DPil+5CB4LR3mPSCpXXR
         2gC6Sg0xAbSW09Pds8SMO0duowJiTBcAZiR1yKFllKykGgkw2m51bEz5q8XvC4hLVCU8
         3unmW5YaiWsbIwVxANqN5FPDmWU4tsfsmS/CQHnz4ay7HEyaosSxQ1CBG230zXA1KTLu
         Yy59uTIcc8uxz0NuPSM4zhvGB6Ra5NGD/Z6vtc23kTgWoC8wrNOsJ5xjZZ0CKSaLfbig
         2aH1wO9cRScKNrHAdGc/8Mllzy/9CyYc86NC0ocdCj+9CftB/YBq4Wra/efkrAKvzEUJ
         FjIQ==
X-Gm-Message-State: AOJu0Yy7rshXO4spvkqaJVsXCbscWtUhEKqcaNowkipBto5yNRjwsl1/
	V7YSAOiEs5OOyZV7nd1CjWA3NGAYQzTDy0sbK+Kv/QB/Q5Zj2cLGFMR4FDiJYH4fv406Y7S0ZDT
	WOdOYCfnG0uNzfshkVkTjT247ZHx0iWHkTShfGA==
X-Google-Smtp-Source: AGHT+IGpqgP/mHZrBHRr8GQ68zYlx7wdD9OUifcqwfniLyp12DkdpzIAJCqT7ISzOD6AM4mvOBOQsyRUqS0qZUpXs8A=
X-Received: by 2002:a17:907:cb86:b0:a99:6345:7219 with SMTP id
 a640c23a62f3a-a996345736fmr158058066b.29.1728328053411; Mon, 07 Oct 2024
 12:07:33 -0700 (PDT)
MIME-Version: 1.0
References: <fvqD.1728277436421735973.T2Af@lists.yoctoproject.org> <CANNYZj_=Yoa0LxU-OqfJQA+D7MyOqPVZ7YZ0OFcmBZ5m93OiGw@mail.gmail.com>
In-Reply-To: <CANNYZj_=Yoa0LxU-OqfJQA+D7MyOqPVZ7YZ0OFcmBZ5m93OiGw@mail.gmail.com>
From: Dmitry Baryshkov <dbaryshkov@gmail.com>
Date: Mon, 7 Oct 2024 21:07:21 +0200
Message-ID: <CALT56yM+rQR1L0VtyBdupurv2TokWLJ7sVXu3YjpTfXJt0ruVQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Binary Distro
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: aleksandar.nikolic010@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 19:07:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63948

On Mon, 7 Oct 2024 at 13:32, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> On Mon, 7 Oct 2024 at 07:06, Aleksandar Nikolic via
> lists.yoctoproject.org
> <aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
> > 2) Is there an official, stable, and not some hacky way to install alre=
ady pre-built packages during the build and not later during runtime? So in=
stead of building from source or from the sstate-cache, to provide a URL to=
 a webserver holding packages, which would then be pulled and installed (if=
 I am not wrong Isar does this)?
>
> If you ask me, pulling pre-built packages into a yocto image is in
> itself a horrible hack that goes against yocto philosophy, and I would
> not want yocto to help that or support it in any way.

I think this needs a bit of explanation.

=C3=85ngr=C3=B6m was a binary distro (thanks Koen!). But it existed in a
different time and with different development practices. It was great
when we had a single monolithic openembedded (OE-Classic) repo. Each
recipe had a PR (package revision, the part of the version after the
dash), PRs were increased manually when a recipe was changed in a way
which changed the packages. Then opkg upgrade would pick up updated
packages. Manual work, lots of mistakes, lots of patch conflicts.

Then came OE-Core + layers. Basic recipe comes one layer, other layers
provide .bbappends. Let each bbappend add a local part to the PR so
that each update generates new package to be picked up by the machine.
Even more mess, lots of confusion.

Let's drop PRs and generate them automatically. Great idea, but it
doesn't always work as expected. It's too easy to get the version to
go backwards (because of the SRCREV rollback, or because of other
recipe changes; or just because you have added a layer with bbappend
and then removed it). So the feed has a new package with old PV-PR,
the board has an old package with bigger PV-PR, no upgrades, tons of
confusion.

So, it is possible to create a binary distro on top of Yocto. However
one should be very careful with packages and versions, with using a
stable set of layers, etc.

While the Yocto project probably could provide a feed of build
packages, its usefulness would be pretty limited to just oe-core or
oe-core + meta-poky (or some other fixed layer configuration). There
has been ongoing work to make such configurations work better, but I
have doubts that this is going to work as expected on a general scale.

So, as much as I like OE, if you are thinking about a binary distro, I
think you'd better use some existing purposely binary distro (like
Debian, Armbian or something from the RPM world). If you can afford
having package management on the device, it's not tightly resource
constrained. And thus there is no need to go Yocto way.

> We build from source. Isar can do what it wants, but I don't have to
> like or support that.
>
> There's a separate question of pulling pre-built *binaries* that
> sometimes come in .rpm archives and repackaging them with recipes,
> which is sort of supported if you list the rpm in SRC_URI (bitbake
> will then fetch/unpack/repackage), but I don't like that either for
> different reasons (vendor blobs are evil).
>
> > 3) Is enabling and using the package runtime management recommended and=
 encouraged when it comes to Yocto running on actual devices and not during=
 a development phase? IMHO we are talking about embedded devices here, with=
 little or no user interaction, with secure boot enabled, atomic updates, e=
tc. and having a package management system such as dnf or apt is cool, but =
is also kind of brittle (a simple power off during apt update can break the=
 system).
>
> That's exactly correct. Classic package management (rpm/dpkg) was
> created for the 'Unix workstation' use case where you want to provide
> as much available disk space as possible to users (so A/B partitioning
> is a non-starter), and users can easily add things they want to their
> system. Nobody ever claimed that such mass-upgrade transactions can be
> safely interrupted by a power outage, and in all likelihood you'll
> have a half-updated system with an undefined behaviour on the next
> boot.

That's another good point. One thing is fixing a workstation or a
laptop with the KBD and display, where in the worst case one cane boot
into single mode or just a shell and play dirty tricks if package
management and FS got really broken. On an embedded device there can
be no UART, no way to change boot args, etc. So, if the `opkg upgrade`
was power-interrupted YMMV.

--=20
With best wishes
Dmitry

