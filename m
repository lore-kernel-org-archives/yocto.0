Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 465AAE00B56; Fri, 31 Jul 2015 05:57:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A29AE00B34
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 05:57:27 -0700 (PDT)
Received: by qkdv3 with SMTP id v3so28554350qkd.3
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 05:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:organization;
	bh=eE8017Oij1m+nUQEy37udqBT9Bl0daeyfdUxjGADY9o=;
	b=wsdCZFyPm7q9AAa1xJeKqQ1iXoJl3K/h4i6Zno5i1xNCuawYGHbNx7nBUnx3PmiJSD
	rqZsYVEcmitfXvoLCFmNmo3AqHfFHLwWl/OyRDCWvKX7e+oI9w+CAZjgrCCqNfum6l4I
	5bhxz2Po9XhVwVbi4LXkmwBm5LAIFnhc4ngDuoB9mBv/ItfQRguyIr1vyELfTWbL9e1P
	GCMPiybey67szxmNQk3Y94Eadh+CfNPxkul+YbUR7EeQO+pCxCI/PRN5sRq2hcjIsEUF
	ZeAvdxj6aABk5RL+dre61s2n6/W7W9EQA8EVFI4c6diWWYPqZzgqzz44P4/lMiPIbALG
	xudQ==
X-Received: by 10.55.26.167 with SMTP id l39mr3812034qkh.14.1438347447457;
	Fri, 31 Jul 2015 05:57:27 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([179.105.243.19])
	by smtp.gmail.com with ESMTPSA id 3sm2143496qhx.38.2015.07.31.05.57.25
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 31 Jul 2015 05:57:26 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Fri, 31 Jul 2015 10:01:47 -0300
Message-Id: <1438347707-25863-1-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH] oracle-jse.inc: don't link to ${D}${datadir}/java
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
X-List-Received-Date: Fri, 31 Jul 2015 12:57:32 -0000

Libraries that install files into ${D}${datadir}/java (i.e., they
create ${D}${datadir}/java) may cause errors like the following at
rootfs time:

  ERROR:
  Collected errors:
   * extract_archive: Cannot create symlink from ./usr/share/java to
     'ejre1.7.0_75': File exists.

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 recipes-devtools/oracle-java/oracle-jse.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index d5cd765..e657a45 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -15,7 +15,6 @@ S = "${WORKDIR}"
 do_install () {
 	install -d -m 0755					${D}${datadir}/${JDK_JRE}${PV}_${PV_UPDATE}
 	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}			${D}${datadir}/
-	ln -sf ${JDK_JRE}${PV}_${PV_UPDATE}			${D}${datadir}/java
 	install -d -m 0755					${D}${bindir}
 	ln -sf ${datadir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/java ${D}${bindir}/java
 }
-- 
2.1.4


