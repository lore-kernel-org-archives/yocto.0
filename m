Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 140E1E0047F
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:24:47 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 55AB0402B1;
	Fri,  8 Feb 2013 13:44:18 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:24:39 +0100
Message-Id: <3d62d994c01a6fbdc3baf0ee2de7e89c1ddbaaf7.1360320932.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <16b4f90332e22cf61937a70a8469f78a58d1790b.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
	<a6e4255f26d3e1023c2f1b5cefab155606051238.1360320932.git.timo.mueller@bmw-carit.de>
	<5ea21b7fbee999dedbd9e17f8e1f7202fa526204.1360320932.git.timo.mueller@bmw-carit.de>
	<a425e9190c797e43c4d00ffdfdc6734fe68a0437.1360320932.git.timo.mueller@bmw-carit.de>
	<68de3739abb8de52bbc3e42769b14a745a47f7f4.1360320932.git.timo.mueller@bmw-carit.de>
	<8475114cd09e7b7ba916975b61f95183de105e4d.1360320932.git.timo.mueller@bmw-carit.de>
	<305fd42ed6500d248ef6a0662e68fbad6f7b2fe4.1360320932.git.timo.mueller@bmw-carit.de>
	<56fd294cb47b29fcea6f3006b9dcd360866d7d68.1360320932.git.timo.mueller@bmw-carit.de>
	<16b4f90332e22cf61937a70a8469f78a58d1790b.1360320932.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360320932.git.timo.mueller@bmw-carit.de>
References: <cover.1360320932.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v5 09/12] scripts/generate-doc.sh: Add script to handle eclipse help generation
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

This script will checkout the yocto-docs project containing the
official yocto documentation. After successful checkout the eclipse
help is generated and the about.html file of the doc.user plugin is
created.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/generate-doc.sh | 85 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100755 scripts/generate-doc.sh

diff --git a/scripts/generate-doc.sh b/scripts/generate-doc.sh
new file mode 100755
index 0000000..7152d6f
--- /dev/null
+++ b/scripts/generate-doc.sh
@@ -0,0 +1,85 @@
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
+#DOC_GIT=git://git.yoctoproject.org/yocto-docs.git
+DOC_GIT=file:///home/timo/_dev/oss/yocto/yocto-docs
+git clone ${DOC_GIT} ${DOC_DIR} || fail $? "git clone ${DOC_GIT}"
+cd ${DOC_DIR}
+git checkout ${REFERENCE} || fail $? "git checkout ${REFERENCE}"
+COMMIT_ID=`git rev-parse HEAD`
+
+# build and copy
+DOCS="yocto-project-qs adt-manual kernel-dev \
+      bsp-guide ref-manual dev-manual profile-manual"
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


