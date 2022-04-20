Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 826C8C47093
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:07 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web10.6362.1650453907954343566
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 04:25:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ftp0rIvo;
 spf=pass (domain: gmail.com, ip: 209.85.210.182,
 mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id z16so1662027pfh.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 04:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=t3THLa8X50xRBiOiVMiB0LKHVscMy7I6UKBHQ8eQk4M=;
        b=Ftp0rIvoZJfO2+L2oDs1UV5a4wQz4+trp/TDYybO4ru03wyzoZMpohEbdwAyG9xk2d
         1y90a9uonFByL46YCz2MI9R/lHMCgqsHxG17xg99gFS+rFHgRTf/631xkGrrCCpZrcAm
         ZhlTwL20mpbNZZRxV7AenCgKqe9huz9TehW/cxpyOXv8eOSQap2rUkf00gcw6RXP0zsW
         3hhNpku4H+Slbp4xy/mn2DobBcPkt24KCl7legqoRMjWD2kavMDGeHRw4vV5bZgfsH8m
         87dYhDR75DPfnDP7el9YnUJqP/1MLiP1gv12JTRyPQH2SroEmqsoMICiHFRoasHTvvbz
         w3ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=t3THLa8X50xRBiOiVMiB0LKHVscMy7I6UKBHQ8eQk4M=;
        b=5xlo2LFGGP6D3eXB6GztZV11wYOMf9g8c05X+tszuyXXdFevhG/P1T96oajbO2lPE7
         6NwnWuxWG/6QFCLfXTpwwXpxna48r5cmruOgJrkeedhJCqfeSHGff+b+WdwU4ETsLfgq
         zFVBYZIwNSG6KHxAe2G8S3FbwZaoePVlsN/+mooQBGF/KeygwltcQ2nlCUWzBSmwmvQ+
         2lkIa6JQrV5IFSsQv87JxaICH9mObHjz4Hl5//5taax23+QxoM3uI4WEoKbkpiJgvqIG
         OKEPDXydxSWPcf40UtJ4goM0smcSf0VMg+QcePwZS+QC75ku7swD51zdiwjaKvyVYxte
         9OUA==
X-Gm-Message-State: AOAM532tKa5rvtVmLg8ynU32zjXODjsIkUsV3UWcKq4abDNHT3X+pAZx
	u4DrvP+E4lf33A6vhZUylvzyB/H/SYZN7/B3Bng=
X-Google-Smtp-Source: 
 ABdhPJwZXc4qDELk+fILJ4Nap27uUsPX9YDA8Ubzasoduni0kqdY/lOG7Bn5lEpYVd5GY9OcpXDIagJORqozDuQIFI0=
X-Received: by 2002:a62:6411:0:b0:50a:81df:bfa6 with SMTP id
 y17-20020a626411000000b0050a81dfbfa6mr12887753pfb.26.1650453907245; Wed, 20
 Apr 2022 04:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <os3w.1650392842755290616.3ggG@lists.yoctoproject.org>
In-Reply-To: <os3w.1650392842755290616.3ggG@lists.yoctoproject.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 20 Apr 2022 13:24:56 +0200
Message-ID: 
 <CAGAf8LzgABCtZtdx5tNj0NXaqvUFDuc1Ca2_oTLJy=XqstxfKA@mail.gmail.com>
Subject: Re: [yocto] package and booting an initramfs image
To: toyonembedded@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56819

Please, read carefully thru this yocto @ thread.

https://www.yoctoproject.org/pipermail/yocto/2018-July/041680.html

Zee
_______

On Tue, Apr 19, 2022 at 8:27 PM <toyonembedded@gmail.com> wrote:
>
> I have a need to package my kernel, dtb, and rootfs manually and then boo=
t this as an initramfs. I'm not sure which files from the deploy/images dir=
ectory to use. I see there is an rootfs.cpio.gz file so I'm starting with t=
hat. If I unpack that I see the kernel Image and dtb in the /boot folder an=
d what appears to be a filesystem in the rest. If I try to boot this as my =
kernel in u-boot I get this
> Bad Linux ARM64 Image magic!
> ** No partition table - mmc 2 **
> ** No partition table - mmc 2 **
>
> Does this cpio.gz file have everything I need? How do I boot with it and =
enter an initramfs?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56813): https://lists.yoctoproject.org/g/yocto/messag=
e/56813
> Mute This Topic: https://lists.yoctoproject.org/mt/90568270/3618681
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavl=
jevic@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

