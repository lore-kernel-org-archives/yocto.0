Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62562E002AB
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 07:59:16 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Jan 2013 07:59:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,403,1355126400"; d="scan'208";a="187388742"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jan 2013 07:59:14 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.151]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.74]) with mapi id
	14.01.0355.002; Thu, 3 Jan 2013 15:59:12 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: do_patch fails for quilt-native-0.60-r0
Thread-Index: AQHN6ctF61DGjaE6I063359NV7Wtfw==
Date: Thu, 3 Jan 2013 15:59:12 +0000
Message-ID: <CD0B5B50.1EAF1%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.5.121010
x-originating-ip: [10.252.21.11]
MIME-Version: 1.0
Subject: do_patch fails for quilt-native-0.60-r0
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
X-List-Received-Date: Thu, 03 Jan 2013 15:59:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5D1C14267E79C6449B3C684B77053F0D@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi there,

I am trying to build core-image-minimal with Hob using the latest master.
The build fails. I've pasted the log below.

Does anybody know why and what can I do to fix it?

Thanks!!

Belen


Build Configuration:
BB_VERSION        =3D "1.17.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Unknown"
TARGET_SYS        =3D "mips-poky-linux"
MACHINE           =3D "qemumips"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3+snapshot-20130103"
TUNE_FEATURES     =3D "o32 bigendian fpu-hard mips32"
TARGET_FPU        =3D ""
meta
meta-hob
meta-yocto-bsp
meta-yocto        =3D "master:09359e6ec00901abfe49157f1f9730117b4d284b"

WARNING: /home/yocto/poky/bitbake/lib/bb/ui/crumbs/hobwidget.py:769:
Warning: g_object_set_qdata: assertion `G_IS_OBJECT (object)' failed
  if self.props.icon_name or self.props.pixbuf or self.props.stock_id:

WARNING: /home/yocto/poky/bitbake/lib/bb/ui/crumbs/hobwidget.py:751:
Warning: g_object_set_qdata: assertion `G_IS_OBJECT (object)' failed
  elif self.props.pixbuf:

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 3 of 1629 (ID: 879,
/home/yocto/poky/meta/recipes-devtools/quilt/quilt-native_0.60.bb,
do_patch)
NOTE: Running task 28 of 1629 (ID: 1112,
virtual:native:/home/yocto/poky/meta/recipes-devtools/bison/bison_2.7.bb,
do_fetch)
NOTE: Running task 35 of 1629 (ID: 332,
/home/yocto/poky/meta/recipes-devtools/binutils/binutils-cross_2.23.1.bb,
do_fetch)
NOTE: Running task 38 of 1629 (ID: 200,
/home/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_
3.4.3.bb,
do_fetch)
NOTE: recipe linux-libc-headers-3.4.3-r0: task do_fetch: Succeeded
NOTE: Running task 39 of 1629 (ID: 196,
/home/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_
3.4.3.bb,
do_unpack)
ERROR: Command Error: exit status: 1  Output:
can't find file to patch at input line 5
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|Upstream-Status: Pending
|
|--- quilt-0.47/Makefile.in	2008-12-31 19:09:13.000000000 +0000
|+++ quilt-0.47/Makefile.in.orig	2008-08-21 13:21:32.000000000 +0100
--------------------------
File to patch:
Skip this patch? [y]
Skipping patch.
1 out of 1 hunk ignored
ERROR: Function failed: patch_do_patch
NOTE: recipe quilt-native-0.60-r0: task do_patch: Failed
ERROR: Task 879
(/home/yocto/poky/meta/recipes-devtools/quilt/quilt-native_0.60.bb,
do_patch) failed with exit code '1'
NOTE: recipe binutils-cross-2.23.1-r0: task do_fetch: Succeeded
NOTE: recipe bison-native-2.7-r0: task do_fetch: Succeeded
NOTE: recipe linux-libc-headers-3.4.3-r0: task do_unpack: Succeeded
NOTE: Tasks Summary: Attempted 39 tasks of which 34 didn't need to be
rerun and 1 failed.

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


