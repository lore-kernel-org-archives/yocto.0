Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C943E0145F
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 06:01:36 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id ED19F4029E;
	Wed, 30 Jan 2013 14:21:48 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 15:01:28 +0100
Message-Id: <e5e95b1a6e34bcbe11925e66a470d270a9b3bed1.1359476560.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <d8794536b470d26adb1215bca4bdc548ee0d24bc.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
	<d8ee0c11e8def36416453669cc11dcaf9a53d282.1359476560.git.timo.mueller@bmw-carit.de>
	<95c2be703c8568993b9ed156ac5c6f3f55f5f5ac.1359476560.git.timo.mueller@bmw-carit.de>
	<162236628ecd020d007df425c5e92d560154c856.1359476560.git.timo.mueller@bmw-carit.de>
	<401cffb10bb37b8c09cc619aa964195c7f86a53a.1359476560.git.timo.mueller@bmw-carit.de>
	<6b6e68cb4b9d938918456b1089a3218fb5d1306b.1359476560.git.timo.mueller@bmw-carit.de>
	<7cf27bee15d63bef3f80921b5d3cb7cad3ee0a3d.1359476560.git.timo.mueller@bmw-carit.de>
	<d8794536b470d26adb1215bca4bdc548ee0d24bc.1359476560.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 08/13] scripts/build.sh: Added yocto.doc feature to build
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
X-List-Received-Date: Wed, 30 Jan 2013 14:01:36 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/build.sh | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index 8d8b4c3..66973e9 100755
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


