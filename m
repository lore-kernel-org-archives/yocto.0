Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80B0BE003DB
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 09:00:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2FG0SJU018296
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Mar 2013 09:00:28 -0700 (PDT)
Received: from [128.224.22.59] (128.224.22.59) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 15 Mar 2013 09:00:28 -0700
Message-ID: <5143459A.3060300@windriver.com>
Date: Fri, 15 Mar 2013 09:00:26 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
References: <513F58FA.3080808@digitalendoscopy.de>
	<loom.20130315T095848-21@post.gmane.org>
	<51433167.2060009@windriver.com>
	<loom.20130315T160013-564@post.gmane.org>
In-Reply-To: <loom.20130315T160013-564@post.gmane.org>
Cc: yocto@yoctoproject.org
Subject: Re: building yocto image from git always switches branch
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
X-List-Received-Date: Fri, 15 Mar 2013 16:00:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-15 08:04 AM, Volker Vogelhuber wrote:
> Hi,
>
>> Interesting. Are you working out of yocto/oe-core master ? The linux
>> yocto kernel support should always fail if the kernel source dir
>> isn't a git repo (or convert it into one) and not impact the main
>> yocto/oe-core tree.
> As mentioned in the first post, I checked out the danny branch.
>
> I used the following bitbake recipe for kernel compilation:
>
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> SECTION = "kernel"
> LICENSE = "GPLv2"
>
> LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>
>
> DESCRIPTION = "Linux kernel for the tao-boards"
> KERNEL_IMAGETYPE = "uImage"
> KERNEL_CC_append += "-mno-unaligned-access "
>
> COMPATIBLE_MACHINE = "(tao)"
>
> PV = "2.6.37"
>
> MACHINE_KERNEL_PR_append = "c+tn"
>
> SRC_URI = "file://linux-2.6.37-tn.tar.xz \
>             file://defconfig \
>             file://nonetwork.patch \
>             file://rtc.patch \
> 	   file://multitouch.patch"
>
> S = "${WORKDIR}/linux-2.6.37-tn"
>
> # Sadly perf is broken:
> do_compile_perf() {
> 	:
> }
>
> do_validate_branches() {
> 	  :
> }
>
> do_install_perf() {
> 	:
> }
>
>
> After I removed the require recipes-kernel/linux/linux-yocto.inc
> line it worked. As you can see I have a .tar.xz file for the kernel source, so
> no git. But the git command within the linux-yocto.inc file
> realizes, that there is a git repository. But it's not one from the
> kernel, but from the poky repository the whole build environment is
> located in.

Hmmm. This is definitely supposed to error in the build process.
If you use linux-yocto-custom as a baseline recipe (from meta-skeleton),
you'll find the tgz that is unpacked by the build system is converted
to a git repository before the build starts, allow all the tool extensions
to work with configs that for one reason or another can't use a git
backed tree.

I just tested it here, and it worked, using the latest code in master.

Cheers,

Bruce

>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


