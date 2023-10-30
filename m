Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91684C4167D
	for <webhook@archiver.kernel.org>; Mon, 30 Oct 2023 14:07:52 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.149880.1698674866836531332
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Oct 2023 07:07:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AvqUv1kY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4083f613275so32926535e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 07:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698674865; x=1699279665; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GncFsIn8swF6pruO2hLeI4lSYAFfezhpoZtRTT6Gaes=;
        b=AvqUv1kYwxU0fndiHC5tUmPwivuS/MBd8M1KuhmYfzQpco1uE2+52aksLNq4ylncX9
         uoh/BUpnrdOIlD2WLGBS7w8pyK21B41qewi5HN2D7XyOmy8wa26gFdAomdWOC0ktfg/T
         iAjqflc3zKgEotEnvzkOo9MRt6Rhz0aPxtaTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698674865; x=1699279665;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GncFsIn8swF6pruO2hLeI4lSYAFfezhpoZtRTT6Gaes=;
        b=Nqt30isWWWxQWO8RKOlsscAkgIMrRXWXm1x4Iar+CaULDA9j1kQUokdknh44+p0loa
         SmqLCLTKhcZceYc5KB/Qx9KSrk76JaL/mPLdfD+5WO+OUNibdIHbGIc4OVLqmhV8UErJ
         rnxGJq971assBOA7R/lH+NLLfI+huX/OkJBZ/qiBW+Ob/nJLNFVjHwyaCiuOC+ma4wTD
         1ChVqn+IYQxEIqzhFF4FylcDwMWKudUQCJ0yISvX8gPs/2BXRxSu9lTLeuTWCtstBiF8
         fxOI8dLM9uwjI3hXxWCbgM/M58yX9wbDrlG2u98dcbV2Oy4Qw7uKLtQ5u08DHYqoXcxy
         mGTA==
X-Gm-Message-State: AOJu0Yz2XaoibnTxTKVBQX6ySW0rtczEkqagS7YSmRSWDWs6mOn6r5G8
	MCLx9Lj/QWufTBRM+vcmB+xjZQ==
X-Google-Smtp-Source: AGHT+IGOptCK5X9IRICxGkhdU/nEnmj+R5nLAPL+vvy1dHHFsaE5fMWi7EZVeInDVvQ2spXWeSDfCA==
X-Received: by 2002:a05:600c:5119:b0:406:849f:f3cd with SMTP id o25-20020a05600c511900b00406849ff3cdmr8783196wms.29.1698674865048;
        Mon, 30 Oct 2023 07:07:45 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:482a:b779:b769:fa72? ([2001:8b0:aba:5f3c:482a:b779:b769:fa72])
        by smtp.gmail.com with ESMTPSA id fb14-20020a05600c520e00b004094c5d929asm247972wmb.10.2023.10.30.07.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 07:07:44 -0700 (PDT)
Message-ID: <ea84079102bca429a6ae521d218118952a79f111.camel@linuxfoundation.org>
Subject: Re: Core workflow: sstate for all, bblock/bbunlock, tools for why
 is sstate not being reused?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>, ",openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>, Julien STEPHAN
 <jstephan@baylibre.com>
Date: Mon, 30 Oct 2023 14:07:43 +0000
In-Reply-To: <CANNYZj-JhGnGFRxaF0+Q_5Sqq76kAg1pSBBMka_xefuhMv6-vQ@mail.gmail.com>
References: 
	<CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
	 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
	 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
	 <CANNYZj-JhGnGFRxaF0+Q_5Sqq76kAg1pSBBMka_xefuhMv6-vQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 14:07:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61520

On Mon, 2023-10-30 at 14:50 +0100, Alexander Kanavin wrote:
> On Thu, 14 Sept 2023 at 14:56, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > There are design elements to this work. We need to work out how we can
> > make eSDK and "normal" builds more similar and less of an overhead to
> > switch between one and the other. A "bblock all" command does partly
> > get you to an eSDK effectively so part of this may be switching eSDK to
> > use the new lock command. What other differences are there? What other
> > differences are necessary or make sense for the use cases eSDK was
> > designed for? How would you turn an existing build into an eSDK like
> > one? Could you provide a copy of a local build to someone else easily
> > using something like eSDK's tooling? What does the eSDK look like at
> > the end of this. One section we don't have good answers to yet is setup
> > and configuration although I know you've started on some of that.
>=20
> So I see the following differences between esdk and normal modes:
>=20
> 1. Environment and tooling availability.
>=20
> a) esdk sets a number of variables from its initialization script that
> aid with cross-compiling components directly (e.g. the core use case
> of SDKs). Normal mode doesn't do that, but recently added
> meta-ide-support will generate a similar initialization script that
> will set up the same environment from the normal mode. There are tests
> and documentation for it.

In that case, this one is something we can document as how to make the
functionality available in the normal build.

> b) PATH. eSDK has a number of items in PATH that point to various
> locations inside tmp/sysroots/, collectively they provide the
> cross-toolchain.
>=20
> eSDK also puts a selection of yocto tools into path - wic, devtool but
> not bitbake:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> alex@Zen2:~/poky_sdk$ ls -l sysroots/x86_64-pokysdk-linux/usr/bin/
> total 48
> lrwxrwxrwx 1 alex alex  39 Oct 30 12:52 devtool ->
> ../../../../layers/poky/scripts/devtool
> lrwxrwxrwx 1 alex alex  54 Oct 30 12:52 oe-find-native-sysroot ->
> ../../../../layers/poky/scripts/oe-find-native-sysroot
> lrwxrwxrwx 1 alex alex  42 Oct 30 12:52 recipetool ->
> ../../../../layers/poky/scripts/recipetool
> lrwxrwxrwx 1 alex alex  39 Oct 30 12:52 runqemu ->
> ../../../../layers/poky/scripts/runqemu
> lrwxrwxrwx 1 alex alex  55 Oct 30 12:52 runqemu-addptable2image ->
> ../../../../layers/poky/scripts/runqemu-addptable2image
> lrwxrwxrwx 1 alex alex  53 Oct 30 12:52 runqemu-export-rootfs ->
> ../../../../layers/poky/scripts/runqemu-export-rootfs
> lrwxrwxrwx 1 alex alex  51 Oct 30 12:52 runqemu-extract-sdk ->
> ../../../../layers/poky/scripts/runqemu-extract-sdk
> lrwxrwxrwx 1 alex alex  51 Oct 30 12:52 runqemu-gen-tapdevs ->
> ../../../../layers/poky/scripts/runqemu-gen-tapdevs
> lrwxrwxrwx 1 alex alex  46 Oct 30 12:52 runqemu-ifdown ->
> ../../../../layers/poky/scripts/runqemu-ifdown
> lrwxrwxrwx 1 alex alex  44 Oct 30 12:52 runqemu-ifup ->
> ../../../../layers/poky/scripts/runqemu-ifup
> lrwxrwxrwx 1 alex alex 100 Oct 30 12:52 unfsd ->
> ../../../../tmp/work/qemuarm64-poky-linux/core-image-minimal/1.0/recipe-s=
ysroot-native/usr/bin/unfsd
> lrwxrwxrwx 1 alex alex  35 Oct 30 12:52 wic ->
> ../../../../layers/poky/scripts/wic
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>=20
> 'normal mode' puts bitbake/bin/ and oe-core/scripts in PATH.
> Cross-toolchain can be added by the same environment script made by
> meta-ide-support as mentioned in 1a.

Right, so in theory we can change PATH and change this which can also
easily be documented.

> 2. Configuration (e.g. local.conf).
>=20
> eSDK local.conf is local.conf from the normal mode that was used to
> produce eSDK, stripped of all comments, and with a bunch of extra
> settings:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> INHERIT:remove =3D "buildhistory icecc"
> CONNECTIVITY_CHECK_URIS =3D ""
>=20
> SIGGEN_LOCKEDSIGS_SSTATE_EXISTS_CHECK =3D "none"
>=20
> SIGGEN_LOCKEDSIGS_TASKSIG_CHECK =3D "warn"
>=20
> BB_HASHCONFIG_IGNORE_VARS:append =3D " SIGGEN_UNLOCKED_RECIPES"
>=20
> BB_SETSCENE_ENFORCE_IGNORE_TASKS =3D "%:* *:do_shared_workdir
> *:do_rm_work wic-tools:* *:do_addto_recipe_sysroot"
>=20
> BUILDCFG_HEADER =3D ""
>=20
> METADATA_REVISION:poky =3D "4a1e0b9625729e422fcf24e632ee2a3c79f986d5"
>=20
> # Provide a flag to indicate we are in the EXT_SDK Context
> WITHIN_EXT_SDK =3D "1"
>=20
> SSTATE_MIRRORS +=3D " file://universal/(.*) file://universal-4.9/\1
> file://universal-4.9/(.*) file://universal-4.8/\1"
>=20

Perhaps some of this should become a generic include file which is
included which would then make it easy to document as how to lock
things down to match it? That would take the config out of the class
file too which is probably nicer.

> require conf/locked-sigs.inc
> require conf/unlocked-sigs.inc
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>=20
> Devtool also has a special configuration:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> alex@Zen2:~/poky_sdk$ cat conf/devtool.conf
> [General]
> bitbake_subdir =3D layers/poky/bitbake
> init_path =3D layers/poky/oe-init-build-env
> core_meta_subdir =3D layers/poky/meta


These are likely there to allow devtool to work with the modified files
layout.

We should probably document it but I'm going to propose we "ignore"
layout for the purposes of this so we can just ignore things which are
for layout only.

> [SDK]
> sdk_targets =3D core-image-minimal

Not quite sure about this one. Maybe something to do with the target
used to generate the eSDK? Not sure what uses it.


> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> There is currently no tooling to add/remove these extras in either
> esdk mode or normal mode as far as I understand. Their individual
> purposes and effects are also not exactly clear to me, and need to be
> investigated one by one.
>=20
> 3. Setting up a normal mode in a eSDK installation.
>=20
> This is actually pretty easy: rather than sourcing the sdk environment
> script, source the poky/oe-init-build-env:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> alex@Zen2:~/poky_sdk$ . layers/poky/oe-init-build-env .
>=20
> ### Shell environment set up for builds. ###
> ...
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Bitbake will then simply run, albeit with all those extra
> esdk-specific items in local.conf (which can be easily taken out to
> achieve a pristine normal mode). There will be some warnings but
> builds will proceed:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> WARNING: You are using a local hash equivalence server but have
> configured an sstate mirror. This will likely mean no sstate will
> match from the mirror. You may wish to disable the hash equivalence
> use (BB_HASHSERVE), or use a hash equivalence server alongside the
> sstate mirror.
> ...
> WARNING: spirv-headers-native-1_1.3.261.1-r0 do_fetch: Failed to fetch
> URL git://github.com/KhronosGroup/SPIRV-Headers;protocol=3Dhttps;branch=
=3Dmain,
> attempting MIRRORS if available
> WARNING: libepoxy-1.5.10-r0 do_fetch: Failed to fetch URL
> git://github.com/anholt/libepoxy;branch=3Dmaster;protocol=3Dhttps,
> attempting MIRRORS if available
> WARNING: spirv-tools-native-1_1.3.261.1-r0 do_fetch: Failed to fetch
> URL git://github.com/KhronosGroup/SPIRV-Tools.git;branch=3Dmain;protocol=
=3Dhttps,
> attempting MIRRORS if available
> WARNING: shaderc-native-2023.6-r0 do_fetch: Failed to fetch URL
> git://github.com/google/shaderc.git;protocol=3Dhttps;branch=3Dmain,
> attempting MIRRORS if available
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 4. Setting up esdk mode in a normal yocto installation.
>=20
> This is on one hand easy: cross-toolchain and unified sysroots are
> made available for direct component builds by meta-ide-support and
> build-sysroots.
>=20
> On the other hand, setting up the exact same environment as eSDK sets
> up isn't currently possible: tooling to replicate all the local.conf
> tweaks (that includes locked-sigs items) would be necessary, at a
> minimum. A more pedantic approach would also ensure that
> - only the 'allowed' set of tools is in PATH, and not everything from
> bitbake/bin/ and scripts/
> - environment variables and toolchain sysroots match between what eSDK
> sets up, and what meta-ide-support sets up
>=20
> 5. In conclusion: to be honest, right now I'm not sure which direction
> should be taken to unify and simplify things. Hopefully the above
> sparks some ideas; they might pop into my head later as well :-)

The biggest 'gap' appears to be the config to go along with the locked
sigs. If we move that to an include, that probably gets us quite close
to them being similar ignoring layout changes for the files and the
differences to the environment?

Thinking out loud, I guess we could have a "filtered" scripts directory
too as part of the normal build, then the eSDK switches PATH from one
to the other?

Cheers,

Richard


