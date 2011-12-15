Return-Path: <jeff@kokofitclub.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1757FE0030D
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 12:29:48 -0800 (PST)
Received: by qadc16 with SMTP id c16so1794911qad.14
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 12:29:48 -0800 (PST)
Received: by 10.224.210.130 with SMTP id gk2mr7861949qab.23.1323980988112;
	Thu, 15 Dec 2011 12:29:48 -0800 (PST)
Received: from [192.168.2.167] (static-72-93-90-226.bstnma.fios.verizon.net.
	[72.93.90.226])
	by mx.google.com with ESMTPS id h9sm14658821qac.13.2011.12.15.12.29.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 15 Dec 2011 12:29:47 -0800 (PST)
From: Jeffrey Moore <jeff@kokofitclub.com>
Date: Thu, 15 Dec 2011 15:29:45 -0500
Message-Id: <4C5013F8-82E9-4461-A96F-37B05E8F689F@kokofitclub.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1251.1)
X-Mailer: Apple Mail (2.1251.1)
Subject: libva-glx missing when building crownbay
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
X-List-Received-Date: Thu, 15 Dec 2011 20:29:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I get an error at the end of my build (build -k core-image-sato) as =
follows:

error: Failed dependencies:
 	libva-glx is needed by libva-1.0.12-r0.0.core2
NOTE: package core-image-sato-1.0-r0: task do_rootfs: Failed

It is the only error.

I am building crownbay with a snapshot of Poky that I cloned from master =
as of yesterday (DISTRO_VERSION    =3D "1.1+snapshot-20111215").  I also =
cloned meta-intel at the same time.  I then added into =
meta-intel/common/recipes-graphics/xorg-xserver/emg-driver-bin-1.8, all =
of the emgd (Meego 1.2) driver files and video plug in files as =
instructed in the latest README in meta-crownbay.  I added the two =
layers into bblayers.conf of meta-intel and meta-intel/crownbay.  I also =
added machine ?=3D "crownbay" into local.conf.  Finally, I deleted the =
file - emgd_drv_video.so (this was instructed in an older README).

Any help would be appreciated.

Thanks
Jeff







