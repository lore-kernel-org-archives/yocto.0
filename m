Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3918E00BE2; Tue,  4 Jul 2017 15:03:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CDC2E00B8D
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 15:03:18 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jul 2017 15:03:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,309,1496127600"; d="scan'208";a="120836625"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga005.jf.intel.com with ESMTP; 04 Jul 2017 15:03:16 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Jul 2017 17:06:01 -0500
Message-Id: <20170704220602.23233-3-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170704220602.23233-1-jose.perez.carranza@linux.intel.com>
References: <20170704220602.23233-1-jose.perez.carranza@linux.intel.com>
MIME-Version: 1.0
Subject: [qa-tools][PATCH 3/4] testopia_update: Add validation for empty sub parameters on setup
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
X-List-Received-Date: Tue, 04 Jul 2017 22:03:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add an error message for the cases when “setup” is selected and no sub
parameters are given.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update.py | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/testopia_update.py b/testopia_update.py
index 0015d69..8080256 100755
--- a/testopia_update.py
+++ b/testopia_update.py
@@ -72,7 +72,6 @@ def connect_to_testopia():
     config = None
     opts = Options()
 
-    #testopia_config = ['url', 'username', 'password', 'store_location']
     testopia_config = ['url', 'username', 'password']
 
     if not args.config and os.path.exists(DEFAULT_CONFIG_FILE):
@@ -270,6 +269,9 @@ if __name__ == '__main__':
             print(wikivars)
             create_wiki(wikivars, wikivars_list)
 
+        else:
+            logger.error("Sub arguments --clone-templates or --create-wiki should be given")
+
         sys.exit(0)
 
 
-- 
2.11.0


