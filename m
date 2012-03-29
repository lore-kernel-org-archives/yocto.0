Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F4A6E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:37 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=4EpotV2dMMIMrZlAw7n0C4lYAFTGngufov/PJUhTvLM=;
	b=B8SoYWxXNOibCi2uh94zJ0SKy4cTzvuGgI7hrMrokqLlNLWDn58yDqtsRmIWc0UYUB
	/lrX9Wk4ntruybKiRpcolyFyDgGW0DZtlV3ztgvQLRztNkVZ8lOz/rXaaE78n8zN8GsR
	GSghS0QRETvx+oiRSbyh5g6pc0BiPTEhkhdV23XRwcrpOFKsPkU/W22mMfrgdStXXgau
	+LHBBjy69s1ck9bb/Oj8Gxld3JDUHEVv21GoMCG2Q2mwJ811toLkjBL0iS1gu6o60xis
	2zl4w5ZhT/MovXBK2R+lqPGW5+JUIvlBUn9X3hU7365bCc8aA48XprvBtudc7M1jHZO7
	YJ/A==
Received: by 10.180.83.72 with SMTP id o8mr148948wiy.5.1333059817350;
	Thu, 29 Mar 2012 15:23:37 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id 9sm1200711wid.2.2012.03.29.15.23.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:23:36 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:40 +0200
Message-Id: <834617ff3b1aa040b62c336325e2f8fde4a79c5f.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 06/22] opkg.py: use hashlib instead of old md5 module
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
X-List-Received-Date: Thu, 29 Mar 2012 22:23:38 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg.py |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/opkg.py b/opkg.py
index 8ddc8b8..56e774d 100644
--- a/opkg.py
+++ b/opkg.py
@@ -36,7 +36,7 @@ import tempfile
 import os
 import sys
 import glob
-import md5
+import hashlib
 import re
 import string
 import commands
@@ -188,8 +188,8 @@ class Package:
     def _computeFileMD5(self):
         # compute the MD5.
         f = open(self.fn, "rb")
-        sum = md5.new()
-        while 1:
+        sum = hashlib.md5()
+        while True:
             data = f.read(1024)
             if not data: break
             sum.update(data)
-- 
1.7.8.5


