Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62DFD4C800A8
	for <yocto@yoctoproject.org>; Fri,  4 Feb 2011 08:16:44 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p14EGhGg023744;
	Fri, 4 Feb 2011 06:16:43 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 4 Feb 2011 06:16:43 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 4 Feb 2011 06:16:41 -0800
Message-ID: <4D4C0A48.2020504@windriver.com>
Date: Fri, 04 Feb 2011 09:16:40 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110131 Thunderbird/3.1.8 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA950D9782E2@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950D9782E2@orsmsx504.amr.corp.intel.com>
X-OriginalArrivalTime: 04 Feb 2011 14:16:42.0894 (UTC)
	FILETIME=[25C36AE0:01CBC476]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [poky] meta-toolchain build failed on fetch
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
X-List-Received-Date: Fri, 04 Feb 2011 14:16:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-04 12:20 AM, Zhang, Jessica wrote:
> Has anyone run into the following failure, this is for meta-toolchain
> for x86_64:

This is lurking in various forms at the moment, the fetcher
updates + new branches and the mirrors with old copies (my
guess), is causing this undesirable behaviour.

> | Fetcher accessed the network with the command git fetch
> git.pokylinux.org/linux-yocto-2.6.37
> | NOTE: Fetcher accessed the network with the command git fetch
> git.pokylinux.org/linux-yocto-2.6.37
> | Fetching origin
> | error: unable to resolve reference
> refs/remotes/origin/yocto/standard/common-pc-64/base: Not a directory
> | From git://git.pokylinux.org/linux-yocto-2.6.37
> | ! [new branch] yocto/standard/common-pc-64/base ->
> origin/yocto/standard/common-pc-64/base (unable to update local ref)
> | error: unable to resolve reference

This is due to the way that git manages things on disk. In
this case, make sure to completely remove your old downloaded
copy of the repo and re-fetch.

I'm trying to find a way to have git properly deal with
this at the moment.

Cheers,

Bruce

> refs/remotes/origin/yocto/standard/common-pc-64/sugarbay: Not a directory
> | ! [new branch] yocto/standard/common-pc-64/sugarbay ->
> origin/yocto/standard/common-pc-64/sugarbay (unable to update local ref)
> | error: some local refs could not be updated; try running
> | 'git remote prune origin' to remove any old, conflicting branches
> | error: Could not fetch origin
> | Function 'Fetch failed: Unable to fetch URL
> git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=yocto/standard/base;name=machine
> from any source.' failed
> | ERROR: Function 'Fetch failed: Unable to fetch URL
> git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=yocto/standard/base;name=machine
> from any source.' failed
> NOTE: package
> linux-libc-headers-yocto-2.6.37+git-0+a9d833fda90e2f1257888a97e092135610b5f259_0+standard-r2:
> task Fetch failed: Unable to fetch URL
> git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=yocto/standard/base;name=machine
> from any source.: Failed
> NOTE: package gcc-cross-4.5.1-r2: task do_unpack: Started
> ERROR: Task 441
> (/home/jzhang/poky-master/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb,
> do_fetch) failed with exit code '1'
> Thanks,
> Jessica
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


