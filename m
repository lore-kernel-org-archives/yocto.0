Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF0714C8007E
	for <yocto@yoctoproject.org>; Mon, 14 Feb 2011 09:57:49 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1EFvm6t010054;
	Mon, 14 Feb 2011 07:57:48 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 14 Feb 2011 07:57:48 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 14 Feb 2011 07:57:48 -0800
Message-ID: <4D5950FB.9020809@windriver.com>
Date: Mon, 14 Feb 2011 09:57:47 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Cui, Dexuan" <dexuan.cui@intel.com>
References: <1865303E0DED764181A9D882DEF65FB68630C8DA71@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB68630C8DA71@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 14 Feb 2011 15:57:48.0276 (UTC)
	FILETIME=[ED24C340:01CBCC5F]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some nightly build failures on autobuilder (on commit b9a97e07, namely, "Revert part of the unpack change...")
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
X-List-Received-Date: Mon, 14 Feb 2011 15:57:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/14/11 12:52 AM, Cui, Dexuan wrote:
> 1)	Building qemumips meta-toolchain-sdk failed: 
> http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/35/steps/shell_26/logs/stdio
> eglibc's do_package failed: 
> ERROR: Error executing a python function in /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-core/eglibc/eglibc_2.12.bb:
> CopyFailed: Command tar -cf - -C /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mips-poky-linux/eglibc-2.12-r13/sstate-install-package///package -ps . | tar -xf - -C /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mips-poky-linux/eglibc-2.12-r13/package failed with return value 2
> 
> Looks it's related to Mark's recent commit 3e6d91ec, but what's odd is: qemumips failed here while qemux86 and qemuarm are ok... BTW: MACHINE routerstationpro and atom-pc also have the same failure as qemumips.

I've not seen this error.  The code in question would be located in
meta/classes/package.bbclass.  There are only a couple of locations in there
that we switched to the 'tar' method of copying.

Is there any other error messages in the logs besides the one above?

If it truly was error "2", then it means "No such file or directory".

If someone is able to reproduce this, we can figure out if the source or
destination are missing and how that occurred.

> 2)	on mpc, linux-libc-headers-yocto-2.6.37+git do_install failed:
> http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/35/steps/shell_19/logs/stdio
> | install: cannot create regular file `/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/ppc603e-poky-linux/linux-libc-headers-yocto-2.6.37+git-1+343c06b25b221aa7f7019aee83b2d976041fddce_1+343c06b25b221aa7f7019aee83b2d976041fddce-r2/image/boot/devicetree-': No such file or directory
> NOTE: package linux-libc-headers-yocto-2.6.37+git-1+343c06b25b221aa7f7019aee83b2d976041fddce
> 
> 3)	ememlow do_rootfs failed:
> http://autobuilder.pokylinux.org:8010/builders/nightly-internal/builds/48/steps/shell_9/logs/stdio
> | error: Failed dependencies:
> | 	keymaps is needed by task-poky-boot-1.0-r7.emenlow
> | 	base-files is needed by task-poky-boot-1.0-r7.emenlow
> | 	task-base-wifi is needed by task-base-extended-1.0-r69.emenlow
> | 	task-base-bluetooth is needed by task-base-extended-1.0-r69.emenlow
> | 	task-base is needed by task-base-extended-1.0-r69.emenlow
> | ...
> 
> First I'm trying to reproduce issue 1 now. Mark, do you have any quick thought?  :-)
> 
> 
> Thanks,
> -- Dexuan
>  
> 


