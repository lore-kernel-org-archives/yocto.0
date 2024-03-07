Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFDAFC54E4A
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 23:06:02 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web10.7761.1709852761927902585
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 15:06:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=p0d4tbvl;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.176, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4d37e76a3dfso1352432e0c.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 15:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1709852760; x=1710457560; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NoWiXJ/qiuPiTnnmTuo2FZZYHd1qHeWwndGBeXcdIcU=;
        b=p0d4tbvl9ueqyxuJ4luADWpxfYHg1lWRdNKqy422xopZCNqdsxf1DHcMb+AA27Ardg
         WcDCl09XnzPB5gCTciWubfjFcRefo3CdmzKw9nFr82qlcHghKlGQXJ6BSoeNYwEkGwvD
         CuHnsH31hpWC52f9eTPobglTIqvbTbk9DPl7u2WCvxFB1ZJeaRArCyIz8b++eCPp4Gy3
         LKaw3j+64qx60yza7rDzodZhbt/2VNl5HEI2u1XONqeUbtjgW6Zz/trU4cmPt6fKadsF
         TEW4JrMw041rH0hc4QPhxh5F+KJs6oaeRvyWB+/SrlOjgaJC92XPzerm1Q23jejfFvW+
         6n1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709852760; x=1710457560;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NoWiXJ/qiuPiTnnmTuo2FZZYHd1qHeWwndGBeXcdIcU=;
        b=dXCiLChbuoafKFKV5SwW/cqDs6qOnoyKdQCBmroSyJWY/G99goi/mGORLU92k+d9JI
         Cjw1TZayIwdWT+DcWgZSUSdrjOnkwuzplXn7jo9Vfo10sVhkA9oVWPiXoYu4ErD00U2I
         XcNrvbVv7OO1rixOnJCpn5PMrUPwl9MbEHnOgcA13rIr/s/IfbxoqDKwmsZCMG8ahHRP
         AfXD5vIaEbZieMzrQpXwDzFWhQSl5hrpOJdTZCV4KV096iAIZu+JMfhtLI3eI6XcBKMe
         h38dJ6Bgwp/CpwZGrDZjhUqEBj/XvBhVlKz+SdPnGoZ8NQvNGoP635YjLTPxHgHKZZk9
         jHCQ==
X-Gm-Message-State: AOJu0YzLK2QUD0eKVY++mlIZseXgRfk/IwvyjIJsSH1hm9o/OVm+U9hL
	0WKNLScwoV/GxAutG5Da8aOakoTCUY+LB+uizrA3+EMyJPAgTUbGUlJylsb61qp8U+Q4MaKaAly
	Hn0QAX52+VV31t+tW7tgQZInFK9XUuVQEQ9v9oPrVeHLF7yew8gI=
X-Google-Smtp-Source: AGHT+IHEsaXH754lrzWkmtNFDJ65QBhHZfp7cN5jQY6w5IYR3QZULRsyGw2/YZTpKIjruVoO1L8km7X5RwFx3DokF8A=
X-Received: by 2002:a05:6122:1aad:b0:4c9:6628:be66 with SMTP id
 dz13-20020a0561221aad00b004c96628be66mr2107238vkb.5.1709852760297; Thu, 07
 Mar 2024 15:06:00 -0800 (PST)
MIME-Version: 1.0
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Fri, 8 Mar 2024 12:05:49 +1300
Message-ID: <CANuMBWGDdwq70dyAhb2pbWZ+Dct+iKxcWOfGpY+RZE+qRksQ6Q@mail.gmail.com>
Subject: Yocto Project Quick Build - qemu
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000065731006131a1e74"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 23:06:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62700

--00000000000065731006131a1e74
Content-Type: text/plain; charset="UTF-8"

Friends

I am starting from first principles and following Yocto Project Quick Build.

I am at the step: Simulate Your Image Using QEMU:

I am unfamiliar with qemu.  But it has started up (I watched it spin its
wheels in top) but there is nothing to show for it.

I am running in a Debian Bullseye LXC container as I have had trouble
building Yocto builds in Bookworm.  Was that a bad decision?

I am unsure if I have failed or succeeded!

What I see in my terminal is:

runqemu - INFO - Running MACHINE=qemux86-64 bitbake -e  ...
runqemu - INFO - Continuing with the following parameters:
KERNEL: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage]
MACHINE: [qemux86-64]
FSTYPE: [ext4]
ROOTFS:
[/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.rootfs-20240307220730.ext4]
CONFFILE:
[/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.rootfs-20240307220730.qemuboot.conf]

runqemu - INFO - Using preconfigured tap device tap0
runqemu - INFO - If this is not intended, touch
/tmp/qemu-tap-locks/tap0.skip to make runqemu skip tap0.
runqemu - INFO - Network configuration:
ip=192.168.7.2::192.168.7.1:255.255.255.0::eth0:off:8.8.8.8
net.ifnames=0
runqemu - INFO - Running
/home/yocto/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0/recipe-sysroot-native/usr/bin/qemu-system-x86_64
-device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
tap,id=net0,ifname=tap0,script=no,downscript=no -object
rng-random,filename=/dev/urandom,id=rng0 -device virtio-rng-pci,rng=rng0
-drive
file=/home/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.rootfs-20240307220730.ext4,if=virtio,format=raw
-usb -device usb-tablet -usb -device usb-kbd   -cpu IvyBridge -machine
q35,i8042=off -smp 4 -m 512 -serial mon:vc -serial null -device virtio-vga
 -display sdl,show-cursor=on  -kernel
/home/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage -append
'root=/dev/vda rw  ip=192.168.7.2::192.168.7.1:255.255.255.0::eth0:off:8.8.8.8
net.ifnames=0 oprofile.timer=1 tsc=reliable no_timer_check
rcupdate.rcu_expedited=1 swiotlb=0 '

runqemu - INFO - Host uptime: 3820.75

--00000000000065731006131a1e74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Friends</div><div><br></div><div>I am starting from f=
irst principles and following=C2=A0Yocto Project Quick Build.</div><div><br=
></div><div>I am at the step:=C2=A0Simulate Your Image Using QEMU:</div><di=
v><br></div><div>I am unfamiliar with qemu.=C2=A0 But it has started up (I =
watched it spin its wheels in top) but there is nothing to show for it. <br=
></div><div><br></div><div>I am running in a Debian Bullseye LXC container =
as I have had trouble building Yocto builds in Bookworm.=C2=A0 Was that a b=
ad decision?=C2=A0 <br></div><div><br></div><div>I am unsure if I have fail=
ed or succeeded!<br></div><div><br></div><div>What I see in my terminal is:=
</div><div><br></div><div>runqemu - INFO - Running MACHINE=3Dqemux86-64 bit=
bake -e =C2=A0...<br>runqemu - INFO - Continuing with the following paramet=
ers:<br>KERNEL: [/home/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImag=
e]<br>MACHINE: [qemux86-64]<br>FSTYPE: [ext4]<br>ROOTFS: [/home/yocto/poky/=
build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.rootfs-202403=
07220730.ext4]<br>CONFFILE: [/home/yocto/poky/build/tmp/deploy/images/qemux=
86-64/core-image-sato-qemux86-64.rootfs-20240307220730.qemuboot.conf]<br><b=
r>runqemu - INFO - Using preconfigured tap device tap0<br>runqemu - INFO - =
If this is not intended, touch /tmp/qemu-tap-locks/tap0.skip to make runqem=
u skip tap0.<br>runqemu - INFO - Network configuration: ip=3D192.168.7.2::1=
92.168.7.1:255.255.255.0::eth0:off:8.8.8.8 net.ifnames=3D0<br>runqemu - INF=
O - Running /home/yocto/poky/build/tmp/work/x86_64-linux/qemu-helper-native=
/1.0/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -device virtio-net-pc=
i,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0=
,script=3Dno,downscript=3Dno -object rng-random,filename=3D/dev/urandom,id=
=3Drng0 -device virtio-rng-pci,rng=3Drng0 -drive file=3D/home/yocto/poky/bu=
ild/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64.rootfs-20240307=
220730.ext4,if=3Dvirtio,format=3Draw -usb -device usb-tablet -usb -device u=
sb-kbd =C2=A0 -cpu IvyBridge -machine q35,i8042=3Doff -smp 4 -m 512 -serial=
 mon:vc -serial null -device virtio-vga =C2=A0-display sdl,show-cursor=3Don=
 =C2=A0-kernel /home/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage =
-append &#39;root=3D/dev/vda rw =C2=A0ip=3D192.168.7.2::192.168.7.1:255.255=
.255.0::eth0:off:8.8.8.8 net.ifnames=3D0 oprofile.timer=3D1 tsc=3Dreliable =
no_timer_check rcupdate.rcu_expedited=3D1 swiotlb=3D0 &#39;<br><br>runqemu =
- INFO - Host uptime: 3820.75</div><div><br></div><div><br></div></div>

--00000000000065731006131a1e74--

