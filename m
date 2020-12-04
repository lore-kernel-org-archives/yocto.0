Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web10.13269.1607084817526657088
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Dec 2020 04:26:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vcjvI6gu;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: mabnhdev@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id j17so289535vki.3
        for <yocto@lists.yoctoproject.org>; Fri, 04 Dec 2020 04:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=7ybUFNy7+JrsOH2oIaw1ORIf7WqsH4bk48qh/CNissI=;
        b=vcjvI6gu/QnO2t62DojB/o7tl+QMx+K0661N/jHKaWmkSL23b/TrqMdSDcT2cWyf9z
         5tRHhTAMA3PVWhg6836Cq4x1WVu1izccplzJiGk4LsIrqSUbvt8r5YLFcef6UmAdUGg5
         3+bvyy6yX/KOcbFfZJL7P9vPNCX4a+D79hpDGRj/jiPiblckimaCXN1VnOeGV/mep2w/
         XM8jiX08tlEw2Bou0uA/SVj7tEOPBd9LuTeDG3hLcr9CmFZExtFPNjk7yrmTWLefcUPi
         gRBBCe+iNQCVaws5urah0D05U4Y3+y5LlgTQeYywnee38Nopl+UC424/7DQ2lLyWzppf
         ft6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7ybUFNy7+JrsOH2oIaw1ORIf7WqsH4bk48qh/CNissI=;
        b=MVcBRtYc3TCPUXXrdJS5gKXw2NgU2/g4XCE/TJ3EHkZF1AFhrMhgvSKiY/pd6OVqqR
         Okl0EPeSkF3JIVXUF1PcztLz83ZIG5v0H+1k8p36LRTQkpTdYpSuTD8QU6cx8XCQrhB8
         XsHy6MsGmHFJWHiWaZ/XC5q1iWor46/AnnAtVg3Ndi1aGO1sPXzc4+dYgM+h7RbpR7Rq
         3gUsw+0S6C6H16QDcblgbe6RVFKnjvnXB+89nspcZjEvQ1Ib+A1nEnNrEiv2eLNtmq0S
         45hGD0gNu9cAeIcLrSgcz2TTmFeF4Bma/6cd6LZPtLAZIXqbivJhGQm3t7pT8dOx3tRb
         uNAg==
X-Gm-Message-State: AOAM530bjI6/7ZgZdzQEkczBUDFrw4D3zHOCu08CE8ARkSVs0XVoh528
	DcoSJC9gs1jTpGi9Uhv568cJCEYEuG2gMuBVj0mSF8p5T7A=
X-Google-Smtp-Source: ABdhPJwvkFrdG+ykypqNFa/qbiWoXIfbTs9i6Y4uswf3u+WstEVL+BTSHw452YpL2SshFf7MsHpSE1fj3rn2Kma9wds=
X-Received: by 2002:a1f:eac2:: with SMTP id i185mr3016437vkh.12.1607084816412;
 Fri, 04 Dec 2020 04:26:56 -0800 (PST)
MIME-Version: 1.0
From: "MikeB" <mabnhdev@gmail.com>
Date: Fri, 4 Dec 2020 07:26:45 -0500
Message-ID: <CAAuRgKDCFVRt0VvoojZMQTfqtPXRsN-qM7ShzZ=Fmbx15KTopA@mail.gmail.com>
Subject: runqemu: GLib: g_mapped_file_unref: assertion 'file != NULL' failed
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009b322505b5a29790"

--0000000000009b322505b5a29790
Content-Type: text/plain; charset="UTF-8"

I am working with Dunfell release.

I have a custom aarch64 machine with a custom kernel based on version
v4.14.200 building an image based on core-image-minimal.

I am trying to run this image under qemu using the runqemu script.

I get the following failure.  This particular failure was on Ubuntu Fossa,
but I also see the same error on a CentOS 7 server.

I would appreciate any help or guidance on how to track down and fix this
error.

Thanks.

mabnhdev@fossa:~/exos-yocto-312/build/exos-arm64$ runqemu
runqemu - INFO - Running bitbake -e ...
runqemu - INFO - Continuing with the following parameters:
KERNEL:
[/home/mabnhdev/exos-yocto-312/build/exos-arm64/tmp/deploy/images/exos-arm64/vmlinux--4.14.200+git0+ccf595bb27-r0-exos-arm64-20201201163452.bin]
MACHINE: [exos-arm64]
FSTYPE: [ext4]
ROOTFS:
[/home/mabnhdev/exos-yocto-312/build/exos-arm64/tmp/deploy/images/exos-arm64/core-image-minimal-exos-arm64-20201201163452.rootfs.ext4]
CONFFILE:
[/home/mabnhdev/exos-yocto-312/build/exos-arm64/tmp/deploy/images/exos-arm64/core-image-minimal-exos-arm64-20201201163452.qemuboot.conf]

runqemu - INFO - Setting up tap interface under sudo
runqemu - INFO - Network configuration: ip=192.168.7.2::192.168.7.1:255
.255.255.0
runqemu - INFO - Running
/home/mabnhdev/exos-yocto-312/build/exos-arm64/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-aarch64
-device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
tap,id=net0,ifname=tap0,script=no,downscript=no -drive
file=/home/mabnhdev/exos-yocto-312/build/exos-arm64/tmp/deploy/images/exos-arm64/core-image-minimal-exos-arm64-20201201163452.rootfs.ext4,if=virtio,format=raw
-show-cursor  -machine virt  -m 1024 -serial mon:vc -serial null -kernel
/home/mabnhdev/exos-yocto-312/build/exos-arm64/tmp/deploy/images/exos-arm64/vmlinux--4.14.200+git0+ccf595bb27-r0-exos-arm64-20201201163452.bin
-append 'root=/dev/vda rw  mem=1024M ip=192.168.7.2::192.168.7.1:255.255.255.0
 '

runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: GLib:
g_mapped_file_unref: assertion 'file != NULL' failed

runqemu - INFO - Cleaning up
Set 'tap0' nonpersistent

--0000000000009b322505b5a29790
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small">I am working with Dunfell release.</div><div cla=
ss=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:small=
"><br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-s=
erif;font-size:small">I have a custom aarch64 machine with a custom kernel =
based on version v4.14.200 building an image based on core-image-minimal.</=
div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;fon=
t-size:small"><br></div><div class=3D"gmail_default" style=3D"font-family:t=
ahoma,sans-serif;font-size:small">I am trying to run this image under qemu =
using the runqemu script.</div><div class=3D"gmail_default" style=3D"font-f=
amily:tahoma,sans-serif;font-size:small"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:tahoma,sans-serif;font-size:small">I get the foll=
owing failure.=C2=A0 This particular failure was on Ubuntu Fossa, but I als=
o see the same error on a CentOS 7 server.

</div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;f=
ont-size:small"><br></div><div class=3D"gmail_default" style=3D"font-family=
:tahoma,sans-serif;font-size:small">I would appreciate any help or guidance=
 on how to track down and fix this error.</div><div class=3D"gmail_default"=
 style=3D"font-family:tahoma,sans-serif;font-size:small"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:small=
">Thanks.</div><div class=3D"gmail_default" style=3D"font-family:tahoma,san=
s-serif;font-size:small"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:tahoma,sans-serif;font-size:small">mabnhdev@fossa:~/exos-yocto-31=
2/build/exos-arm64$ runqemu<br>runqemu - INFO - Running bitbake -e ...<br>r=
unqemu - INFO - Continuing with the following parameters:<br>KERNEL: [/home=
/mabnhdev/exos-yocto-312/build/exos-arm64/tmp/deploy/images/exos-arm64/vmli=
nux--4.14.200+git0+ccf595bb27-r0-exos-arm64-20201201163452.bin]<br>MACHINE:=
 [exos-arm64]<br>FSTYPE: [ext4]<br>ROOTFS: [/home/mabnhdev/exos-yocto-312/b=
uild/exos-arm64/tmp/deploy/images/exos-arm64/core-image-minimal-exos-arm64-=
20201201163452.rootfs.ext4]<br>CONFFILE: [/home/mabnhdev/exos-yocto-312/bui=
ld/exos-arm64/tmp/deploy/images/exos-arm64/core-image-minimal-exos-arm64-20=
201201163452.qemuboot.conf]<br><br>runqemu - INFO - Setting up tap interfac=
e under sudo<br>runqemu - INFO - Network configuration: ip=3D192.168.7.2::1=
92.168.7.1:255.255.255.0<br>runqemu - INFO - Running /home/mabnhdev/exos-yo=
cto-312/build/exos-arm64/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/re=
cipe-sysroot-native/usr/bin/qemu-system-aarch64 -device virtio-net-pci,netd=
ev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,scrip=
t=3Dno,downscript=3Dno -drive file=3D/home/mabnhdev/exos-yocto-312/build/ex=
os-arm64/tmp/deploy/images/exos-arm64/core-image-minimal-exos-arm64-2020120=
1163452.rootfs.ext4,if=3Dvirtio,format=3Draw -show-cursor =C2=A0-machine vi=
rt =C2=A0-m 1024 -serial mon:vc -serial null -kernel /home/mabnhdev/exos-yo=
cto-312/build/exos-arm64/tmp/deploy/images/exos-arm64/vmlinux--4.14.200+git=
0+ccf595bb27-r0-exos-arm64-20201201163452.bin -append &#39;root=3D/dev/vda =
rw =C2=A0mem=3D1024M ip=3D192.168.7.2::192.168.7.1:255.255.255.0 =C2=A0&#39=
;<br><br>runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: GLib: g=
_mapped_file_unref: assertion &#39;file !=3D NULL&#39; failed<br><br>runqem=
u - INFO - Cleaning up<br>Set &#39;tap0&#39; nonpersistent<br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:smal=
l"><br></div></div>

--0000000000009b322505b5a29790--
