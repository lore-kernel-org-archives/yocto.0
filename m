Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF657E00A0A; Tue, 14 Feb 2017 14:37:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D67EE00935;
	Tue, 14 Feb 2017 14:37:13 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Feb 2017 14:37:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,163,1484035200"; d="scan'208";a="44502768"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2017 14:37:13 -0800
From: Todor Minchev <todor.minchev@linux.intel.com>
To: jianxun.zhang@linux.intel.com, yocto@yoctoproject.org,
	meta-intel@yoctoproject.org
Date: Tue, 14 Feb 2017 14:36:51 -0800
Message-Id: <20170214223652.88931-5-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170214223652.88931-1-todor.minchev@linux.intel.com>
References: <20170214223652.88931-1-todor.minchev@linux.intel.com>
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH v3 4/5] rmc: remove unnecessary return variable
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
X-List-Received-Date: Tue, 14 Feb 2017 22:37:13 -0000

Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
---
 src/rmc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/src/rmc.c b/src/rmc.c
index 54710c7..9a63069 100644
--- a/src/rmc.c
+++ b/src/rmc.c
@@ -218,7 +218,6 @@ read_fp_done:
 static rmc_file_t *read_policy_file(char *pathname, int type) {
     rmc_file_t *tmp = NULL;
     rmc_size_t policy_len = 0;
-    int ret;
     char *path_token;
 
     if ((tmp = calloc(1, sizeof(rmc_file_t))) == NULL) {
@@ -230,8 +229,7 @@ static rmc_file_t *read_policy_file(char *pathname, int type) {
     tmp->next = NULL;
 
     if (type == RMC_GENERIC_FILE) {
-        ret = read_file(pathname, (char **)&tmp->blob, &policy_len);
-        if (ret) {
+        if (read_file(pathname, (char **)&tmp->blob, &policy_len)) {
             fprintf(stderr, "Failed to read file %s\n\n", pathname);
             free(tmp);
             return NULL;
-- 
2.11.1


