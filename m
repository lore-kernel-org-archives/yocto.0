Return-Path: <martin.jansa@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEFE1E0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:14:20 -0700 (PDT)
Received: by mail-ey0-f176.google.com with SMTP id i1so928006eaa.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=L/SdGdwgkl1lIjR0drYIjgqLe0AG0bAa46mcgNEj0dU=;
	b=Lo4Z6MVgliYEzZPTQgYvST1I6PIv5QcfzukXSxn14EKB6SGETJtLvdFQ1T854gYcBu
	VBjS7KOQ4A7cR5xZvM+4QgQ9VfcZmRWd5B13Zgb3Ud70v0dMTTKuOVH5XJ0EGveI8xkP
	SgB0ILdFdgyV+M5ysLrmJp1vtiQCKCkCF4z6CP1tWGSSl/sRoFSYQdk9DrjVPQn8cliR
	3gMJMr+1Ueh7QdOU6KrbbavfEc1kU2hm/bkNqhQVPX7m6GZN07qhP6BurQ4tB7yu4VdT
	gkfdSq2gpuiekWntL89o1ibsRx9vULBzz0I/PXOkTPhrYDT9KkJ7T2PAzyCZ/Y0VH9Ch
	hwOw==
Received: by 10.213.20.220 with SMTP id g28mr2409418ebb.122.1333012460501;
	Thu, 29 Mar 2012 02:14:20 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id d54sm19395691eei.9.2012.03.29.02.14.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 02:14:19 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Mar 2012 11:13:52 +0200
Message-Id: <563718cdd0df8ac0f3ed5e40030a3061baf6e472.1333012363.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333012363.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333012363.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333012363.git.Martin.Jansa@gmail.com>
References: <cover.1333012363.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 4/5] arfile.py: handle six digit UIDs
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
X-List-Received-Date: Thu, 29 Mar 2012 09:14:21 -0000

From: Scott Anderson <o2e@saaworld.com>

* Essentially, the problem is that arfile.py is splitting the ar header with
  white-space instead of fixed-width fields, so two fields would get treated
  as a single field.  This makes things better than before as it now honors
  the fixed field widths.

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 arfile.py |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/arfile.py b/arfile.py
index 22548af..8291a2d 100644
--- a/arfile.py
+++ b/arfile.py
@@ -75,7 +75,12 @@ class ArFile:
                 l = self.f.readline()
                 if not l: break
             l = l.replace('`', '')
-            descriptor = l.split()
+            # Field lengths from /usr/include/ar.h:
+            ar_field_lens = [ 16, 12, 6, 6, 8, 10, 2 ]
+            descriptor = []
+            for field_len in ar_field_lens:
+                descriptor.append(l[:field_len].strip())
+                l = l[field_len:]
 #            print descriptor
             size = int(descriptor[5])
             memberName = descriptor[0][:-1]
-- 
1.7.8.5


