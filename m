Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C81EE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:11 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id dq13so22855wgb.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=pFWb/TMj8mtZXjcMXSkc54oFrEY9QK8DTYA+oh9T+k0=;
	b=mKnPI+/ylEUbGTqLtqNlFr6yInrpZKX+V+fGbXNF2MZAarRPo0MKt1FQmRWJcQGz41
	qEi1CPB4t00vYYTlxQn3PGjLedB8slFuQ58R/P+WV8CSB83mQ6d3QdfRd3B7CU54JT8C
	+srqprfip3D3gYJWacqg7+NVcy7NQbW5883YWWsPEIBVPT8toecM0ODWhl1FAJRUd2tN
	LwhIh29Iq0qMM4Finzu0n2I8hsCQPbsu33RqW9IoYC6gIt3yolBdUzESjtrTS1ntzIUv
	q3IVGPSH3TH7glK0gLArq00G5R/Xtahz3zC1li564rTZDkFnLqB2IlB/emamsHrWv7yq
	tw/g==
Received: by 10.180.107.104 with SMTP id hb8mr135854wib.8.1333059910866;
	Thu, 29 Mar 2012 15:25:10 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id u9sm812527wix.0.2012.03.29.15.25.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:25:10 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:53 +0200
Message-Id: <3af3e85ee6ed101e2532869ee36cb691c47b8289.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 19/22] opkg.py: computeFileMD5 only when we have fn, otherwise fails to read None file
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
X-List-Received-Date: Thu, 29 Mar 2012 22:25:11 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg.py |   19 +++++++++++--------
 1 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/opkg.py b/opkg.py
index 6c39616..9daff9e 100644
--- a/opkg.py
+++ b/opkg.py
@@ -182,14 +182,17 @@ class Package:
 
     def _computeFileMD5(self):
         # compute the MD5.
-        f = open(self.fn, "rb")
-        sum = hashlib.md5()
-        while True:
-            data = f.read(1024)
-            if not data: break
-            sum.update(data)
-        f.close()
-        self.md5 = sum.hexdigest()
+        if not self.fn:
+            self.md5 = 'Unknown'
+        else:
+            f = open(self.fn, "rb")
+            sum = hashlib.md5()
+            while True:
+               data = f.read(1024)
+               if not data: break
+               sum.update(data)
+            f.close()
+            self.md5 = sum.hexdigest()
 
     def _get_file_size(self):
         if not self.fn:
-- 
1.7.8.5


