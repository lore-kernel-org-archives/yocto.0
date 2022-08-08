Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC3FC00140
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 09:36:57 +0000 (UTC)
Subject: Getting Error while trying to run graphical yocto build image
  #dunfell #qemu #yocto #linux
To: yocto@lists.yoctoproject.org
From: "Nikita Gupta" <nikitagupta2509@gmail.com>
X-Originating-Location: IN (110.76.168.101)
X-Originating-Platform: Windows Chrome 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Aug 2022 02:36:50 -0700
Message-ID: <3Av7.1659951410541343611.uFIT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tmoCEoldAyswxEXDntqs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 09:36:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57797

--tmoCEoldAyswxEXDntqs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Everyone here,
I want to run the graphic image of qemux86-64 which I have built with yocto=
. When I am running command "runqemu qemux86-64" or "runqemu" or "runqemu c=
ore-image-minimal" I am getting the following error.

*nikita@ubuntu:~/yocto/poky/build$ runqemu qemux86-64 runqemu - INFO - Runn=
ing MACHINE=3Dqemux86-64 bitbake -e ... runqemu - INFO - Continuing with th=
e following parameters: KERNEL: [/home/nikita/yocto/poky/build/tmp/deploy/i=
mages/qemux86-64/bzImage--5.4.205+gitAUTOINC+aaaf9f090d_8a59dfded8-r0-qemux=
86-64-20220803111012.bin] MACHINE: [qemux86-64] FSTYPE: [ext4] ROOTFS: [/ho=
me/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-=
qemux86-64-20220803111012.rootfs.ext4] CONFFILE: [/home/nikita/yocto/poky/b=
uild/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-20220803111=
012.qemuboot.conf] runqemu - INFO - Setting up tap interface under sudo [su=
do] password for nikita: runqemu - INFO - Network configuration: ip=3D192.1=
68.7.2::192.168.7.1:255.255.255.0 runqemu - INFO - Running /home/nikita/yoc=
to/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroo=
t-native/usr/bin/qemu-system-x86_64 -device virtio-net-pci,netdev=3Dnet0,ma=
c=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downs=
cript=3Dno -drive file=3D/home/nikita/yocto/poky/build/tmp/deploy/images/qe=
mux86-64/core-image-minimal-qemux86-64-20220803111012.rootfs.ext4,if=3Dvirt=
io,format=3Draw -show-cursor -usb -device usb-tablet -object rng-random,fil=
ename=3D/dev/urandom,id=3Drng0 -device virtio-rng-pci,rng=3Drng0 -cpu core2=
duo -m 256 -serial mon:vc -serial null -kernel /home/nikita/yocto/poky/buil=
d/tmp/deploy/images/qemux86-64/bzImage--5.4.205+gitAUTOINC+aaaf9f090d_8a59d=
fded8-r0-qemux86-64-20220803111012.bin -append 'root=3D/dev/vda rw mem=3D25=
6M ip=3D192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=3D1 ' runqemu=
 - ERROR - Failed to run qemu: Could not initialize SDL(x11 not available) =
- exiting runqemu - INFO - Cleaning up Set 'tap0' nonpersistent

* Only solution I found on internet that i should run nographic image for t=
his which has worked fine for me but my requirement is graphic image for th=
is. Help me to find the solution to run graphic image for this. Your replie=
s would be appreciated . *
*

--tmoCEoldAyswxEXDntqs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #232629; font-family: -apple-system, BlinkMacSystemFo=
nt, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; font-si=
ze: 15px;">Hello Everyone here,&nbsp;<br />I want to run the graphic image =
of qemux86-64 which I have built with yocto. When I am running command "run=
qemu qemux86-64" or "runqemu" or "runqemu core-image-minimal" I am getting =
the following error.<br /><br /></span>
<pre style=3D"margin-bottom: calc(var(--s-prose-spacing) + 0.4em); padding:=
 var(--su12); font-variant-numeric: inherit; font-variant-east-asian: inher=
it; font-stretch: inherit; line-height: var(--lh-md); font-family: var(--ff=
-mono); font-size: var(--fs-body1); vertical-align: baseline; box-sizing: i=
nherit; width: auto; max-height: 600px; background-color: var(--highlight-b=
g); border-radius: var(--br-md); overflow-wrap: normal; color: var(--highli=
ght-color); border: 0px initial initial;"><strong><code style=3D"margin: 0p=
x; border: 0px; font-style: inherit; font-variant: inherit; font-weight: in=
herit; font-stretch: inherit; line-height: inherit; font-family: var(--ff-m=
ono); font-size: var(--fs-body1); vertical-align: baseline; box-sizing: inh=
erit; white-space: inherit;">nikita@ubuntu:~/yocto/poky/build$ runqemu qemu=
x86-64
runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
runqemu - INFO - Continuing with the following parameters:
KERNEL: [/home/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage=
--5.4.205+gitAUTOINC+aaaf9f090d_8a59dfded8-r0-qemux86-64-20220803111012.bin=
]
MACHINE: [qemux86-64]
FSTYPE: [ext4]
ROOTFS: [/home/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64/core-im=
age-minimal-qemux86-64-20220803111012.rootfs.ext4]
CONFFILE: [/home/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64/core-=
image-minimal-qemux86-64-20220803111012.qemuboot.conf]

runqemu - INFO - Setting up tap interface under sudo
[sudo] password for nikita:=20
runqemu - INFO - Network configuration: ip=3D192.168.7.2::192.168.7.1:255.2=
55.255.0
runqemu - INFO - Running /home/nikita/yocto/poky/build/tmp/work/x86_64-linu=
x/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-x86_6=
4 -device virtio-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,=
id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive file=3D/home/nik=
ita/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux8=
6-64-20220803111012.rootfs.ext4,if=3Dvirtio,format=3Draw -show-cursor -usb =
-device usb-tablet -object rng-random,filename=3D/dev/urandom,id=3Drng0 -de=
vice virtio-rng-pci,rng=3Drng0   -cpu core2duo -m 256 -serial mon:vc -seria=
l null -kernel /home/nikita/yocto/poky/build/tmp/deploy/images/qemux86-64/b=
zImage--5.4.205+gitAUTOINC+aaaf9f090d_8a59dfded8-r0-qemux86-64-202208031110=
12.bin -append 'root=3D/dev/vda rw  mem=3D256M ip=3D192.168.7.2::192.168.7.=
1:255.255.255.0 oprofile.timer=3D1 '

runqemu - ERROR - Failed to run qemu: Could not initialize SDL(x11 not avai=
lable) - exiting

runqemu - INFO - Cleaning up
Set 'tap0' nonpersistent<br /><br /></code></strong>Only solution I found o=
n internet that i should run nographic image for this which has worked fine=
 for me but my requirement is graphic image for this. Help me to find the s=
olution to run graphic image for this. Your replies would be appreciated .<=
strong><code style=3D"margin: 0px; border: 0px; font-style: inherit; font-v=
ariant: inherit; font-weight: inherit; font-stretch: inherit; line-height: =
inherit; font-family: var(--ff-mono); font-size: var(--fs-body1); vertical-=
align: baseline; box-sizing: inherit; white-space: inherit;"><br /></code><=
/strong></pre>

--tmoCEoldAyswxEXDntqs--

