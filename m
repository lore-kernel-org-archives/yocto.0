Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5A93E0155E
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 18:21:42 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=[10.79.148.145])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VM6P8-00074P-Ct; Wed, 18 Sep 2013 01:21:41 +0000
Message-ID: <5238FF44.6000502@twobit.us>
Date: Tue, 17 Sep 2013 21:17:56 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130828 Icedove/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: No (on www.twobit.us); Unknown failure
Subject: [meta-selinux] Install policy headers and include them in the refpolicy dev package.
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
X-List-Received-Date: Wed, 18 Sep 2013 01:21:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

This patch is pretty straight forward: All we do is call the
'install-headers' make target at the end of do_install. We then add
the interface 'include' directory to the dev package. This allows
projects that ship their own SELinux policy (not in the refpolicy)
to build against the refpolicy headers / interface files by using
the Makefile supplied by refpolicy.

Signed-off-by: Philip Tricca <flihp@twobit.us>                                 
---
 recipes-security/refpolicy/refpolicy_common.inc |    6 +++++-                 
 1 file changed, 5 insertions(+), 1 deletion(-)                                
                                                                               
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc                                               
index 2c8891a..0f9f83b 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -12,7 +12,8 @@ SRC_URI += "file://customizable_types \
 S = "${WORKDIR}/refpolicy"

 FILES_${PN} = "${sysconfdir}/selinux/${POLICY_NAME}/ \
-       ${datadir}/selinux/${POLICY_NAME}/"
+       ${datadir}/selinux/${POLICY_NAME}/*.pp"
+FILES_${PN}-dev =+ "${datadir}/selinux/${POLICY_NAME}/include/"

 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
 RDEPENDS_${PN} += "policycoreutils selinux-config"
@@ -75,4 +76,7 @@ EOF

        cat ${WORKDIR}/customizable_types >> \
                ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_types
+
+       # install policy headers
+       oe_runmake install-headers DESTDIR=${D}
 }
--                                                                             
1.7.10.4

