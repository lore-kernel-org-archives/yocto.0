Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 167B3E009E7; Fri, 22 May 2015 14:08:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10C78E009CA
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 14:08:04 -0700 (PDT)
Received: by qkx62 with SMTP id 62so22008559qkx.3
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 14:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:organization;
	bh=XK4FInWfZZQRehGVUkKpNdRVG/2gwN2Jqt0vqYNI0cs=;
	b=nbMVtuix1MKqz2fw3Th7w+VMIauDJ3onvDmJOkz2w8wtgB4b7xoVBCRQ3cbSTEism5
	C0KF4hSt591lWlQb5DPibNpJ2b0KDJ4oYflJfyH1/UtqDWDIooUlZPKk04G/P4ntFruA
	4mQx66w1cydNLSiXN0OMzfy5nNvYoCDuHVo3LdTBB0cCU1sdeQZ1Bh5K79xvHH5jLThf
	wjCa6j8e/x2iR/LEwVsf6ccsd7cq3KKlsGb6sf7i/4k67BcetcApo4NtsdhfIkm5pJVD
	kwX+8KtHJOiNH7O+pU2omo+sBd7b67kMqGG5GAVlwxRC4PkD1DjMYpaam+vzFEp49Oug
	aXNA==
X-Received: by 10.140.95.204 with SMTP id i70mr13310190qge.51.1432328883555;
	Fri, 22 May 2015 14:08:03 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id i92sm2082466qkh.5.2015.05.22.14.08.02
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 22 May 2015 14:08:03 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Fri, 22 May 2015 18:09:41 -0300
Message-Id: <1432328982-919-1-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH 1/2] oracle-jse-jdk: fix link to binaries
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
X-List-Received-Date: Fri, 22 May 2015 21:08:10 -0000

Remove ${D} from link targets, as it breaks native builds when we
restore package contents from sstate cache after removing TMPDIR.

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 2 +-
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
2.1.4


