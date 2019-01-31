Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5477FE00D0F; Thu, 31 Jan 2019 11:09:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54B3EE00BB7
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 11:09:43 -0800 (PST)
Received: from
	sinanubuntu1604.mkjiurmyylmellclgttazegk5f.bx.internal.cloudapp.net
	(unknown [40.76.8.203])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BF4A82086C;
	Thu, 31 Jan 2019 19:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1548961783;
	bh=7BZEQPh1Vm9UbNU9NJsqh3CNnNmldtrfOr68a7f+pe4=;
	h=From:To:Cc:Subject:Date:From;
	b=tK+q8DHkSVB85G46lvBR4AHYqOJoiMunSwM71v2haRgAU0Z2b+/+5ri+jPwv46PyD
	nCmkPwRsFIM5i7LE8ObvvCgKuwMV0D5LPr88on8l3pzYh+s6zDwSHVaqOx7gXCMnys
	W1Mdkc0eJBAmad8/VwUfZvi7JSKlOZg1rj94hedc=
From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org
Date: Thu, 31 Jan 2019 19:09:40 +0000
Message-Id: <20190131190940.17531-1-okaya@kernel.org>
X-Mailer: git-send-email 2.19.0
MIME-Version: 1.0
Subject: [meta-selinux] [PATCH v1] libpcre: do no create links when compiling for windows
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
X-List-Received-Date: Thu, 31 Jan 2019 19:09:44 -0000
Content-Transfer-Encoding: 8bit

lipcre-native is trying to create symbolic links to so files
when used with meta-mingw. Remove this condition for mingw builds.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 recipes-support/libpcre/libpcre_selinux.inc | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/recipes-support/libpcre/libpcre_selinux.inc b/recipes-support/libpcre/libpcre_selinux.inc
index 59c0184..dc287d7 100644
--- a/recipes-support/libpcre/libpcre_selinux.inc
+++ b/recipes-support/libpcre/libpcre_selinux.inc
@@ -1,11 +1,17 @@
 do_install_append () {
-	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
-		realsofile=`readlink ${D}${libdir}/libpcre.so`
-		mkdir -p ${D}/${base_libdir}/
-		mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
-		relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
-		ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so
-		ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so.1
+	# This code creates libpcre for both the dev machine (SDK native)
+	# and for cross-compiling (machine arch). For Linux (SDK Linux native
+	# + all machine arch), symlinks to the .so files have to be created,
+	# but not for the Windows SDK native.
+	if [ ${TARGET_OS} != "mingw32" ]; then
+		if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
+			realsofile=`readlink ${D}${libdir}/libpcre.so`
+			mkdir -p ${D}/${base_libdir}/
+			mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
+			relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
+			ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so
+			ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so.1
+		fi
 	fi
 }
 
-- 
2.19.0


