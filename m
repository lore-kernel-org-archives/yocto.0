Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F89DE00EC1; Thu, 30 Jun 2016 08:54:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0C24E00978
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 08:54:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jun 2016 08:54:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,552,1459839600"; d="scan'208";a="1008310821"
Received: from timo-fedora.jf.intel.com ([10.7.198.51])
	by orsmga002.jf.intel.com with ESMTP; 30 Jun 2016 08:54:41 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jun 2016 08:54:52 -0700
Message-Id: <1467302092-22572-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][PATCH] scripts: additional failure checks
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
X-List-Received-Date: Thu, 30 Jun 2016 15:54:44 -0000

[YOCTO #7533]

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/build.sh        | 2 +-
 scripts/generate-doc.sh | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index 97b6498..e289417 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -130,7 +130,7 @@ cd ${TOP}
 
 # generate and add documentation
 echo -e "\nGenerate Yocto documentation\n"
-${GIT_DIR}/scripts/generate-doc.sh ${DOC_REF} ${GIT_DIR}
+${GIT_DIR}/scripts/generate-doc.sh ${DOC_REF} ${GIT_DIR} || fail $? "generate documentation"
 
 #build 
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
diff --git a/scripts/generate-doc.sh b/scripts/generate-doc.sh
index b817d4c..9753d7e 100755
--- a/scripts/generate-doc.sh
+++ b/scripts/generate-doc.sh
@@ -82,7 +82,7 @@ fi
 # build and copy
 cd documentation
 for DOC in ${DOCS}; do
-	make DOC=${DOC} eclipse
+	make DOC=${DOC} eclipse || fail $? "make DOC=${DOC} eclipse"
 	cp -rf ${DOC}/eclipse/html/* ${DOC_HTML_DIR}
 	cp -f ${DOC}/eclipse/${DOC}-toc.xml ${DOC_HTML_DIR}
 done
-- 
2.7.4


