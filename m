Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0048EE00950; Mon, 27 Aug 2018 22:45:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9576CE00939
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 22:45:28 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7S5jRi2032497
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 22:45:28 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Mon, 27 Aug 2018 22:45:08 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 28 Aug 2018 13:45:07 +0800
Message-ID: <1535435107-101357-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-security][PATCH] ecryptfs-utils: fix usrmerge install path
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
X-List-Received-Date: Tue, 28 Aug 2018 05:45:31 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Update rootsbindir from /sbin to ${base_sbindir}
to fix below do_install error when usrmerge
enabled in DISTRO_FEATURES
| chmod: cannot access '/poky-build/tmp-glibc/work/core2-64-wrs-linux/ecryptfs-utils/111-r0/image/usr/sbin/mount.ecryptfs_private': No such file or directory

And pass "--with-pamdir=${base_libdir}/security"
to configure script to fix below warning when
usrmerge enabled in DISTRO_FEATURES
| WARNING: ecryptfs-utils-111-r0 do_package: QA Issue: ecryptfs-utils: Files/directories were installed but not shipped in any package:
  /lib64/security/pam_ecryptfs.so

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index f55b0c3..1f780f9 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -29,6 +29,7 @@ EXTRA_OECONF = "\
     --libdir=${base_libdir} \
     --disable-pywrap \
     --disable-nls \
+    --with-pamdir=${base_libdir}/security \
     "
 
 PACKAGECONFIG ??= "nss \
@@ -43,12 +44,16 @@ do_configure_prepend() {
     export NSS_LIBS="-L${STAGING_BASELIBDIR} -lssl3 -lsmime3 -lnss3 -lsoftokn3 -lnssutil3"
     export KEYUTILS_CFLAGS="-I${STAGING_INCDIR}"
     export KEYUTILS_LIBS="-L${STAGING_LIBDIR} -lkeyutils"
+    sed -i -e "s;rootsbindir=\"/sbin\";rootsbindir=\"\${base_sbindir}\";g" ${S}/configure.ac
 }
 
 do_install_append() {
     chmod 4755 ${D}${base_sbindir}/mount.ecryptfs_private
-    mkdir -p ${D}/${libdir}
-    mv ${D}/${base_libdir}/pkgconfig ${D}/${libdir}
+    # ${base_libdir} is identical to ${libdir} when usrmerge enabled
+    if ! ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','true','false',d)}; then
+        mkdir -p ${D}/${libdir}
+        mv ${D}/${base_libdir}/pkgconfig ${D}/${libdir}
+    fi
     sed -i -e 's:-I${STAGING_INCDIR}::' \
            -e 's:-L${STAGING_LIBDIR}::' ${D}/${libdir}/pkgconfig/libecryptfs.pc
     sed -i -e "s: ${base_sbindir}/cryptsetup: ${sbindir}/cryptsetup:" ${D}${bindir}/ecryptfs-setup-swap
-- 
2.7.4


