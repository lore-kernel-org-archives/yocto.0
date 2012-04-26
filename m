Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D72E01396
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 19:46:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3Q2kFE4021544
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 19:46:15 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 25 Apr 2012 19:46:15 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Thu, 26 Apr 2012 10:46:10 +0800
Message-ID: <1335408370-23570-2-git-send-email-kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1335408370-23570-1-git-send-email-kai.kang@windriver.com>
References: <1335408370-23570-1-git-send-email-kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
Cc: yocto@yoctoproject.org
Subject: [PATCH v2] mm/msync: tweak tmpfs patch for syscall msync
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
X-List-Received-Date: Thu, 26 Apr 2012 02:46:16 -0000
Content-Type: text/plain

Commit 1c3ae5441 "mm: msync: fix issues of sys_msync on tmpfs"
fixes the problem that sys_msync fails with tmpfs on MIPS CPU which
has feature "cache alias".

But it makes POSIX test cases mlockall/3-6 3-7 fail on MIPS.
Case mlockall/3-6 creates a share memory, and maps it to memory.
  fd = shm_open(SHM_NAME, O_RDWR|O_CREAT, S_IRUSR|S_IWUSR);
  foo = mmap(NULL, BUF_SIZE, PROT_WRITE, MAP_SHARED, fd, 0);
Then calls mlockall to lock all of the virtual address space:
  if (mlockall(MCL_CURRENT) == -1) {
At last tests whether the virtual address spaces are locked:
  page_ptr = (void*) ((long)foo - ((long)foo % page_size));
  result = msync(page_ptr, page_size, MS_SYNC|MS_INVALIDATE);
It espects msync returns -1 with EBUSY but returns 0.
Case mlockall/3-7 creates a normal file to mmap, and it fails too.

Tweak the patch to:
1 Moved the CONFIG_TMPFS block down in the loop so that the normal
  vma flag checking will perform.
2 There may be other VMAs in the list after this VMA which belongs
  to tmpfs file, and we should sync them after the tmpfs one. So
  remove the break loop clauses.

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


