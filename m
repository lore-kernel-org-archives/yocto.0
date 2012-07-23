Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2310E0027D
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 09:15:20 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so6106939vbj.35
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 09:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GzekCtCOKYi645im4t7/TVXUzYma+UJ+fCknqlY66/I=;
	b=z2ezhr8s1I+W39qKQrWINhr65wkYf2QbPc1EfxZvTBAms3GohMmIZ50WlOnN5WFgVP
	8Y7UYepZcwI1iDPQE3Ra6+tYMzPENP4RwwGgJ6kk2mDgB/1z/fGBxIUOngjpbuulanUm
	y9ayXHkDSSdfNvV4qOaK89zdcmoR7cJiwqMzPOH395Fbi5rVxgDnKEc3rYoFWF659ECl
	OSDYtRGpSA7P1230ztFt0n70qlVuG8Y+6Ii6jEH8bZN6rhaDwtZEjFU2gK4FslAketD8
	7ADDOg1BCx1sVfR1pKNHSTOGew1ZUH4DU8oE8SASRBHVPmJ/kvcj2czmjOMaE/6NZUE+
	ZGNQ==
MIME-Version: 1.0
Received: by 10.220.150.138 with SMTP id y10mr12893719vcv.73.1343060119965;
	Mon, 23 Jul 2012 09:15:19 -0700 (PDT)
Received: by 10.59.8.136 with HTTP; Mon, 23 Jul 2012 09:15:19 -0700 (PDT)
Date: Mon, 23 Jul 2012 11:15:19 -0500
Message-ID: <CAE9DZUTW7NajfX=vgsRY5b7FiLnx6fsYibv01x=WyAVD0xU2BA@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: do_rootfs fails, dpkg host dependency
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
X-List-Received-Date: Mon, 23 Jul 2012 16:15:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

do_rootfs is failing when I try to build core-image-minimal on a
debian squeeze box.  I am surprised it is trying to do something that
requires root privilege on the host.  Any ideas on how to get past
this?

NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Started
ERROR: Function failed: do_rootfs (see
/development/dallasc/yocto/poky/build/tmp/work/qemuarmada_xp-marvell-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_rootfs.9196
for further information)
ERROR: Logfile of failure stored in:
/development/dallasc/yocto/poky/build/tmp/work/qemuarmada_xp-marvell-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_rootfs.9196
Log data follows:
| ERROR: Function failed: do_rootfs (see
/development/dallasc/yocto/poky/build/tmp/work/qemuarmada_xp-marvell-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_rootfs.9196
for further information)
| dpkg-scanpackages: info: Wrote 7 entries to output Packages file.
| dpkg-scanpackages: info: Wrote 1306 entries to output Packages file.
| dpkg-scanpackages: info: Wrote 21 entries to output Packages file.
| dpkg-scanpackages: info: Wrote 7 entries to output Packages file.
| cat: /development/dallasc/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/apt/apt.conf.sample:
No such file or directory
| E: Could not open lock file /var/lib/apt/lists/lock - open (13
Permission denied)
| E: Unable to lock the list directory
| E: Could not open lock file /var/lib/dpkg/lock - open (13 Permission denied)
| E: Unable to lock the administration directory (/var/lib/dpkg/), are you root?
NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Failed
ERROR: Task 8 (/home/dallasc/development/yocto/poky/meta/recipes-core/images/core-image-minimal.bb,
do_rootfs) failed with exit code '1'

