Return-Path: <cnxsoft@cnx-software.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D281EE0136A
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 00:14:19 -0800 (PST)
Received: by iagz35 with SMTP id z35so676678iag.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 00:14:19 -0800 (PST)
Received: by 10.42.74.195 with SMTP id x3mr14872758icj.41.1328688859212;
	Wed, 08 Feb 2012 00:14:19 -0800 (PST)
Received: from [192.168.0.103] (118.172.62.153.adsl.dynamic.totbb.net.
	[118.172.62.153])
	by mx.google.com with ESMTPS id ak10sm1229325igc.6.2012.02.08.00.14.17
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 00:14:18 -0800 (PST)
Message-ID: <4F322ECE.5060004@cnx-software.com>
Date: Wed, 08 Feb 2012 15:14:06 +0700
From: cnxsoft <cnxsoft@cnx-software.com>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:7.0) Gecko/20110922 Thunderbird/7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Yocto in Virtualbox
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Feb 2012 08:14:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have build x86 qemu image using "bitbake -k core-image-sato" following 
the instructions given at 
http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html
I'm running Ubuntu 11.10 in VirtualBox 4.1.6.

When I run qemu, qemu starts apparently fine, but the qemu window stays 
black. So I'm suspecting that either it does not work in Virtualbox or I 
may have tochange some settings in qemu (e.g. -vga vmware).

Here's the output:

runqemu qemux86

Continuing with the following parameters:
KERNEL: 
[/home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/bzImage-qemux86.bin]
ROOTFS: 
[/home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/core-image-minimal-qemux86.ext3]
FSTYPE: [ext3]
Setting up tap interface under sudo
Acquiring lockfile for tap0...
Starting distccd...
Running qemu...
/home/jaufranc/edev/edison-6.0-build/tmp/sysroots/i686-linux/usr/bin/qemu -kernel 
/home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/bzImage-qemux86.bin 
-net nic,vlan=0 -net tap,vlan=0,ifname=tap0,script=no,downscript=no -hda 
/home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/core-image-minimal-qemux86.ext3 
-show-cursor -usb -usbdevice wacom-tablet -vga vmware -enable-gl 
-no-reboot -m 128 --append "vga=0 root=/dev/hda rw mem=128M 
ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 "
Enabling opengl


Thanks.

