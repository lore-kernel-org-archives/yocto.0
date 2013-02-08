Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id F2535E0146E
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:46 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 310F74029F;
	Fri,  8 Feb 2013 13:44:18 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:38 +0100
Message-Id: <16b4f90332e22cf61937a70a8469f78a58d1790b.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <56fd294cb47b29fcea6f3006b9dcd360866d7d68.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
	<5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
	<a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
	<68de3739abb8de52bbc3e42769b14a745a47f7f4.1360320932.git.timo.mueller@bmw-carit.de>
	<8475114cd09e7b7ba916975b61f95183de105e4d.1360320932.git.timo.mueller@bmw-carit.de>
	<305fd42ed6500d248ef6a0662e68fbad6f7b2fe4.1360320932.git.timo.mueller@bmw-carit.de>
	<56fd294cb47b29fcea6f3006b9dcd360866d7d68.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 08/12] scripts/build.sh: Added yocto.doc feature to build
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
X-List-Received-Date: Fri, 08 Feb 2013 13:24:47 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/build.sh | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index e1ec5fc..73bf889 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -132,10 +132,14 @@ cd ${TOP}
 
 #build 
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
+java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.sdk.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 
-if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ] && [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ]; then
+if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ] &&
+	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ] &&
+	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}.zip ]; then
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ./org.yocto.bc-${RELEASE}-${DATE}.zip
+  cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}.zip ./org.yocto.doc-${RELEASE}-${DATE}.zip
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ./org.yocto.sdk-${RELEASE}-${DATE}.zip
   rm -rf ${BUILD_DIR}
 else
@@ -144,10 +148,13 @@ fi
 
 #build archive for update site
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
+java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.sdk.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 
 #clean up
-if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ] && [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}-group.group.group.zip ]; then
+if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ] &&
+	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}-group.group.group.zip ] &&
+	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}-group.group.group.zip ]; then
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ./org.yocto.sdk-${RELEASE}-${DATE}-archive.zip
   rm -rf ${BUILD_TOP}
 else
-- 
1.7.11.7


