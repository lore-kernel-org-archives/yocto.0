Return-Path: <gizero@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1E17E0032E
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 11:41:59 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id dt10so2448249wgb.11
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 11:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=LBkemMtzzFyHsMKHrIWN7uUdGkBSWOpDfrgbFT7PRwY=;
	b=bInFdOLZk6eIyby0KHHhmNCAw+8TznPbeWALw9kQ8zs9cNZUt4CBBXrsxyjQLrOXGy
	NlRpGNQa9I3I3PX8j4lE5eBvx9b6ITE1SZUo2Qy616BvhffOcJPWMM29rTZBpH6p4uVE
	8jaU1hAUMUNhDJ4XHxRZm2n1e61nY6FMPjW6RPFlm2jcPbC4WRPZ0Fx1nVaHfJz1Kef3
	aTjTDAi9LFn5EctlIjjYfd7uacfQJixVSOJJrYMN4VvaVq7HPeOEf37EeAhTmZgUsCP2
	SbpQjBn4/Cb4oB+puNQilH7sDv0U15WT7tTGMnZKGgibTUhQQ87t0BUdZyHViU2aS3+l
	bvQg==
Received: by 10.180.91.71 with SMTP id cc7mr13531555wib.2.1350153718422;
	Sat, 13 Oct 2012 11:41:58 -0700 (PDT)
Received: from gizdesk.tw.it
	(host87-119-dynamic.8-87-r.retail.telecomitalia.it. [87.8.119.87])
	by mx.google.com with ESMTPS id cu1sm4454385wib.6.2012.10.13.11.41.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 13 Oct 2012 11:41:57 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 13 Oct 2012 20:41:36 +0200
Message-Id: <1350153696-31856-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] documentation: kernel-concepts: fixed typo
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
X-List-Received-Date: Sat, 13 Oct 2012 18:42:00 -0000


Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 documentation/kernel-manual/kernel-concepts.xml |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/kernel-manual/kernel-concepts.xml b/documentation/kernel-manual/kernel-concepts.xml
index 8b9e71f..157443d 100644
--- a/documentation/kernel-manual/kernel-concepts.xml
+++ b/documentation/kernel-manual/kernel-concepts.xml
@@ -320,7 +320,7 @@
             Conceptually, configuration of a Yocto Project kernel occurs similarly to that needed for any
             Linux kernel.
             The build process for a Yocto Project kernel uses a <filename>.config</filename> file, which 
-            is created through the Linux Kernel Coinfiguration (LKC) tool.
+            is created through the Linux Kernel Configuration (LKC) tool.
             You can directly set various configurations in the 
             <filename>.config</filename> file by using the <filename>menuconfig</filename> 
             tool as built by BitBake.
-- 
1.7.9.5


