Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D83104C80815
	for <yocto@yoctoproject.org>; Tue, 30 Nov 2010 15:30:42 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAULUdAp001058;
	Tue, 30 Nov 2010 13:30:39 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 30 Nov 2010 13:30:38 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 30 Nov 2010 13:30:38 -0800
Message-ID: <4CF56CFD.9060606@windriver.com>
Date: Tue, 30 Nov 2010 16:30:37 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <4CF569E8.2000307@am.sony.com>
In-Reply-To: <4CF569E8.2000307@am.sony.com>
X-OriginalArrivalTime: 30 Nov 2010 21:30:38.0773 (UTC)
	FILETIME=[D517C650:01CB90D5]
Cc: yocto@yoctoproject.org
Subject: Re: fetch problem during build
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
X-List-Received-Date: Tue, 30 Nov 2010 21:30:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-30 04:17 PM, Tim Bird wrote:
> Hi all,
>
> I am trying out yocto, and I get the following error during an initial build:
>
> ERROR: Task failed: Fetch failed: Unable to fetch URL git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=common_pc-standard;name=machine from any source.
> NOTE: package linux-wrs-2.6.34+git0+b67e060194a38c6331da1532bd06446087a42b3b_0+0431115c9d720fee5bb105f6a7411efb4f851d26-r12: task do_fetch: Failed
> ERROR: Task 476 (/a/home/tbird/work/yocto/poky-laverne-4.0/meta/recipes-kernel/linux/linux-wrs_git.bb, do_fetch) failed with 1
>
> I don't have git access through my corporate firewall, except to kernel.org.
> I presume this is the source of the problem.  I read that someone else had problems
> with fetching source in CVS.  I suspect that will be a problem as well, since
> I don't have CVS access through my corporate firewall either.
>
> I tried the instructions at: https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
> (for the git-proxy), but this didn't work. I suspect I don't have a SOCKS
> proxy.
>
> In the CVS case above, there appeared to be a workaround to directly download
> some files.

It does sound like that, and you can typically download
and place things in the downloads directory manually
and they'll be picked up and used.

The kernel is no different from other packages in
this sense. I often point the SRC_URI at a local
clone on disk to to save time as well.

I don't have the instructions handy for what exactly
to do to clone via a proxy (others do though, so
hopefully they'll follow up) or download manually.

>
> Is this possible with the kernel source as well?
>
> Also, I presume I could substitute my own kernel
> source, if I wanted to?  Maybe some pointers about how to do what
> would be good as well.

For the 0.9 kernel, there is a specific structure
expected for the kernel source tree if you use the
default linux-wrs recipe. You can add to that structure
with your own BSP branches and kernel configuration
without changing the actual source repo.

For a completely different src tree, you can use
some of the other recipes for various other kernels
that use defconfigs and other mechanisms for board
support.

That being said, for 1.0, it will be easier/possible
to point the linux-yocto recipe at another src tree
and have the BSP branching structure automatically
created and bootstrapped for a board, based on any
number of trees.

So depending on what you want to try, there's definitely
something we can do to get you started.

Hope that helps,

Bruce

>
> Any assistance would be appreciated.
>
> Thanks,
>   -- Tim
>
> =============================
> Tim Bird
> Architecture Group Chair, CE Linux Forum
> Senior Staff Engineer, Sony Network Entertainment
> =============================
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


