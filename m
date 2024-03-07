Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F799C54798
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 23:42:33 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.8570.1709854945737044814
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 15:42:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NKNTinxP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-33e6d364b7aso665904f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 15:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1709854944; x=1710459744; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eWTltLf5MCCsrp9DEtZYQnbZQKGzhM42JBc7cc8pjQI=;
        b=NKNTinxP7zoIazJ4rlvBnudO/gR9ISqeCQVyNHhULSofcTWGLbzF8TZ534+js9Zszp
         0Aa/Q/d/RxOokDaMCWO0X/FqAJwj9DFfFkBgcboYFs8YEOnpI72fha3zwTOeay6q9ufZ
         JoSmqnzysJlsJga3dYOTxJQQALnbrx9h4yHcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709854944; x=1710459744;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eWTltLf5MCCsrp9DEtZYQnbZQKGzhM42JBc7cc8pjQI=;
        b=bs412HGSMCfDpB16XjVCY5HtGUjE4kV0oWHHP3epJPZCPwcILsWesh5a1bfG6Rp5Aj
         yNf31QqSkpmVGZB1B8v9K1z218iYwPeQ9EnTaM2u/nXweifGi2wblAvNeSJXwdvT9xQw
         2j69KdcO9RbtRK0kchdkUpAPK4vMQvKW6Za4gIgZaX0MnF4NSLpRs+zGMN9vgYG410EL
         e3mbkTskNmep6n4VVAPOohy5E1l69gde4qq/lDLwexyoGdkd7iQoWvWJJegMqqrkp8RO
         QeprQNjxizfqRni1fq8H4wN6IUrjt+kykEeXtteOodxMXImUKNhFR7uk8KWaLGtyXCGl
         35UA==
X-Gm-Message-State: AOJu0Yy7Nez+GHuzGErlTBXYSbGOmu42EZ51/xyofE3unbNLWHcExDUm
	ZQaN92hqWjk5R0ASyY43Z/t2Tk9M6K3Gac1UODpBHw8RrJcOWtlEn3wHVKWap3koyr29dZKgbiQ
	6
X-Google-Smtp-Source: AGHT+IFPv3gMQrWN3UQ4VocagLwBkR6bhkrI9DJtHwAQzgHS1pspT+1bZcW4WB0dM+My2VfeEWvM2g==
X-Received: by 2002:adf:e811:0:b0:33e:17d:74ce with SMTP id o17-20020adfe811000000b0033e017d74cemr14306722wrm.6.1709854943626;
        Thu, 07 Mar 2024 15:42:23 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:fd0d:9fb:2ae8:5152? ([2001:8b0:aba:5f3c:fd0d:9fb:2ae8:5152])
        by smtp.gmail.com with ESMTPSA id cr11-20020a05600004eb00b0033dd2c3131fsm21112422wrb.65.2024.03.07.15.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 15:42:13 -0800 (PST)
Message-ID: <b18d00a6d89df69eca3d542e167e9f5c4e7d3853.camel@linuxfoundation.org>
Subject: Re: [yocto] Yocto Project Quick Build - qemu
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Date: Thu, 07 Mar 2024 23:42:09 +0000
In-Reply-To: <CANuMBWGDdwq70dyAhb2pbWZ+Dct+iKxcWOfGpY+RZE+qRksQ6Q@mail.gmail.com>
References: 
	<CANuMBWGDdwq70dyAhb2pbWZ+Dct+iKxcWOfGpY+RZE+qRksQ6Q@mail.gmail.com>
Autocrypt: addr=richard.purdie@linuxfoundation.org; prefer-encrypt=mutual; keydata=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
 YNvg==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 23:42:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62701

On Thu, 2024-03-07 at 15:06 -0800, Worik Stanton wrote:
> Friends
>=20
> I am starting from first principles and following=C2=A0Yocto Project Quic=
k Build.
>=20
> I am at the step:=C2=A0Simulate Your Image Using QEMU:
>=20
> I am unfamiliar with qemu.=C2=A0 But it has started up (I watched it spin=
 its wheels in top) but there is nothing to show for it.=20
>=20
> I am running in a Debian Bullseye LXC container as I have had trouble bui=
lding Yocto builds in Bookworm.=C2=A0 Was that a bad decision?=C2=A0=20
>=20
> I am unsure if I have failed or succeeded!
>=20
> What I see in my terminal is:
>=20
> runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e =C2=A0...
> runqemu - INFO - Continuing with the following parameters:
> KERNEL: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage]
> MACHINE: [qemux86-64]
> FSTYPE: [ext4]
> ROOTFS: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-s=
ato-qemux86-64.rootfs-20240307220730.ext4]
> CONFFILE: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image=
-sato-qemux86-64.rootfs-20240307220730.qemuboot.conf]
>=20
> runqemu - INFO - Using preconfigured tap device tap0
> runqemu - INFO - If this is not intended, touch /tmp/qemu-tap-locks/tap0.=
skip to make runqemu skip tap0.
> runqemu - INFO - Network configuration: ip=3D192.168.7.2::192.168.7.1:255=
.255.255.0::eth0:off:8.8.8.8 net.ifnames=3D0
> runqemu - INFO - Running /home/yocto/poky/build/tmp/work/x86_64-linux/qem=
u-helper-native/1.0/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -devic=
e virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet=
0,ifname=3Dtap0,script=3Dno,downscript=3Dno -object rng-random,filename=3D/=
dev/urandom,id=3Drng0 -device virtio-rng-pci,rng=3Drng0 -drive file=3D/home=
/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.r=
ootfs-20240307220730.ext4,if=3Dvirtio,format=3Draw -usb -device usb-tablet =
-usb -device usb-kbd =C2=A0 -cpu IvyBridge -machine q35,i8042=3Doff -smp 4 =
-m 512 -serial mon:vc -serial null -device virtio-vga =C2=A0-display sdl,sh=
ow-cursor=3Don =C2=A0-kernel /home/yocto/poky/build/tmp/deploy/images/qemux=
86-64/bzImage -append 'root=3D/dev/vda rw =C2=A0ip=3D192.168.7.2::192.168.7=
.1:255.255.255.0::eth0:off:8.8.8.8 net.ifnames=3D0 oprofile.timer=3D1 tsc=
=3Dreliable no_timer_check rcupdate.rcu_expedited=3D1 swiotlb=3D0 '
>=20
> runqemu - INFO - Host uptime: 3820.75

You should be able to ssh to root@192.168.7.2

Cheers,

Richard

