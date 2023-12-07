Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C246C10DCE
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 22:37:31 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web11.105882.1701988646999802474
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 14:37:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ElHGtFHH;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6d99c3a3a32so930211a34.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 14:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701988646; x=1702593446; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKFMcuSajn7qT0YhD15Pqst+cZHkeo4Y4maYEHlLgw4=;
        b=ElHGtFHHzXPrGUx0vGeaIMwm72J7spycwuzNADhE7syac7gshj+PY8m8h6yD3t8dP/
         5vCWoLdiKcb58DtJBPkysqFhvfZKTHXZSavZksI8m6jHoKl8GZasL+uqJqQrLxjYT70e
         WDj9M1KQMP73ElLaOvds1COasr8I70z20m6Csy9IreDZNeJXuMs/TpfK+ESAF67e6Ajt
         elRN3awbHpM9t5MCefg40ARXEbnrnsG2vPLHrRCT0plwP9f9WpzRpdRDtqW0dDlytgui
         DBsCW7JkbNmuiKM6q3oGue4UIdYDIT+G2BdQMBdoqgZK2GeM4GKyglrVWvNZGReb7GkZ
         nxDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701988646; x=1702593446;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SKFMcuSajn7qT0YhD15Pqst+cZHkeo4Y4maYEHlLgw4=;
        b=LqwzoIAD1tiLanIMgLzQCcZS6VbVxy0RvNXn6T2JTND7HS3xzihnp67BWuII6hQgxA
         WCEek6b6T+peGGqq+hOsytx1B4tMxeDccaCx865bEk60q6Ts2ktayCeUt+mQJs9WwnG/
         LFgYzYmaK3rNIKQbd8bB2AGScvabvRuxKd8EbTVYI+BITKu60GmMeG7MuT4/m+fwbNUI
         mD3VJcB8d/eQniruUtibHvJ5IiUUBfRF35vQk19WQWBUcAp3XeBxvNh3KVAXLJ2+vmzg
         VR3/sXSnPE6CdJ3+wUIUJWouLfoKPf6d0lKiMmntKitV71tOiw1lOFZNVMlvaF46XGkb
         ZkfQ==
X-Gm-Message-State: AOJu0YwmFpShIL26WGiJOovFJ/0BHke2smI8DwB5EV/+nx9YcDGAkM17
	ox2ul2+VH3H4eiB9x/tQHUg9fMI/Rz7k4+QKCrw=
X-Google-Smtp-Source: AGHT+IEpG63pAv9LtoQ6JtSz6TnBFH/qJMd9fCd0OlziDDsLU1tvI9bNewm6Niwh6Ou2MGwqKnUTnUSA9dPqOjUJ8ms=
X-Received: by 2002:a05:6870:b246:b0:1fb:75a:7792 with SMTP id
 b6-20020a056870b24600b001fb075a7792mr3171775oam.67.1701988646058; Thu, 07 Dec
 2023 14:37:26 -0800 (PST)
MIME-Version: 1.0
References: <CADjezmYYxWD8YgFKQyboDhbO7V8OXrzHm5_N+aOJvjxth53btQ@mail.gmail.com>
 <35CEFCFD-4EFF-4EEE-A151-132DBF65E58D@arm.com>
In-Reply-To: <35CEFCFD-4EFF-4EEE-A151-132DBF65E58D@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Dec 2023 14:37:00 -0800
Message-ID: <CAMKF1spaN_MxCUui0JdAqV2qbuawuyEdkp0NEUoUuudmttnYAQ@mail.gmail.com>
Subject: Re: [yocto] initramfs creation
To: Ross Burton <ross.burton@arm.com>
Cc: "mattwood2000@gmail.com" <mattwood2000@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 22:37:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61834

On Thu, Dec 7, 2023 at 3:04=E2=80=AFAM Ross Burton <ross.burton@arm.com> wr=
ote:
>
> On 6 Dec 2023, at 21:47, mattwood2000 via lists.yoctoproject.org <mattwoo=
d2000=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> >  Hi,
> >
> > I'm trying to create a custom initramfs to handle some things before sw=
itching root to my actual filesystem.  I followed the docs and have been ab=
le to use INITRAMFS_IMAGE =3D "custom-image" and INITRAMFS_IMAGE_BUNDLE =3D=
 "1" to generate a zImage for my ARM platform.
> >
> > The custom-image.bb recipe is based on the core-image-minimal-initramfs=
 recipe and is in a meta-layer that has another image recipe for the actual=
 eMMC filesystem image.  Both the eMMC image and initramfs bundle are creat=
ed.
> >
> > In custom-image.bb, PACKAGE_INSTALL includes INITRAMFS_SCRIPTS which se=
em to be geared towards live-image things but that's not what I want.
> >
> > The image boots but hangs waiting for removable media.  I figured out t=
hat /init is not pointing to systemd but the live-image script from recipes=
-core/initrdscripts.
>
> The problem is most likely that your kernel is missing eMMC drivers.  The=
y=E2=80=99re most likely built as kernel modules, but you didn=E2=80=99t in=
stall the modules into the initramfs.  One easy fix is to just add kernel-m=
odules to your initramfs.

Right, this is how we tame bbb to include some USB drivers into kernel
proper so that we can read the USB stick in initramfs

https://github.com/YoeDistro/yoe-distro/blob/master/sources/meta-yoe/dynami=
c-layers/meta-ti/recipes-kernel/linux/files/updater.cfg

>
> I do have some tweaks to the initramfs images to post, but they=E2=80=99r=
e not quite ready yet. You can see the WIP in poky-contrib:ross/genericarm6=
4.
>
> Ross
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61824): https://lists.yoctoproject.org/g/yocto/messag=
e/61824
> Mute This Topic: https://lists.yoctoproject.org/mt/103022933/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/6692173/1997914=
/1837948400/xyzzy [raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

