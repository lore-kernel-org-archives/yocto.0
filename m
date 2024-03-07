Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70B20C54798
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 23:49:13 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web10.8682.1709855346760952925
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 15:49:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=VxrQcKTf;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.222.50, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-7d5fce59261so1135294241.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 15:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1709855346; x=1710460146; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tM5/6Fs16liXQEU2NmlEP5wq80pa61zhkls/Q94CESI=;
        b=VxrQcKTfOXfuhTnecuhfsb6EuY3+Rn7wD+qGB1xwHfypFInahaKlU4qp+zzd7/Z8xD
         Lef5CNa221n/QOc/gYGzqP4rHCZ/EJjS62rNROhJBBOmDq3ItxJe54dsV8DeikcXAIoi
         w2PeBAkB7d+nk40B4DXkcPV8SVJcH0awy0FbdlNjZSZq0qrujcTXZLslj6UR5OvOjhsa
         1t92sUWuRjvffxdBzKFddqqSMr+CGY45FyvgVP2kQTOm8naGIcz51ePqQPFI9q2Z1+dQ
         dpmITle6ARDuXa4CAWi7WyK0hSmSITdaT7djD/Aq6Pp9iOCLIj/nIQQpaVVJROB9x3U6
         iGsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709855346; x=1710460146;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tM5/6Fs16liXQEU2NmlEP5wq80pa61zhkls/Q94CESI=;
        b=F5pUKFgmd553wtUDtKjqhQvkmoI6766n6obDwMVyzSCAWyqxWWS+2zwy/C7EUZ2B0D
         rU4ZHesCBMOI5HyWSfjQrd1UPm3+H+sPdQ94v13/H+jRZYI6TjhfCTLK4GvWIC5z6BNG
         0CuGLqyadPynvFHfqE2jsab3aor/+jn/oGWqsCbKUUl1iZtq1Nmo+EGJ87zrbWRyNx7Y
         LoDSb+0knhCecUx3QuYkQrk1rNfMsGN6JZn9DDSfbutlQJVCkmTYMdKWJvkrf973VvLl
         /QyIhmfAtCbGHt2CJxmvwfIX7vcYKxgR+oDWg9Gp7d6wxyiDWsdF85+rVIyWvepNERPd
         UQOQ==
X-Gm-Message-State: AOJu0YyQdv5pCZwA8x1qyK0BWIVssTG/vldoZjF7GJh21xpWhVFgiD9A
	jLGVWEaM9us09DOHb4OzUHNdYX32MmRVMxGyxW8Mws5cKZtwCfgt9PGGGmftBViSHTy/4uOi757
	OfPebu0yfelX7ZGp/AERsX6VPMYr8lVfntKmw6vBxpn+p1SfW
X-Google-Smtp-Source: AGHT+IHwyhecPfwHmCsPDnliyxPlZ2lz4HLmlH9rKNsOqRTPjGHVCBM24j0vO2UrIMiHr3SuStMo8VyClS8Mw8VhOZc=
X-Received: by 2002:a1f:eec2:0:b0:4ca:4a07:9006 with SMTP id
 m185-20020a1feec2000000b004ca4a079006mr8562766vkh.0.1709855345465; Thu, 07
 Mar 2024 15:49:05 -0800 (PST)
MIME-Version: 1.0
References: <CANuMBWGDdwq70dyAhb2pbWZ+Dct+iKxcWOfGpY+RZE+qRksQ6Q@mail.gmail.com>
 <b18d00a6d89df69eca3d542e167e9f5c4e7d3853.camel@linuxfoundation.org>
In-Reply-To: <b18d00a6d89df69eca3d542e167e9f5c4e7d3853.camel@linuxfoundation.org>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Fri, 8 Mar 2024 12:48:54 +1300
Message-ID: <CANuMBWGoL_ZcmNP0OvZ+75Kt9uwy0jsRb2w4VuT9oXLHBB7U2A@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Quick Build - qemu
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007bfaf306131ab8a9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 23:49:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62703

--0000000000007bfaf306131ab8a9
Content-Type: text/plain; charset="UTF-8"

>
> > What I see in my terminal is:
> >
> > runqemu - INFO - Running MACHINE=qemux86-64 bitbake -e  ...
> > runqemu - INFO - Continuing with the following parameters:
> > KERNEL: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage]
> > MACHINE: [qemux86-64]
> > FSTYPE: [ext4]
> > ROOTFS:
> [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.rootfs-20240307220730.ext4]
> > CONFFILE:
> [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.rootfs-20240307220730.qemuboot.conf]
> >
> > runqemu - INFO - Using preconfigured tap device tap0
> > runqemu - INFO - If this is not intended, touch
> /tmp/qemu-tap-locks/tap0.skip to make runqemu skip tap0.
> > runqemu - INFO - Network configuration: ip=192.168.7.2::192.168.7.1
> :255.255.255.0::eth0:off:8.8.8.8 net.ifnames=0
> > runqemu - INFO - Running
> /home/yocto/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0/recipe-sysroot-native/usr/bin/qemu-system-x86_64
> -device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
> tap,id=net0,ifname=tap0,script=no,downscript=no -object
> rng-random,filename=/dev/urandom,id=rng0 -device virtio-rng-pci,rng=rng0
> -drive
> file=/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.rootfs-20240307220730.ext4,if=virtio,format=raw
> -usb -device usb-tablet -usb -device usb-kbd   -cpu IvyBridge -machine
> q35,i8042=off -smp 4 -m 512 -serial mon:vc -serial null -device virtio-vga
>  -display sdl,show-cursor=on  -kernel
> /home/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage -append
> 'root=/dev/vda rw  ip=192.168.7.2::192.168.7.1:255.255.255.0::eth0:off:8.8.8.8
> net.ifnames=0 oprofile.timer=1 tsc=reliable no_timer_check
> rcupdate.rcu_expedited=1 swiotlb=0 '
> >
> > runqemu - INFO - Host uptime: 3820.75
>
> You should be able to ssh to root@192.168.7.2
>
>
I see!  I have built the wrong build?  "sato" is a mobile build, does it
include a SSH server?

Worik

--0000000000007bfaf306131ab8a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; <br>
&gt; What I see in my terminal is:<br>
&gt; <br>
&gt; runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e =C2=A0...<br>
&gt; runqemu - INFO - Continuing with the following parameters:<br>
&gt; KERNEL: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage]<=
br>
&gt; MACHINE: [qemux86-64]<br>
&gt; FSTYPE: [ext4]<br>
&gt; ROOTFS: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-imag=
e-sato-qemux86-64.rootfs-20240307220730.ext4]<br>
&gt; CONFFILE: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-im=
age-sato-qemux86-64.rootfs-20240307220730.qemuboot.conf]<br>
&gt; <br>
&gt; runqemu - INFO - Using preconfigured tap device tap0<br>
&gt; runqemu - INFO - If this is not intended, touch /tmp/qemu-tap-locks/ta=
p0.skip to make runqemu skip tap0.<br>
&gt; runqemu - INFO - Network configuration: ip=3D<a href=3D"http://192.168=
.7.2">192.168.7.2</a>::<a href=3D"http://192.168.7.1" target=3D"_blank">192=
.168.7.1</a>:255.255.255.0::eth0:off:8.8.8.8 net.ifnames=3D0<br>
&gt; runqemu - INFO - Running /home/yocto/poky/build/tmp/work/x86_64-linux/=
qemu-helper-native/1.0/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -de=
vice virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3D=
net0,ifname=3Dtap0,script=3Dno,downscript=3Dno -object rng-random,filename=
=3D/dev/urandom,id=3Drng0 -device virtio-rng-pci,rng=3Drng0 -drive file=3D/=
home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-=
64.rootfs-20240307220730.ext4,if=3Dvirtio,format=3Draw -usb -device usb-tab=
let -usb -device usb-kbd =C2=A0 -cpu IvyBridge -machine q35,i8042=3Doff -sm=
p 4 -m 512 -serial mon:vc -serial null -device virtio-vga =C2=A0-display sd=
l,show-cursor=3Don =C2=A0-kernel /home/yocto/poky/build/tmp/deploy/images/q=
emux86-64/bzImage -append &#39;root=3D/dev/vda rw =C2=A0ip=3D<a href=3D"htt=
p://192.168.7.2">192.168.7.2</a>::<a href=3D"http://192.168.7.1" target=3D"=
_blank">192.168.7.1</a>:255.255.255.0::eth0:off:8.8.8.8 net.ifnames=3D0 opr=
ofile.timer=3D1 tsc=3Dreliable no_timer_check rcupdate.rcu_expedited=3D1 sw=
iotlb=3D0 &#39;<br>
&gt; <br>
&gt; runqemu - INFO - Host uptime: 3820.75<br>
<br>
You should be able to ssh to <a href=3D"mailto:root@192.168.7.2" target=3D"=
_blank">root@192.168.7.2</a><br>
<br></blockquote><div><br></div><div>I see!=C2=A0 I have built the wrong bu=
ild?=C2=A0 &quot;sato&quot; is a mobile build, does it include a SSH server=
?</div><div><br></div><div>Worik <br></div></div></div>

--0000000000007bfaf306131ab8a9--

