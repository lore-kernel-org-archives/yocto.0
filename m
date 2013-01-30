Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37C0CE01466
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 06:01:36 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 1A6D7400A1;
	Wed, 30 Jan 2013 14:21:49 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 15:01:29 +0100
Message-Id: <3fb57ad9e8ce5450d7b7a776c69c3671a8ae4775.1359476560.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <e5e95b1a6e34bcbe11925e66a470d270a9b3bed1.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
	<d8ee0c11e8def36416453669cc11dcaf9a53d282.1359476560.git.timo.mueller@bmw-carit.de>
	<95c2be703c8568993b9ed156ac5c6f3f55f5f5ac.1359476560.git.timo.mueller@bmw-carit.de>
	<162236628ecd020d007df425c5e92d560154c856.1359476560.git.timo.mueller@bmw-carit.de>
	<401cffb10bb37b8c09cc619aa964195c7f86a53a.1359476560.git.timo.mueller@bmw-carit.de>
	<6b6e68cb4b9d938918456b1089a3218fb5d1306b.1359476560.git.timo.mueller@bmw-carit.de>
	<7cf27bee15d63bef3f80921b5d3cb7cad3ee0a3d.1359476560.git.timo.mueller@bmw-carit.de>
	<d8794536b470d26adb1215bca4bdc548ee0d24bc.1359476560.git.timo.mueller@bmw-carit.de>
	<e5e95b1a6e34bcbe11925e66a470d270a9b3bed1.1359476560.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 09/13] scripts/generate-doc.sh: Add script to handle eclipse help generation
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

This script will checkout the yocto-docs project containing the
official yocto documentation. After successful checkout the eclipse
help is generated and the about.html file of the doc.user plugin is
created.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/generate-doc.sh | 84 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100755 scripts/generate-doc.sh

diff --git a/scripts/generate-doc.sh b/scripts/generate-doc.sh
new file mode 100755
index 0000000..096d08e
--- /dev/null
+++ b/scripts/generate-doc.sh
@@ -0,0 +1,84 @@
+#!/bin/sh
+
+help()
+{
+	echo "Generate and add eclipse help from yocto's documentation"
+	echo "Usage: $0 BRANCH_NAME PLUGIN_FOLDER"
+	echo "       $0 -t TAG_NAME PLUGIN_FOLDER"
+	echo ""
+	echo "Options:"
+	echo "-h - display this help and exit"
+	echo "-t TAG_NAME - tag to build the documentation upon"
+	echo "BRANCH_NAME - branch to build the documentation upon"
+	echo "PLUGIN_FOLDER - root folder of the eclipse-poky project"
+	exit 1
+}
+
+fail ()
+{
+  local retval=$1
+  shift $1
+  echo "[Fail $retval]: $*"
+  echo "BUILD_TOP=${BUILD_TOP}"
+  cd ${TOP}
+  exit ${retval}
+}
+
+CHECKOUT_TAG=0
+while getopts ":ht" opt; do
+	case $opt in
+		h)
+			help
+			;;
+		t)
+			CHECKOUT_TAG=1
+			;;
+	esac
+done
+shift $(($OPTIND - 1))
+
+if [ $# -ne 2 ]; then
+	help
+fi
+
+if [ $CHECKOUT_TAG -eq 0 ]; then
+	REFERENCE=origin/$1
+else
+	REFERENCE=$1
+fi
+PLUGIN_FOLDER=`readlink -f $2`
+
+TOP=`pwd`
+
+DOC_DIR=${PLUGIN_FOLDER}/docs
+rm -rf ${DOC_DIR}
+DOC_PLUGIN_DIR=${PLUGIN_FOLDER}/plugins/org.yocto.doc.user
+DOC_HTML_DIR=${DOC_PLUGIN_DIR}/html/
+
+# git clone
+DOC_GIT=git://git.yoctoproject.org/yocto-docs.git
+git clone ${DOC_GIT} ${DOC_DIR} || fail $? "git clone ${DOC_GIT}"
+cd ${DOC_DIR}
+git checkout ${REFERENCE} || fail $? "git checkout ${REFERENCE}"
+COMMIT_ID=`git rev-parse HEAD`
+
+# build and copy
+DOCS="yocto-project-qs adt-manual kernel-manual \
+      bsp-guide poky-ref-manual dev-manual"
+
+cd documentation
+ECLIPSE_TARGET_AVAILABLE=`make -q eclipse &> /dev/null; echo $?`
+if [ ${ECLIPSE_TARGET_AVAILABLE} -ne 1 ]; then
+	echo "WARNING:"
+	echo "This version does not support generating eclipse help"
+	echo "Documentation will not be available in eclipse"
+	exit 1
+fi
+
+for DOC in ${DOCS}; do
+	make DOC=${DOC} eclipse
+done
+
+sed -e "s/@.*@/${COMMIT_ID}/" < ${DOC_PLUGIN_DIR}/about.html.in > ${DOC_PLUGIN_DIR}/about.html
+
+cd ${TOP}
-- 
1.7.11.7


