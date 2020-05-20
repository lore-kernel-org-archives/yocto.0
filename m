Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.654.1590005322346876303
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 May 2020 13:08:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: zork.pl, ip: 140.211.169.56, mailfrom: lm@zork.pl)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FDF8E01BCE; Wed, 20 May 2020 13:08:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 332 seconds by postgrey-1.32 at yocto-www; Wed, 20 May 2020 13:08:40 PDT
Received: from black.zork.pl (black.zork.pl [178.32.202.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88923E01BC7
	for <yocto@yoctoproject.org>; Wed, 20 May 2020 13:08:40 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by black.zork.pl (Postfix) with ESMTP id 6106C149E51
	for <yocto@yoctoproject.org>; Wed, 20 May 2020 22:03:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zork.pl
Received: from black.zork.pl ([127.0.0.1])
	by localhost (black.zork.pl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iUkl_cw7sff2 for <yocto@yoctoproject.org>;
	Wed, 20 May 2020 22:03:04 +0200 (CEST)
Received: from [192.168.17.110] (mirth.lan [192.168.17.110])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by black.zork.pl (Postfix) with ESMTPSA id 6B987149E4E
	for <yocto@yoctoproject.org>; Wed, 20 May 2020 22:03:04 +0200 (CEST)
To: yocto@yoctoproject.org
From: "?ukasz Michalski" <lm@zork.pl>
Subject: netmask problem on host interface with runquemu
Message-ID: <44a594e5-4777-b8c8-0568-8acef1768f9f@zork.pl>
Date: Wed, 20 May 2020 22:03:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I ha a configuration for raspberry pi from recent dunfell branch.
When I run my image with runquemu:

[zork@archdevel yocto-wallscreen-qemu-build]$ runqemu
runqemu - INFO - Running bitbake -e ...
runqemu - INFO - Overriding conf file setting of STAGING_DIR_NATIVE to /h=
ome/zork/data/yocto-wallscreen-qemu-build/tmp/work/armv7vet2hf-neon-poky-=
linux-gnueabi/defaultpkgname/1.0-r0/recipe-sysroot-native from Bitbake en=
vironment
runqemu - INFO - Continuing with the following parameters:
KERNEL: [/home/zork/data/yocto-wallscreen-qemu-build/tmp/deploy/images/qe=
muarm/zImage--5.4.27+git0+bee554e595_ab849248b4-r0-qemuarm-20200519150054=
.bin]
MACHINE: [qemuarm]
FSTYPE: [ext4]
ROOTFS: [/home/zork/data/yocto-wallscreen-qemu-build/tmp/deploy/images/qe=
muarm/basic-dev-image-qemuarm-20200519150054.rootfs.ext4]
CONFFILE: [/home/zork/data/yocto-wallscreen-qemu-build/tmp/deploy/images/=
qemuarm/basic-dev-image-qemuarm-20200519150054.qemuboot.conf]

runqemu - INFO - Setting up tap interface under sudo
runqemu - INFO - Network configuration: ip=3D192.168.7.2::192.168.7.1:255=
.255.255.0
runqemu - INFO - Running /home/zork/data/yocto-wallscreen-qemu-build/tmp/=
work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin=
/qemu-system-arm -device virtio-net-device,netdev=3Dnet0,mac=3D52:54:00:1=
2:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -=
drive id=3Ddisk0,file=3D/home/zork/data/yocto-wallscreen-qemu-build/tmp/d=
eploy/images/qemuarm/basic-dev-image-qemuarm-20200519150054.rootfs.ext4,i=
f=3Dnone,format=3Draw -device virtio-blk-device,drive=3Ddisk0 -show-curso=
r -device VGA,edid=3Don -device qemu-xhci -device usb-tablet -device usb-=
kbd -object rng-random,filename=3D/dev/urandom,id=3Drng0 -device virtio-r=
ng-pci,rng=3Drng0  -machine virt,highmem=3Doff -cpu cortex-a15 -m 256 -se=
rial mon:vc -serial null -kernel /home/zork/data/yocto-wallscreen-qemu-bu=
ild/tmp/deploy/images/qemuarm/zImage--5.4.27+git0+bee554e595_ab849248b4-r=
0-qemuarm-20200519150054.bin -append 'root=3D/dev/vda rw  mem=3D256M ip=3D=
192.168.7.2::192.168.7.1:255.255.255.0 console=3DttyAMA0 '


I have tap0 interface on host with netmask 32:

11: tap0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state=
 UP group default qlen 1000
     link/ether e6:ae:b4:35:07:cf brd ff:ff:ff:ff:ff:ff
     inet 192.168.7.1/32 brd 192.168.7.255 scope global tap0
        valid_lft forever preferred_lft forever

How to change this mask to 24?

Thanks,
=C5=81ukasz
