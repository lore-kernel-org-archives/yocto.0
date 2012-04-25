Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0FDEE013DC
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 06:47:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3PDldh8007390
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 06:47:39 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 25 Apr 2012 06:47:39 -0700
Message-ID: <4F980070.2070303@windriver.com>
Date: Wed, 25 Apr 2012 09:47:28 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <1335348389-12781-1-git-send-email-kai.kang@windriver.com>
In-Reply-To: <1335348389-12781-1-git-send-email-kai.kang@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mm/msync: tweak tmpfs patch for syscall msync
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
X-List-Received-Date: Wed, 25 Apr 2012 13:47:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-25 06:06 AM, Kang Kai wrote:
> Commit 1c3ae5441 fixes MIPS CPU cache alias problem. But it makes

Put a short log after the commit ID, that way we can read what the
old commit was trying to do right in this commit.

> posix test cases mlockall/3-6 3-7 fail.

Can we expand on what the test is doing ? That way the commit
header is stand alone. I know that I haven't memorized what all the
posix tests do :)

> Tweak the patch to:
> 1 check the vma and its flags first

Can you expand here as well. Do you really mean that you've moved
the CONFIG_TMPFS block down in the function so that the normal
vma flag checking will occur ?

> 2 don't quit the function when meet first vma belongs to tmpfs file

And for this part, can you (or Zumeng) explain why we used to need
to exit immediately and now we don't ?

The patch looks good though, thanks for looking into this tricky
area of code.

Cheers,

Bruce

>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   mm/msync.c |   30 +++++++++++++-----------------
>   1 files changed, 13 insertions(+), 17 deletions(-)
>
> diff --git a/mm/msync.c b/mm/msync.c
> index ced6215..31cd311 100644
> --- a/mm/msync.c
> +++ b/mm/msync.c
> @@ -60,23 +60,6 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
>   	down_read(&mm->mmap_sem);
>   	vma = find_vma(mm, start);
>
> -#ifdef CONFIG_TMPFS
> -	/*
> -	 * For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
> -	 * there is not so much thing to do for CPUs without cache alias,
> -	 * But for some CPUs with cache alias, msync has to flush cache
> -	 * explicitly, which makes sure the data coherency between memory
> -	 * file and cache.
> -	 */
> -	file =  vma->vm_file;
> -	if (file&&  (file->f_op ==&shmem_file_operations)) {
> -		if(CPU_HAS_CACHE_ALIAS)
> -			flush_cache_range(vma, start, start+len);
> -		error = 0;
> -		goto out_unlock;
> -	}
> -#endif
> -
>   	for (;;) {
>
>   		/* Still start<  end. */
> @@ -97,6 +80,19 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
>   			goto out_unlock;
>   		}
>   		file = vma->vm_file;
> +#ifdef CONFIG_TMPFS
> +		/*
> +		 * For tmpfs, no matter which flag(ASYNC or SYNC) gets from msync,
> +		 * there is not so much thing to do for CPUs without cache alias,
> +		 * But for some CPUs with cache alias, msync has to flush cache
> +		 * explicitly, which makes sure the data coherency between memory
> +		 * file and cache.
> +		 */
> +		if (file&&  (file->f_op ==&shmem_file_operations)) {
> +			if(CPU_HAS_CACHE_ALIAS)
> +				flush_cache_range(vma, start, start+len);
> +		}
> +#endif
>   		start = vma->vm_end;
>   		if ((flags&  MS_SYNC)&&  file&&
>   				(vma->vm_flags&  VM_SHARED)) {


