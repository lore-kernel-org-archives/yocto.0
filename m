Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A65C3E006B5
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 06:25:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBMEP1fP009013
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 06:25:01 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 22 Dec 2011 06:25:01 -0800
Message-ID: <4EF33DB9.4000502@windriver.com>
Date: Thu, 22 Dec 2011 09:24:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Zumeng Chen <zumeng.chen@windriver.com>
References: <1324480674-10022-1-git-send-email-zumeng.chen@windriver.com>
	<1324523261-23509-1-git-send-email-zumeng.chen@windriver.com>
In-Reply-To: <1324523261-23509-1-git-send-email-zumeng.chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [V2 PATCH 1/1] mm: msync: fix issues of sys_msync on tmpfs
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
X-List-Received-Date: Thu, 22 Dec 2011 14:25:03 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-21 10:07 PM, Zumeng Chen wrote:
> There are two problems as follows shown:
> 1 ) for TMPFS, nothing need to be done in sys_msync,
>      sys_msync just return 0 for all arches.
>
> 2 ) But for MIPS CPUs with cache alias(dmesg|grep alias),
>      it maybe has the issue, which reported by msync test
>      suites in ltp-full, when the memory of memset used by
>      msycn01 has cache alias.
>      So, in this situation, we have to flush the related
>      vma to make sure correct read.

Looks good. I'll queue this for the next kernel update.

Cheers,

Bruce

>
> Signed-off-by: Zumeng Chen<zumeng.chen@windriver.com>
> ---
>   include/linux/shmem_fs.h |   10 ++++++++++
>   mm/msync.c               |   22 +++++++++++++++++++++-
>   mm/shmem.c               |    5 +++++
>   3 files changed, 36 insertions(+), 1 deletions(-)
>
> diff --git a/include/linux/shmem_fs.h b/include/linux/shmem_fs.h
> index aa08fa8..62a2d57 100644
> --- a/include/linux/shmem_fs.h
> +++ b/include/linux/shmem_fs.h
> @@ -12,6 +12,15 @@
>
>   #define SHMEM_SYMLINK_INLINE_LEN (SHMEM_NR_DIRECT * sizeof(swp_entry_t))
>
> +/*
> +
> +*/
> +#ifndef cpu_has_dc_aliases
> +#define CPU_HAS_CACHE_ALIAS 0
> +#else
> +#define CPU_HAS_CACHE_ALIAS cpu_has_dc_aliases
> +#endif
> +
>   struct shmem_inode_info {
>   	spinlock_t		lock;
>   	unsigned long		flags;
> @@ -49,6 +58,7 @@ static inline struct shmem_inode_info *SHMEM_I(struct inode *inode)
>   /*
>    * Functions in mm/shmem.c called directly from elsewhere:
>    */
> +extern int is_shmem_file(struct file *file);
>   extern int init_tmpfs(void);
>   extern int shmem_fill_super(struct super_block *sb, void *data, int silent);
>   extern struct file *shmem_file_setup(const char *name,
> diff --git a/mm/msync.c b/mm/msync.c
> index 632df45..84cb068 100644
> --- a/mm/msync.c
> +++ b/mm/msync.c
> @@ -13,6 +13,8 @@
>   #include<linux/file.h>
>   #include<linux/syscalls.h>
>   #include<linux/sched.h>
> +#include<linux/shmem_fs.h>
> +#include<asm/cacheflush.h>
>
>   /*
>    * MS_SYNC syncs the entire file - including mappings.
> @@ -33,6 +35,7 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
>   	unsigned long end;
>   	struct mm_struct *mm = current->mm;
>   	struct vm_area_struct *vma;
> +	struct file *file;
>   	int unmapped_error = 0;
>   	int error = -EINVAL;
>
> @@ -56,8 +59,25 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
>   	 */
>   	down_read(&mm->mmap_sem);
>   	vma = find_vma(mm, start);
> +
> +#ifdef CONFIG_TMPFS
> +	/*
> +	 * For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
> +	 * there is not so much thing to do for CPUs without cache alias,
> +	 * But for some CPUs with cache alias, msync has to flush cache
> +	 * explicitly, which makes sure the data coherency between memory
> +	 * file and cache.
> +	 */
> +	file =  vma->vm_file;
> +	if (is_shmem_file(file)) {
> +		if(CPU_HAS_CACHE_ALIAS)
> +			flush_cache_range(vma, start, start+len);
> +		error = 0;
> +		goto out_unlock;
> +	}
> +#endif
> +
>   	for (;;) {
> -		struct file *file;
>
>   		/* Still start<  end. */
>   		error = -ENOMEM;
> diff --git a/mm/shmem.c b/mm/shmem.c
> index 92e5c15..4fabfac 100644
> --- a/mm/shmem.c
> +++ b/mm/shmem.c
> @@ -2793,6 +2793,11 @@ static struct file_system_type tmpfs_fs_type = {
>   	.kill_sb	= kill_litter_super,
>   };
>
> +int is_shmem_file(struct file *file)
> +{
> +	return (file->f_op ==&shmem_file_operations)? 1 : 0;
> +}
> +
>   int __init init_tmpfs(void)
>   {
>   	int error;


