Return-Path: <j.remmet@phytec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4647FE00D8A; Wed, 16 Aug 2017 23:36:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.6.246.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from root.phytec.de (mail.phycard.co.uk [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B039E00A39
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 23:36:33 -0700 (PDT)
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id A4166A003EB
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 08:37:59 +0200 (CEST)
Received: from augenblix.phytec.de ([172.16.0.56])
	by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
	with ESMTP id 2017081708363240-40056 ;
	Thu, 17 Aug 2017 08:36:32 +0200 
From: Jan Remmet <j.remmet@phytec.de>
To: yocto@yoctoproject.org
Date: Thu, 17 Aug 2017 08:36:32 +0200
Message-Id: <1502951792-29932-1-git-send-email-j.remmet@phytec.de>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1502888089-13686-1-git-send-email-j.remmet@phytec.de>
References: <1502888089-13686-1-git-send-email-j.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
	17, 2016) at 17.08.2017 08:36:32,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17,
	2016) at 17.08.2017 08:36:32,
	Serialize complete at 17.08.2017 08:36:32
X-TNEFEvaluated: 1
Subject: [meta-oracle-java][PATCH v2] oracle-java: create directory before creating links
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
X-List-Received-Date: Thu, 17 Aug 2017 06:36:35 -0000

if bindir directory doesn't exists the link is created wrongly:

file -b tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/image/home/yocto/build/tmp/sysroots/x86_64-linux/usr/bin
symbolic link to
`/home/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/jvm/java-8-oracle/bin/javac'

tested on morty

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
v2: remove default -m 0755 from install command 

 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 935ad9bc2d9f..a7210d9ca475 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -12,11 +12,14 @@ JDK_JRE = "jdk"
 require oracle-jse.inc
 
 do_install_class-native() {
-	install -d -m 0755			${D}${libdir_jvm}
+	install -d				${D}${libdir_jvm}
 	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
 
+	install -d				${D}${bindir}
 	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
 	ln -sf ${JDK_HOME}/bin/javac		${D}${bindir}
+
+	install -d				${D}${JDK_HOME}/bin
 	ln -sf javah				${D}${JDK_HOME}/bin/gjavah
 	ln -sf jar				${D}${JDK_HOME}/bin/fastjar
 }
-- 
1.9.1


