Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C951E00C41; Mon, 19 Nov 2018 12:19:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92BF2E00C09
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 12:19:57 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wAJKJtYO005585
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 19 Nov 2018 12:19:55 -0800 (PST)
Received: from server.local (128.224.23.51) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 19 Nov 2018 12:19:54 -0800
To: Sakib Sajal <ssajal@blackberry.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <999B71279F0CB24F8E7673582CE50F6ED38B8C@XMB117CNC.rim.net>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <346f0f44-98a5-2abc-9430-2ea7b901dd65@windriver.com>
Date: Mon, 19 Nov 2018 15:19:53 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <999B71279F0CB24F8E7673582CE50F6ED38B8C@XMB117CNC.rim.net>
Subject: Re: kconfig variables not being included in yocto build.
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
X-List-Received-Date: Mon, 19 Nov 2018 20:19:58 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2018-11-19 2:13 p.m., Sakib Sajal wrote:
> Hello,
> 
> I have been trying to patch the linux kernel and add some kernel 
> configuration but I am failing to add kconfig fragments to be included 
> in the final build.
> 
> Initially I tried patching the kernel with hardcoded values in the patch.
> 
> I am building for qemu to minimize the variables I have to worry about.
> 
> Build Configuration:
> BB_VERSION           = "1.38.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "ubuntu-16.04"
> TARGET_SYS           = "i586-poky-linux"
> MACHINE              = "qemux86"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.5.1"         // branch "sumo"
> TUNE_FEATURES        = "m32 i586"
> TARGET_FPU           = ""
> 
> 
> My initial project structure:
> 
> -poky
> --meta
> --meta-poky
> --meta-yocto-bsp
> --meta-my-layer
> ---recipes-kernel
> ----linux
> -----linux-yocto
> ------my-patch.patch
> -----linux-yocto_4%.bbappend
> ---conf
> ----layer.conf
> 
> Content of the bbappend file:
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
> SRC_URI += "file://my-patch.patch"
> 
> I enabled my-layer by adding the layer in the build/conf/bblayers.conf 
> file. I was able to build an image and test my changes with the 
> hardcoded valued in my patch.
> 
> However I want the values to be configurable through kernel 
> configuration. Since I knew what variables I have introduced, I put them 
> in a .cfg file with their desired values in the linux-yocto folder.
> 
> New project structure:
> 
> -poky
> --meta-my-layer
> ---recipes-kernel
> ----linux
> -----linux-yocto
> ------my-conf-frag.cfg
> 
> (other files and directories are same as before)
> 
> Added the following line to the .bbappend file:
> SRC_URI += "file://my-conf-frag.cfg"
> 
> Content of my-conf-frag.cfg:
> CONFIG_MY_FIRST_VAR="MY-NAME"
> CONFIG_MY_SECOND_VAR=y
> 
> Then I run:
> bitbake core-image-base
> 
> and get the following error:
> 
> ERROR: Task 
> (<work_dir>/poky/meta/recipes-kernel/linux/linux-yocto_4.14.bb:do_compile) 
> failed with exit code '1'
> 
> The kernel isn't being compiled since it does not know what 
> "CONFIG_MY_FIRST_VAR" is.
> 
> I checked for .config files in the build directory and found one in 
> "poky/build/tmp/work-shared/qemux86/kernel-source/.kernel-meta/cfg/.config" 
> which contained the two variables I defined in my cfg file. But that 
> file is a kernel configuration fragment file itself. The final config 
> file which is used to build the image is located, I believe, in 
> "poky/build/tmp/work/qemux86-poky-linux/linux-yocto/4.14.67+gitAUTOINC+c43c9e19a2_084af9624d-r0/linux-qemux86-standard-build/.config" 
> but i do not see the variables there in the final .config file. I was 
> also able to locate the cfg and the patch file in 
> "/poky/build/tmp/work/qemux86-poky-linux/linux-yocto/4.14.67+gitAUTOINC+c43c9e19a2_084af9624d-r0/"directory. 
> Therefore the files are being picked up by the build system but the 
> fragments are not being applied to make the final .config file used to 
> build the kernel.

Without being able to see the code that defines those CONFIG_
symbols, I can't say for sure. But if the fragment was located
and added to the config queue, then the only real way that they
wouldn't be in the final .config is a missing dependency for the
option.

If there's any way that you could make the specific layers available
to me for a test build, I could offer more specific suggestions.

Bruce

> 
> I went through yocto mailing list for similar problems and followed the 
> steps provided with no success. I also went through yocto's mega-manual 
> and kernel development manual as well as the yocto-lab pdfs and followed 
> all the different steps but i always get the compilation error.
> 
> Can someone please help me. Thanks in advance!
> 
> Sakib Sajal
> 
> 


