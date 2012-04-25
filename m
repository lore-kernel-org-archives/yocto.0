Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 804A2E013B7
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 03:06:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3PA6Ouo027089
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 03:06:24 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 25 Apr 2012 03:06:23 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Wed, 25 Apr 2012 18:06:29 +0800
Message-ID: <1335348389-12781-1-git-send-email-kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
Cc: yocto@yoctoproject.org
Subject: [PATCH] mm/msync: tweak tmpfs patch for syscall msync
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
X-List-Received-Date: Wed, 25 Apr 2012 10:06:24 -0000
Content-Type: text/plain

Commit 1c3ae5441 fixes MIPS CPU cache alias problem. But it makes
posix test cases mlockall/3-6 3-7 fail.
Tweak the patch to:
1 check the vma and its flags first
2 don't quit the function when meet first vma belongs to tmpfs file

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 mm/msync.c |   30 +++++++++++++-----------------
 1 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/mm/msync.c b/mm/msync.c
index ced6215..31cd311 100644
--- a/mm/msync.c
+++ b/mm/msync.c
@@ -60,23 +60,6 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
 	down_read(&mm->mmap_sem);
 	vma = find_vma(mm, start);
 
-#ifdef CONFIG_TMPFS
-	/*
-	 * For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
-	 * there is not so much thing to do for CPUs without cache alias,
-	 * But for some CPUs with cache alias, msync has to flush cache
-	 * explicitly, which makes sure the data coherency between memory
-	 * file and cache.
-	 */
-	file =  vma->vm_file;
-	if (file && (file->f_op == &shmem_file_operations)) {
-		if(CPU_HAS_CACHE_ALIAS)
-			flush_cache_range(vma, start, start+len);
-		error = 0;
-		goto out_unlock;
-	}
-#endif
-
 	for (;;) {
 
 		/* Still start < end. */
@@ -97,6 +80,19 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
 			goto out_unlock;
 		}
 		file = vma->vm_file;
+#ifdef CONFIG_TMPFS
+		/*
+		 * For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
+		 * there is not so much thing to do for CPUs without cache alias,
+		 * But for some CPUs with cache alias, msync has to flush cache
+		 * explicitly, which makes sure the data coherency between memory
+		 * file and cache.
+		 */
+		if (file && (file->f_op == &shmem_file_operations)) {
+			if(CPU_HAS_CACHE_ALIAS)
+				flush_cache_range(vma, start, start+len);
+		}
+#endif
 		start = vma->vm_end;
 		if ((flags & MS_SYNC) && file &&
 				(vma->vm_flags & VM_SHARED)) {
-- 
1.7.5.4


