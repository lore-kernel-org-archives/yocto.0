Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6157E01654
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 13:29:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r93KTqVk012300
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Oct 2013 13:29:52 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 3 Oct 2013 13:29:52 -0700
Message-ID: <524DD3BC.7080505@windriver.com>
Date: Thu, 3 Oct 2013 16:29:48 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Parker Mackenzie <wparkermackenzie@live.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>
In-Reply-To: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>
Subject: Re: Cross Compile Kernel Modules
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
X-List-Received-Date: Thu, 03 Oct 2013 20:29:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-03 04:08 PM, Parker Mackenzie wrote:
> I have been researching a way to build loadable kernel modules outside of Yocto for a while. I was excited to find a presentation from the Yocto Developer's Day 2013 which implied I code do this by adding the following line to my local.conf:
> IMAGE_INSTALL_append = " kernel_dev"
>
> However, when I ran bitbake for my beagleboard target I get the following error. Any help in understanding what is wrong and how to achieve my goal would be most helpful.

Try "kernel-dev"

Bruce

>
> Kind Regards,
> Parker Mackenzie
>
>
>
> [parker@jasper build]$ bitbake core-image-minimal
> Parsing recipes: 100% |#########################################| Time: 00:03:55
> Parsing of 814 .bb files complete (0 cached, 814 parsed). 1121 targets, 43 skipped, 0 masked, 0 errors.
>
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-17"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4.2"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'kernel_dev' (but /home/parker/Projects/beagleboard/yocto/poky-dylan-9.0.2/meta/recipes-core/images/core-image-minimal.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'kernel_dev' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['kernel_dev']
> ERROR: Required build target 'core-image-minimal' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal', 'kernel_dev']
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code. 		 	   		
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


