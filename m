Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B836E0146E
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 05:59:41 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2013 05:59:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,715,1355126400"; d="scan'208";a="266226861"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.142])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2013 05:59:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Feb 2013 13:59:34 +0000
Message-Id: <d4d35ce7fbfa55a00111d41b7523bdabde5e8e85.1361541447.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 3/4] webmin: fix for changes in OE-Core master
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
X-List-Received-Date: Fri, 22 Feb 2013 13:59:41 -0000

* Hide read-only-rootfs-hook.sh in init module
* Hide debugfs filesystems in mount module
* perl-module-file is no longer packaged, so remove references to it

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-extended/webmin/webmin_1.620.bb |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-extended/webmin/webmin_1.620.bb b/recipes-extended/webmin/webmin_1.620.bb
index d7145e4..8822b92 100644
--- a/recipes-extended/webmin/webmin_1.620.bb
+++ b/recipes-extended/webmin/webmin_1.620.bb
@@ -38,8 +38,8 @@ do_configure() {
     # Adjust configs
     mv init/config-debian-linux init/config-generic-linux
     sed -i "s/shutdown_command=.*/shutdown_command=poweroff/" init/config-generic-linux
-    echo "exclude=bootmisc.sh,single,halt,reboot,hostname.sh,modutils.sh,mountall.sh,mountnfs.sh,networking,populate-volatile.sh,rmnologin.sh,save-rtc.sh,umountfs,umountnfs.sh,hwclock.sh,checkroot.sh,banner.sh,udev,udev-cache,devpts.sh,psplash.sh,sendsigs,fbsetup,bootlogd,stop-bootlogd,sysfs.sh,syslog,syslog.busybox,urandom,webmin,functions.initscripts" >> init/config-generic-linux
-    echo "excludefs=devpts,devtmpfs,usbdevfs,proc,tmpfs,sysfs" >> mount/config-generic-linux
+    echo "exclude=bootmisc.sh,single,halt,reboot,hostname.sh,modutils.sh,mountall.sh,mountnfs.sh,networking,populate-volatile.sh,rmnologin.sh,save-rtc.sh,umountfs,umountnfs.sh,hwclock.sh,checkroot.sh,banner.sh,udev,udev-cache,devpts.sh,psplash.sh,sendsigs,fbsetup,bootlogd,stop-bootlogd,sysfs.sh,syslog,syslog.busybox,urandom,webmin,functions.initscripts,read-only-rootfs-hook.sh" >> init/config-generic-linux
+    echo "excludefs=devpts,devtmpfs,usbdevfs,proc,tmpfs,sysfs,debugfs" >> mount/config-generic-linux
 
     mv exports/config-debian-linux exports/config-generic-linux
     sed -i "s/killall -HUP rpc.nfsd && //" exports/config-generic-linux
@@ -108,7 +108,7 @@ INITSCRIPT_PARAMS = "start 99 5 3 2 . stop 10 0 1 6 ."
 RDEPENDS_${PN} += "perl perl-module-socket perl-module-exporter perl-module-exporter-heavy perl-module-carp perl-module-strict"
 RDEPENDS_${PN} += "perl-module-warnings perl-module-xsloader perl-module-posix perl-module-autoloader"
 RDEPENDS_${PN} += "perl-module-fcntl perl-module-tie-hash perl-module-vars perl-module-time-local perl-module-config perl-module-constant"
-RDEPENDS_${PN} += "perl-module-file perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
+RDEPENDS_${PN} += "perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
 
 PACKAGES_DYNAMIC += "webmin-module-*"
 RRECOMMENDS_${PN} += "webmin-module-system-status"
-- 
1.7.10.4


