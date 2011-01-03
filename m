Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D9E74C80B70
	for <yocto@yoctoproject.org>; Mon,  3 Jan 2011 10:00:40 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p03G0d8F017169;
	Mon, 3 Jan 2011 08:00:39 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 3 Jan 2011 08:00:39 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 3 Jan 2011 08:00:38 -0800
Message-ID: <4D21F2A6.8030900@windriver.com>
Date: Mon, 03 Jan 2011 11:00:38 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRnJlaXRhcw==?= <joaohf@gmail.com>
References: <AANLkTimHq1JGQCUfsPcc4DdBYWxDdGmtBzgV0ObvJDZ-@mail.gmail.com>
In-Reply-To: <AANLkTimHq1JGQCUfsPcc4DdBYWxDdGmtBzgV0ObvJDZ-@mail.gmail.com>
X-OriginalArrivalTime: 03 Jan 2011 16:00:39.0138 (UTC)
	FILETIME=[5DA2BC20:01CBAB5F]
Cc: yocto@yoctoproject.org
Subject: Re: linux yocto private branch
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
X-List-Received-Date: Mon, 03 Jan 2011 16:00:40 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10-12-28 07:54 PM, João Henrique Freitas wrote:
> Hi,
>
> This question is about how I can track linux yocto and maintain a
> private kernel.
>
> I am tracking the yocto master on git.
>
> My target is to use linux-yocto kernel and with my personal machine
> (IBM and HP blade servers x86-64 or x86).
> Probably I need to setup some special driver like disk controller or
> network device, but it's not the case now.
>
> I want to track linux-yocto kernel. To accomplish it, I created a
> linux-yocto_git.bbappend with:
>
> SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=${KBRANCH};name=machine
> \
>             git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;noclone=1;branch=meta;name=meta
> \
>             file://defconfig"
>
> KMACHINE_mpg = "yocto/standard/common-pc/base"<---- it's right?

This will be right in a few weeks, but right now, the
searching for machine specific configuration is triggered
from the branch name, so you still require a machine
specific branch. This is a long standing optimization to
represent validated configurations in the kernel tree, but
to control branch "explosion" I've completed some changes
that allow many (unlimited) boards to be built from a single
branch.

So for this, you'd want  "yocto/standard/common-pc/mpg", and
have a kernel tree that contains the branch (this is BSP
bootstrapping). I have a meta-kernel-dev layer that facilitates
a local clone (where you can easily make your own branch), and
it will be available in the poky-extras repo very soon (I don't
have push access at the moment).

> COMPATIBLE_MACHINE = "mpg"<--- my kernel config
>
> My doubt: KMACHINE_mpg can be "yocto/standard/mpg" or it need to be a
> strict branch on yocto git?

See above. Your doubt was correct.

>
> In other words, Can I have a private branch and track a default
> yocto/standard/common-pc/base?

You can. You need to initially create your BSP branch from that
point, and as you update your tree, merge common-pc/base into
your BSP to pickup the main kernel updates.

To have your own kernel configuration, see the examples for
other BSPs on the 'meta' branch. Create your own infrastructure
there, and things will work. Since you are tracking a branch
besides 'standard/base' you need to have your own .scc file
on the meta branch since the auto detect logic will fall back
to tracking standard.

Cheers,

Bruce

>
> I read kernel-manual_9.pdf, section 3.4.4 but I believe it's a bit outdate now.
>
> Currently I can build linux-yocto and create a full image to be use
> with VirtualBox and with real hardware.
>
> Thanks.
>
> PS:
>
> I think that yocto can be use to build and runs in big machines too,
> not only in small devices.
>


