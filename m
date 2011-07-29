Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D92B04C80986
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2011 08:12:27 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6TDCOYx022905
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 29 Jul 2011 06:12:24 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 29 Jul 2011 06:12:24 -0700
Message-ID: <4E32B1B6.4010608@windriver.com>
Date: Fri, 29 Jul 2011 09:12:22 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Andre Haupt <andre@bitwigglers.org>
References: <20110729072359.GA5109@localhost.localdomain>
	<20110729100525.GA26451@localhost.localdomain>
In-Reply-To: <20110729100525.GA26451@localhost.localdomain>
Cc: yocto@yoctoproject.org
Subject: Re: crownbay-noemgd poky-image-minimal fails to build
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
X-List-Received-Date: Fri, 29 Jul 2011 13:12:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/29/11 06:05, Andre Haupt wrote:
> On Fri, Jul 29, 2011 at 09:23:59AM +0200, Andre Haupt wrote:
>> Hi all,
>>
>> I am trying to build a poky bernard image for crownbay-noemgd.
>> For this i checked out the bernard branch of both poky and meta-intel
>> from git.yoctoproject.org.
>>
>> Bitbake fails during the kernels compile_perf task complaining that it can not
>> find libdw.h and bfd.h and that using /usr/local/include as include
>> location is unsafe for cross compilation (full log attached).
>>
>> What do i miss here?
>
> I did work around this with
>
> diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-
> index 3c1e669..85caa92 100644
> --- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
> @@ -42,4 +42,4 @@ KERNEL_FEATURES=features/netfilter
>   addtask kernel_link_vmlinux after do_compile before do_install
>    addtask validate_branches before do_patch after do_kernel_checkout
>
>    -require linux-tools.inc
>    +#require linux-tools.inc
>
>
> not sure that this is the right thing to do though.

It's an acceptable work around to keep you building on your
local machine, assuming that you don't need perf. But the
linux-yocto recipes always want to provide perf, and hence
have that include.

I'm trying to dust off my memory here. I know that this has
been seen, and I also know that this built fine in the bernard
release.

The first part of the issue is the:

Makefile:508: No libdw.h found or old libdw.h found, disables dwarf 
support. Please install elfutils-devel/elfutils-dev

We may have a missing host dependency in the checks. Have you
tried installing the relevant package for F13 ?

As for the second, there's a patch in the 2.6.34 kernel tree
that is dealing with it:

http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.34/commit/?h=standard&id=72ca49ab08b8eb475cec82a10049503602325791

It sounds like there may be a SRCREV problem for the board that
isn't picking up that change. Can you confirm that this commit
is in your board branch ?  You can check in your build directory
for linux.

Bruce

>
> cheers,
>
> Andre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


