Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96EEBE005B1
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 23:13:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rBB7DPJx029979
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Dec 2013 23:13:25 -0800 (PST)
Received: from server.local (128.224.22.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 10 Dec 2013 23:13:24 -0800
Message-ID: <52A8109A.50705@windriver.com>
Date: Wed, 11 Dec 2013 02:13:30 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Sudhangathan B S <sudhangathan@gmail.com>, "Gumstix users."
	<gumstix-users@lists.sourceforge.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CAGX3a99HP8-gseen9mzKB_g2hSGCeLGt0oFe4t6MDOazqSaGdQ@mail.gmail.com>
In-Reply-To: <CAGX3a99HP8-gseen9mzKB_g2hSGCeLGt0oFe4t6MDOazqSaGdQ@mail.gmail.com>
Subject: Re: Compiling kernel from external source in Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Dec 2013 07:13:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/2013, 2:00 AM, Sudhangathan B S wrote:
> Hi, I'm having this issue, I'm not able to compile a kernel source which
> I have in my system, locally.
>
> This is my recipe, after following instructions at
> http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#building-software-from-an-external-source
>
> require linux.inc
> #THIS TEMPLATE COPIED FROM linux-sakoman_3.5.bb
> <http://linux-sakoman_3.5.bb>
> DESCRIPTION = "Linux kernel for OMAP processors"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> KERNEL_IMAGETYPE = "uImage"
> COMPATIBLE_MACHINE = "overo"
> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-omap-khilmanpm:"
> PV = "3.5"
> inherit externalsrc
> S =
> "/home/desen555/suan_work/kernel_work/khilman35-src-mods/linux-omap-khilmanpm"
> B = "${WORKDIR}/git"
> SRC_URI = "file://defconfig \
>             file://omap2plus_defconfig \
>             file://usb_off.patch \
>             "
>
> As you can see the kernel source directory is in S variable.
>
> When the command "bitbake virtual/kernel" is run, i get this output
>
> ERROR: Function failed: do_configure (see
> /home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
> for further information)
> ERROR: Logfile of failure stored in:
> /home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: Executing shell function do_configure
> | sed: can't read
> /home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/*defconfig:
> No such file or directory*
> | ERROR: Function failed: do_configure (see
> /home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
> for further information)
> ERROR: Task 2
> (/home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/linux-omap-khilmanpm_3.5.bb
> <http://linux-omap-khilmanpm_3.5.bb>, do_configure) failed with exit
> code '1'
> NOTE: Tasks Summary: Attempted 545 tasks of which 543 didn't need to be
> rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>
> /home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/linux-omap-khilmanpm_3.5.bb
> <http://linux-omap-khilmanpm_3.5.bb>, do_configure
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> If at all I put my defconfig file in the place it is looking for, then
> it throws other errors, so I guess that is not the right way..

What other errors ? You are on the right track. When using externalsrc,
you need to ensure the kernel is configured before the build starts,
since the actual build skips steps to not modify your source tree.

If you ensure that a full .config is in your kernel's build directory, 
and that defconfig is in place, what errors do you get then ?

Also note: you can have tasks skipped by adding them to SRCTREECOVEREDTASKS
in your recipe.

Bruce

>
> Anybody compiled kernel as an external source in yocto..??
> ---------------------------------
> *Sudhangathan BS*
> Ph:(+91) 9731-905-205
> ---------------------------------
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


