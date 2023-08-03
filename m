Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3797C04A6A
	for <webhook@archiver.kernel.org>; Thu,  3 Aug 2023 03:32:35 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web11.6770.1691033545742327952
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Aug 2023 20:32:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=TT0k9PmK;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-56c4c4e822eso306645eaf.3
        for <yocto@lists.yoctoproject.org>; Wed, 02 Aug 2023 20:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691033545; x=1691638345;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K7BbvjZBlo1Jeb/Yj9nfeqTC3/kONacykyz7+VVrc/g=;
        b=TT0k9PmKQXPa01txc2e5aPeMnF91zjVADqrZERMIJ72Bc4dl/z8fp+tZ/qebd52UXq
         RVqSguTvdSqRclJ3KbzKNSmGneldXV8WcPdmO/XUBntki7NWQcrz+wBKGSVAzF96uI27
         m2W/lbLLmuvPnb1ZdSdYKJeg8hymP/46Q7hQ0QW+sT2iYtRJx0H1Y+B5lc2P0MQjsVpF
         5NeMwNP667Hu+uwn3os3EwJhEkFPbQjD7inrpcYNqOFd8JM3+WBq7vMrGUaoHBmD0jmj
         iWBxA0UG/yoF1tCVoz/vfLBRPO/nVf/0MzZLRhb47/y5BKP7mIovXXgzioywAmawFQz1
         k6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691033545; x=1691638345;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K7BbvjZBlo1Jeb/Yj9nfeqTC3/kONacykyz7+VVrc/g=;
        b=WMR/q57ASR5z9Pdpgk9Z/a95GZjLKuYKxk/fXFuztnqnOjQm5ot8q2ewOiSVuvqDQz
         5VkEerJuU10zdrEh4rhD1IZKREY384V6gVrN8a+TyxnQ66pqmqBCpCp/hVUCgoLJ+bH7
         T6C3slV3kEKLB9VZaY7HjRyZwltpfTm3K+CKDWTKJpOaoJsOu6kyuLW9RcKmA3kg9ndd
         fYH65dEWIFtGwpBab///BkgJ+hD2uE69fSlK5+e+M+GVc11lAn2X1RZPknxHRak12bAW
         eW82JTw01TIoZzrbTmDx4cPd/2sysXa2crauKiVGZ+R0sMyfOvCxgU0nTI0PrKoMxbPB
         lKnQ==
X-Gm-Message-State: ABy/qLZtvzqqsZlk//tpor3kXPZ1wLlxDAadr5E5qg9CzlPCb6S1HMzh
	Xw/x6ovfXFEIj+JpCPsSVmwFcklaB1jsXpqMBzE=
X-Google-Smtp-Source: APBJJlEVj6OtVLooZEi1j6ccYroFsoS5Jv7HloesMMU88PmpQOVO7xL4ppGLIlDZAo2wNiA51+uOWvy+5wTOPn7p8vU=
X-Received: by 2002:a4a:9d14:0:b0:566:ec2f:36d0 with SMTP id
 w20-20020a4a9d14000000b00566ec2f36d0mr15281627ooj.2.1691033544793; Wed, 02
 Aug 2023 20:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <j9Ww.1691028425262426171.Vazg@lists.yoctoproject.org>
In-Reply-To: <j9Ww.1691028425262426171.Vazg@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Aug 2023 20:31:58 -0700
Message-ID: <CAMKF1sq+zfFZOsgO5wV_JoRbrkKGnHY9t40ByiKGhJWuyuUKZg@mail.gmail.com>
Subject: Re: [yocto] Yocto on Raspberry Pi 3: Error when building image from a
 machine conf in a new layer
To: Crane <crane2018@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 03:32:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60701

On Wed, Aug 2, 2023 at 7:07=E2=80=AFPM Crane <crane2018@gmail.com> wrote:
>
> Hello,
>
> I am using Yocto to build a image for Raspberry Pi 3. I don't see a speci=
fic group for RaspberryPi and hope to get help from here.
>
> I am using Kirkstone commit and didn't download meta-openembedded as it d=
oesn't say it is needed in README. And it works to build a image.
>
> Now I would like to add a new machine in the my customized layer to make =
some changes based on the original machine configuration.
> So I copied raspberrypi3.conf from meta-raspberrypi to my new layer first=
.
>
> But bitbake displays errors as below:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> crane@Ubuntu2204:~/yocto-pi/build$ bitbake -k farview-image-base
>
> Loading cache: 100% |####################################################=
#################################| Time: 0:00:00
>
> Loaded 657 entries from dependency cache.
>
> WARNING: /home/crane/yocto-pi/sources/poky/meta/recipes-extended/images/c=
ore-image-testcontroller.bb: Exception during build_dependencies for IMAGE_=
BOOT_FILES
>
> WARNING: /home/crane/yocto-pi/sources/poky/meta/recipes-extended/images/c=
ore-image-testcontroller.bb: Error during finalise of /home/crane/yocto-pi/=
sources/poky/meta/recipes-extended/images/core-image-testcontroller.bb
>
> ERROR: ExpansionError during parsing /home/crane/yocto-pi/sources/poky/me=
ta/recipes-extended/images/core-image-testcontroller.bb
>
> Traceback (most recent call last):
>
> File "Var <IMAGE_BOOT_FILES>", line 1, in <module>
>
> File "/home/crane/yocto-pi/sources/meta-raspberrypi/conf/machine/include/=
rpi-base.inc", line 134, in make_dtb_boot_files(d=3D<bb.data_smart.DataSmar=
t object at 0x7f4952f3d9c0>):
>
> > return ' '.join([transform(dtb) for dtb in alldtbs.split(' ') if dtb])
>
> bb.data_smart.ExpansionError: Failure expanding variable IMAGE_BOOT_FILES=
, expression was bootfiles/* ${@make_dtb_boot_files(d)} ${@bb.utils.contain=
s('RPI_USE_U_BOOT', '1', 'zImage u-boot.bin;kernel7.img boot.scr', 'zImage;=
kernel7.img', d)} which triggered exception TypeError: sequence item 61: ex=
pected str instance, NoneType found
>
> The variable dependency chain for the failure is: IMAGE_BOOT_FILES
>
> ERROR: Parsing halted due to errors, see error messages above
>
> Summary: There were 2 WARNING messages.
>
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>
> crane@Ubuntu2204:~/yocto-pi/build$
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> I don't understand why it tries to parse core-image-testcontroller.bb, wh=
ich I don't intentionally use at all.
> I am afraid that the process to create a new machine is not correct.
>
> Does anyone can help with understanding what is missing here? Or it is no=
t the correct way to create a new machine for raspberrypi?

What does your new machine conf looks like ?
Generally you do something like

MACHINEOVERRIDES =3D. "raspberrypi3:"
include conf/machine/raspberrypi3.conf

>
> Thanks!
> Crane
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60700): https://lists.yoctoproject.org/g/yocto/messag=
e/60700
> Mute This Topic: https://lists.yoctoproject.org/mt/100519055/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

