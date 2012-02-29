Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85240E013CC
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 22:48:18 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Feb 2012 22:48:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="130803068"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2012 22:48:17 -0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: tom.zanussi@intel.com
Date: Wed, 29 Feb 2012 14:46:50 +0800
Message-ID: <1330498010.1785.48.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: yocto <yocto@yoctoproject.org>
Subject: COMPATIBLE_HOST in initramfs-live-install_1.0.bb
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
X-List-Received-Date: Wed, 29 Feb 2012 06:48:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Tom,

I saw in initramfs-live-install_1.0.bb recipe, there is a line to set
the COMPATIBLE_HOST:

COMPATIBLE_HOST = "(i.86|x86_64).*-linux"

But actually initramfs-live-install is set as dependency in
core-image-minimal-initramfs.bb. Therefore if we set machine to be
"qemuarm" or something else that is not x86 architecture, and then
execute:
# bitbake core-image-minimal-initramfs
or
# bitbake universe

System will report an error of:

ERROR: Nothing RPROVIDES
'initramfs-live-install' (but /home/yocto-build5/poky-contrib/meta/recipes-core/images/core-image-minimal-initramfs.bb RDEPENDS on or otherwise requires it)
ERROR: initramfs-live-install was skipped: incompatible with host
arm-poky-linux-gnueabi (not in COMPATIBLE_HOST)
NOTE: Runtime target 'initramfs-live-install' is unbuildable,
removing...
Missing or unbuildable dependency chain was: ['initramfs-live-install']
ERROR: Required build target 'core-image-minimal-initramfs' has no
buildable providers.
Missing or unbuildable dependency chain was:
['core-image-minimal-initramfs', 'initramfs-live-install']

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit
code.

Could you help to explain the background to set compatible host for the
initramfs-live-install recipe?

Thanks,
Dongxiao


