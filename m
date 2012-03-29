Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00112E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:23 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so22150wgb.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=L/SdGdwgkl1lIjR0drYIjgqLe0AG0bAa46mcgNEj0dU=;
	b=Qmw4XgF8GL6auaUix8MSWf7nGqwjZb6GGPqQDTPSimMVKcagxCgKp5HBGfcbXbyiUM
	smxprJZWk2+YgYFauyCbL6kVbJHBEIAmfusWiECI3bP/uwvDtYOsiLTGn2p6UbVH61MA
	MSnWbrwdXVoSgIQ+eHZ961QzG+kZupW7hnzsaQVA+bDmHY+z5pW2yQISPsUGkS0qseDW
	/dYybHVf7PIt8bLZIhEkW61EupZtt5DzqVZJxTlfDgZl4MxHPVkZlwYPLiaUCYoxMaxM
	lDqRX7b+w8KwXrjAIVh98I4esbnNsUocyYOELHiH25pl3NRRPgi/4LNMWe8uPWgP0WgQ
	vqZA==
Received: by 10.180.92.71 with SMTP id ck7mr15030wib.21.1333059803141;
	Thu, 29 Mar 2012 15:23:23 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id o2sm1059190wiv.11.2012.03.29.15.23.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:23:22 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:38 +0200
Message-Id: <563718cdd0df8ac0f3ed5e40030a3061baf6e472.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 04/22] arfile.py: handle six digit UIDs
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
X-List-Received-Date: Thu, 29 Mar 2012 22:23:24 -0000

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


