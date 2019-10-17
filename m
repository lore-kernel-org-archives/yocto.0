Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37E8AE00D6A; Thu, 17 Oct 2019 13:17:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A50A9E00AAA
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 13:17:04 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id q10so2357378pfl.0
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 13:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=viIk80Pq3C2X9Qxx1/qRpkn8Ax91Y43/ZhUM+cPCj6o=;
	b=ahJtLqndktGxrW3Kaa7pmGxf5+zqWdb8sRnSGJ1r3OgvUwjD1h12NdqgwhAR3Jj/A3
	z2UN4Vqa9YDyTbkWVnmiOLjKlHX+gSeCUTRO+TKzd2oy3C5r/76EkkdPHA8gICMqO5os
	OF8+znIWRe3nWjuVXMSXlBYSDUTxV1JpwNJcJGrojFG7KPOiEtkC6IvJ9Re76taizg3H
	ejaypj/xX5ynmkmhs8T3v0hYH1jQcp0dXUgYhbI4Y9m64xco/rmS35q53wtmUJv8EKoh
	mOJt4DVYaccVjvtPFQptQS8+80IwFhlxK3KOpQMXjJd+LW+KQKhxgIUoXZCTgMxTS6RS
	SgJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=viIk80Pq3C2X9Qxx1/qRpkn8Ax91Y43/ZhUM+cPCj6o=;
	b=uJfYiIpd/62wreVMp/7ms/V0fKKNxybdlXlq3rpM7BX2ioqa/NvzRyaVofD60EIWnx
	9j0dm7lQm7TIcxyh3KXp0WEDR3dpHMcjlktTJRojsn7ZkpVi429Ak95c36ZgAPiYWYzf
	KHiUUrls/wXJdNi4X1D7s7CTcGAv+mvxkyj4hnpFdmZNo3Vx2d46Xrz98mR6wgdGPW01
	FBxi+tvHVAPUIRQ7Y7L3k8opoxQ7cfC+0rFUEBmOIFXQRneUqh/nP88KG+Fpsb6uwtjz
	jUrKCZxhNlNu56azfdxClU3NmPBF8px2X34ujl5RNIxM26UeQUQ/2WTEOhRIViMuf+nX
	KbYA==
X-Gm-Message-State: APjAAAVVHrZhXa/Cp/bZJBFS3e95DqGIOCNmsZzsNIM76IpfeECHfXZ3
	+g4ozNoLdbn9A/s6zO+L5Mxw+00E
X-Google-Smtp-Source: APXvYqwnPYlko1V7FjpaDBDBSiTdpsBDEaiE3g/2rOj42cuxOTx04EzXh7TKz5xJf53jD426XuD+Zw==
X-Received: by 2002:a62:ac02:: with SMTP id v2mr2118441pfe.26.1571343423919;
	Thu, 17 Oct 2019 13:17:03 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	r30sm3727491pfl.42.2019.10.17.13.17.02 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 17 Oct 2019 13:17:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 17 Oct 2019 13:17:01 -0700
Message-Id: <20191017201701.18876-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] apparmor: ptest fail to build on arm
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
X-List-Received-Date: Thu, 17 Oct 2019 20:17:05 -0000

exclude arm and aarch64 ptest tasks

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index d434fd3..ba7065b 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -42,6 +42,8 @@ PACKAGECONFIG[aa-decode] = ",,,bash"
 PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
 HTTPD="${@bb.utils.contains('PACKAGECONFIG', 'apache2', '1', '0', d)}"
 
+#Building ptest on arm fails.
+
 python() {
     if 'apache2' in d.getVar('PACKAGECONFIG').split() and \
             'webserver' not in d.getVar('BBFILE_COLLECTIONS').split():
@@ -50,6 +52,10 @@ python() {
 
 DISABLE_STATIC = ""
 
+do_configure_ptest_base_aarch64[noexec] = "1"
+do_compile_ptest_base_aarch64[noexec] = "1"
+do_install_ptest_base_aarch64[noexec] = "1"
+
 do_configure() {
 	cd ${S}/libraries/libapparmor
 	aclocal
@@ -123,6 +129,14 @@ do_install () {
 	fi
 }
 
+do_compile_ptest_aarch64 () {
+  :
+}
+
+do_compile_ptest_arm () {
+  :
+}
+
 do_compile_ptest () {
         oe_runmake -C ${B}/tests/regression/apparmor
         oe_runmake -C ${B}/parser/tst
@@ -150,6 +164,14 @@ do_install_ptest () {
 	cp -rf ${B}/binutils ${t}
 }
 
+do_install_ptest_aarch64 () {
+  :
+}
+
+do_install_ptest_arm() {
+  :
+}
+
 pkg_postinst_ontarget_${PN} () {
 if [ ! -d /etc/apparmor.d/cache ] ; then
     mkdir /etc/apparmor.d/cache
-- 
2.17.1


