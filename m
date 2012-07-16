Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34DF0E00348
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 11:07:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Jul 2012 11:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="167039169"
Received: from wrk.jf.intel.com ([10.7.202.78])
	by orsmga001.jf.intel.com with ESMTP; 16 Jul 2012 11:07:50 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Jul 2012 11:08:48 -0700
Message-Id: <1342462128-16851-1-git-send-email-kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH] webmin: fix dash incompatibility in do_configure
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
X-List-Received-Date: Mon, 16 Jul 2012 18:07:51 -0000

The use of brackets was causing dash to skip over the removal of
several unwanted files. The presence of these files was causing an
exception during packaging.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/webmin/webmin_1.570.bb |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/recipes-extended/webmin/webmin_1.570.bb b/recipes-extended/webmin/webmin_1.570.bb
index 150d920..63a1ed2 100644
--- a/recipes-extended/webmin/webmin_1.570.bb
+++ b/recipes-extended/webmin/webmin_1.570.bb
@@ -33,9 +33,10 @@ inherit allarch perlnative update-rc.d
 do_configure() {
     # Remove binaries and plugins for other platforms
     rm -rf acl/Authen-SolarisRBAC-0.1*
-    rm -rf {format,{bsd,hpux,sgi}exports,zones,rbac,smf,ipfw,ipfilter,dfsadmin}
-    rm -f mount/{free,net,open}bsd-mounts*
-    rm -f mount/macos-mounts*
+    rm -rf format bsdexports hpuxexports sgiexports
+    rm -rf zones rbac smf ipfw ipfilter dfsadmin
+    rm -f mount/freebsd-mounts* mount/netbsd-mounts*
+    rm -f mount/openbsd-mounts* mount/macos-mounts*
 
     # Remove some plugins for the moment
     rm -rf lilo frox wuftpd telnet pserver cpan shorewall webalizer cfengine fsdump pap
-- 
1.7.9.5


