Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD54AE00C49; Tue,  9 Apr 2019 22:57:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFF65E006D8
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 22:57:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x3A5uWBX016713
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Apr 2019 22:56:42 -0700
Received: from msp-lpggp1.wrs.com (172.25.34.110) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.439.0;
	Tue, 9 Apr 2019 22:56:21 -0700
From: <kai.kang@windriver.com>
To: <joe@deserted.net>
Date: Wed, 10 Apr 2019 01:56:06 -0400
Message-ID: <20190410055606.181500-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190410055606.181500-1-kai.kang@windriver.com>
References: <20190410055606.181500-1-kai.kang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH 2/2] setools: fix build failure with gcc 7
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
X-List-Received-Date: Wed, 10 Apr 2019 05:57:14 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Backport patch from setools upstream to fix build failure with GCC 7 due
to possible truncation of snprintf output. It could be reproduced on 64
bit bsps such as qemux86-64 and qemumips64 with configs:

  SELECTED_OPTIMIZATION = "${DEBUG_OPTIMIZATION}"
  DEBUG_BUILD = "1"

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 ...e-with-GCC-7-due-to-possible-truncat.patch | 90 +++++++++++++++----
 1 file changed, 74 insertions(+), 16 deletions(-)

diff --git a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch b/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
index d0faba8..a5af041 100644
--- a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
+++ b/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
@@ -1,6 +1,10 @@
-From 790d7a538f515d27d2390f1ef56c9871b107a346 Mon Sep 17 00:00:00 2001
-From: Steve Langasek <steve.langasek@canonical.com>
-Date: Sun, 27 Aug 2017 21:28:40 -0700
+Upstream-Status: Backport [https://github.com/TresysTechnology/setools/commit/e41adf0]
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+
+From e41adf01647c695b80b112b337e76021bb9f30c3 Mon Sep 17 00:00:00 2001
+From: Laurent Bigonville <bigon@bigon.be>
+Date: Tue, 26 Sep 2017 15:15:30 +0200
 Subject: [PATCH] Fix build failure with GCC 7 due to possible truncation of
  snprintf output
 
@@ -15,33 +19,87 @@ libqpol/policy_extend.c:161:22: note: directive argument in the range [1, 429496
     snprintf(buff, 9, "@ttr%04zd", i + 1);
                       ^~~~~~~~~~~
 
-Exceeding 10,000 attributes is necessarily going to result in collisions
-inserting into the hash table given this naming scheme, and we already error
-out on the first collision; but there will be holes since types are not
-handled the same as attributes.  Short of making backwards-incompatible
-changes to the entry names, this is probably the best way to fix this build
-failure while reducing the chances of a hash collision in the unlikely event
-that the hashtable is (nearly) full.
+Increase the size of the buffer to avoid collisions
 
 Closes: https://github.com/TresysTechnology/setools/issues/174
-Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+Signed-off-by: Laurent Bigonville <bigon@bigon.be>
 ---
- libqpol/policy_extend.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
+ libqpol/policy_extend.c | 16 ++++++++--------
+ 1 file changed, 8 insertions(+), 8 deletions(-)
 
 diff --git a/libqpol/policy_extend.c b/libqpol/policy_extend.c
-index 742819b..70e8f7c 100644
+index 742819b..739e184 100644
 --- a/libqpol/policy_extend.c
 +++ b/libqpol/policy_extend.c
+@@ -110,7 +110,7 @@ static int qpol_policy_remove_bogus_aliases(qpol_policy_t * policy)
+  *  Builds data for the attributes and inserts them into the policydb.
+  *  This function modifies the policydb. Names created for attributes
+  *  are of the form @ttr<value> where value is the value of the attribute
+- *  as a four digit number (prepended with 0's as needed).
++ *  as a ten digit number (prepended with 0's as needed).
+  *  @param policy The policy from which to read the attribute map and
+  *  create the type data for the attributes. This policy will be altered
+  *  by this function.
+@@ -125,7 +125,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
+ 	uint32_t bit = 0, count = 0;
+ 	ebitmap_node_t *node = NULL;
+ 	type_datum_t *tmp_type = NULL, *orig_type;
+-	char *tmp_name = NULL, buff[10];
++	char *tmp_name = NULL, buff[16];
+ 	int error = 0, retv;
+ 
+ 	INFO(policy, "%s", "Generating attributes for policy. (Step 4 of 5)");
+@@ -137,7 +137,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
+ 
+ 	db = &policy->p->p;
+ 
+-	memset(&buff, 0, 10 * sizeof(char));
++	memset(&buff, 0, 16 * sizeof(char));
+ 
+ 	for (i = 0; i < db->p_types.nprim; i++) {
+ 		/* skip types */
 @@ -158,7 +158,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
  		 * with this attribute */
  		/* Does not exist */
  		if (db->p_type_val_to_name[i] == NULL){
 -			snprintf(buff, 9, "@ttr%04zd", i + 1);
-+			snprintf(buff, 9, "@ttr%04zd", (i + 1) % 10000);
++			snprintf(buff, 15, "@ttr%010zd", i + 1);
  			tmp_name = strdup(buff);
  			if (!tmp_name) {
  				error = errno;
+@@ -240,7 +240,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
+  *  Builds data for empty attributes and inserts them into the policydb.
+  *  This function modifies the policydb. Names created for the attributes
+  *  are of the form @ttr<value> where value is the value of the attribute
+- *  as a four digit number (prepended with 0's as needed).
++ *  as a ten digit number (prepended with 0's as needed).
+  *  @param policy The policy to which to add type data for attributes.
+  *  This policy will be altered by this function.
+  *  @return Returns 0 on success and < 0 on failure; if the call fails,
+@@ -251,7 +251,7 @@ static int qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
+ static int qpol_policy_fill_attr_holes(qpol_policy_t * policy)
+ {
+ 	policydb_t *db = NULL;
+-	char *tmp_name = NULL, buff[10];
++	char *tmp_name = NULL, buff[16];
+ 	int error = 0, retv = 0;
+ 	ebitmap_t tmp_bmap = { NULL, 0 };
+ 	type_datum_t *tmp_type = NULL;
+@@ -265,12 +265,12 @@ static int qpol_policy_fill_attr_holes(qpol_policy_t * policy)
+ 
+ 	db = &policy->p->p;
+ 
+-	memset(&buff, 0, 10 * sizeof(char));
++	memset(&buff, 0, 16 * sizeof(char));
+ 
+ 	for (i = 0; i < db->p_types.nprim; i++) {
+ 		if (db->type_val_to_struct[i])
+ 			continue;
+-		snprintf(buff, 9, "@ttr%04zd", i + 1);
++		snprintf(buff, 15, "@ttr%010zd", i + 1);
+ 		tmp_name = strdup(buff);
+ 		if (!tmp_name) {
+ 			error = errno;
 -- 
-1.8.3.1
+2.20.1
 
-- 
2.20.0


