Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64555C4167B
	for <webhook@archiver.kernel.org>; Fri,  1 Dec 2023 12:20:56 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.21407.1701433251222768766
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Dec 2023 04:20:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nq3Gr6kZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2c9caf896b7so23261321fa.0
        for <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 04:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701433249; x=1702038049; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gsrKLXwFb1cqe27+iQzMETZCcCWSXOvMP4DnUOouVzs=;
        b=Nq3Gr6kZVKkQ7ZhUnrFyvILtTEjWUmcMihAfRmn7cIOz116IHslekz/gmRfx8fFNPW
         uJeZUzKGb3CxAbm2m4Bjaut1ewRR9kvLxGcQpyCwlFHQSblhQ/58Ejl1HIo/WHgVF8BQ
         AWCHiO99RxhNrYVfEsfde+CySvoOkEPYQC2mK7sRtgv6Lpd5H3Pbl9DgDqwF1Mp4GhxM
         DE4/SWl8QIFDqe1jx58ydTlXH6zyHMdokCd1HN9RvVOFUFsGWWH7Ha4wyBcXK1K7GGLN
         iD9O69uHwzHfMtjJGmkMtXkrbf8bzIrFlj3eJTlHV0yStQYsn+AARwzNEhqN/lpFntsJ
         r6+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701433249; x=1702038049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gsrKLXwFb1cqe27+iQzMETZCcCWSXOvMP4DnUOouVzs=;
        b=RfDaBnWRNpyDEsA4gGTvDoDStpYYnGOdNuvTwYWeubj3uCTE1b1DSrEdIOn7T+YEVf
         EmeEXWGlBYtNEERXa5OngpOAzhQDYV2uvSpZCGMcckrm/I/PiVkrv/YyjQMjjBgJfLSF
         UAsj0pZpfGuDquUnYUI3T4w9yRg22hUFvKUEiQQiG09uQczWd1QrdhDqnYo86PQypEue
         jOFJ5IB9F2Q7gtpvw7OB/fGQWBgTTyhO1rY9PXfE3J5g136am/4q+oPX1bBsJ1Xj4PjC
         2YViOJkvyVHr0b2JSgwR+qEPtbiy/gphlFnclFK9dcg/3oo19xwYS2+55YCeYMkp1e0l
         1slw==
X-Gm-Message-State: AOJu0YzhltbckuDjeSpPqV5mQyO2KIp1bQ/xWdqDZKZwP/K+uH2iL0Th
	F7YJdgwAbsFi+M7MdgEWkdpGEBoHeGV4vNaTHrE=
X-Google-Smtp-Source: AGHT+IHdAKcNvf+eQkfu5nMXepU9A3sHF73WORLX74pPPo0yTJgw2RXf+3Wn9bzi9nRBiP0uq3jZIUX/5S7ioZ26M+A=
X-Received: by 2002:a05:651c:1a25:b0:2c9:e293:9679 with SMTP id
 by37-20020a05651c1a2500b002c9e2939679mr119756ljb.70.1701433248966; Fri, 01
 Dec 2023 04:20:48 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8=ieuy1EnnH9Z02k7a7XicZYBtXX92yi4Ac_dE5PG1QjQ@mail.gmail.com>
 <CAEhQi8=gnb9LU6B4TBYuz0nCgWk9_9w=aXs0wg+CjL1K0t0MDw@mail.gmail.com>
In-Reply-To: <CAEhQi8=gnb9LU6B4TBYuz0nCgWk9_9w=aXs0wg+CjL1K0t0MDw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 1 Dec 2023 13:20:37 +0100
Message-ID: <CANNYZj8LQEuQYKCRL=aMUMU1k3QrS8GR2-9nCd9d45192mRaQw@mail.gmail.com>
Subject: Re: [yocto] The postinstall intercept hook 'update_mime_database' failed
To: Mans Zigher <mans.zigher@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 12:20:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61787

You need to try plain poky then because the error does not happen
there. Then figure out where the difference is.

Alex

On Fri, 1 Dec 2023 at 12:56, Mans Zigher <mans.zigher@gmail.com> wrote:
>
> I have now tried building a multitude of different machines and
> switched to core-minimal-image and still I get these postinstall
> intercept scripts failing. Depending what distro and machine I build I
> get different errors but It is always a postinstall intercept hook
> script that fails and it is always related to missing some directory
> under the rootfs of the image that I am currently trying to build.
>
> BR
>
> Den tors 30 nov. 2023 kl 19:11 skrev M=C3=A5ns <mans.zigher@gmail.com>:
> >
> > Hi,
> >
> > I have taken over a imx8mm project that is based on kirkstone. I don't
> > think it is an official release and some layers are not even a
> > kirkstone release. The project has a reference build but currently it
> > is not possible to build from scratch. I have been fixing some issues
> > on the way to try and build a complete build from scratch but now I
> > have encountered an issue when creating the rootfs that I am
> > struggling with. The issues that I am getting is
> >
> > ERROR: fsl-image-gui-1.0-r0 do_rootfs: The postinstall intercept hook
> > 'update_mime_database' failed, details in
> > /workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/fsl=
-image-gui/1.0-r0/temp/log.do_rootfs
> > ERROR: Logfile of failure stored in:
> > /workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/fsl=
-image-gui/1.0-r0/temp/log.do_rootfs.335539
> > ERROR: Task (/workspace/mender-imx8mm/sources/meta-variscite-sdk/recipe=
s-fsl/images/fsl-image-gui.bb:do_rootfs)
> > failed with exit code '1'
> >
> > checking the log file
> >
> > NOTE: Running intercept scripts:
> > NOTE: > Executing update_mime_database intercept ...
> > NOTE: Exit code 1. Output:
> > Updating MIME database... this may take a while.
> > Directory '/workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fsl=
c-linux/fsl-image-gui/1.0-r0/rootfs/packages'
> > does not exist!
> >
> > In poky/meta/classes/mime.bbclass there is a comment that seems to
> > refer to this issue
> >
> >         # $D${MIMEDIR}/packages belong to package shared-mime-info-data=
,
> >         # packages like libfm-mime depend on shared-mime-info-data.
> >         # after shared-mime-info-data uninstalled, $D${MIMEDIR}/package=
s
> >         # is removed, but update-mime-database need this dir to update
> >         # database, workaround to create one and remove it later
> >         if [ ! -d $D${MIMEDIR}/packages ]; then
> >                mkdir -p $D${MIMEDIR}/packages
> >                update-mime-database $D${MIMEDIR}
> >                rmdir --ignore-fail-on-non-empty $D${MIMEDIR}/packages
> >        else
> >                update-mime-database $D${MIMEDIR}
> >        fi
> >
> > This is not called so no packages directory doesn't exist and the
> > intercept script failed. I can adjust the script
> > poky/scripts/postinst-intercepts/update_mime_database
> >
> > echo "Updating MIME database... this may take a while."
> > update-mime-database $D${mimedir}
> >
> > By adding a similar logic I will get forward but with my build but
> > that doesn't seem like the right solution. Also I just get some other
> > issue related to a second intercept script update_desktop_database so
> > to me it seems more like something is not correctly set up in the
> > build. I am trying to understand how these intercept scripts are
> > configured and why they are not working for my build. Any pointers on
> > how to move forward would be much appreciated.
> >
> > BR
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61786): https://lists.yoctoproject.org/g/yocto/messag=
e/61786
> Mute This Topic: https://lists.yoctoproject.org/mt/102901287/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

