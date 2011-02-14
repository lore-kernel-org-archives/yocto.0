Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F1C24C8006D
	for <yocto@yoctoproject.org>; Mon, 14 Feb 2011 00:53:42 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Feb 2011 22:53:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,467,1291622400"; d="scan'208";a="887202286"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 13 Feb 2011 22:53:41 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 14 Feb 2011 14:52:37 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 14 Feb 2011 14:52:37 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 14 Feb 2011 14:52:35 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 14 Feb 2011 14:52:37 +0800
Thread-Topic: Some nightly build failures on autobuilder (on commit
	b9a97e07, namely, "Revert part of the unpack change...") 
Thread-Index: AcvME8IOrSyKLIxiSse1uT6ouB6cUQ==
Message-ID: <1865303E0DED764181A9D882DEF65FB68630C8DA71@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Some nightly build failures on autobuilder (on commit b9a97e07, namely, "Revert part of the unpack change...")
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
X-List-Received-Date: Mon, 14 Feb 2011 06:53:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

1)	Building qemumips meta-toolchain-sdk failed:=20
http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/35/s=
teps/shell_26/logs/stdio
eglibc's do_package failed:=20
ERROR: Error executing a python function in /srv/home/pokybuild/poky-slave/=
nightly-external/build/meta/recipes-core/eglibc/eglibc_2.12.bb:
CopyFailed: Command tar -cf - -C /srv/home/pokybuild/poky-slave/nightly-ext=
ernal/build/build/tmp/work/mips-poky-linux/eglibc-2.12-r13/sstate-install-p=
ackage///package -ps . | tar -xf - -C /srv/home/pokybuild/poky-slave/nightl=
y-external/build/build/tmp/work/mips-poky-linux/eglibc-2.12-r13/package fai=
led with return value 2

Looks it's related to Mark's recent commit 3e6d91ec, but what's odd is: qem=
umips failed here while qemux86 and qemuarm are ok... BTW: MACHINE routerst=
ationpro and atom-pc also have the same failure as qemumips.

2)	on mpc, linux-libc-headers-yocto-2.6.37+git do_install failed:
http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/35/s=
teps/shell_19/logs/stdio
| install: cannot create regular file `/srv/home/pokybuild/poky-slave/night=
ly-external/build/build/tmp/work/ppc603e-poky-linux/linux-libc-headers-yoct=
o-2.6.37+git-1+343c06b25b221aa7f7019aee83b2d976041fddce_1+343c06b25b221aa7f=
7019aee83b2d976041fddce-r2/image/boot/devicetree-': No such file or directo=
ry
NOTE: package linux-libc-headers-yocto-2.6.37+git-1+343c06b25b221aa7f7019ae=
e83b2d976041fddce

3)	ememlow do_rootfs failed:
http://autobuilder.pokylinux.org:8010/builders/nightly-internal/builds/48/s=
teps/shell_9/logs/stdio
| error: Failed dependencies:
| 	keymaps is needed by task-poky-boot-1.0-r7.emenlow
| 	base-files is needed by task-poky-boot-1.0-r7.emenlow
| 	task-base-wifi is needed by task-base-extended-1.0-r69.emenlow
| 	task-base-bluetooth is needed by task-base-extended-1.0-r69.emenlow
| 	task-base is needed by task-base-extended-1.0-r69.emenlow
| ...

First I'm trying to reproduce issue 1 now. Mark, do you have any quick thou=
ght?  :-)


Thanks,
-- Dexuan
=20


