Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93099E007A2; Mon, 13 Jun 2016 16:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CF7AE005BB
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 16:31:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 16:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,468,1459839600"; d="scan'208";a="1001247079"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2016 16:31:25 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2016 18:32:12 -0500
Message-Id: <1465860736-26581-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: belen.barros.pena@linux.intel.com
Subject: [[PATCH][error-report-web] 4/8] Post/migrations/0003_auto_20150603_0913.py: Replace tabs for spaces
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
X-List-Received-Date: Mon, 13 Jun 2016 23:31:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When try to migrate using python3 it raises an exception because
found tabs inside the migration.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 Post/migrations/0003_auto_20150603_0913.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Post/migrations/0003_auto_20150603_0913.py b/Post/migrations/0003_auto_20150603_0913.py
index 321f09f..f936883 100644
--- a/Post/migrations/0003_auto_20150603_0913.py
+++ b/Post/migrations/0003_auto_20150603_0913.py
@@ -34,9 +34,9 @@ def add_lev_distance_data(apps, schema_editor):
     while offset < count:
         objs = BuildFailure.objects.all()[offset : offset + pagesize]
         for f in objs:
-	    if f.LEV_DISTANCE is None:
-		f.LEV_DISTANCE = calc_lev_distance(f)
-	        f.save()
+            if f.LEV_DISTANCE is None:
+                f.LEV_DISTANCE = calc_lev_distance(f)
+                f.save()
 
         del objs
         offset = offset + pagesize
-- 
2.1.4


