Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD46C00140
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 09:46:27 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.23575.1659951978765190977
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 02:46:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QRwJXV97;
 spf=pass (domain: gmail.com, ip: 209.85.167.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id z25so11901060lfr.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 02:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=zsVR6invznLm4rXDxxVScHJplO0crmfTC91oscDN9aQ=;
        b=QRwJXV97InAd7ie5A/t1WZdxyCy6ilv7EnRb9bBiqjwYAo24tyAOibukRD5ST5w/0o
         uX8e7wj718qb3aYew1gLM7wgCHkKpvsAFFSJ92t1A3KAZoKur0Jwne+9E3R+ZUfmVnjL
         TJnBgyz/L/+u1az8DdptWuncqo88Oz6+vO3bPtsMWN6IpRsVebFeHwlid6s5322keDOW
         h9QAvl/kkexppxpfP10r5B38XA0QMGbck36evArr49pnu5lpRxp8tG4mwY6yht6TwIMk
         9m9KGn46BHcKr8amVh6nOSfen8yJ3aVWSl6lAYu5TCBAjIzx9604tVhwWdgm/mpwSGDG
         trxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=zsVR6invznLm4rXDxxVScHJplO0crmfTC91oscDN9aQ=;
        b=sV0SuzMnA1ChjYAF0BjM9OYScawktnjhQeMiQnsmfN7eOmJ8ZCvKf7mtKVRO8YHav2
         8KFcUNoaPEhDOWG/09O4USBJAI4ffwsxX5lcpEqF5/lIVLwNaBsuMIeF4CmANH96+leU
         5y6v2U9+e8predJBnWsjwkLMTGYoGjHvTeARXeo1GruFjDQO1wtqMebZFd8Khp3oRxCJ
         qvFYOAas9exsv405MM6plnRQ5uSwlT7s3wZH4SzckZsRNnm6vIeZI9RhJJVNpdPDDUJE
         E2vlxblAzMPQ8O8eyT2x7Bkz026fOe7R2d67aq1Z6+ZBwUfVD1NvE3+zGQf8sYajYhni
         uRZg==
X-Gm-Message-State: ACgBeo1SGoqEdf7CoS+PnYUk1G7In89zoTGm6cFp78Pa3vhcQUO0SByh
	is2tq0pBB8KiA56LTheVgbcV+Xp8UAtK/dSOR30=
X-Google-Smtp-Source: 
 AA6agR68efYt9BLju/+FCR/XKDXs0HjYsr0rdJZU6hj0qqcbrYZT/bM68Ml5e6pi6eYDMXm/5PY4Y9BPdeSNhSfqpL0=
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id
 p36-20020a05651213a400b004793b9ff13cmr5796703lfa.380.1659951976576; Mon, 08
 Aug 2022 02:46:16 -0700 (PDT)
MIME-Version: 1.0
References: <3Av7.1659951410541343611.uFIT@lists.yoctoproject.org>
In-Reply-To: <3Av7.1659951410541343611.uFIT@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 8 Aug 2022 11:46:05 +0200
Message-ID: 
 <CANNYZj80-FP2O-Zz-VoEyLRza+OS++s2N61uX6-SedC2StTXjQ@mail.gmail.com>
Subject: Re: [yocto] Getting Error while trying to run graphical yocto build
 image #dunfell #qemu #yocto #linux
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 09:46:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57798

You need to run runqemu inside a graphical X11 session (we do not
support pure wayland yet). Alternatively, use 'publicvnc' parameter,
and connect with a vnc client (e.g. tigervnc) to port 5900 on the
machine where runqemu runs.

Alex

On Mon, 8 Aug 2022 at 11:36, Nikita Gupta <nikitagupta2509@gmail.com> wrote=
:
>
> Hello Everyone here,
> I want to run the graphic image of qemux86-64 which I have built with yoc=
to. When I am running command "runqemu qemux86-64" or "runqemu" or "runqemu=
 core-image-minimal" I am getting the following error.
>
> nikita@ubuntu:~/yocto/poky/build$ runqemu qemux86-64
> runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
> runqemu - INFO - Continuing with the following parameters:
> KERNEL: [/home/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64/bzIma=
ge--5.4.205+gitAUTOINC+aaaf9f090d_8a59dfded8-r0-qemux86-64-20220803111012.b=
in]
> MACHINE: [qemux86-64]
> FSTYPE: [ext4]
> ROOTFS: [/home/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64/core-=
image-minimal-qemux86-64-20220803111012.rootfs.ext4]
> CONFFILE: [/home/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64/cor=
e-image-minimal-qemux86-64-20220803111012.qemuboot.conf]
>
> runqemu - INFO - Setting up tap interface under sudo
> [sudo] password for nikita:
> runqemu - INFO - Network configuration: ip=3D192.168.7.2::192.168.7.1:255=
.255.255.0
> runqemu - INFO - Running /home/nikita/yocto/poky/build/tmp/work/x86_64-li=
nux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-x86=
_64 -device virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev ta=
p,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive file=3D/home/n=
ikita/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemu=
x86-64-20220803111012.rootfs.ext4,if=3Dvirtio,format=3Draw -show-cursor -us=
b -device usb-tablet -object rng-random,filename=3D/dev/urandom,id=3Drng0 -=
device virtio-rng-pci,rng=3Drng0   -cpu core2duo -m 256 -serial mon:vc -ser=
ial null -kernel /home/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64=
/bzImage--5.4.205+gitAUTOINC+aaaf9f090d_8a59dfded8-r0-qemux86-64-2022080311=
1012.bin -append 'root=3D/dev/vda rw  mem=3D256M ip=3D192.168.7.2::192.168.=
7.1:255.255.255.0 oprofile.timer=3D1 '
>
> runqemu - ERROR - Failed to run qemu: Could not initialize SDL(x11 not av=
ailable) - exiting
>
> runqemu - INFO - Cleaning up
> Set 'tap0' nonpersistent
>
> Only solution I found on internet that i should run nographic image for t=
his which has worked fine for me but my requirement is graphic image for th=
is. Help me to find the solution to run graphic image for this. Your replie=
s would be appreciated .
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57797): https://lists.yoctoproject.org/g/yocto/messag=
e/57797
> Mute This Topic: https://lists.yoctoproject.org/mt/92888433/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

