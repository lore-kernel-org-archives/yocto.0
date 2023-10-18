Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77C57CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 12:03:06 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.280023.1697630583777415555
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 05:03:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CFx7IRCy;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2c51f5a1ecdso39610611fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 05:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697630582; x=1698235382; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V7QH+ENs9Beol18CresL7juuIWmCuw1ysg9Tk24jezg=;
        b=CFx7IRCyI2dD64ajjQ3RzOBSeOAR75t9PCYOhxyNv8UfCOK6a9hDsvDmwvcQ20zJQ/
         yIQmS+6gCDg0kKNKjuvvOlrhTbKgcibVbW4xkC4t/nPGkM9kP+EROL01UeiWgH9bamlu
         PdqUzZo5AMu2XFCrf+KqC7wXc3U5k0AifdpXEAngzT+57gnhgVG9lEoti4iTm12THjbx
         xB0443U0b2ZjfbkLbq7FZI99SYP5JvFkf0c6o3VPiLkgOGo4ZEygHuTDW2Ofks1sUsau
         l7/g/xyf3k4dacmRTQws5FEBf2FKS9Hg/I/xKZdsSFP7mWZdY5y2CqWPiDLX08R4SHvK
         R9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697630582; x=1698235382;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V7QH+ENs9Beol18CresL7juuIWmCuw1ysg9Tk24jezg=;
        b=FsYHa+3h0h6svf18iJMs450stuedGBS8LGwNEqaVHnAvDG3kY6k7e9Xqnupc+yPJVk
         TemXj/fRXCE4uFNrPxHIgCZAidtlaukjuL2/2iXo1pv0+PmxOM4+oilZmIaJcgjJoQv5
         vFZ6I9tJuBNdKBdn3Fs6UluSOFM+bsWxEEr/fySi58MlumQAF3OoCxgVbCkQmposRzui
         PDeivKcjQaQMgMy85H7zbWuN/g/+pQLkConVrwc8uRKbR4egzL7H2KPL7NqrPb1L+SyO
         CKUKXfm11LsLVT11G70cIIsMhVxJToJZjQ/TPTcaUP+BILXyoZ6yEgbjBasirZKDnKBt
         DyPg==
X-Gm-Message-State: AOJu0YwI5qpen0w0YNIJP07Vz7kj2tFOxbnDMFQ9PfEfQ6uHGoe5fX/s
	FwBq8GJAqXxJATHnV55FZuxXoPHuwzo/vqU2hwI=
X-Google-Smtp-Source: AGHT+IFJWwpyU7wVOuAq0opPBKiLtI8/+meHuVXrkC9bOjtlJgOjubbtUWGodbMvlO/TB5Fm1807/zP6tZvj283tV2I=
X-Received: by 2002:a2e:7204:0:b0:2c5:985:2484 with SMTP id
 n4-20020a2e7204000000b002c509852484mr2061074ljc.4.1697630581607; Wed, 18 Oct
 2023 05:03:01 -0700 (PDT)
MIME-Version: 1.0
References: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
 <CANNYZj_SLzpPUct_BEnsm2mSJrZViHYdh0yqjwA-KfKRhymdyw@mail.gmail.com> <563dd39e0841942203e108401db10dc78c0dcb89.camel@linuxfoundation.org>
In-Reply-To: <563dd39e0841942203e108401db10dc78c0dcb89.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 18 Oct 2023 14:02:50 +0200
Message-ID: <CANNYZj_vjYt6Ldx82c-ZEp1x-L4B8gs3Ggt6FPypNYf67A9arg@mail.gmail.com>
Subject: Re: CDN for sstate.yoctoproject.org
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 12:03:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61398

On Wed, 18 Oct 2023 at 08:45, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I'm torn on the targets to test as sato-sdk is a large image and world
> is a lot of work. I'd be tempted to test sato, weston and full-cmdline?
> World is a good test I guess and if from sstate, shouldn't have that
> much of an issue. It does also prove things are working.

I ran '-S printdiff world' on a blank build directory. First,
scalability isn't great:

Initialising tasks: 100%
|##########################################################################################################################################################################|
Time: 0:24:19
Checking sstate mirror object availability: 100%
|##################################################################################################################################################|
Time: 0:12:14

So it's taking 36 minutes just preparing to fetch the objects, and 2/3
of that time goes into communicating with hash equivalence server
(e.g. BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687").

Second, there are significant misses. I don't have a clear theory
where they come from, just want to list them:

The differences between the current build and any cached tasks start
at the following tasks:
/srv/work/alex/poky/meta/recipes-core/meta/meta-ide-support.bb:do_populate_ide_support
/srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.9.2.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-devtools/bootchart2/bootchart2_0.14.9.bb:do_create_runtime_spdx
/srv/work/alex/poky/meta/recipes-graphics/igt-gpu-tools/igt-gpu-tools_git.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-devtools/python/python3-dbusmock_0.29.1.bb:do_create_runtime_spdx
/srv/work/alex/poky/meta/recipes-devtools/dpkg/dpkg_1.22.0.bb:do_configure
/srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_13.2.0.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-graphics/glew/glew_2.2.0.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.6.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-graphics/libva/libva_2.19.0.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-sato/webkit/libwpe_1.14.1.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-meta-base.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-python_1.22.6.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-extended/cups/cups_2.4.6.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-gnome/libdazzle/libdazzle_3.44.0.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-graphics/igt-gpu-tools/igt-gpu-tools_git.bb:do_package
/srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gst-devtools_1.22.6.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-sdk.bb:do_package
/srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.9.5.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-graphics/waffle/waffle_1.7.2.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-multimedia/alsa/alsa-tools_1.2.5.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-rtsp-server_1.22.6.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-devtools/apt/apt_2.6.1.bb:do_install
/srv/work/alex/poky/meta/recipes-gnome/gtk+/gtk4_4.12.3.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-devtools/devel-config/distcc-config.bb:do_create_runtime_spdx
/srv/work/alex/poky/meta/recipes-gnome/libhandy/libhandy_1.8.2.bb:do_collect_spdx_deps
/srv/work/alex/poky/meta/recipes-support/vim/vim_9.0.bb:do_collect_spdx_deps

So I think we should start with specific images first - minimal,
full-cmdline, weston, sato and sato-sdk are all much faster to check.

On qemux86_64 none of them show misses, but on qemuarm64 there are
problems with sato, sato-sdk and weston, i.e. sato-sdk shows:

The differences between the current build and any cached tasks start
at the following tasks:
/srv/work/alex/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.42.10.bb:do_package_write_rpm
/srv/work/alex/poky/meta/recipes-connectivity/connman/connman-gnome_0.7.bb:do_package_write_rpm
/srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gst-examples_1.18.6.bb:do_package_write_rpm
/srv/work/alex/poky/meta/recipes-sato/images/core-image-sato-sdk.bb:do_deploy_source_date_epoch
/srv/work/alex/poky/meta/recipes-graphics/xorg-font/font-util_1.4.1.bb:do_package_write_rpm
/srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-sdk.bb:do_package
/srv/work/alex/poky/meta/recipes-gnome/librsvg/librsvg_2.56.3.bb:do_package_write_rpm
/srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.22.6.bb:do_package_write_rpm


I'm not sure if that's because cache for the current master needs to
be populated properly first, or if there's a deeper issue.

> Either we start logging what we've built so we get the last known
> revisions, or we run the test as part of a-quick/a-full at the end of
> the build? I don't really want to extend the build but I'm not sure we
> may have much choice.

I think it can be a selftest and bundled into
trigger-build-posttrigger which already runs
'buildoptions.SourceMirroring.test_yocto_source_mirror':

https://git.yoctoproject.org/yocto-autobuilder-helper/tree/config.json#n465

The various yocto mirrors tests could be tagged in a way similar to
machine/toolchain selftests, so that they're excluded from regular
oe-selftest, but run specifically here.

Alex

