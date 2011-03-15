Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BA4B4C80A73
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2011 20:49:01 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2011 18:49:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,319,1297065600"; d="scan'208";a="667262616"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2011 18:49:00 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Mar 2011 09:47:49 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 15 Mar 2011 09:47:49 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 15 Mar 2011 09:47:49 +0800
Thread-Topic: Race condition when building a recipe and
	poky-image-minimal-initramfs
Thread-Index: Acvisv0uFX9IffPtQY2gp0CbBWE+8Q==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A336463B0@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Race condition when building a recipe and poky-image-minimal-initramfs
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
X-List-Received-Date: Tue, 15 Mar 2011 01:49:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

These days I found a race condition between building a recipe and poky-imag=
e-minimal-initramfs, to reproduce it, you can try as:

1) Run "bitbake poky-image-sato-live". Build the full sato-live image until=
 it is successful.
2) Bump connman's PR (or some other sato recipe's PR).
3) Rebuild the sato live image by "bitbake poky-image-sato-live".

Sometimes, I meet build error like the following, however it does not happe=
n every time.

-------------------------------------------------------
Generating solve db for /distro/dongxiao/build-qemux86/tmp/deploy/rpm/qemux=
86...
   total:               1      0.000000 MB      1.424841 secs
   fingerprint:      1020      0.006796 MB      0.033057 secs
   install:           340      0.000000 MB      0.371773 secs
   dbadd:             340      0.000000 MB      0.362746 secs
   dbget:            2196      0.000000 MB      0.004278 secs
   dbput:             340      1.504908 MB      0.308950 secs
   readhdr:          3401      2.961280 MB      0.005603 secs
   hdrload:          1700      4.389932 MB      0.007001 secs
   hdrget:          57535      0.000000 MB      0.043769 secs
Generating solve db for /distro/dongxiao/build-qemux86/tmp/deploy/rpm/i586.=
..
error: open of /distro/dongxiao/build-qemux86/tmp/deploy/rpm/i586/connman-p=
lugin-ethernet-0.65-r4.i586.rpm failed: No such file or directory
rpm.real: ./rpmio_internal.h:190: fdGetOPath: Assertion `fd !=3D ((void *)0=
) && fd->magic =3D=3D 0x04463138' failed.
/distro/dongxiao/build-qemux86/tmp/work/qemux86-poky-linux/poky-image-minim=
al-initramfs-1.0-r0/temp/run.do_rootfs.468: line 375:   669 Aborted        =
         rpm --dbpath /var/lib/rpm --define=3D'_openall_before_chroot 1' -i=
 --replacepkgs --replacefiles --oldpackage -D "_dbpath $pkgdir/solvedb" --j=
ustdb --noaid --nodeps --noorder --noscripts --notriggers --noparentdirs --=
nolinktos --stats --ignoresize --nosignature --nodigest -D "__dbi_txn creat=
e nofsync" $pkgdir/solvedb/manifest
ERROR: Function 'do_rootfs' failed (see /distro/dongxiao/build-qemux86/tmp/=
work/qemux86-poky-linux/poky-image-minimal-initramfs-1.0-r0/temp/log.do_roo=
tfs.468 for further information)
-------------------------------------------------------

The root cause for this issue should be, poky-image-minimal-initramfs's do_=
rootfs task doesn't have dependency on connman, thus their tasks will be ru=
n simultaneously. Poky-image-minimal-initramfs's do_rootfs will call "rootf=
s_rpm_do_rootfs" --> "package_update_index_rpm", where it will update all t=
he packages depsolver db in ${DEPLOY_DIR_RPM}.

When the package_update_index_rpm function is handling connman's rpm packag=
e, and at the same time, connman is removing old rpm and trying to generate=
 a new one (e.x, from r4 to r5), then the build error will occur, saying th=
at it could not find r4 version of connman-plugin-ethernet...

One choice may be to force poky-image-minimal-initramfs's do_rootfs to depe=
nds on all recipe's do_package to ensure correctness, even though it only d=
epends on some basic recipes.

However I think it is not such elegant.

Do you have ideas on it?

BTW, I will file a bug 867 to track this issue. http://bugzilla.pokylinux.o=
rg/show_bug.cgi?id=3D867

Thanks,
Dongxiao =

