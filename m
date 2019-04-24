Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 864CDE00BAA; Tue, 23 Apr 2019 19:03:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82969E0091A
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 19:03:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x3O23uQn012482
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 19:03:56 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Tue, 23 Apr 2019 19:03:56 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 24 Apr 2019 10:03:25 +0800
Message-ID: <1556071405-32093-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556071405-32093-1-git-send-email-yi.zhao@windriver.com>
References: <1556071405-32093-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-security][PATCH 2/2] meta-tpm/README: update
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
X-List-Received-Date: Wed, 24 Apr 2019 02:03:58 -0000
Content-Type: text/plain

Add more description

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-tpm/README | 57 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/meta-tpm/README b/meta-tpm/README
index bbc70bb..dd662b3 100644
--- a/meta-tpm/README
+++ b/meta-tpm/README
@@ -2,3 +2,60 @@ meta-tpm layer
 ==============
 
 This layer contains base TPM recipes.
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/openembedded-core
+  branch: master
+  revision: HEAD
+  prio: default
+
+  URI: git://git.openembedded.org/meta-openembedded/meta-oe
+  branch: master
+  revision: HEAD
+  prio: default
+
+Adding the meta-tpm layer to your build
+========================================
+
+In order to use this layer, you need to make the build system aware of
+it.
+
+Assuming this layer exists at the top-level of your
+yocto build tree, you can add it to the build system by adding the
+location of the meta-tpm layer to bblayers.conf, along with any
+other layers needed. e.g.:
+
+  BBLAYERS ?= " \
+    /path/to/oe-core/meta \
+    /path/to/meta-openembedded/meta-oe \
+    /path/to/layer/meta-tpm \
+
+
+Maintenance
+-----------
+
+Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+
+When sending single patches, please using something like:
+'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+
+These values can be set as defaults for this repository:
+
+$ git config sendemail.to yocto@yoctoproject.org
+$ git config format.subjectPrefix meta-security][PATCH
+
+Now you can just do 'git send-email origin/master' to send all local patches.
+
+Maintainers:    Armin Kuster <akuster808@gmail.com>
+
+
+License
+=======
+
+All metadata is MIT licensed unless otherwise stated. Source code included
+in tree for individual recipes is under the LICENSE stated in each recipe
+(.bb file) unless otherwise stated.
-- 
2.7.4


