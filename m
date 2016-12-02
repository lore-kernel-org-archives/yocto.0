Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB981E009CE; Thu,  1 Dec 2016 17:47:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Dec 2016 17:47:20 PST
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 51E5EE00953
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 17:47:20 -0800 (PST)
Received: (qmail 16076 invoked by uid 1003); 2 Dec 2016 01:40:38 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@108.44.115.197)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	2 Dec 2016 01:40:38 -0000
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Trevor Woerner <twoerner@gmail.com>
References: <20161201200550.GA31925@openSUSE-i7.site>
	<CADkTA4OX9crgydX7FWBs6hQ1AYr3rOsGhokNPG+fdZNKef_-7w@mail.gmail.com>
	<20161201224415.GA4271@openSUSE-i7.site>
	<ece5577e-1fa2-aa07-fca4-716875ec921b@windriver.com>
	<20161201230921.GA4961@openSUSE-i7.site>
	<fc56f954-44af-53d6-94af-3e3ec4698396@windriver.com>
From: Philip Balister <philip@balister.org>
Message-ID: <aa22c7c5-7a64-b746-0d4f-b6ca6ef06957@balister.org>
Date: Thu, 1 Dec 2016 20:40:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <fc56f954-44af-53d6-94af-3e3ec4698396@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: yocto-kernel-tools and multiple users
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
X-List-Received-Date: Fri, 02 Dec 2016 01:47:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 12/01/2016 08:34 PM, Bruce Ashfield wrote:
> On 12/01/2016 06:09 PM, Trevor Woerner wrote:
>> On Thu 2016-12-01 @ 05:50:21 PM, Bruce Ashfield wrote:
>>> Can you just provide me the details of exactly how you are invoking
>>> the build that triggers the error ?
>>
>> $ git clone git://git.openembedded.org/openembedded-core.git
>>     (HEAD @ 11063a01d4511b2688ea7ba2d7359e4e07328c66)
>> $ git clone git://git.yoctoproject.org/meta-raspberrypi
>>     (HEAD @ 44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9)
>> $ git clone git://git.openembedded.org/bitbake.git
>>     (HEAD @ 0bb188f01e396052b127e170a25246d79a6d6741)
>>
>> $ openembedded-core/oe-init-build-env raspi2-test bitbake
>> $ bitbake-layers add-layer ../meta-raspberrypi
>>
>> $ MACHINE=raspberrypi2 bitbake virtual/kernel
> 
> FYI: I've found the issue and will bundle it into the /tmp/ fix
> tomorrow.

Awesome, I unstuck myself reverting a commit, but looking forward to a
real fix.

Philip

> 
> Bruce
> 
>>
>> Build Configuration:
>> BB_VERSION        = "1.32.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "opensuse-42.2"
>> TARGET_SYS        = "arm-oe-linux-gnueabi"
>> MACHINE           = "raspberrypi2"
>> DISTRO            = "nodistro"
>> DISTRO_VERSION    = "nodistro.0"
>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard
>> cortexa7"
>> TARGET_FPU        = "hard"
>> meta              = "master:11063a01d4511b2688ea7ba2d7359e4e07328c66"
>> meta-raspberrypi  = "master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"
>>
>> ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0
>> do_kernel_metadata: Function failed: do_kernel_metadata (log file is
>> located at
>> /z/layerindex-master/raspi2-basic-2/tmp-glibc/work/raspberrypi2-oe-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.9670)
>>
>> ERROR: Logfile of failure stored in:
>> /z/layerindex-master/raspi2-basic-2/tmp-glibc/work/raspberrypi2-oe-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.9670
>>
>> Log data follows:
>> | DEBUG: Executing shell function do_kernel_metadata
>> | [ERROR]: processing of file /tmp/tmp.G7DTQu11V3 failed
>> |
>> /z/layerindex-master/raspi2-basic-2/tmp-glibc/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd:
>> line 29: : No such file or directory
>> |
>> | Context around the error is:
>> |
>> |     #
>> |     prefix
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
>>
>> |     kconf non-hardware
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>>
>> |     prefix
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
>>
>> |     patch
>> "/z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
>>
>> |     # run time: 0 seconds
>> |     # processed files:
>> |     # _cfg
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>>
>> |     # _cfg
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>>
>> |
>> | See pre-processed file /tmp/tmp.G7DTQu11V3 for more details
>> | #
>> | # scc v0.8
>> | # processed: Thu Dec  1 18:08:50 EST 2016
>> | #
>> | # This is a scc output file, do not edit
>> | #
>> | [ERROR]: processing of file /tmp/tmp.zvbMU6XqZm failed
>> | # _reloc_dir
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux
>> | # _reloc_dir
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux
>> |
>> /z/layerindex-master/raspi2-basic-2/tmp-glibc/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd:
>> line 29: : No such file or directory
>> |
>> | Context around the error is:
>> |
>> |     #
>> |     prefix
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
>>
>> |     kconf non-hardware
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>>
>> |     prefix
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
>>
>> |     patch
>> "/z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
>>
>> |     # run time: 0 seconds
>> |     # processed files:
>> |     # _cfg
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>>
>> |     # _cfg
>> /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>>
>> |
>> | See pre-processed file /tmp/tmp.zvbMU6XqZm for more details
>> | ERROR: Function failed: do_kernel_metadata (log file is located at
>> /z/layerindex-master/raspi2-basic-2/tmp-glibc/work/raspberrypi2-oe-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.9670)
>>
>> ERROR: Task
>> (/z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:do_kernel_metadata)
>> failed with exit code '1'
>>
> 

