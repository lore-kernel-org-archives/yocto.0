Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F303E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:32 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id dq13so22855wgb.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=7u2bdS2QpijSDcVCBlR/0u+n5faCm2Ib++/LL1VUoeI=;
	b=t4HVpBnMTqkwFKCuwiLtCTRZzpit1S+q2Ut0v8Sn3dGNKMH4hWXELuqTbOnOt5zfJR
	b/qGc+amDrVXsOdvw9qci/QWa5CghpQVffdeORJA7oyikCvXZfX+eYWtUz9DDQf9xxZI
	q59sOolAfmefOEGWErpeA/tVs6kYOAaB0RnMvUBbQh1L4dem8kThWfP8Ijjk44R84DsE
	nA6tEh4u7dsQwUNQLvjqNB8BKD/KpdZLvLT0ImxpruioSBqVxyfCbUDfdCljP2BuP1yx
	PL61FWjOnKHLpAPMLUoIzCHVAdZ1HY8XcddF1sFQk8/ki2QT6k48lAhEW53D8LA2dhGa
	YL2A==
Received: by 10.180.107.132 with SMTP id hc4mr34393wib.21.1333059931981;
	Thu, 29 Mar 2012 15:25:31 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fn2sm1262108wib.0.2012.03.29.15.25.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:25:31 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:56 +0200
Message-Id: <810a971aaf02f9c6402a3bfd88ecaa8232b3db3d.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 22/22] opkg.py: improve test so it prints temporary control file with long description and then reads it back
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
X-List-Received-Date: Thu, 29 Mar 2012 22:25:32 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg.py |   12 +++++++++++-
 1 files changed, 11 insertions(+), 1 deletions(-)

diff --git a/opkg.py b/opkg.py
index 2294160..27cbc2a 100644
--- a/opkg.py
+++ b/opkg.py
@@ -509,11 +509,21 @@ if __name__ == "__main__":
     package.set_architecture("arm")
     package.set_maintainer("Testing <testing@testing.testing>")
     package.set_depends("libc")
-    package.set_description("A test of the APIs.")
+    package.set_description("A test of the APIs. And very long descriptions so often used in oe-core\nfoo\n\n\nbar")
 
     print("<")
     sys.stdout.write(str(package))
     print(">")
+    f = open("/tmp/control", "w")
+    f.write(str(package))
+    f.close()
+
+    f = open("/tmp/control", "r")
+    package2 = Package()
+    package2.read_control(f)
+    print("<")
+    sys.stdout.write(str(package2))
+    print(">")
 
     package.write_package("/tmp")
 
-- 
1.7.8.5


