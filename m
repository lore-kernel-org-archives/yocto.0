Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.4199.1576717696473192991
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 17:08:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 217.70.183.197, mailfrom: robert.joslyn@redrectangle.org)
X-Originating-IP: 173.197.191.182
Received: from xps13.localdomain (rrcs-173-197-191-182.west.biz.rr.com [173.197.191.182])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2A2F81C0005
	for <yocto@lists.yoctoproject.org>; Thu, 19 Dec 2019 01:08:13 +0000 (UTC)
Message-ID: <e1d4fac9ca27e557c603972c6fb69bce12d67c21.camel@redrectangle.org>
Subject: update_gio_module_cache Fails with systemd-firstboot
From: "Robert Joslyn" <robert.joslyn@redrectangle.org>
To: yocto@lists.yoctoproject.org
Date: Wed, 18 Dec 2019 17:08:10 -0800
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I have a simple image using the poky distro and I'd like to add systemd-
firstboot support. I have a bbappend to systemd enabling the PACKAGECONFIG
option, but then I get an error in do_rootfs:

ERROR: The postinstall intercept hook 'update_gio_module_cache' failed,
details in /home/robert/yocto/poky/build/tmp/work/raspberrypi4_64-poky-
linux/core-image-base/1.0-r0/temp/log.do_rootfs

The log file doesn't really have any details that help me:

NOTE: > Executing update_gio_module_cache intercept ...
NOTE: Exit code 1. Output:
+ '[' True = False -a qemuwrapper-cross '!=' nativesdk-qemuwrapper-cross
']'
+ qemu-aarch64 -r 3.14 -E
LD_LIBRARY_PATH=/home/robert/yocto/poky/build/tmp/work/raspberrypi4_64-
poky-linux/core-image-base/1.0-
r0/rootfs/usr/lib:/home/robert/yocto/poky/build/tmp/work/raspberrypi4_64-
poky-linux/core-image-base/1.0-r0/rootfs/lib -L
/home/robert/yocto/poky/build/tmp/work/raspberrypi4_64-poky-linux/core-
image-base/1.0-r0/rootfs
/home/robert/yocto/poky/build/tmp/work/raspberrypi4_64-poky-linux/core-
image-base/1.0-r0/rootfs/usr/libexec/gio-querymodules
/home/robert/yocto/poky/build/tmp/work/raspberrypi4_64-poky-linux/core-
image-base/1.0-r0/rootfs/usr/lib/gio/modules/

Is there a way to get more information about what's going on here? I'm not
familiar with update_gio_module_cache, and I can't seem to find it in the
code base to learn more. I can write my own firstboot unit file if
necessary, but it'd be nice to use systemd-firstboot.

Thanks,
Robert

