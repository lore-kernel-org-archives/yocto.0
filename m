Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FEDCDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 17:33:48 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.287592.1697650424039570155
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 10:33:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hHUkYsUl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-32da4ffd7e5so2800901f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 10:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697650422; x=1698255222; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=P+Nu8ImSsLYIdXSNuSp+jVFp/KA9RAIV8LBohYu45LU=;
        b=hHUkYsUloYxawJqvPFa+3eYB45ugs9y5sy3NdsqNhOs2ENJ0/LLpL/E+PYZqFcJGAw
         EkeR5rOftdD+Xu0MEK4ZxPdzrDHai9UGJoNfA6wpQfwvXsXNYCJ2sMrMx19TJMf+SZGN
         FfZWo+eUe+C+PJeQyYUSdU8Lvd7jOwDXf3qSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650422; x=1698255222;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P+Nu8ImSsLYIdXSNuSp+jVFp/KA9RAIV8LBohYu45LU=;
        b=oWhNT4kioM8qxd9QyBblJza4K2O1HasSzZ88FHu4g4PzNQyvCF1q4CfD80OV4Gybl9
         0qcV6cHzie6x/BpkV5yUSSN6h0PnYm8DyBl5/QbLWd6X+FTOTRcPq5fuZfS8LS94t8uh
         /rL8eyhzRJkVXqU7eiFJnVok+D/a0Exh2TkKTlxSkvAnkvtJbKdmZqUTIzB5oWxOuZsn
         AtoYVyy792o9HKIKNNFxbpfnFpX96nO+JTYtrpPZEAxGU7/D3SBy9nVitwbssoefB8uj
         TV0KogMf2FMMW7scZmqHijP8MtieF+Mwu7Jb5gxWAMI2IH1qK0z3VrlJpokoz7PqW4tH
         U3Mg==
X-Gm-Message-State: AOJu0Yym/zZlb+gddtsYnJnHe8+InhztvxgXdjRAWzC39edi5PbdTQ+a
	A/Ys4KK8iGz2FTvSxcmA1rAahw==
X-Google-Smtp-Source: AGHT+IFQ0ICzAC2qaqbXGH9Dcuiw+WFHZ5k+ml5rqBH8os9+87/IcqzaQ3AgRK38Vex0CAiMzL2Dhg==
X-Received: by 2002:adf:a319:0:b0:323:1688:a70e with SMTP id c25-20020adfa319000000b003231688a70emr5061275wrb.16.1697650422358;
        Wed, 18 Oct 2023 10:33:42 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb? ([2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb])
        by smtp.gmail.com with ESMTPSA id e18-20020adffc52000000b0032da35baf7bsm2550813wrs.113.2023.10.18.10.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 10:33:41 -0700 (PDT)
Message-ID: <9f42b38060ae8f2f4126a894bedd794b2066693b.camel@linuxfoundation.org>
Subject: Re: CDN for sstate.yoctoproject.org
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Date: Wed, 18 Oct 2023 18:33:41 +0100
In-Reply-To: <CANNYZj_vjYt6Ldx82c-ZEp1x-L4B8gs3Ggt6FPypNYf67A9arg@mail.gmail.com>
References: 
	<CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
	 <CANNYZj_SLzpPUct_BEnsm2mSJrZViHYdh0yqjwA-KfKRhymdyw@mail.gmail.com>
	 <563dd39e0841942203e108401db10dc78c0dcb89.camel@linuxfoundation.org>
	 <CANNYZj_vjYt6Ldx82c-ZEp1x-L4B8gs3Ggt6FPypNYf67A9arg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 17:33:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61403

On Wed, 2023-10-18 at 14:02 +0200, Alexander Kanavin wrote:
> On Wed, 18 Oct 2023 at 08:45, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > I'm torn on the targets to test as sato-sdk is a large image and world
> > is a lot of work. I'd be tempted to test sato, weston and full-cmdline?
> > World is a good test I guess and if from sstate, shouldn't have that
> > much of an issue. It does also prove things are working.
>=20
> I ran '-S printdiff world' on a blank build directory. First,
> scalability isn't great:
>=20
> Initialising tasks: 100%
> > #######################################################################=
###########################################################################=
########################|
> Time: 0:24:19
> Checking sstate mirror object availability: 100%
> > #######################################################################=
###########################################################################=
|
> Time: 0:12:14
>=20
> So it's taking 36 minutes just preparing to fetch the objects, and 2/3
> of that time goes into communicating with hash equivalence server
> (e.g. BB_HASHSERVE_UPSTREAM =3D "hashserv.yocto.io:8687").

FWIW the second time an artefact is pulled from the CDN, it will be
much faster. I don't know how much that is a factor here.

We know hashequiv is slow, particularly from europe. We've ideas on
that we're looking into but for now it is what it is. Part of this work
was to find out what the issues are so we write that one up.

> Second, there are significant misses. I don't have a clear theory
> where they come from, just want to list them:
>=20
> The differences between the current build and any cached tasks start
> at the following tasks:
> /srv/work/alex/poky/meta/recipes-core/meta/meta-ide-support.bb:do_populat=
e_ide_support
> /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-synaptic=
s_1.9.2.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-devtools/bootchart2/bootchart2_0.14.9.bb=
:do_create_runtime_spdx
> /srv/work/alex/poky/meta/recipes-graphics/igt-gpu-tools/igt-gpu-tools_git=
.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-devtools/python/python3-dbusmock_0.29.1.=
bb:do_create_runtime_spdx
> /srv/work/alex/poky/meta/recipes-devtools/dpkg/dpkg_1.22.0.bb:do_configur=
e
> /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_=
13.2.0.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-graphics/glew/glew_2.2.0.bb:do_collect_s=
pdx_deps
> /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.=
10.6.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-graphics/libva/libva_2.19.0.bb:do_collec=
t_spdx_deps
> /srv/work/alex/poky/meta/recipes-sato/webkit/libwpe_1.14.1.bb:do_collect_=
spdx_deps
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-meta-b=
ase.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-python=
_1.22.6.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-extended/cups/cups_2.4.6.bb:do_collect_s=
pdx_deps
> /srv/work/alex/poky/meta/recipes-gnome/libdazzle/libdazzle_3.44.0.bb:do_c=
ollect_spdx_deps
> /srv/work/alex/poky/meta/recipes-graphics/igt-gpu-tools/igt-gpu-tools_git=
.bb:do_package
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gst-devtools_1.22.6=
.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-sdk=
.bb:do_package
> /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.=
9.5.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-graphics/waffle/waffle_1.7.2.bb:do_colle=
ct_spdx_deps
> /srv/work/alex/poky/meta/recipes-multimedia/alsa/alsa-tools_1.2.5.bb:do_c=
ollect_spdx_deps
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-rtsp-s=
erver_1.22.6.bb:do_collect_spdx_deps
> /srv/work/alex/poky/meta/recipes-devtools/apt/apt_2.6.1.bb:do_install
> /srv/work/alex/poky/meta/recipes-gnome/gtk+/gtk4_4.12.3.bb:do_collect_spd=
x_deps
> /srv/work/alex/poky/meta/recipes-devtools/devel-config/distcc-config.bb:d=
o_create_runtime_spdx
> /srv/work/alex/poky/meta/recipes-gnome/libhandy/libhandy_1.8.2.bb:do_coll=
ect_spdx_deps
> /srv/work/alex/poky/meta/recipes-support/vim/vim_9.0.bb:do_collect_spdx_d=
eps

We'll have to dig into this.

> So I think we should start with specific images first - minimal,
> full-cmdline, weston, sato and sato-sdk are all much faster to check.

Agreed, lets start with simpler images, full-cmdline, minimal, sato and
weston. We can increase coverage as we move forward (world, sato-sdk).

> On qemux86_64 none of them show misses, but on qemuarm64 there are
> problems with sato, sato-sdk and weston, i.e. sato-sdk shows:
>=20
> The differences between the current build and any cached tasks start
> at the following tasks:
> /srv/work/alex/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.42.10.bb:d=
o_package_write_rpm
> /srv/work/alex/poky/meta/recipes-connectivity/connman/connman-gnome_0.7.b=
b:do_package_write_rpm
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gst-examples_1.18.6=
.bb:do_package_write_rpm
> /srv/work/alex/poky/meta/recipes-sato/images/core-image-sato-sdk.bb:do_de=
ploy_source_date_epoch
> /srv/work/alex/poky/meta/recipes-graphics/xorg-font/font-util_1.4.1.bb:do=
_package_write_rpm
> /srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-sdk=
.bb:do_package
> /srv/work/alex/poky/meta/recipes-gnome/librsvg/librsvg_2.56.3.bb:do_packa=
ge_write_rpm
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugin=
s-bad_1.22.6.bb:do_package_write_rpm
>=20
>=20
> I'm not sure if that's because cache for the current master needs to
> be populated properly first, or if there's a deeper issue.

We made a release build with current master so the cache should be
good. We're going to have to look into it.

> > Either we start logging what we've built so we get the last known
> > revisions, or we run the test as part of a-quick/a-full at the end of
> > the build? I don't really want to extend the build but I'm not sure we
> > may have much choice.
>=20
> I think it can be a selftest and bundled into
> trigger-build-posttrigger which already runs
> 'buildoptions.SourceMirroring.test_yocto_source_mirror':
>=20
> https://git.yoctoproject.org/yocto-autobuilder-helper/tree/config.json#n4=
65
>=20
> The various yocto mirrors tests could be tagged in a way similar to
> machine/toolchain selftests, so that they're excluded from regular
> oe-selftest, but run specifically here.

That sounds reasonable. oe-selftest has the concept of "tags" so we
should create some for these tests and use those as the hardcoded lists
are a pain. We already do that for the toolchain-user, toolchain-system
and machine ones iirc.

Cheers,

Richard






