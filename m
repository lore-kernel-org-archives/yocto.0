Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E52BDE0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 07:18:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBLFI2IK022568
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 07:18:03 -0800 (PST)
Received: from pek-yocto-build2.corp.ad.wrs.com (128.224.163.150) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 21 Dec 2011 07:18:02 -0800
From: Zumeng Chen <zumeng.chen@windriver.com>
To: <yocto@yoctoproject.org>, <bruce.ashfield@windriver.com>
Date: Wed, 21 Dec 2011 23:17:54 +0800
Message-ID: <1324480674-10022-1-git-send-email-zumeng.chen@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
Subject: [PATCH 1/1] mm: msync: fix the behaviour msync on tmpfs
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
X-List-Received-Date: Wed, 21 Dec 2011 15:18:04 -0000
Content-Type: text/plain

For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
there is not so much thing to do for CPUs without cache alias,
But for some CPUs with cache alias, msync has to flush cache
explicitly, which makes sure the data coherency between memory
file and cache.

Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
---
 include/linux/mm.h |    1 +
 mm/msync.c         |   20 +++++++++++++++++++-
 mm/shmem.c         |    5 +++++
 3 files changed, 25 insertions(+), 1 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index f59179b..858db90 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -868,6 +868,7 @@ extern void pagefault_out_of_memory(void);
 extern void show_free_areas(unsigned int flags);
 extern bool skip_free_areas_node(unsigned int flags, int nid);
 
+int is_shmem_file(struct file *file);
 int shmem_lock(struct file *file, int lock, struct user_struct *user);
 struct file *shmem_file_setup(const char *name, loff_t size, unsigned long flags);
 void shmem_set_file(struct vm_area_struct *vma, struct file *file);
diff --git a/mm/msync.c b/mm/msync.c
index 632df45..2f0d8fa 100644
--- a/mm/msync.c
+++ b/mm/msync.c
@@ -13,6 +13,7 @@
 #include <linux/file.h>
 #include <linux/syscalls.h>
 #include <linux/sched.h>
+#include <asm/cacheflush.h>
 
 /*
  * MS_SYNC syncs the entire file - including mappings.
@@ -33,6 +34,7 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
 	unsigned long end;
 	struct mm_struct *mm = current->mm;
 	struct vm_area_struct *vma;
+	struct file *file;
 	int unmapped_error = 0;
 	int error = -EINVAL;
 
@@ -56,8 +58,24 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
 	 */
 	down_read(&mm->mmap_sem);
 	vma = find_vma(mm, start);
+
+#ifdef CONFIG_TMPFS
+	/*
+	 * For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
+	 * there is not so much thing to do for CPUs without cache alias,
+	 * But for some CPUs with cache alias, msync has to flush cache
+	 * explicitly, which makes sure the data coherency between memory
+	 * file and cache.
+	 */
+	file =  vma->vm_file;
+	if (is_shmem_file(file)) {
+		flush_cache_range(vma, start, start+len);
+		error = 0;
+		goto out_unlock;
+	}
+#endif
+
 	for (;;) {
-		struct file *file;
 
 		/* Still start < end. */
 		error = -ENOMEM;
diff --git a/mm/shmem.c b/mm/shmem.c
index 92e5c15..4fabfac 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -2793,6 +2793,11 @@ static struct file_system_type tmpfs_fs_type = {
 	.kill_sb	= kill_litter_super,
 };
 
+int is_shmem_file(struct file *file)
+{
+	return (file->f_op == &shmem_file_operations)? 1 : 0;
+} 
+
 int __init init_tmpfs(void)
 {
 	int error;
-- 
1.7.5.4


