Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88D4AE00B51; Thu, 11 May 2017 05:09:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A0EBE00AF8
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 05:09:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 May 2017 05:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,324,1491289200"; d="scan'208";a="1128973818"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.22.155])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2017 05:09:24 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 May 2017 13:09:18 +0100
Message-Id: <20170511120918.30574-1-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Cc: srifenbark@gmail.com
Subject: [PATCH] ref-manual: fix typo in 2.3 migration section
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
X-List-Received-Date: Thu, 11 May 2017 12:09:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fix typo "Post-Installtion" → "Post-Installation"

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 documentation/ref-manual/migration.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/migration.xml b/documentation/ref-manual/migration.xml
index f91b619..442324f 100644
--- a/documentation/ref-manual/migration.xml
+++ b/documentation/ref-manual/migration.xml
@@ -3988,7 +3988,7 @@ $ runqemu qemux86-64 tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.
                     populated into the sysroot for the recipe.
                     </para></listitem>
                 <listitem><para>
-                    <emphasis>Specify Pre-Installation and Post-Installtion
+                    <emphasis>Specify Pre-Installation and Post-Installation
                     Native Tool Dependencies:</emphasis>
                     You must specifically specify any special native tool
                     dependencies of <filename>pkg_preinst</filename> and
-- 
2.9.3


