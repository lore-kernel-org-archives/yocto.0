Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFC54E00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 17:59:24 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 30 Jan 2012 17:59:24 -0800
Received: by iabz7 with SMTP id z7so6025311iab.25
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 17:59:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.208.1 with SMTP id ma1mr24637181igc.4.1327975163878; Mon,
	30 Jan 2012 17:59:23 -0800 (PST)
Received: by 10.50.190.161 with HTTP; Mon, 30 Jan 2012 17:59:23 -0800 (PST)
Date: Mon, 30 Jan 2012 17:59:23 -0800
Message-ID: <CAPhnLPCEmowpNv7eho9nkyy=h+L-Q6obeWn+PPWn365jjeeFwA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto 1.2 Milestone 2 released
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
X-List-Received-Date: Tue, 31 Jan 2012 01:59:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

All,

We are pleased to announce the second milestone of the coming release
of Yocto 1.2. This milestone release is available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/poky-edison-6.1.0-m2.tar.bz2
or
http://mirrors.kernel.org/yocto/yocto/milestones/poky-edison-6.1.0-m2.tar.bz2

Additional tarballs for the meta-intel, meta-qt3 and eclipse plugin
are available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/meta-intel-edison-6.1.0-m2.tar.bz2
http://downloads.yoctoproject.org/releases/yocto/milestones/meta-qt3-edison-6.1.0-m2tar.bz2
http://downloads.yoctoproject.org/releases/yocto/milestones/eclipse-poky-edison-6.1.0-m2.tar.bz2

with mirror locations at:

http://mirrors.kernel.org/yocto/yocto/milestones/meta-intel-edison-6.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/meta-qt3-edison-6.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/eclipse-poky-edison-6.1.0-m2.tar.bz2

For information on 1.2 M2 test results see:
http://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report

Thanks you everyone for all the hard work.

- ------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

- --------------------
edison 6.1.0-m2 Errata
- --------------------
Release Name: eclipse-poky-edison-6.1.0-m2
Branch:  1.2_M2
Tag:  1.2_M2.final
Hash:  0dc371803a6407afbb9eecadc23bad787f106d56
md5:  e67fcfb8c7ff9d23185cefb0d4ceb96f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/eclipse-poky-edison-6.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/eclipse-poky-edison-6.1.0-m2.tar.bz2

Release Name: meta-intel-edison-6.1.0-m2
Branch:  1.2_M2
Tag:  1.2_M2.final
Hash:  b6d5d9a3b06caf578103a04dc5fcf5e476343205
md5:  e67fcfb8c7ff9d23185cefb0d4ceb96f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/meta-intel-edison-6.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/meta-intel-edison-6.1.0-m2.tar.bz2

Release Name: meta-qt3-edison-6.1.0-m2
Branch:  1.2_M2
Tag:  1.2_M2.final
Hash:  0c3153242344e5113a50002939d36a2b739cc497
md5:  13303f30dd624081012d34c1b1faebbb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/meta-qt3-edison-6.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/meta-qt3-edison-6.1.0-m2.tar.bz2

Release Name: poky-edison-6.1.0-m2
Branch:  1.2_M2
Tag:  1.2_M2.final
Hash:  b806f726b1db2cb605869c1022ef727c1110255b
md5:  09545a1fe774b7ad04347bce540bfbf1
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/poky-edison-6.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/poky-edison-6.1.0-m2.tar.bz2

- --------------------
Features
- --------------------


- - HOB2 update: HOB (Human Oriented Builder) is a GUI based image
builder for people to build customized Linux image more intuitively
and efficiently. This HOB2 update includes a new GUI, re-designed
internal work flow with most of the HOB functions implemented and
significant user experience improvement. If you would  like to try out
the new HOB2, please
 follow these instructions:
 # git clone git://git.pokylinux.org/poky-contrib
 # cd poky-contrib
 # git checkout remotes/origin/dxu4/hob2-v0.12 -b hob2-v0.12
 # source oe-init-build-env
 # hob

- - Build Appliance update: Build Appliance is a VMWare image with a
Linux OS running. Users can then build a customized Linux image and
boot it into an emulator. With this update, we added X system and
PyGTK support, which enabled the build appliance to run HOB2.

- - Minimal image unique: poky-tiny definition and upgraded packages.

- - Package history analysis: a command line tool called
"buildhistory-diff" to analyze changes in the buildhistory git repo.

- - GUI helper to start creating recipes: a GUI helper application
which can be given a tarball location (local or remote) and create a
recipe skeleton to help people get started with recipe creation.

- --------------------
Known Issues
- --------------------

Known issues:
Bug 1898-[beagleboard C4] X server can not startup with 3.0 kernel.
Users of Beagleboard can still use the BSP from the 1.2 milestone 1
(M1) release.
Bug 1918-[x32] insane.bbclass reports error for x32 kernel
Bug 1899-[multilib] do_rootfs failed for lib-connman-gnome with ipk
Bug 1911-[HOB] non-GPLv3 build not work
Please refer to our bug report for M2 for more details:
https://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iQEcBAEBAgAGBQJPJ0jnAAoJEEyK+E/MEkQPwPoIAKq1Qxa1pmh/D69E8E8s56ct
BTXX/jO/FADXyDmHNiSJIX7MdUkSeZyYrV33hnUo6DeCQRgUBsfkNIY7W6qDKcgU
gQGtutRfNMPdCojQpn/zGCFlViUOofvc7bOUydc7e7jBOwgYElxK6tOTPnYZNqvR
hF4KV0xsmWXXzkQnENYTdKNC/Ckf2IrOeMfWqH+BJlpwwYSVKvVRHAHTEZSVpzO1
g1BkQSudNnrQ75Bqniilj6xnM7LNT7DzR9Yu/qymGh8tucieArIdiRXv4324Xhe6
f/yqaxDAg1UZvObMWU63+nCB7FfAEd6i9mOUPccG1kBtSOPNDHyWa5biq+QnSng=
=AdDV
-----END PGP SIGNATURE-----

