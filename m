Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82EDC0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 17:30:25 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web11.123.1739295016412376349
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 09:30:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ju60th96;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6e45258610bso28265976d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 09:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739295015; x=1739899815; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j2SUqE9l/T6/HRqK2dJkQpJCuZY1G4bqwaZwsMHKbhU=;
        b=ju60th96MdJX81wAcz5jOvuAEvri6HOHUFN2uT2xpf9Y1OA3fYL2hN1AQ2d/TtR/IM
         aNlC8xEQEI3H6dmeRQcnVrtZP8sIJUDWTDIEvvtvGGqoPEMjhAqM4WCmhwsVIhZwO8VQ
         lJGcRVWvbDmB1UO5bAFps6McUrMJ6/Tf4GA9QDI1oWfNy8L50yRUrcYqIL3/xhroMg8t
         MKOBtW2nA/8j0KTN/nV+Yl5j19QeASgwPrzwnNUnlWdLRg64ac3sP1M36AXLM6fT+9rO
         pm8jboEZ38TdJcSpBpUigexreHFVyHNgNc0rfs2nSRefktrmxP/VGHtiSOwBHYhLnWWr
         lQwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739295015; x=1739899815;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j2SUqE9l/T6/HRqK2dJkQpJCuZY1G4bqwaZwsMHKbhU=;
        b=X2JdU6SuOGFwJMSrNn5XsqkUKPG/u/8xQXbgjxOFN/jIrKmsCA60K9ccAZ6/k/Yvei
         RTZboVCcBVuM/PwVJ68hzosoPfc4h3HWqcOj/h2MEVOQoWE7Yt1llcoOkeORdKstbHK1
         vFpOA2HfjBZ22xm4UgzWnrgzAKWDEhDz7Cta6HHytjUPK7qy+XlvCZoKV+f5aFNkrTGh
         qD/ccWlw6cFPUUgAyOJiQSqHYn6VOL8tlTzqx5wWJewBn9RM08bI++hvtShtsx4nESjA
         sgXWJAGVfjU3AsXhutzSZRGC1uy8iTE2H37njCD5X9lOxX70fug4A4mNbfIRQXEEbfHm
         6Atw==
X-Gm-Message-State: AOJu0Yy9/FuoFD3TSW5X4zXjK9dm3DDj2VAvAuagoQ4yoSoeRliQUAp9
	HQdg0OizuU9cHJbM6jME2NM2rEJ3xvyJUH2ZYd4+WYooqd6QnoK7xnzRIOEn/Viu0Q0Rl2YM+Hk
	m9I+C/AYCC/6rXadj/z6E2DhOTSmqO2gm
X-Gm-Gg: ASbGncs6JmIaCm0SGPZ5sBl8WbbT54eJ91Dd/18Zklmugy5DNA3OA0wZW795YqV6LEw
	4TRj0Tb6EmkTLuyxLBr9k3+IK2Iv9osgjYwI76EDrlS+RtqKSniNYJdn+T4AdvkXRQcKaHqA6Pz
	JeK3VSskBrHXt2tcvSZzoan06CQUil9UA=
X-Google-Smtp-Source: AGHT+IEfE6ogVw8CHbwKkRKWrRWS30JZNRawwL/wP2MHjcY5HKFxXUBg60D1kFYrURYF9lEmDiEp7h1vjvob8ICNGZ0=
X-Received: by 2002:a05:6214:4114:b0:6d8:b733:47c with SMTP id
 6a1803df08f44-6e468072943mr55734946d6.22.1739295015401; Tue, 11 Feb 2025
 09:30:15 -0800 (PST)
MIME-Version: 1.0
References: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org> <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com>
In-Reply-To: <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Feb 2025 18:30:04 +0100
X-Gm-Features: AWEUYZl5xS87ASyo9dJYFTlxLG3_8ivlbm4Zf-SaGAWqglkwiz94ldCnpddJ9NY
Message-ID: <CANNYZj8VvtKSDnCn0SVAj7LZeVzeOeKqh4y_2hcKti+TegnfSg@mail.gmail.com>
Subject: Re: [yocto] Installing pre-built DEB files
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
Cc: r@cmss.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 17:30:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64770

No. Do not do this. It's not going to work, especially when you take
binaries built for a different system. I do not have time to give a
lecture about why, you just need to trust me.

We have a recipe that builds parted from source:
https://git.yoctoproject.org/poky/tree/meta/recipes-extended/parted

Use it.

Alex

On Tue, 11 Feb 2025 at 18:05, Gyorgy Sarvari via
lists.yoctoproject.org <skandigraun=gmail.com@lists.yoctoproject.org>
wrote:
>
> Your first destination should be the log.do_install file in the WORKDIR
> of the recipe, which should have the output of the dpkg commands. That
> should shed some light on this mystery, hopefully.
>
> Sidenote: DEB files are actually two compressed tar files in a single
> archive. If nothing else works, you can extract the tar files with "ar x
> $DEBFILE" - the data.tar.* file has the content that you can just copy
> to your rootfs (it also has the folder structure prepared). If you pass
> the tar.* files in the SRC_URI, even the extraction could be handled by
> bitbake. (Assuming that no post-install magic is done by the deb files,
> which would be at least unusual for libraries and -dev packages)
>
> On 11.02.25 17:11, R Keith Beal via lists.yoctoproject.org wrote:
> > I am working with NXP's Flex-Builder.
> > I need to add the libraries and headers for parted.
> > On Ubuntu there is a package called libprated-dev I am trying to
> > replicate.
> > The LAYERSCAPE SDK is using bitbake 1.5.
> > I know I probably shouldn't be installing DEBs directly, but, adding
> > recipes for libprated and all of its dependencies is beyond the scope
> > of the project.
> >
> > I came-up with this recipe, it reports no errors but the files are not
> > installed in the RFS.
> >
> >     SUMMARY = "Development libraries and headers for libparted"
> >     #SECTION = "console/tools"
> >     LICENSE="CLOSED"
> >     LIC_FILES_CHKSUM=""
> >     SRC_URI = " \
> >         file://libdevmapper-event1.02.1_1.02.155-3_arm64.deb \
> >         file://libudev-dev_257.2-3_arm64.deb \
> >         file://libdevmapper-dev_1.02.201-1_arm64.deb \
> >         file://libparted-dev_3.6-4+b1_arm64.deb \
> >     "
> >     SRCREV = ""
> >     PV = "0.1.0"
> >     S = "${WORKDIR}/git"
> >     DEPENDS = "parted"
> >     # inherit pkgconfig
> >     # Install in this order
> >     # libdevmapper-event1.02.1_1.02.155-3_arm64.deb
> >     # libudev-dev_257.2-3_arm64.deb
> >     # libdevmapper-dev_1.02.201-1_arm64.deb
> >     # libparted-dev_3.6-4+b1_arm64.deb
> >     do_install() {
> >         touch ${STAGING_DIR_NATIVE}/var/lib/dpkg/status
> >         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=${D}/ \
> >         --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> >          -i ${WORKDIR}/libdevmapper-event1.02.1_1.02.155-3_arm64.deb
> >         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=${D}/ \
> >         --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> >          -i ${WORKDIR}/libudev-dev_257.2-3_arm64.deb
> >         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=${D}/ \
> >         --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> >          -i ${WORKDIR}/libdevmapper-dev_1.02.201-1_arm64.deb
> >         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=${D}/ \
> >         --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> >          -i ${WORKDIR}/libparted-dev_3.6-4+b1_arm64.deb
> >     }
> >
> >
> >
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64769): https://lists.yoctoproject.org/g/yocto/message/64769
> Mute This Topic: https://lists.yoctoproject.org/mt/111125016/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

