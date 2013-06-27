Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B057DE013A7
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 16:02:16 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id cz10so1273894veb.36
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 16:02:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=Y/1+erFShgL3wZ/Spf+KtRjeN5ZBOhSymqdb0o3zXCw=;
	b=Lzg5BScFLvlGJccZrMuo/tDHUzFit5skUzrK56bvzU2if92+8XhzPQ5bbqlTPdlW8g
	n+HBvVlDUYM8gc6lBCEit9aYKAyPk6reLUQd2sJI/WlLJG+hXa9Jaq/X1QEflyZ+23yA
	WRZeP5hCnkANj3YCwtMsYRMg+NEszmkSTroUyUYHwuBd4LUBl7V5LJbaUkbp6XHyNx1F
	jckquPKUZW3t43wtTPwk9qTOSJOZVB8okK2S9rWh/UWu8Tyki+bexrkqoxMJUjrY1cCf
	Qeij/n7NUwK7WQowDCLmUzb0snWn+yeTKOVEW42ZQnboghCIpAiM1TE54W34/LYMpy+k
	ojYg==
MIME-Version: 1.0
X-Received: by 10.58.108.8 with SMTP id hg8mr4497430veb.6.1372374135580; Thu,
	27 Jun 2013 16:02:15 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Thu, 27 Jun 2013 16:02:15 -0700 (PDT)
Date: Thu, 27 Jun 2013 16:02:15 -0700
Message-ID: <CAPhnLPDn6xDsua9OKJ3GJQ3kiyL_7Uew6S2Q5K7TE=jx3G0xvg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQnTOZZo71JhI6k1Z07OCd8+IA4v6tLBcuwJVo1ABSMBRzB9oWsE8yRLZoWK660OFti4VXBb
Subject: [ANNOUNCEMENT] Yocto Project 1.4.1 released
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
X-List-Received-Date: Thu, 27 Jun 2013 23:02:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

The latest point release of the Yocto Project dylan release, 1.4.1, is now
available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/poky-dylan-9.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.1/poky-dylan-9.0.1.tar.gz

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

--------------------
yocto-1.4.1 Errata
--------------------
Release Name: poky-dylan-9.0.1
Branch: dylan
Tag: dylan-9.0.1
Hash: 73f103bf9b2cdf985464dc53bf4f1cfd71d4531f
md5: b0234dd9fc62a9ad01bdb1b7c354106a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/poky-dylan-9.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.1/poky-dylan-9.0.1.tar.bz2

Release Name: eclipse-poky-dylan-9.0.1
Branch: dylan
Tag: dylan-9.0.1
Hash:  dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7
md5: 11e4e9e071bf28afed0b920447f95de2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/eclipse-poky-dylan-9.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.1/eclipse-poky-dylan-9.0.1.tar.bz2

Release Name: meta-intel-dylan-9.0.1
Branch: dylan
Tag: dylan-9.0.1
Hash: 048def7bae8e3e1a11c91f5071f99bdcf8e6dd16
md5: ad80f8f5f2871eee7d0305a6c140ede5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/meta-intel-dylan-9.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.1/meta-intel-dylan-9.0.1.tar.bz2

Release Name: meta-qt3-dylan-9.0.1
Branch: dylan
Tag: dylan-9.0.1
Hash: 4c27cce6688aa39852f3cba5e7b80ec279019605
md5: 75ed6eacc4b71e15e215f373acb1e32b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/meta-qt3-dylan-9.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.4.1/meta-qt3-dylan-9.0.1.tar.bz2

--------------------
Notable Fixes
--------------------
- Fix gcc internal compiler error (ICE) when building with host gcc
4.8 present in newer distributions
- Fixes for postinstall execution on the host during root filesystem generation
- Fixes for host texinfo version provided in newer distributions
- Fix several dash shell incompatibilities in shell scripts

--------------------
Security fixes
--------------------
None

--------------------
Known Issues
--------------------
The following have fixes in master which will be integrated for the
next 1.4 point release:
* The bind DNS server will report an error on startup (bug 4744)
* archiver.bbclass fails to filter package licenses (bug 4630)

--------------------
Bug Fixes
--------------------
1823: [Beagleboard C4] keyboard could not work with 20111207 build
2342: Toolchain archive contains DISTRO_VERSION instead of SDK_VERSION
3404: udev mount.sh writes to /tmp before it is symlinked to /var/tmp
3839: Relocatable SDK - C - build Hello World GTK C Autotools Project
3864: smart installer prefers i586 over core2 in repository
3882: wayland feature should be well documented
4010: bitbake ignores PRservice error
4019: The guile scheme interpreter does not start up and throws various errors
4157: [adt_installer] Invalid symbolic link perl in
sysroots/x86_64-pokysdk-linux/usr/lib/perl/ directory
4196: 'shutdown' failure in sanity tests on nightly-x86-lsb
4310: do_dumpdata_create_diff_gz fails for core-image-sato-qemux86-64
4353: File Manager gives segfault when "Applications" folder is selected
4358: Race condition for autoconf files in alsa-tools
4447: The cache checksum for the base configuration does not change
when the task data variable changes
4452: rpm %install target fails because of incorrect __mkdir_p macro
on x86 32bit only
4470: Powertop fails do_compile on nightly-x86-lsb
4473: kernel-tools-native's merge_config.sh isn't sh-compliant
4490: run-postinsts fails on directdisk image
4493: Wired interface in a qemu machine does not work with
multilib-enabled images
4496: [x32] dropbear key generation hangs on x32
4518: do_rootfs fails when build deb based core-image-basic with
'package-management' in IMAGE_FEATURES
4586: Build Appliance doesn't build. Missing ssp_nonshared

