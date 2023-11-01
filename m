Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB9A4C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 16:40:48 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.12431.1698856838809338213
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 09:40:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fiwqAE13;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.42, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-507cd62472dso1178901e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 09:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698856837; x=1699461637; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gGBlRNQdpjD8frZ3l8Sf8224ldIL/jD+3H79Qi9oMRY=;
        b=fiwqAE13+22O8UpIw1j4C7BWvGulj4JXC/ScYfuYTubkl4VYhuRIHmWUiR9ui52N+6
         tH2RtWRcjB3bu45UkBU7CsWoLiEtGOzuXjTzJf1zzLJQqmXmRuC9iQB+RraQVlD0VjdK
         Qg0dVFVbGUbNP2gr6ONNel0sgoZ2xx6M/ZgSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698856837; x=1699461637;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGBlRNQdpjD8frZ3l8Sf8224ldIL/jD+3H79Qi9oMRY=;
        b=CZgotRyeJQjpno/AAjaVfDMOeI6XL512t13JYuTiQmp0KTISllvXhnDz5LFDxJ/ThA
         Wt+tnG294tH3bgs7wNQeCa3oVragKMHIxuw8+w6JvIgFlRvKRtWE457RTxGL98QhuByZ
         lt6e4JRt8ROJkNG/ApJFgqEW8I0BYtgWnvAorez6T2Jz+F6L480UH6sJrKYxNE3wmugl
         c878x3pWXHrscNBViyT3WJ4z7qVJH5TELPhn2pdTbv2EIVzbqkCZlPPJ7XnBDMGpajdv
         SiC3kXqaYXJApwNMT6Vne51o/YlqwEpmF1PSWrN9OMm2OjGW4T8StdREjJfQz+hnpdUS
         S7dw==
X-Gm-Message-State: AOJu0YxrHgOp5CVqodnqreBoKtF++UZ+4iOZInKtotzwcT/0ZyuuqAPO
	RJnWVXjH24CxMmgXgUhPF6lZuR4e8NaGQLYBb4QR+Q==
X-Google-Smtp-Source: AGHT+IFbZcCLAW2VQm1rOWKRBc8CF9PRScJV71HJOKKL+Re6xhy6VYRUwn/Y/acMu8QIseHqC0sxLAoppp+269Kok+A=
X-Received: by 2002:a05:6512:b07:b0:509:39fa:90d5 with SMTP id
 w7-20020a0565120b0700b0050939fa90d5mr1035666lfu.26.1698856836760; Wed, 01 Nov
 2023 09:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
 <CANNYZj_SLzpPUct_BEnsm2mSJrZViHYdh0yqjwA-KfKRhymdyw@mail.gmail.com>
 <563dd39e0841942203e108401db10dc78c0dcb89.camel@linuxfoundation.org>
 <CANNYZj_vjYt6Ldx82c-ZEp1x-L4B8gs3Ggt6FPypNYf67A9arg@mail.gmail.com> <9f42b38060ae8f2f4126a894bedd794b2066693b.camel@linuxfoundation.org>
In-Reply-To: <9f42b38060ae8f2f4126a894bedd794b2066693b.camel@linuxfoundation.org>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 1 Nov 2023 09:40:25 -0700
Message-ID: <CADfgfob9OS8eu2S8ciKxDatf2iD-mMr3R8_5ZngvFRAb5iOcuA@mail.gmail.com>
Subject: Re: CDN for sstate.yoctoproject.org
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000479a87060919ee04"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 16:40:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61559

--000000000000479a87060919ee04
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Some CDN stats are now published at https://www.jsdelivr.com/oss-cdn/yocto.
Let me know if you notice anything that needs to be changed.

On Wed, Oct 18, 2023 at 10:33=E2=80=AFAM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2023-10-18 at 14:02 +0200, Alexander Kanavin wrote:
> > On Wed, 18 Oct 2023 at 08:45, Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> > > I'm torn on the targets to test as sato-sdk is a large image and worl=
d
> > > is a lot of work. I'd be tempted to test sato, weston and full-cmdlin=
e?
> > > World is a good test I guess and if from sstate, shouldn't have that
> > > much of an issue. It does also prove things are working.
> >
> > I ran '-S printdiff world' on a blank build directory. First,
> > scalability isn't great:
> >
> > Initialising tasks: 100%
> > >
> #########################################################################=
###########################################################################=
######################|
> > Time: 0:24:19
> > Checking sstate mirror object availability: 100%
> > >
> #########################################################################=
#########################################################################|
> > Time: 0:12:14
> >
> > So it's taking 36 minutes just preparing to fetch the objects, and 2/3
> > of that time goes into communicating with hash equivalence server
> > (e.g. BB_HASHSERVE_UPSTREAM =3D "hashserv.yocto.io:8687").
>
> FWIW the second time an artefact is pulled from the CDN, it will be
> much faster. I don't know how much that is a factor here.
>
> We know hashequiv is slow, particularly from europe. We've ideas on
> that we're looking into but for now it is what it is. Part of this work
> was to find out what the issues are so we write that one up.
>
> > Second, there are significant misses. I don't have a clear theory
> > where they come from, just want to list them:
> >
> > The differences between the current build and any cached tasks start
> > at the following tasks:
> > /srv/work/alex/poky/meta/recipes-core/meta/meta-ide-support.bb:
> do_populate_ide_support
> > /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/
> xf86-input-synaptics_1.9.2.bb:do_collect_spdx_deps
> >
> /srv/work/alex/poky/meta/recipes-devtools/bootchart2/bootchart2_0.14.9.bb=
:
> do_create_runtime_spdx
> >
> /srv/work/alex/poky/meta/recipes-graphics/igt-gpu-tools/igt-gpu-tools_git=
.bb:
> do_collect_spdx_deps
> >
> /srv/work/alex/poky/meta/recipes-devtools/python/python3-dbusmock_0.29.1.=
bb:
> do_create_runtime_spdx
> > /srv/work/alex/poky/meta/recipes-devtools/dpkg/dpkg_1.22.0.bb:
> do_configure
> >
> /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_=
13.2.0.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-graphics/glew/glew_2.2.0.bb:
> do_collect_spdx_deps
> >
> /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.=
10.6.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-graphics/libva/libva_2.19.0.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-sato/webkit/libwpe_1.14.1.bb:
> do_collect_spdx_deps
> >
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-meta-b=
ase.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/
> gstreamer1.0-python_1.22.6.bb:do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-extended/cups/cups_2.4.6.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-gnome/libdazzle/libdazzle_3.44.0.bb:
> do_collect_spdx_deps
> >
> /srv/work/alex/poky/meta/recipes-graphics/igt-gpu-tools/igt-gpu-tools_git=
.bb:
> do_package
> >
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gst-devtools_1.22.6=
.bb:
> do_collect_spdx_deps
> >
> /srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-sdk=
.bb:
> do_package
> >
> /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.=
9.5.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-graphics/waffle/waffle_1.7.2.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-multimedia/alsa/alsa-tools_1.2.5.bb:
> do_collect_spdx_deps
> >
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-rtsp-s=
erver_1.22.6.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-devtools/apt/apt_2.6.1.bb:do_install
> > /srv/work/alex/poky/meta/recipes-gnome/gtk+/gtk4_4.12.3.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-devtools/devel-config/distcc-config.bb=
:
> do_create_runtime_spdx
> > /srv/work/alex/poky/meta/recipes-gnome/libhandy/libhandy_1.8.2.bb:
> do_collect_spdx_deps
> > /srv/work/alex/poky/meta/recipes-support/vim/vim_9.0.bb:
> do_collect_spdx_deps
>
> We'll have to dig into this.
>
> > So I think we should start with specific images first - minimal,
> > full-cmdline, weston, sato and sato-sdk are all much faster to check.
>
> Agreed, lets start with simpler images, full-cmdline, minimal, sato and
> weston. We can increase coverage as we move forward (world, sato-sdk).
>
> > On qemux86_64 none of them show misses, but on qemuarm64 there are
> > problems with sato, sato-sdk and weston, i.e. sato-sdk shows:
> >
> > The differences between the current build and any cached tasks start
> > at the following tasks:
> > /srv/work/alex/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.42.10.bb=
:
> do_package_write_rpm
> >
> /srv/work/alex/poky/meta/recipes-connectivity/connman/connman-gnome_0.7.b=
b:
> do_package_write_rpm
> >
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gst-examples_1.18.6=
.bb:
> do_package_write_rpm
> > /srv/work/alex/poky/meta/recipes-sato/images/core-image-sato-sdk.bb:
> do_deploy_source_date_epoch
> > /srv/work/alex/poky/meta/recipes-graphics/xorg-font/font-util_1.4.1.bb:
> do_package_write_rpm
> >
> /srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-sdk=
.bb:
> do_package
> > /srv/work/alex/poky/meta/recipes-gnome/librsvg/librsvg_2.56.3.bb:
> do_package_write_rpm
> >
> /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugin=
s-bad_1.22.6.bb:
> do_package_write_rpm
> >
> >
> > I'm not sure if that's because cache for the current master needs to
> > be populated properly first, or if there's a deeper issue.
>
> We made a release build with current master so the cache should be
> good. We're going to have to look into it.
>
> > > Either we start logging what we've built so we get the last known
> > > revisions, or we run the test as part of a-quick/a-full at the end of
> > > the build? I don't really want to extend the build but I'm not sure w=
e
> > > may have much choice.
> >
> > I think it can be a selftest and bundled into
> > trigger-build-posttrigger which already runs
> > 'buildoptions.SourceMirroring.test_yocto_source_mirror':
> >
> >
> https://git.yoctoproject.org/yocto-autobuilder-helper/tree/config.json#n4=
65
> >
> > The various yocto mirrors tests could be tagged in a way similar to
> > machine/toolchain selftests, so that they're excluded from regular
> > oe-selftest, but run specifically here.
>
> That sounds reasonable. oe-selftest has the concept of "tags" so we
> should create some for these tests and use those as the hardcoded lists
> are a pain. We already do that for the toolchain-user, toolchain-system
> and machine ones iirc.
>
> Cheers,
>
> Richard
>
>
>
>
>
>

--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--000000000000479a87060919ee04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Some CDN stats are now published at <a href=3D"https://www=
.jsdelivr.com/oss-cdn/yocto">https://www.jsdelivr.com/oss-cdn/yocto</a>. Le=
t me know if you notice anything that needs to be changed.</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 18, 2=
023 at 10:33=E2=80=AFAM Richard Purdie &lt;<a href=3D"mailto:richard.purdie=
@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, 2023-10-18 =
at 14:02 +0200, Alexander Kanavin wrote:<br>
&gt; On Wed, 18 Oct 2023 at 08:45, Richard Purdie<br>
&gt; &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_b=
lank">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br>
&gt; &gt; I&#39;m torn on the targets to test as sato-sdk is a large image =
and world<br>
&gt; &gt; is a lot of work. I&#39;d be tempted to test sato, weston and ful=
l-cmdline?<br>
&gt; &gt; World is a good test I guess and if from sstate, shouldn&#39;t ha=
ve that<br>
&gt; &gt; much of an issue. It does also prove things are working.<br>
&gt; <br>
&gt; I ran &#39;-S printdiff world&#39; on a blank build directory. First,<=
br>
&gt; scalability isn&#39;t great:<br>
&gt; <br>
&gt; Initialising tasks: 100%<br>
&gt; &gt; #################################################################=
###########################################################################=
##############################|<br>
&gt; Time: 0:24:19<br>
&gt; Checking sstate mirror object availability: 100%<br>
&gt; &gt; #################################################################=
###########################################################################=
######|<br>
&gt; Time: 0:12:14<br>
&gt; <br>
&gt; So it&#39;s taking 36 minutes just preparing to fetch the objects, and=
 2/3<br>
&gt; of that time goes into communicating with hash equivalence server<br>
&gt; (e.g. BB_HASHSERVE_UPSTREAM =3D &quot;<a href=3D"http://hashserv.yocto=
.io:8687" rel=3D"noreferrer" target=3D"_blank">hashserv.yocto.io:8687</a>&q=
uot;).<br>
<br>
FWIW the second time an artefact is pulled from the CDN, it will be<br>
much faster. I don&#39;t know how much that is a factor here.<br>
<br>
We know hashequiv is slow, particularly from europe. We&#39;ve ideas on<br>
that we&#39;re looking into but for now it is what it is. Part of this work=
<br>
was to find out what the issues are so we write that one up.<br>
<br>
&gt; Second, there are significant misses. I don&#39;t have a clear theory<=
br>
&gt; where they come from, just want to list them:<br>
&gt; <br>
&gt; The differences between the current build and any cached tasks start<b=
r>
&gt; at the following tasks:<br>
&gt; /srv/work/alex/poky/meta/recipes-core/meta/meta-ide-support.bb:do_popu=
late_ide_support<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/<a href=3D"http:=
//xf86-input-synaptics_1.9.2.bb" target=3D"_blank">xf86-input-synaptics_1.9=
.2.bb</a>:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-devtools/bootchart2/bootchart2_0.14.9=
.bb:do_create_runtime_spdx<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/igt-gpu-tools/igt-gpu-tools_=
git.bb:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-devtools/python/python3-dbusmock_0.29=
.1.bb:do_create_runtime_spdx<br>
&gt; /srv/work/alex/poky/meta/recipes-devtools/dpkg/dpkg_1.22.0.bb:do_confi=
gure<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-vmmou=
se_13.2.0.bb:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/glew/glew_2.2.0.bb:do_collec=
t_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-evdev=
_2.10.6.bb:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/libva/libva_2.19.0.bb:do_col=
lect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-sato/webkit/libwpe_1.14.1.bb:do_colle=
ct_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-met=
a-base.bb:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/<a href=3D"http:=
//gstreamer1.0-python_1.22.6.bb" target=3D"_blank">gstreamer1.0-python_1.22=
.6.bb</a>:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-extended/cups/cups_2.4.6.bb:do_collec=
t_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-gnome/libdazzle/libdazzle_3.44.0.bb:d=
o_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/igt-gpu-tools/igt-gpu-tools_=
git.bb:do_package<br>
&gt; /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gst-devtools_1.2=
2.6.bb:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-=
sdk.bb:do_package<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/xorg-driver/xf86-input-mouse=
_1.9.5.bb:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/waffle/waffle_1.7.2.bb:do_co=
llect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-multimedia/alsa/alsa-tools_1.2.5.bb:d=
o_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-rts=
p-server_1.22.6.bb:do_collect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-devtools/apt/apt_2.6.1.bb:do_install<=
br>
&gt; /srv/work/alex/poky/meta/recipes-gnome/gtk+/gtk4_4.12.3.bb:do_collect_=
spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-devtools/devel-config/distcc-config.b=
b:do_create_runtime_spdx<br>
&gt; /srv/work/alex/poky/meta/recipes-gnome/libhandy/libhandy_1.8.2.bb:do_c=
ollect_spdx_deps<br>
&gt; /srv/work/alex/poky/meta/recipes-support/vim/vim_9.0.bb:do_collect_spd=
x_deps<br>
<br>
We&#39;ll have to dig into this.<br>
<br>
&gt; So I think we should start with specific images first - minimal,<br>
&gt; full-cmdline, weston, sato and sato-sdk are all much faster to check.<=
br>
<br>
Agreed, lets start with simpler images, full-cmdline, minimal, sato and<br>
weston. We can increase coverage as we move forward (world, sato-sdk).<br>
<br>
&gt; On qemux86_64 none of them show misses, but on qemuarm64 there are<br>
&gt; problems with sato, sato-sdk and weston, i.e. sato-sdk shows:<br>
&gt; <br>
&gt; The differences between the current build and any cached tasks start<b=
r>
&gt; at the following tasks:<br>
&gt; /srv/work/alex/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.42.10.b=
b:do_package_write_rpm<br>
&gt; /srv/work/alex/poky/meta/recipes-connectivity/connman/connman-gnome_0.=
7.bb:do_package_write_rpm<br>
&gt; /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gst-examples_1.1=
8.6.bb:do_package_write_rpm<br>
&gt; /srv/work/alex/poky/meta/recipes-sato/images/core-image-sato-sdk.bb:do=
_deploy_source_date_epoch<br>
&gt; /srv/work/alex/poky/meta/recipes-graphics/xorg-font/font-util_1.4.1.bb=
:do_package_write_rpm<br>
&gt; /srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-=
sdk.bb:do_package<br>
&gt; /srv/work/alex/poky/meta/recipes-gnome/librsvg/librsvg_2.56.3.bb:do_pa=
ckage_write_rpm<br>
&gt; /srv/work/alex/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plu=
gins-bad_1.22.6.bb:do_package_write_rpm<br>
&gt; <br>
&gt; <br>
&gt; I&#39;m not sure if that&#39;s because cache for the current master ne=
eds to<br>
&gt; be populated properly first, or if there&#39;s a deeper issue.<br>
<br>
We made a release build with current master so the cache should be<br>
good. We&#39;re going to have to look into it.<br>
<br>
&gt; &gt; Either we start logging what we&#39;ve built so we get the last k=
nown<br>
&gt; &gt; revisions, or we run the test as part of a-quick/a-full at the en=
d of<br>
&gt; &gt; the build? I don&#39;t really want to extend the build but I&#39;=
m not sure we<br>
&gt; &gt; may have much choice.<br>
&gt; <br>
&gt; I think it can be a selftest and bundled into<br>
&gt; trigger-build-posttrigger which already runs<br>
&gt; &#39;buildoptions.SourceMirroring.test_yocto_source_mirror&#39;:<br>
&gt; <br>
&gt; <a href=3D"https://git.yoctoproject.org/yocto-autobuilder-helper/tree/=
config.json#n465" rel=3D"noreferrer" target=3D"_blank">https://git.yoctopro=
ject.org/yocto-autobuilder-helper/tree/config.json#n465</a><br>
&gt; <br>
&gt; The various yocto mirrors tests could be tagged in a way similar to<br=
>
&gt; machine/toolchain selftests, so that they&#39;re excluded from regular=
<br>
&gt; oe-selftest, but run specifically here.<br>
<br>
That sounds reasonable. oe-selftest has the concept of &quot;tags&quot; so =
we<br>
should create some for these tests and use those as the hardcoded lists<br>
are a pain. We already do that for the toolchain-user, toolchain-system<br>
and machine ones iirc.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</div><=
div>Systems Operations Engineer</div></div></div>

--000000000000479a87060919ee04--

