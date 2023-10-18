Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FD1CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 06:45:14 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.275797.1697611508144958400
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 23:45:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CB93pARL;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-408002b5b9fso10192645e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 23:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697611506; x=1698216306; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f9czy0ChZPgJPWatGo4Ghj7acRv7Nd8PaaZuk/hpKug=;
        b=CB93pARLgiwDlL4gRHu8oZpZL49+ZU0nyKd1nXIEWGRdFOVdOFtLEWyiTSdgH1qYGB
         iAAP4j95qhS07k46c9QVc5/5n7y7MrVTAauQwyWEcEoUyujHQoUpy3hGZzMhtqvm/Kqh
         r9RYYjHYHLvmzL5HFRscLau1PwBdxz8ZymoDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697611506; x=1698216306;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f9czy0ChZPgJPWatGo4Ghj7acRv7Nd8PaaZuk/hpKug=;
        b=D+gTg8Q+aRJbE4siauXIX3ZAYKJ9UN1rL0wa8Ibj7xP/t4VIfW5Xz4XigMeDerofC7
         J0oE9DZVzzjr7S2ddRNXlYdXTAQ8vyd4ekb6Y5rHWerGh+lSmyCrqQ7ZMDUJxRcNnL0D
         2uSf16eHb/TP+4y7hf0YPMHRXY+/1dhil01XbGoNvxDZnG00vCgPP7HIJ+CMozd8NZny
         mrcIfWMyBdO9F7S7jTA5lNHLf7cr8bqfYf1UdRJLdgInuNWxHdlHyT5Ix6mkDSWDou/n
         BZnJQuYHSdsnMQKMSIfn1FzMTnu3/wHyFd2WwOn8ti4PmY2L/WfdCmYwhD5d2JbQbZd4
         tMfg==
X-Gm-Message-State: AOJu0YyrnxbeaEzT/KuDFVcwtmVooBWmYjdU6Lb+/IXM3dFvl70uS7eV
	1Ixay9naJyfsFSRLx2oKh7X1Bg==
X-Google-Smtp-Source: AGHT+IGRDkwtkX5VuiXS9dgETwXa1Lfe/4eDAMe/dkEVKCVarouFwj5WMfLtOZeJdMgV8wf846aiUw==
X-Received: by 2002:a05:600c:41d6:b0:3fe:d1b9:7ea9 with SMTP id t22-20020a05600c41d600b003fed1b97ea9mr3321009wmh.36.1697611506384;
        Tue, 17 Oct 2023 23:45:06 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:fa42:b755:fc77:86e9? ([2001:8b0:aba:5f3c:fa42:b755:fc77:86e9])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c228100b0040596352951sm799334wmf.5.2023.10.17.23.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 23:45:05 -0700 (PDT)
Message-ID: <563dd39e0841942203e108401db10dc78c0dcb89.camel@linuxfoundation.org>
Subject: Re: CDN for sstate.yoctoproject.org
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Michael Halstead
	 <mhalstead@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Wed, 18 Oct 2023 07:45:05 +0100
In-Reply-To: <CANNYZj_SLzpPUct_BEnsm2mSJrZViHYdh0yqjwA-KfKRhymdyw@mail.gmail.com>
References: 
	<CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
	 <CANNYZj_SLzpPUct_BEnsm2mSJrZViHYdh0yqjwA-KfKRhymdyw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 06:45:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61387

On Tue, 2023-10-17 at 17:33 +0200, Alexander Kanavin wrote:
> Thanks for working on this! I finally got to playing with CDN mirror a
> bit, and it seems to basically work ok, so next I'm going to write AB
> tests that check that it remains useful. Specifically:
>=20
> 1. What should the test be?
>=20
> I tried 'bitbake -S printdiff core-image-sato' on a blank build
> directory, and the result against current master is:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Checking sstate mirror object availability: 100%
> > #######################################################################=
###########################################################################=
|
> Time: 0:05:35
> The differences between the current build and any cached tasks start
> at the following tasks:
> /srv/work/alex/poky/meta/recipes-sato/images/core-image-sato.bb:do_deploy=
_source_date_epoch
> /srv/work/alex/poky/meta/recipes-core/base-files/base-files_3.0.14.bb:do_=
install
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> I think this is pretty good! The two missing objects depend on the
> current date, and so should go to the exception list in the test, and
> otherwise there is a 100% match rate. The bitbake targets could be
> 'world core-image-sato-sdk', and target machines could be qemux86_64
> and qemuarm64.

That match does look good. As you say, the revision of the metadata
will change base-files so that is expected.

I'm torn on the targets to test as sato-sdk is a large image and world
is a lot of work. I'd be tempted to test sato, weston and full-cmdline?
World is a good test I guess and if from sstate, shouldn't have that
much of an issue. It does also prove things are working.

> Just to be sure that mismatches elsewhere will be reported as CDN
> misses, adding my shadow 4.14 update and re-running the command shows:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> The differences between the current build and any cached tasks start
> at the following tasks:
> /srv/work/alex/poky/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-th=
eme_0.17.bb:do_package
> /srv/work/alex/poky/meta/recipes-sato/pulseaudio-sato/pulseaudio-client-c=
onf-sato_1.bb:do_package
> /srv/work/alex/poky/meta/recipes-core/initscripts/initscripts_1.0.bb:do_p=
ackage
> /srv/work/alex/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_p=
ackage
> /srv/work/alex/poky/meta/recipes-multimedia/alsa/alsa-ucm-conf_1.2.10.bb:=
do_package
> /srv/work/alex/poky/meta/recipes-kernel/wireless-regdb/wireless-regdb_202=
3.09.01.bb:do_package
> /srv/work/alex/poky/meta/recipes-sato/packagegroups/packagegroup-core-x11=
-sato.bb:do_package
> /srv/work/alex/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-hea=
ders_6.5.bb:do_package
> /srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-ssh=
-dropbear.bb:do_package
> /srv/work/alex/poky/meta/recipes-graphics/packagegroups/packagegroup-core=
-x11.bb:do_package
> /srv/work/alex/poky/meta/recipes-sato/shutdown-desktop/shutdown-desktop.b=
b:do_package
> virtual:native:/srv/work/alex/poky/meta/recipes-support/libbsd/libbsd_0.1=
1.7.bb:do_prepare_recipe_sysroot
> /srv/work/alex/poky/meta/recipes-support/ca-certificates/ca-certificates_=
20211016.bb:do_package
> /srv/work/alex/poky/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.b=
b:do_package
> virtual:native:/srv/work/alex/poky/meta/recipes-extended/shadow/shadow_4.=
14.0.bb:do_recipe_qa
> ... (a few more missing do_package objects)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> 2. When to run the test, and against which commit in poky?
>=20
> RP suggested that the test could run in an antiphase with the nightly
> a-quick (i.e. 12 hours after). We can do that for a start, but I'm
> (perhaps prematurely) worrying that this will be unstable: either
> because the objects from the nightly haven't yet propagated to CDN, or
> because master has meanwhile (e.g. in the 12 hours that have passed)
> gained new commits without corresponding cache objects. Are those real
> concerns?
>=20
> Thoughts?

You're right, we need to run the test against a commit we know has been
built on the autobuilder.=C2=A0If we run with a newer commit we could easil=
y
see mismatch since it won't have been built yet.

I'm less worried about CDN propagation, that should happen quickly and
if something isn't present, it might just be slow to obtain/lookup as
it ripples through the system.

Either we start logging what we've built so we get the last known
revisions, or we run the test as part of a-quick/a-full at the end of
the build? I don't really want to extend the build but I'm not sure we
may have much choice.

Cheers,

Richard


