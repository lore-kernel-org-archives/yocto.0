Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C1DDE004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 15:52:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Mar 2012 15:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="135852189"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2012 15:52:06 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 15:52:06 -0700
Message-Id: <f5f27094a325058b26b182ad0ea4a08b72f608af.1333145263.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <512eae1ae0678b247076db900304725702acc91e.1333145263.git.nitin.a.kamble@intel.com>
References: <512eae1ae0678b247076db900304725702acc91e.1333145263.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1333145263.git.nitin.a.kamble@intel.com>
References: <cover.1333145263.git.nitin.a.kamble@intel.com>
MIME-Version: 1.0
Subject: [PATCH 3/3] poky-tiny: avoid eglibc locale packaging
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
X-List-Received-Date: Fri, 30 Mar 2012 22:52:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This fixes bug: [YOCTO #2089]

This avoids these errors
NOTE: package eglibc-locale-2.13-r19: task do_populate_sysroot: Started
ERROR: Error executing a python function in
/opt/poky.git/meta/recipes-core/eglibc/eglibc-locale_2.13.bb:
OSError: [Errno 2] No such file or directory:
'/home/rchatre/concordia/dev/ccd-distro-work/tmp/work/core2-poky-linux/eglibc-locale-2.13-r19/package/usr/lib/gconv'

ERROR: The stack trace of python calls that resulted in this exception/failure
was:
ERROR:   File "package_do_split_gconvs", line 264, in <module>
ERROR:·
ERROR:   File "package_do_split_gconvs", line 45, in package_do_split_gconvs
ERROR:·
ERROR:   File "package.bbclass", line 30, in do_split_packages
ERROR:·
ERROR: The code that was being executed was:
ERROR:      0260:»------»-------bb.note("generation of binary locales disabled.
this may break i18n!")
ERROR:      0261:
ERROR:      0262:
ERROR:      0263:
ERROR:  *** 0264:package_do_split_gconvs(d)
ERROR:      0265:
ERROR: (file: 'package_do_split_gconvs', lineno: 264, function: <module>)
ERROR:      0041:»------»-------»-------d.setVar('RPROVIDES_%s' % pkg,
pkg.replace(bpn, 'glibc'))
ERROR:      0042:
ERROR:      0043:»------do_split_packages(d, gconv_libdir,
file_regex='^(.*)\.so$', output_pattern=bpn+'-gconv-%s', \
ERROR:      0044:»------»-------description='gconv module for character set
%s', hook=calc_gconv_deps, \
ERROR:  *** 0045:»------»-------extra_depends=bpn+'-gconv')
ERROR:      0046:
ERROR:      0047:»------def calc_charmap_deps(fn, pkg, file_regex,
output_pattern, group):
ERROR:      0048:»------»-------deps = []
ERROR:      0049:»------»-------f = open(fn, "r")
ERROR: (file: 'package_do_split_gconvs', lineno: 45, function:
package_do_split_gconvs)
ERROR: Function failed: package_do_split_gconvs
ERROR: Logfile of failure stored in:
/home/rchatre/concordia/dev/ccd-distro-work/tmp/work/core2-poky-linux/eglibc-locale-2.13-r19/temp/log.do_package.31042
NOTE: package eglibc-locale-2.13-r19: task do_package: Failed
ERROR: Task 552 (/opt/poky.git/meta/recipes-core/eglibc/eglibc-locale_2.13.bb,
do_package) failed with exit code '1'

Signed-Off-By: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 6fa4c90..a745338 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -74,6 +74,9 @@ DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \
                         ${DISTRO_FEATURES_LIBC_NET} \
                        "
 
+# This tells libc packaging that no locales are to be packaged
+PACKAGE_NO_GCONV = "1"
+
 # Comment out any of the lines below to disable them in the build
 # DISTRO_FEATURES options:
 # alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci
-- 
1.7.6.4


