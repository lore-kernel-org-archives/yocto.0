Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF6C0E00406
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 17:22:57 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id db10so4446181veb.0
	for <yocto@yoctoproject.org>; Fri, 09 Aug 2013 17:22:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=8MrEdv0kwh+YcwB+kGmH5F+ZUh1V0/u4Xu0icIHseF4=;
	b=opNgc3YgNqroaZMLGR4QMgxBbPIJsEtSmcwXt03rybezmPyLiw3UEjb+rwJmc604iz
	PqfbutZg7tPtoU8TdhSxn3mJDUSs05gbK/IDpExsnUOI85BALdsK/PLAl4xisR7WLfHD
	XGtzCuRWiKVGP6h86ensC88HLKKofA2jrrbGkTB4fXZGkIT6URNhaWrjOUoJviWJY0UP
	hq+Ss8Aq2TCQECtOpmCFBi2Pk3ilxFMWgzvUd/lpgnImsw9+i7aQSGI6w1M/qWVgyug8
	2ADQQQ7s/Vp1VCy2vGD6WMEjSy8EkOAfY/DNy6gFb1ROmLygEi7KYHqa2K3FfC3GuEAe
	rI8w==
X-Gm-Message-State: ALoCoQluqzesZG9GGyzb4QIph8qE3nDh2IZoqZuPU7+x9Bxl1i+A3Tsn3ocgNDwsc/3UJ87V0UoE
MIME-Version: 1.0
X-Received: by 10.221.44.136 with SMTP id ug8mr8150502vcb.13.1376094176450;
	Fri, 09 Aug 2013 17:22:56 -0700 (PDT)
Received: by 10.52.244.109 with HTTP; Fri, 9 Aug 2013 17:22:56 -0700 (PDT)
Date: Fri, 9 Aug 2013 17:22:56 -0700
Message-ID: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
Subject: [Announcement] Yocto Project 1.5 Milestone 3 now available.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 10 Aug 2013 00:22:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

The latest milestone release of the Yocto Project's upcoming 1.5 release, is now
available for download at:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m3/poky.tar.bz2

Thanks go out to everyone for all their hard work during this milestone release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

--------------------
yocto-1.5_M3 Errata
--------------------
Release Name: poky-1.5_M3
Branch:  master
Tag:  1.5_M3
Hash:  9de0ad47462c13ac4a2d73e12e92be6c1b4e0415
md5: d34596ae2f14056a02fb0fb4b4ebb63c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m3/poky.tar.bz2

Release Name: eclipse-poky-juno-1.5_M3
Branch:  master
Tag:  1.5_M3
Hash:  76df60597ae7cce069a5f1fd45089ea04c7394cd
md5: 4059d198768f9f8dc9372dc1c54bc3c3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m3/eclipse-poky-juno.tar.bz2

Release Name: eclipse-poky-kepler-1.5_M3
Branch:  master
Tag:  1.5_M3
Hash:  73cb94acdc81fd876c7da1c49334da9e714b11ee
md5: 4059d198768f9f8dc9372dc1c54bc3cr
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m3/eclipse-poky-kepler.tar.bz2

Release Name: meta-qt3-1.5_M3
Branch:  master
Tag:  1.5_M3
Hash:  b73552fb998fd30a01dbee5a172e432a16078222
md5: bbe92eeccf520f18f067f8f40f891774
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.5-m3/meta-qt3.tar.bz2

--------------------
Features
--------------------
* Major tool chain upgrade: gcc 4.8, eglibc 2.18 recipes.
* Generic x86 BSP supporting most of the graphic solutions. More
hardware will be supported.
* Bitbake refactoring including task execution structure change to use
worker process (bitbake-worker) and the separation of configuration
from data.
* Eliminated the double bitbake execution of psuedo.
* gcc security flags enabled to improve security level of images/binaries
* meta-security layer to support Bastille Linux and other security tools.
* Eclipse plugin has been upgraded to support Eclipse Kepler .
* Infrastructure for automated QA testing. More testcases will be
automated in the next milestone release.
* Improvement and refactoring of sanity testing the package sanity
test (insane.bbclass, package.bbclass)
* User experience improvement including improved SMART package
management tool error reporting, package date and bitbake error
messages.
* ptest added for more packages including busybox, python, kmod,
libxml2, bzip2, etc. to enable automated testing (from the community)
* Replaced Tinylogin with Busybox as the login manager.
* More improvement and fixes for Wayland and systemd, etc.

--------------------
Known issues:
--------------------
- 3908        Kernel panic on qemux86-64 when using runqemu kvm and cpu host
- 4529        x32 build fails with gmp_5.1.1 do_configure
- 4783        [adt-installer] ARM: target arch change from armv5te to
armv7a-vfp-neon in environment setting script
- 4977        [Build Appliance] An error message when launch hob

