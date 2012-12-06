Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9169E01453
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 07:48:40 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 0E57440239;
	Thu,  6 Dec 2012 16:13:01 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 16:48:34 +0100
Message-Id: <e247a383ace4fcb7a2cb47f7a88abd06b23166ac.1354805521.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <bde760220ffcfa140bab6930f327977ecf085f22.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
	<b7c6bd306781ef02179f4b82c46cfa4f73792c1f.1354805521.git.timo.mueller@bmw-carit.de>
	<bde760220ffcfa140bab6930f327977ecf085f22.1354805521.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv3 3/7] scripts/generate_doc.sh: Add script to handle eclipse help generation
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
X-List-Received-Date: Thu, 06 Dec 2012 15:48:41 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This script will checkout the yocto-docs project containing the
official yocto documentation. After successful checkout the eclipse
help is generated and the about.html file of the doc.user plugin is
created.
---
 scripts/generate_doc.sh |   84 +++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 84 insertions(+), 0 deletions(-)
 create mode 100755 scripts/generate_doc.sh

diff --git a/scripts/generate_doc.sh b/scripts/generate_doc.sh
new file mode 100755
index 0000000..faab9ef
--- /dev/null
+++ b/scripts/generate_doc.sh
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
+PLUGIN_FOLDER=$2
+
+TOP=`pwd`
+
+DOC_DIR=${PLUGIN_FOLDER}/docs
+rm -rf ${DOC_DIR}
+DOC_PLUGIN_DIR=${PLUGIN_FOLDER}/plugins/org.yocto.sdk.ide.doc.user
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
+	make DOC=${DOC} eclipse;
+done
+
+sed -e "s/@.*@/${COMMIT_ID}/" < ${DOC_PLUGIN_DIR}/about.html.in > ${DOC_PLUGIN_DIR}/about.html
+
+cd ${TOP}
-- 
1.7.7.6


