Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96793E008E3; Mon, 26 Sep 2016 11:26:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 616E1E0083E
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 11:25:58 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8QIPvFV027046
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 26 Sep 2016 11:25:57 -0700
Received: from yow-lhowlett-d0.wrs.com (128.224.56.234) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Mon, 26 Sep 2016 11:25:57 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Sep 2016 14:25:38 -0400
Message-ID: <1474914338-26310-11-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH 10/10] recipeparse: remove unnecessary else statement.
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
X-List-Received-Date: Mon, 26 Sep 2016 18:26:00 -0000
Content-Type: text/plain

Code clean up.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/recipeparse.py | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 8a63117..8cf75a1 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -142,15 +142,14 @@ def detect_file_type(path, subdir_start):
         if res:
             typename = 'machine'
             return (typename, None, res.group(1))
-        else:
-            res = bbclass_re.match(subpath)
-            if res:
-                typename = 'bbclass'
-                return (typename, None, res.group(1))
-            res = distro_conf_re.match(subpath)
-            if res:
-                typename = 'distribution'
-                return (typename, None, res.group(1))
+        res = bbclass_re.match(subpath)
+        if res:
+            typename = 'bbclass'
+            return (typename, None, res.group(1))
+        res = distro_conf_re.match(subpath)
+        if res:
+            typename = 'distribution'
+            return (typename, None, res.group(1))
 
     if typename == 'recipe' or typename == 'bbappend':
         if subdir_start:
-- 
1.9.1


