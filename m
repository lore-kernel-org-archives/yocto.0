Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8926FCF9C71
	for <webhook@archiver.kernel.org>; Mon, 23 Sep 2024 17:49:47 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
 by mx.groups.io with SMTP id smtpd.web10.1021.1727113784222585905
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Sep 2024 10:49:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VopFes3K;
 spf=pass (domain: gmail.com, ip: 209.85.210.46, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-71116d8504bso2790736a34.3
        for <yocto@lists.yoctoproject.org>; Mon, 23 Sep 2024 10:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727113783; x=1727718583; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xMvotIcPUUBO8mnaL/E0oMrCUe0cIsSBITEfgewrAQg=;
        b=VopFes3KoLLFYAItNYYbnRtu07PwhcutLJ+ve2u2eiXZbpNt87YCA3j4GEFztnTyZL
         xJ+6alpfahJTps94wZvaUBgOSkkCBSfkWeck+72KAUiLxSADpA06OqvQ4odOiDq43Pny
         JAu2GyaFbhnfD14phKuYMocOaisfeo4a1TWDmx2B5GVwzsFOJKiwD3z/g88d9DroVaTX
         xWyJs8iObuX3WvAd8zIuJ4GYDVuOFRrDROkvXrgClQdPVwcoCvOZ0EHozJbQKPdgFot7
         gKiJww42gVTvT96Dy7z20ggfIH8MnMM3A5ltzrA7kin5mznRaoX/iI9CjP86dRfII5Wi
         9bCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727113783; x=1727718583;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xMvotIcPUUBO8mnaL/E0oMrCUe0cIsSBITEfgewrAQg=;
        b=LkwPHLxbk0Xh1EMKxyZf6RM9xrZuQTFbmQsZrYV6fWuuffrOkduEzMhIaPGxvf81DZ
         k3GFUzU1zVSWw6vBA2ESiIozQaPMaBVJghVYg3/0DLMxMK4iK0Ok+WGie3bessLpRonI
         yKEREeP7dWgmIhec7RJ6JidrYmJvWq4qQR4GLYUZ4ta64qSd0klDmlBcAyeto4z+zER0
         NDaDgJPC5L7TTzuCF1wxpbh5WxhaVKA0WYPGJwMMOXIhIqGH04tlZMwYn5DCjEBegdw3
         m76H6rEOdSSS6pb0qScz/xPmRNFBDZ6YUw+SRp8hQCiiLG+U2lFe8wOuoppo2iyCiarQ
         mfdQ==
X-Gm-Message-State: AOJu0YxR5NtxLCHTjwngdIIT2+hFrKxgD0gLxsilh8EwwCOVgH/D7pZ/
	lnQMdPiEGXQs9qTv5vEMfkZbxx1uxRriI6cxkrIYhuHz6osG9CDxKWc9hX6vl32GAiyKD03z5PX
	FEem4DuqxAobYshx0gQAc8aoa7oTM3+NzWOw=
X-Google-Smtp-Source: AGHT+IGkEMiuG6TCa93XubsfCagcZ0IMn7ieS0Nngebx//FxhBFOmm82r1Zlyp24HHx6M5wyG+D3o+RLvRVQcfEVlCo=
X-Received: by 2002:a05:6830:2589:b0:710:e080:eb1d with SMTP id
 46e09a7af769-7139247eba0mr8178259a34.30.1727113783132; Mon, 23 Sep 2024
 10:49:43 -0700 (PDT)
MIME-Version: 1.0
References: <SbHz.1727064209194627940.DtRb@lists.yoctoproject.org>
In-Reply-To: <SbHz.1727064209194627940.DtRb@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 23 Sep 2024 10:49:16 -0700
Message-ID: <CAMKF1spTOUm3cKrJ9f6X_KQT1QBMDcVY_BrWGrvsY-4+s3jV2g@mail.gmail.com>
Subject: Re: [yocto] Issue with
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Sep 2024 17:49:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63878

On Sun, Sep 22, 2024 at 9:03=E2=80=AFPM sateesh m via lists.yoctoproject.or=
g
<sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Team,
>
> I am facing issue as mentioned below. its very important to me can anyone=
 respond immediate basis to solve issue as mentioned below.
>
> WARNING: sota-image-1.0-r0 do_rootfs: Postinstall for package tx-init fai=
led with 1:
> ln -s /lib/systemd/system/tx-init.service /home/z0254762/transics/sota/oe=
/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-=
linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.target=
.wants/tx-init.service
> ln -s /lib/systemd/system/tx-appfs-setup.service /home/z0254762/transics/=
sota/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sot=
a-ostl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user=
.target.wants/tx-appfs-setup.service
> ln -s /lib/systemd/system/tx-usb-pwr.service /home/z0254762/transics/sota=
/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-os=
tl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.tar=
get.wants/tx-usb-pwr.service
> ln -s /lib/systemd/system/tx-hostname.service /home/z0254762/transics/sot=
a/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-o=
stl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.ta=
rget.wants/tx-hostname.service
> ln -s /lib/systemd/system/tx-comport.service /home/z0254762/transics/sota=
/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-os=
tl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.tar=
get.wants/tx-comport.service
> ln -s /lib/systemd/system/tx-app.service /home/z0254762/transics/sota/oe/=
build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-l=
inux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.target.=
wants/tx-app.service
> Traceback (most recent call last):
>   File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13=
-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/re=
cipe-sysroot-native/usr/bin/systemctl", line 348, in <module>
>     main()
>   File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13=
-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/re=
cipe-sysroot-native/usr/bin/systemctl", line 334, in main
>     SystemdUnit(root, service).enable()
>   File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13=
-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/re=
cipe-sysroot-native/usr/bin/systemctl", line 219, in enable
>     config =3D SystemdFile(self.root, path, instance_unit_name)
>   File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13=
-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/re=
cipe-sysroot-native/usr/bin/systemctl", line 31, in __init__
>     self._parse(root, path)
>   File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13=
-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/re=
cipe-sysroot-native/usr/bin/systemctl", line 81, in _parse
>     if k not in section:
> TypeError: argument of type 'NoneType' is not iterable
> ERROR: sota-image-1.0-r0 do_rootfs: Postinstall scriptlets of ['tx-init']=
 have failed. If the intention is to defer them to first boot,

You might want to look into the tx-init recipe and see what it is doing per=
haps
SYSTEMD_SERVICE:${PN} is not set properly and also look into
SYSTEMD_AUTO_ENABLE settings for this recipe. Without sources we can
only guess what might
be going on.

> then please place them into pkg_postinst_ontarget:${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in /home/z0254762/transics/sota/oe/build-opens=
tlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueab=
i/sota-image/1.0-r0/temp/log.do_rootfs.
> ERROR: Logfile of failure stored in: /home/z0254762/transics/sota/oe/buil=
d-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux=
-gnueabi/sota-image/1.0-r0/temp/log.do_rootfs.2043283
> ERROR: Task (/home/z0254762/transics/sota/oe/layers/meta-tx-sota/recipes-=
core/sota/sota-image.bb:do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4961 tasks of which 4947 didn't need to be=
 rerun and 1 failed.
>
> Regards,
> Sateesh
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63876): https://lists.yoctoproject.org/g/yocto/messag=
e/63876
> Mute This Topic: https://lists.yoctoproject.org/mt/108602382/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

