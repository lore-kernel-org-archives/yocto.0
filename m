Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8F0BE00E2F; Thu, 17 Oct 2019 13:18:55 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E872E00DE3
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 13:18:34 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id q5so2325464pfg.13
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 13:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=viIk80Pq3C2X9Qxx1/qRpkn8Ax91Y43/ZhUM+cPCj6o=;
	b=FwNe4bsbGaxS951fhNNp4SjVp91+pbpGog+92zvYEI/303GDp42b61P4gHSKWPLWVH
	Kvx85/MprGReszCZDRAqCf80aT5nfGdEL/S/3+CIUHkR/mbk7y6fo19Xq4tqG6U25nn3
	pawZTtQBKom8OAsOanW8TV70Qo+5xKnJWNOBh+WVwOVJDqC1jbHIdDNM/81AVroXZtVA
	fpnRP/FSgXlzB7ZTkRUEUrFGkQ07g1IjwUC+U128g84Y7epuXMe0HkgjO+XPi5dWUVcT
	LoGL8PnFt3ZkTlRE2p0f4vvewr7UChMsEr9ZqbmjCRS5JgHUn+0tfzp3HTUp1YgIfZwK
	UYYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=viIk80Pq3C2X9Qxx1/qRpkn8Ax91Y43/ZhUM+cPCj6o=;
	b=fVAapwYy/4kLYrLIEYnC1Qja4gE4yWiKvict1oPDCUcFtx9qd55chAsvjsOWR2S+Hv
	O/RoQ3Eg2st4d26FZUjDxrp9hi6QLZaXqc4j85doOU4qy10EgvjUTHbLJbzzMYExvn6B
	rhtXWkAifRUSIjRl/QU46sR8y20VOTp2Mlw0Qvpe7LYdrk+RP4/ndQ8vSrxWabdA0lSA
	yaGV8+4ZfLcgJZurOfNaqq5TUP5/WjT+iyf2A6k5bp/m3lV5+pkp+SwTE3ZenTSwv2ds
	ead3IS4HRhprCdMvSxhszkt9skPccW1woRFpwRI8FKVI2ztq0P/+oHeFnETd0dGZrfh/
	CEOQ==
X-Gm-Message-State: APjAAAXaDv5LhEqXvfq250rBCvIzODP2UGGhRnil1Hlx/7M8xs992fu3
	BqrbLQzZRlWaGuTGRF+3DQOQwGRI
X-Google-Smtp-Source: APXvYqwb+IGuaYVp+YC0EkHBGgdNwOsLL2NjlD96fMF11Zx9TUnT0b8wtwotUMrbS7BEcfJtQDTnaA==
X-Received: by 2002:a17:90a:bc06:: with SMTP id
	w6mr6410013pjr.138.1571343513717; 
	Thu, 17 Oct 2019 13:18:33 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id k8sm3001269pgm.14.2019.10.17.13.18.33
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 17 Oct 2019 13:18:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 17 Oct 2019 13:18:32 -0700
Message-Id: <20191017201832.19150-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v2][PATCH] apparmor: ptest fail to build on arm
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
X-List-Received-Date: Thu, 17 Oct 2019 20:19:10 -0000

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


