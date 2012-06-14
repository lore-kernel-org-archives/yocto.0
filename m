Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A93CDE013BB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 13:44:15 -0700 (PDT)
Received: from [109.224.129.17] (port=34119
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SfGtp-0007K7-O9
	for yocto@yoctoproject.org; Thu, 14 Jun 2012 21:44:13 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 14 Jun 2012 21:44:10 +0100
Message-Id: <BBB9AD1B-8D46-472C-AE84-5AC18F15B44E@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Help needed understanding do_rootfs error
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
X-List-Received-Date: Thu, 14 Jun 2012 20:44:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

The log for do_rootfs is showing:

ERROR: Function failed: do_rootfs (see =
/media/SSD-RAID/build-denzil-pi/tmp/work/raspberrypi-poky-linux-gnueabi/sj=
s-x11-image-1.0-r0/temp/log.do_rootfs.8633 for further information)
Generating solve db for =
/media/SSD-RAID/build-denzil-pi/tmp/deploy/rpm/raspberrypi...
   total:               1      0.000000 MB      1.252061 secs
   fingerprint:      1878      0.011180 MB      0.035400 secs
   install:           626      0.000000 MB      0.509277 secs
   dbadd:             626      0.000000 MB      0.498577 secs
   dbget:            2845      0.000000 MB      0.004722 secs
   dbput:             626      2.976128 MB      0.437150 secs
   readhdr:          6261      5.865680 MB      0.016813 secs
   hdrload:          3130      8.701488 MB      0.011505 secs
   hdrget:         112989      0.000000 MB      0.079470 secs
Generating solve db for =
/media/SSD-RAID/build-denzil-pi/tmp/deploy/rpm/armv6-vfp...
   total:               1      0.000000 MB     10.453264 secs
   fingerprint:     15498      0.161164 MB      0.564440 secs
   install:          5166      0.000000 MB      4.552602 secs
   dbadd:            5166      0.000000 MB      4.466703 secs
   dbget:           51868      0.107568 MB      0.058265 secs
   dbput:            5166     25.200376 MB      3.996021 secs
   readhdr:         51661     50.213234 MB      0.411257 secs
   hdrload:         27384     81.464842 MB      0.083968 secs
   hdrget:         926377      0.000000 MB      0.500559 secs
Generating solve db for =
/media/SSD-RAID/build-denzil-pi/tmp/deploy/rpm/all...
   total:               1      0.000000 MB      0.061929 secs
   fingerprint:        66      0.000926 MB      0.006248 secs
   install:            22      0.000000 MB      0.024989 secs
   dbadd:              22      0.000000 MB      0.023312 secs
   dbget:             186      0.000000 MB      0.000215 secs
   dbput:              22      0.103992 MB      0.010762 secs
   readhdr:           221      0.208192 MB      0.001765 secs
   hdrload:           113      0.315548 MB      0.000311 secs
   hdrget:           3236      0.000000 MB      0.001714 secs
Generating solve db for =
/media/SSD-RAID/build-denzil-pi/tmp/deploy/rpm/all...
   total:               1      0.000000 MB      0.055491 secs
   fingerprint:        66      0.000926 MB      0.001160 secs
   install:            22      0.000000 MB      0.024206 secs
   dbadd:              22      0.000000 MB      0.022726 secs
   dbget:             186      0.000000 MB      0.000272 secs
   dbput:              22      0.103992 MB      0.011892 secs
   readhdr:           221      0.208192 MB      0.000313 secs
   hdrload:           113      0.315548 MB      0.000336 secs
   hdrget:           3236      0.000000 MB      0.002112 secs
Processing task-core-boot...
Processing dropbear...
Processing task-core-x11-base...
Processing task-core-ssh-dropbear...
Processing task-x...
error: Failed dependencies:
	libGL.so.1 is needed by libglut3-7.11-r13.2.armv6
	libGL.so.1 is needed by column-wallboard-1.0-r1.armv6
	libGL.so.1 is needed by libglu1-7.11-r13.2.armv6

libGL is showing in the work area, so I think I just need to add a =
dependency. But what and where?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




