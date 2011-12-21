Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46DABE0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 07:38:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBLFcPs3025597
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 07:38:25 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 21 Dec 2011 07:38:25 -0800
Message-ID: <4EF1FD6D.6020907@windriver.com>
Date: Wed, 21 Dec 2011 10:38:21 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: "zumeng.chen" <zchen@windriver.com>
References: <1324480674-10022-1-git-send-email-zumeng.chen@windriver.com>
	<4EF1FA3B.6000105@windriver.com>
In-Reply-To: <4EF1FA3B.6000105@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] mm: msync: fix the behaviour msync on tmpfs
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
X-List-Received-Date: Wed, 21 Dec 2011 15:38:26 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11-12-21 10:24 AM, zumeng.chen wrote:
> This patch has been validated by the following commands
> on both CPUs with or without cache alias, which is for
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1429

Glad to see this. I was composing an email that had just this
question. Which bug, and which kernel version is the issue.

>
> root@routerstationpro:~# dmesg|grep alias
> Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
> root@routerstationpro:~# for i in `seq 1 1000`; do ./msync01 ;done
>
>
> root@localhost:/tmp> dmesg|grep alias
> Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> root@localhost:/tmp> zcat /proc/config.gz |grep WINPATH
> CONFIG_WINTEGRA_WINPATH=y
> CONFIG_WINTEGRA_WINPATH3=y
> CONFIG_SERIAL_8250_WINPATH=y
> root@localhost:/tmp> for i in `seq 1 1000`; do ./msync01 ;done
>
> Passed.
>
> On 2011年12月21日 23:17, Zumeng Chen wrote:
>> For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
>> there is not so much thing to do for CPUs without cache alias,
>> But for some CPUs with cache alias, msync has to flush cache
>> explicitly, which makes sure the data coherency between memory
>> file and cache.

Is it just coherency, or are there corruption concerns as well ?

In the commit message, it would be useful to put an example
interaction that can trigger this issue, since it isn't entirely
obvious from the message. More information is always better.

Is this for the 3.0 and 2.6.37 kernels .. or just one, or the
other ?


>>
>> Signed-off-by: Zumeng Chen<zumeng.chen@windriver.com>
>> ---
>> include/linux/mm.h | 1 +
>> mm/msync.c | 20 +++++++++++++++++++-
>> mm/shmem.c | 5 +++++
>> 3 files changed, 25 insertions(+), 1 deletions(-)
>>
>> diff --git a/include/linux/mm.h b/include/linux/mm.h
>> index f59179b..858db90 100644
>> --- a/include/linux/mm.h
>> +++ b/include/linux/mm.h
>> @@ -868,6 +868,7 @@ extern void pagefault_out_of_memory(void);
>> extern void show_free_areas(unsigned int flags);
>> extern bool skip_free_areas_node(unsigned int flags, int nid);
>>
>> +int is_shmem_file(struct file *file);

If there aren't any more users of this other than your
msync.c below, we shouldn't need this exposed in mm.h. I
realized that it is implemented in shmem.c, but isn't there
a less global place to add this export (consider mm/internal.h)?
Also shouldn't it be extern, like the other defines in the file ?

>> int shmem_lock(struct file *file, int lock, struct user_struct *user);
>> struct file *shmem_file_setup(const char *name, loff_t size, unsigned
>> long flags);
>> void shmem_set_file(struct vm_area_struct *vma, struct file *file);
>> diff --git a/mm/msync.c b/mm/msync.c
>> index 632df45..2f0d8fa 100644
>> --- a/mm/msync.c
>> +++ b/mm/msync.c
>> @@ -13,6 +13,7 @@
>> #include<linux/file.h>
>> #include<linux/syscalls.h>
>> #include<linux/sched.h>
>> +#include<asm/cacheflush.h>
>>
>> /*
>> * MS_SYNC syncs the entire file - including mappings.
>> @@ -33,6 +34,7 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t,
>> len, int, flags)
>> unsigned long end;
>> struct mm_struct *mm = current->mm;
>> struct vm_area_struct *vma;
>> + struct file *file;
>> int unmapped_error = 0;
>> int error = -EINVAL;
>>
>> @@ -56,8 +58,24 @@ SYSCALL_DEFINE3(msync, unsigned long, start,
>> size_t, len, int, flags)
>> */
>> down_read(&mm->mmap_sem);
>> vma = find_vma(mm, start);
>> +
>> +#ifdef CONFIG_TMPFS
>> + /*
>> + * For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
>> + * there is not so much thing to do for CPUs without cache alias,
>> + * But for some CPUs with cache alias, msync has to flush cache
>> + * explicitly, which makes sure the data coherency between memory
>> + * file and cache.
>> + */
>> + file = vma->vm_file;
>> + if (is_shmem_file(file)) {
>> + flush_cache_range(vma, start, start+len);
>> + error = 0;

Hasn't error already been set to 0 ? .. I see it in the
original function being set right before this chunk of code
will run.

>> + goto out_unlock;

Do we really want this for all architectures/all boards ? This
is common/global code, so we need to tread carefully.

Is there a way that we could do this by arch hooks .. or is
flush_cache_range() sufficiently benign that it is little overhead
and safe everywhere ?

In the end, I'm not a mm expert, so we can fix this up, think
about it, and then run it past the people that really know :)

>> + }
>> +#endif
>> +
>> for (;;) {
>> - struct file *file;

There's an assignment:

   file = vma->vm_file;

Later in this routine, you've already done that above, so can't
it be dropped ?

Bruce

>>
>> /* Still start< end. */
>> error = -ENOMEM;
>> diff --git a/mm/shmem.c b/mm/shmem.c
>> index 92e5c15..4fabfac 100644
>> --- a/mm/shmem.c
>> +++ b/mm/shmem.c
>> @@ -2793,6 +2793,11 @@ static struct file_system_type tmpfs_fs_type = {
>> .kill_sb = kill_litter_super,
>> };
>>
>> +int is_shmem_file(struct file *file)
>> +{
>> + return (file->f_op ==&shmem_file_operations)? 1 : 0;
>> +}
>> +
>> int __init init_tmpfs(void)
>> {
>> int error;
>


