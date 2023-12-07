Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D218C4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 11:54:16 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.82178.1701950045760205333
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 03:54:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BF0QYzaY;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: mans.zigher@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-54c79968ffbso1086505a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 03:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701950044; x=1702554844; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JUXrc6qTthK2NZspInAvGMy9dML4gSIUEH0j7kiJ19k=;
        b=BF0QYzaY8BsE0KWX5/r4/ybdgiXKOCopW2VjDEOErI/NmtrsuZGNcdPpMzzg93cVdY
         ms4PIFkRxNaGplsQGDOeHZ1GccTeEj7Uxg9uJD2ntxAz7WgDQZ22B7Yfd8NdxL5z9L9H
         lTA53Ig/8qqWfPF00D7AZWOQUXJ1MKcOAbqBHo2DascQQG9Nl3fmwimgpvRjRCejP1Fm
         BFbEiv6b7l2DpvaosPLeVRqtXSXl4KJSr65eS0cV1CYtLcnmidn9vSc0unCJWwCb9KrD
         YMFtQd7Fs5naFjxxNfZmDJcbOByUmsgYzKO9WOLk57AExZ0SdQxxd7oResz7uQpLBUg3
         7kpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701950044; x=1702554844;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JUXrc6qTthK2NZspInAvGMy9dML4gSIUEH0j7kiJ19k=;
        b=c4ArCc/VnWneOj3eespa9lJv/nBoN/dr3teUcEAgKP0d3JxjYU8G/LOCrubL0JH612
         eO0gYCRg2y9J8m+n3dbyjEXFYGt/mGuJI7loLoZGfYZ6od3KR1C2TMcUPCFltzDQ9djK
         JABL7PlknrOrTTiu/EZ3Ghfrlt+VYx8pasTbr/xHIXRXymFmpuOhNdoUTzN1JjvZ16xo
         HQTwfg9c9NUa1j/9YIgsnXvkAcgu6sX2JYnIr18oHaRI4Kq0w+TG0uy2LeTZtRyLruRl
         0hzvzqxg9yFwa5KcO+5BxRm8VgkktB1M+pHpW+8sEJZbWCR5ZynBaGKP/Hculmrrw6Em
         fyfw==
X-Gm-Message-State: AOJu0Ywg6yMyj2Rcz33lRWLTd12A68yhT1A9zt8n8BWv6RIMTh2ZTES6
	WBY7ZLExHjNGHtshVcA75zX1gFt24a6+u98+ogS3vpUoCcM=
X-Google-Smtp-Source: AGHT+IGKR+H/oyrK4jsbCfZ6Rs1yDaIp2P2/O9n/tuCyzRqk3bA39HMLw8ur/sfbtQhV3GJZYpxv8YEyCDhliIDXuaE=
X-Received: by 2002:a17:907:508d:b0:a0d:6bc6:4811 with SMTP id
 fv13-20020a170907508d00b00a0d6bc64811mr1281278ejc.37.1701950043839; Thu, 07
 Dec 2023 03:54:03 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8=ieuy1EnnH9Z02k7a7XicZYBtXX92yi4Ac_dE5PG1QjQ@mail.gmail.com>
 <CAEhQi8=gnb9LU6B4TBYuz0nCgWk9_9w=aXs0wg+CjL1K0t0MDw@mail.gmail.com> <CANNYZj8LQEuQYKCRL=aMUMU1k3QrS8GR2-9nCd9d45192mRaQw@mail.gmail.com>
In-Reply-To: <CANNYZj8LQEuQYKCRL=aMUMU1k3QrS8GR2-9nCd9d45192mRaQw@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Thu, 7 Dec 2023 12:53:52 +0100
Message-ID: <CAEhQi8=P0LN7U6=XsDGyiHEJ3=er+ZNBn_DdbtcQH-aia+Q+zQ@mail.gmail.com>
Subject: Re: [yocto] The postinstall intercept hook 'update_mime_database' failed
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 11:54:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61827

Yes, thanks. I am currently doing that but I am struggling to
understand where to look. From what I can tell the layers are not on
an official kirkstone release, not sure the reason for this. It is
based on a imx-5.15.71-2.2.0.xml release but then the layers have been
moved to a different sha. I have been able to build the
imx-5.15.71-2.2.0.xml from scratch but right now the customer would
like to be able to build the current setup. But I will continue to
work on it. The reference build still builds so it is just when trying
to duplicate the build and building from scratch.

/M=C3=A5ns

Den fre 1 dec. 2023 kl 13:20 skrev Alexander Kanavin <alex.kanavin@gmail.co=
m>:
>
> You need to try plain poky then because the error does not happen
> there. Then figure out where the difference is.
>
> Alex
>
> On Fri, 1 Dec 2023 at 12:56, Mans Zigher <mans.zigher@gmail.com> wrote:
> >
> > I have now tried building a multitude of different machines and
> > switched to core-minimal-image and still I get these postinstall
> > intercept scripts failing. Depending what distro and machine I build I
> > get different errors but It is always a postinstall intercept hook
> > script that fails and it is always related to missing some directory
> > under the rootfs of the image that I am currently trying to build.
> >
> > BR
> >
> > Den tors 30 nov. 2023 kl 19:11 skrev M=C3=A5ns <mans.zigher@gmail.com>:
> > >
> > > Hi,
> > >
> > > I have taken over a imx8mm project that is based on kirkstone. I don'=
t
> > > think it is an official release and some layers are not even a
> > > kirkstone release. The project has a reference build but currently it
> > > is not possible to build from scratch. I have been fixing some issues
> > > on the way to try and build a complete build from scratch but now I
> > > have encountered an issue when creating the rootfs that I am
> > > struggling with. The issues that I am getting is
> > >
> > > ERROR: fsl-image-gui-1.0-r0 do_rootfs: The postinstall intercept hook
> > > 'update_mime_database' failed, details in
> > > /workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/f=
sl-image-gui/1.0-r0/temp/log.do_rootfs
> > > ERROR: Logfile of failure stored in:
> > > /workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/f=
sl-image-gui/1.0-r0/temp/log.do_rootfs.335539
> > > ERROR: Task (/workspace/mender-imx8mm/sources/meta-variscite-sdk/reci=
pes-fsl/images/fsl-image-gui.bb:do_rootfs)
> > > failed with exit code '1'
> > >
> > > checking the log file
> > >
> > > NOTE: Running intercept scripts:
> > > NOTE: > Executing update_mime_database intercept ...
> > > NOTE: Exit code 1. Output:
> > > Updating MIME database... this may take a while.
> > > Directory '/workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-f=
slc-linux/fsl-image-gui/1.0-r0/rootfs/packages'
> > > does not exist!
> > >
> > > In poky/meta/classes/mime.bbclass there is a comment that seems to
> > > refer to this issue
> > >
> > >         # $D${MIMEDIR}/packages belong to package shared-mime-info-da=
ta,
> > >         # packages like libfm-mime depend on shared-mime-info-data.
> > >         # after shared-mime-info-data uninstalled, $D${MIMEDIR}/packa=
ges
> > >         # is removed, but update-mime-database need this dir to updat=
e
> > >         # database, workaround to create one and remove it later
> > >         if [ ! -d $D${MIMEDIR}/packages ]; then
> > >                mkdir -p $D${MIMEDIR}/packages
> > >                update-mime-database $D${MIMEDIR}
> > >                rmdir --ignore-fail-on-non-empty $D${MIMEDIR}/packages
> > >        else
> > >                update-mime-database $D${MIMEDIR}
> > >        fi
> > >
> > > This is not called so no packages directory doesn't exist and the
> > > intercept script failed. I can adjust the script
> > > poky/scripts/postinst-intercepts/update_mime_database
> > >
> > > echo "Updating MIME database... this may take a while."
> > > update-mime-database $D${mimedir}
> > >
> > > By adding a similar logic I will get forward but with my build but
> > > that doesn't seem like the right solution. Also I just get some other
> > > issue related to a second intercept script update_desktop_database so
> > > to me it seems more like something is not correctly set up in the
> > > build. I am trying to understand how these intercept scripts are
> > > configured and why they are not working for my build. Any pointers on
> > > how to move forward would be much appreciated.
> > >
> > > BR
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#61786): https://lists.yoctoproject.org/g/yocto/mess=
age/61786
> > Mute This Topic: https://lists.yoctoproject.org/mt/102901287/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

