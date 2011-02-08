Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 196DE4C8006D
	for <yocto@yoctoproject.org>; Tue,  8 Feb 2011 11:39:01 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p18Hd0GQ016586;
	Tue, 8 Feb 2011 09:39:00 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 09:38:59 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 09:38:59 -0800
Message-ID: <4D517FB2.4020205@windriver.com>
Date: Tue, 08 Feb 2011 12:38:58 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110131 Thunderbird/3.1.8 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <AANLkTimx3rKU_wj-depc214tGMNnpEZF4OU059H9FGHd@mail.gmail.com>
	<4D514F05.1080408@windriver.com>
	<AANLkTim15FWNjmcTgTf3taoX_z8EmGyThqf7e1WyNFnc@mail.gmail.com>
In-Reply-To: <AANLkTim15FWNjmcTgTf3taoX_z8EmGyThqf7e1WyNFnc@mail.gmail.com>
X-OriginalArrivalTime: 08 Feb 2011 17:38:59.0632 (UTC)
	FILETIME=[1179AB00:01CBC7B7]
Cc: yocto@yoctoproject.org
Subject: Re: Adding machine for linux-yocto-stable
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
X-List-Received-Date: Tue, 08 Feb 2011 17:39:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-08 12:31 PM, Diego Sueiro wrote:
> Bruce,
>
> I've updated my yocto tree but I'm still getting this error:
>
> ERROR: Function 'do_kernel_checkout' failed (see
> /home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
> for further information)
> ERROR: Logfile of failure stored in:
> /home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
> Log data follows:
> | Fixing up git directory for standard/devkit8000
> | error: pathspec 'devkit8000-standard' did not match any file(s) known
> to git.
> | ERROR: Function 'do_kernel_checkout' failed (see
> /home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
> for further information)
> NOTE: package
> linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1:
> task do_kernel_checkout: Failed
> ERROR: Task 1
> (/home/dev-2/yocto/poky/meta-boardware/recipes-kernel/linux/linux-yocto-stable_git.bb
> <http://linux-yocto-stable_git.bb>, do_kernel_checkout) failed with exit
> code '1'

This is the typical BSP bootstrap 'problem'. Hold on for
just a little while longer, with the new fetcher changes
in master, I'm updating the recipes (literally now) to
fix this and am testing the workflow for adding a new board
as part of these changes.

Cheers,

Bruce

>
> I've tried this two options on
> SRCREV_machine_pn-linux-yocto-stable_devkit8000:
>
>     "ef7f944e773950d4016b7643f9ecf052bbe250cd" = beagleboard-standard branch
>     "2b1caf6ed7b888c95a1909d343799672731651a5" = master branch
>     "72ca49ab08b8eb475cec82a10049503602325791" = standard branch
>
>
> There isn't an specific devki8000 branch.
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> On Tue, Feb 8, 2011 at 12:11 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 11-02-08 08:46 AM, Diego Sueiro wrote:
>
>         Folks,
>
>         I'm trying to get devkit8000 kernel compiled with
>         linux-yocto-stable recipe.
>         I've added devkit8000 on COMPATIBLE_MACHINE and on
>         KMACHINE_dekvkit800.
>
>         But I don't know what pokylinux branch to use to make the kernel
>         build
>         works.
>
>         I believe that I have to config these variables:
>
>         LINUX_KERNEL_TYPE
>
>
>     This one defaults to something sane, so you don't need
>     to set this line.
>
>
>         SRCREV_machine_pn-linux-yocto-stable_devkit8000
>
>
>     You would need to set this, to a SRCREV of the branch you'll
>     end up building.
>
>
>
>         Any suggestions?
>
>
>     Are you working out of an up to date master ? I've made some
>     changes recently that allow BSPs to bootstrap/reuse existing
>     branches. If you aren't on the latest master the procedure
>     is different.
>
>     Cheers,
>
>     Bruce
>
>
>         Regards,
>
>         --
>         *dS
>         Diego Sueiro
>
>         /*long live rock 'n roll*/
>
>
>
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
>
>
>


