Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB655C433F5
	for <webhook@archiver.kernel.org>; Thu, 24 Mar 2022 08:31:38 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
 [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web10.8511.1648110697739967594
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 01:31:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LmSfZ0mh;
 spf=pass (domain: gmail.com, ip: 209.85.222.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id b37so1737480uad.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 01:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=V2JM7Qtd0ynxnE6Mq1sLSBOnd/R1HPKnxdF0Row0nt8=;
        b=LmSfZ0mhveD52hupTL5a2HgF7QriBavynVf7sWQs9z0zJDIq8G8MiuAevnai8o7jy3
         ShnV9E8gjjWEuWU2q5YoXnH82bqp2v6H26RdNMC44v4bQITVMO9krrNuhbN41d3L7i8f
         PmfyrnfgKUo142in3+O5WE7fUJ0q2ailikGJXnflG49NhmBpKKSdVJbNTGs6QDdEK3rG
         YCYIyo7uOs/o6YYFJee0baNYtvsTYuKyJBf39+9ZR7OVJ313YBYKQW9Eb3swFbcc5063
         /Bhih/0O+FKeGnwyrmyeaztbGnyXkwkLLSKm2VmFrz2Hgenr+YQzIob8VE4qsVUbHB3d
         9xNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=V2JM7Qtd0ynxnE6Mq1sLSBOnd/R1HPKnxdF0Row0nt8=;
        b=zmBiIGhU3H0HV1tkEYGxi9S9vu2fDFoFmZHXgaMc2GBvLBUdIZVJcy4uAbdxLLSvSO
         opXchoF7J1krbZkpWkUFv7cv9jBm4JJlXlly/DDDJoIPnk1ffIolM1S5+imkUltpzsMS
         0x3u5dIvaITg45TuD8WFbTAeQGJew486/WLKiw1uoYwpAK7fE8Wa79NZGYiNEe3PlcH5
         URJQdhAl3xfI6NYyDQb5wTSe2KCt6vBbR8kL3wZ7AEljWp5JlvtQAXXkD594KdNhwBgh
         N4J5qeHaVOi+Vcgmo8fbu0d+AI6NNr1fP0J48jfArXkIjE3u+OhcYIamSE42PBUZ6Bu7
         iJEA==
X-Gm-Message-State: AOAM530gGCXWqzynbf0QWNUBLybSYPao2eX+zt98PVvOwShYRfBymv87
	ljm3X/r+KLrsK5xkKjQHjv8I4Ub8RCRVUSl0syqwZQI8
X-Google-Smtp-Source: 
 ABdhPJwaArX8r9aO4Bee16hySCf7A5QfzQsbnwmm65/U+ZHIThLkbivwUFwL4wdkQ7lKH7UVmTkkbLur89DAFAtemHg=
X-Received: by 2002:a9f:3589:0:b0:342:4791:1b86 with SMTP id
 t9-20020a9f3589000000b0034247911b86mr1929317uad.82.1648110696849; Thu, 24 Mar
 2022 01:31:36 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM0PR10MB3107136C7FF2137D2614E56A99179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CANNYZj85noGs9H4A4pYqOO6Rng5MtEMMtVAgOpcBb7AUfeMy4w@mail.gmail.com>
 <AM0PR10MB3107C0F557337A41057CB81299199@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107C0F557337A41057CB81299199@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 24 Mar 2022 09:31:25 +0100
Message-ID: 
 <CANNYZj-U3ur+h3USCsxa+DEy7cEowB-ZTpx4JetiMsmNVdJBxw@mail.gmail.com>
Subject: Re: [yocto] Strange sporadic build issues (incremental builds in
 docker container)
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Mar 2022 08:31:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56548

I don't. You need to inspect the build tree to find clues why the
patch was applied twice. Or simpy wipe tmp/ before builds, if your
sstate works properly that won't make the builds longer.

Alex

On Thu, 24 Mar 2022 at 07:43, Matthias Klein <matthias.klein@optimeas.de> w=
rote:
>
> Hello Alex,
>
> it occurred again:
>
> NOTE: recipe gawk-5.1.1-r0: task do_patch: Succeeded
> NOTE: Running task 1673 of 4524 (/var/jenkins_home/workspace/yocto-raspbe=
rrypi/yocto/poky/meta/recipes-devtools/python/python3-six_1.16.0.bb:do_patc=
h)
> NOTE: recipe firstboot-1.0-r0: task do_populate_sysroot: Started
> NOTE: recipe keymaps-1.0-r31: task do_patch: Started
> NOTE: recipe python3-six-1.16.0-r0: task do_patch: Started
> NOTE: recipe python3-six-1.16.0-r0: task do_patch: Succeeded
> NOTE: Running task 1676 of 4524 (/var/jenkins_home/workspace/yocto-raspbe=
rrypi/yocto/poky/meta/recipes-devtools/perl/perl_5.34.1.bb:do_patch)
> NOTE: recipe e2fsprogs-1.46.5-r0: task do_patch: Succeeded
> ERROR: keymaps-1.0-r31 do_patch: Applying patch 'GPLv2.patch' on target d=
irectory '/var/jenkins_home/workspace/yocto-raspberrypi/build/tmp/work/rasp=
berrypi3_64-poky-linux/keymaps/1.0-r31'
> CmdError('quilt --quiltrc /var/jenkins_home/workspace/yocto-raspberrypi/b=
uild/tmp/work/raspberrypi3_64-poky-linux/keymaps/1.0-r31/recipe-sysroot-nat=
ive/etc/quiltrc push', 0, 'stdout:
> stderr: File series fully applied, ends at patch GPLv2.patch
> ')
> ERROR: Logfile of failure stored in: /var/jenkins_home/workspace/yocto-ra=
spberrypi/build/tmp/work/raspberrypi3_64-poky-linux/keymaps/1.0-r31/temp/lo=
g.do_patch.353982
> NOTE: recipe keymaps-1.0-r31: task do_patch: Failed
> NOTE: Running task 1679 of 4524 (/var/jenkins_home/workspace/yocto-raspbe=
rrypi/yocto/poky/meta/recipes-bsp/alsa-state/alsa-state.bb:do_patch)
> ERROR: Task (/var/jenkins_home/workspace/yocto-raspberrypi/yocto/poky/met=
a/recipes-bsp/keymaps/keymaps_1.0.bb:do_patch) failed with exit code '1'
>
> Do you have an idea?
>
> Best regards,
> Matthias
>
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Alexander Kanavin <alex.kanavin@gmail.com>
> Gesendet: Dienstag, 22. M=C3=A4rz 2022 10:26
> An: Matthias Klein <matthias.klein@optimeas.de>
> Cc: yocto@lists.yoctoproject.org
> Betreff: Re: [yocto] Strange sporadic build issues (incremental builds in=
 docker container)
>
> It's hard to say without the full error message, and the build directory =
of the affected recipe. The easy way out is to simply wipe tmp/ before each=
 build.
>
> Alex
>
> On Tue, 22 Mar 2022 at 09:51, Matthias Klein <matthias.klein@optimeas.de>=
 wrote:
> >
> > Hello together,
> >
> > I am building various kirkstone/master yoctos every night via Jenkins i=
nside a Debian Bullseye Docker container.
> > These are incremental builds, reusing the build directory and sstate-ca=
che of the previous build. The different yoctos are built in order. Each ti=
me, a new Docker container is launched.
> > (The same environment builds dunfell yoctos without any problems).
> >
> > Now it happens sporadically that one of the builds aborts with the foll=
owing message:
> >
> > stderr: The series file no longer matches the applied patches. Please r=
un 'quilt pop -a'.
> >
> > They are usually alternating packages where the patch step fails with t=
he above message. Also different yoctos are affected. But it is always the =
above message.
> > If I then restart the failed build it usually builds cleanly.
> >
> > Does anyone have an idea in which direction the problem goes?
> >
> > Many greetings,
> > Matthias
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#56522):
> > https://lists.yoctoproject.org/g/yocto/message/56522
> > Mute This Topic: https://lists.yoctoproject.org/mt/89948013/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > [alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

