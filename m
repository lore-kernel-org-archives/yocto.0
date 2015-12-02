Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70208E005B7; Wed,  2 Dec 2015 15:39:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74957E00404
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 15:39:45 -0800 (PST)
Received: by igcmv3 with SMTP id mv3so1476424igc.0
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 15:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=PHlJWWDCyBs7zxhb1PMnr9/wtOSuVczWeNAa19pICTY=;
	b=kq95Z+tnoyxjbOO30vmC96nVgdJU9rixvihRuIjnHn6nk/JmHWzOR6+TZe8aCeigP7
	aPsqflL/ZQtvSMHkp3vKQ//fwbLL80HIo6z/BpsH4Othlud3guEmOZJeQXIyHTi4XeqS
	fWph0jHgx2a2CIh3xBNbW2XhPqhpo4R+hALLU4oSlWoqr+84TTrVlOdej2Q/e8dFQs7H
	YM4oUS1vhNwXkRyqABJkJbtOGSa48S+dCLdGVDbfUmDzV2DA9agwUcanqMM7KfjtisOW
	MYjhCtUVAAQB0OeUUpWoPFh6uoDxMt2+cvd7pYdJRBPTSdBzngq/tf7xamyPokQSXkHq
	uXlg==
X-Received: by 10.50.36.105 with SMTP id p9mr6919428igj.54.1449099585056;
	Wed, 02 Dec 2015 15:39:45 -0800 (PST)
Received: from brrussell-Latitude-E6530.cinci.rr.com
	(cpe-74-139-221-193.kya.res.rr.com. [74.139.221.193])
	by smtp.gmail.com with ESMTPSA id l98sm2054430ioi.3.2015.12.02.15.39.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Dec 2015 15:39:44 -0800 (PST)
From: Kyle Russell <bkylerussell@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Dec 2015 18:39:14 -0500
Message-Id: <1449099554-22948-1-git-send-email-bkylerussell@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Kyle Russell <bkylerussell@gmail.com>
Subject: [meta-oracle-java][PATCH v2] oracle-jse-jdk: Don't use ${D} installing symlink target
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
X-List-Received-Date: Wed, 02 Dec 2015 23:39:51 -0000

When installed to the sysroot, this makes the symlink point to the
workdir, which is invalid in the sstate package.  Since we cd to
${D} before creating the symlink, this ensures the link is created
in the correct install location, so just point the link to the final
target so that the patch is correctly fixed up during populate_sysroot.

Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 54e83b8..6f13125 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -16,7 +16,7 @@ do_install_class-native() {
     install -d -m 0755 ${D}${bindir}
     cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${libdir}/
     for prog in java javac; do
-	( cd ${D}${bindir} && ln -sf ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
+	( cd ${D}${bindir} && ln -sf ${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
     done
 
     ( cd ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin ; \
-- 
1.7.9.5


