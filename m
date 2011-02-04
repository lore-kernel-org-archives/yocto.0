Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8375E4C800A3
	for <yocto@yoctoproject.org>; Fri,  4 Feb 2011 01:38:57 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Feb 2011 23:38:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="384073237"
Received: from unknown (HELO [10.255.14.192]) ([10.255.14.192])
	by azsmga001.ch.intel.com with ESMTP; 03 Feb 2011 23:38:56 -0800
Message-ID: <4D4BAD0F.5020308@linux.intel.com>
Date: Thu, 03 Feb 2011 23:38:55 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA950D9782E2@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950D9782E2@orsmsx504.amr.corp.intel.com>
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
X-List-Received-Date: Fri, 04 Feb 2011 07:38:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard:

I am seeing a slightly different failure with master:

> NOTE: Running task 551 of 9061 (ID: 8270, /intel/poky/distro/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb, do_fetch)
> NOTE: Running task 1245 of 9061 (ID: 8016, /intel/poky/distro/meta/recipes-kernel/linux/linux-yocto_git.bb, do_kernel_checkout)
> NOTE: package linux-libc-headers-yocto-2.6.37+git-1+41ec30ddc42912fec133a533b924e9c56ecda8f9_1+standard-r2: task do_fetch: Started
> ERROR: Function 'Fetch failed: Unable to fetch URL git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/base,meta;name=machine,meta from any source.' failed
> ERROR: Logfile of failure stored in: /intel/poky/builds/clean/tmp/work/mips-poky-linux/linux-libc-headers-yocto-2.6.37+git-1+41ec30ddc42912fec133a533b924e9c56ecda8f9_1+standard-r2/temp/log.do_fetch.20289
> Log data follows:
> | NOTE: Fetcher accessed the network with the command git fetch git.pokylinux.org/linux-yocto-2.6.37
> | ERROR: Function 'Fetch failed: Unable to fetch URL git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/base,meta;name=machine,meta from any source.' failed
> | Fetcher accessed the network with the command git fetch git.pokylinux.org/linux-yocto-2.6.37
> | error: Could not remove config section 'remote.origin'
> |  Function 'Fetch failed: Unable to fetch URL git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/base,meta;name=machine,meta from any source.' failed
> NOTE: package linux-libc-headers-yocto-2.6.37+git-1+41ec30ddc42912fec133a533b924e9c56ecda8f9_1+standard-r2: task Fetch failed: Unable to fetch URL git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/base,meta;name=machine,meta from any source.: Failed
> ERROR: Task 8270 (/intel/poky/distro/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb, do_fetch) failed with exit code '1'

I tried your branch, but it failed in different ways and I just had to 
give up fighting with it.

Interestingly, the autobuilder is not seeing these failures.

There still seems to be docs related failures with prelink, I may pull 
in Mark's workaround in the morning.

Sau!


On 02/03/2011 09:20 PM, Zhang, Jessica wrote:
> Has anyone run into the following failure, this is for meta-toolchain
> for x86_64:
> ERROR: Function 'Fetch failed: Unable to fetch URL
> git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=yocto/standard/base;name=machine
> from any source.' failed
> ERROR: Logfile of failure stored in:
> /home/jzhang/master-arm-build/tmp/work/i586-poky-linux/linux-libc-headers-yocto-2.6.37+git-0+a9d833fda90e2f1257888a97e092135610b5f259_0+standard-r2/temp/log.do_fetch.3772
> Log data follows:
> | Fetcher accessed the network with the command git fetch
> git.pokylinux.org/linux-yocto-2.6.37
> | NOTE: Fetcher accessed the network with the command git fetch
> git.pokylinux.org/linux-yocto-2.6.37
> | Fetching origin
> | error: unable to resolve reference
> refs/remotes/origin/yocto/standard/common-pc-64/base: Not a directory
> | >From git://git.pokylinux.org/linux-yocto-2.6.37
> | ! [new branch] yocto/standard/common-pc-64/base ->
> origin/yocto/standard/common-pc-64/base (unable to update local ref)
> | error: unable to resolve reference
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


