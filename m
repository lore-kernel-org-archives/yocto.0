Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B74FC433FE
	for <webhook@archiver.kernel.org>; Thu,  3 Nov 2022 22:38:56 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.4989.1667515128719841442
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Nov 2022 15:38:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B1Bj2QdD;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id z14so4787278wrn.7
        for <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 15:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wBkWmr1VNUKFvFuZu8SvcmSHXkuxzDOH9FU2fHaeZS8=;
        b=B1Bj2QdDVpw8ukYe8qgW5p2KuOK8SG/NSFa10HRS0v//CWvTwzPy6LpwPmU0bcTVXQ
         De1i+7wGcR9YmPI2xVrwhbrrKLiKJjkuvuoWcBiQcUwGIL+EyFuKwCHy7pL8uzJX+/vt
         6NnNI05WG65v2QvCf4m/ACRHM2J91FH22RGJcs4SR6bfi9+eltyKp50WLyPuSA6GN+yN
         mwZKkdvuj9+eFZLAD+zYSOLSqWlvcR+GcGJqHq3u7KKnjBae6x5oiBsLLJWT3UbkxOai
         r/5c/LfUzovgcC/SKq+okxwTLmDhBqm+NmVhoqJ1k866S1XnkZKvzjlLC8bHt4Rm3NbW
         tEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wBkWmr1VNUKFvFuZu8SvcmSHXkuxzDOH9FU2fHaeZS8=;
        b=PFuXm/Jd3/pj5aWBlnn/86axGYedsE/SpIm1L3oeUy6C+Wzagvgr81Af5dePyYNFZp
         LNOMhbtP+cVXlaCnZAjyAUku90kAD9tNEV+1W2m/COO5oLlriUeWM6po19CNIYpuvHUb
         TLIFenEGldhcqAFq7haXe2MjycKpGSLwj5rKnC89r0sWKiFk2q6Wan/yBw+0Q3j4HD2h
         A243mY77HJB1hDBmT80kfD8XNMmf/Z/vi98A0JqxC/GvtF/ZmUqXcHrSEA2wj3YF1Yfa
         4BeFbF0EAnEhziFj5HDeqsged39Uz36NnR1pOobNj7+dThOITT+/RebSkabfWyOk4THb
         3RTg==
X-Gm-Message-State: ACrzQf2bUOZFy1F3PFdlo7JC7wd1+ZFHzOiCPaVI2Q8uaQIu8cWxbyyD
	FWaY0CQAcxRnat4hVgRO/K3pddBrA4/Hm0ACI3c=
X-Google-Smtp-Source: AMsMyM5sFawBRU+VZk6zfeRI88DgXgmVTrId3uggYJthRwd48o6RRlhhYoErsjXwoLjx34SfT0xyOB+HBk2CXhICDio=
X-Received: by 2002:a05:6000:110b:b0:236:c717:5015 with SMTP id
 z11-20020a056000110b00b00236c7175015mr17044720wrw.439.1667515126863; Thu, 03
 Nov 2022 15:38:46 -0700 (PDT)
MIME-Version: 1.0
References: <ITuf.1667394064506458738.tJSH@lists.yoctoproject.org>
In-Reply-To: <ITuf.1667394064506458738.tJSH@lists.yoctoproject.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 3 Nov 2022 23:38:35 +0100
Message-ID: <CAGAf8LyhunVRKcPoq51Gttp20H_i8CYWHT8e3TFSXVP4rf8DBQ@mail.gmail.com>
Subject: Re: [yocto] #dunfell
To: Frederic Martinsons <frederic.martinsons@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 22:38:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58481

>>> - for imageType in ${KERNEL_IMAGETYPES} ; do
>>> + for imageType in ${KERNEL_IMAGETYPE_FOR_MAKE} ; do

Interesting... What is the difference between variables
${KERNEL_IMAGETYPES} and ${KERNEL_IMAGETYPE_FOR_MAKE} ?

Zee
_______

On Thu, Nov 3, 2022 at 5:24 PM Frederic Martinsons
<frederic.martinsons@gmail.com> wrote:
>
> Hello, I'm currently migrating our system from warrior to dunfell and I h=
ave an issue on fitImage support for aarch64 architecture. We use KERNEL_IM=
AGETYPE =3D "fitImage" and INITRAMFS_IMAGE_BUNDLE =3D "1" in our configurat=
ion and the kernel do_deploy steps failed on not finding the initramfs file=
:
>
> ```
> | lib/modules/4.19.255-rt113-sigfox/kernel/drivers/usb/serial/usb_wwan.ko
> | lib/modules/4.19.255-rt113-sigfox/kernel/drivers/usb/serial/option.ko
> | lib/modules/4.19.255-rt113-sigfox/kernel/drivers/usb/class/
> | lib/modules/4.19.255-rt113-sigfox/kernel/drivers/usb/class/cdc-wdm.ko
> | lib/modules/4.19.255-rt113-sigfox/modules.order
> | lib/modules/4.19.255-rt113-sigfox/modules.builtin
> | install: cannot stat 'arch/arm64/boot/Image.initramfs': No such file or=
 directory
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/home/fmartinsons/TAPOS_build_for_dunfell/build-ta=
pos/tmp/work/a3700-tapos-linux/linux-sbs/4.19.255+gitAUTOINC+5c7ccbe1aa-r4.=
17.1.1/temp/run.do_deploy.1460182' failed with exit code 1
> ```
>
> Doing some more research, I found that the problem came from this change =
https://git.openembedded.org/openembedded-core/commit/?id=3D526bdd88ccd7582=
04452579333ba188e29270bde , I found a commit introduced in kirkstone that f=
ix my issue (at least the part which revert the previous commit): https://g=
it.openembedded.org/openembedded-core/commit/?id=3D10a4a132e87e835726bf5da8=
1a60f6f509b90765
>
> Can somebody know why the commit was not back-ported in dunfell ?
>
> Regards.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58476): https://lists.yoctoproject.org/g/yocto/messag=
e/58476
> Mute This Topic: https://lists.yoctoproject.org/mt/94774777/3618681
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavl=
jevic@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

