Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B430EE00E04; Wed, 10 Jan 2018 21:45:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA1EE00DA9
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 21:45:30 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w0B5jOGw027836
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Jan 2018 21:45:26 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 10 Jan 2018 21:45:18 -0800
To: Martin Siegumfeldt <mns@gomspace.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <HE1PR0402MB332361FF0CE06D405DE24AADC4110@HE1PR0402MB3323.eurprd04.prod.outlook.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <0fe12bc8-d43e-1d1a-2177-4a4a3d3ba04e@windriver.com>
Date: Thu, 11 Jan 2018 13:45:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0402MB332361FF0CE06D405DE24AADC4110@HE1PR0402MB3323.eurprd04.prod.outlook.com>
Subject: Re: Issues building Extensible SDK
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
X-List-Received-Date: Thu, 11 Jan 2018 05:45:31 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Martin,

Try:

$ bitbake -e | grep '^INHERIT=.*uninative'

If there is nothing, then add the following line to conf/local.conf:

INHERIT += "uninative"

// Robert

On 01/10/2018 03:46 PM, Martin Siegumfeldt wrote:
> Hi,
> 
> We have a custom piece of (Zynq based) HW that we render a custom distro using Yocto. I am trying to build the extensible SDK but run into the below error:
> 
> pokyuser@03c19f8798ba:/workdir/krogoth/build$ bitbake core-image-minimal -c populate_sdk_ext
> Loading cache: 100% |################################################################################################################################################################################################################################################| Time: 0:00:00
> Loaded 2675 entries from dependency cache.
> Parsing recipes: 100% |##############################################################################################################################################################################################################################################| Time: 0:00:01
> Parsing of 1915 .bb files complete (1913 cached, 2 parsed). 2677 targets, 377 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> 
> Build Configuration:
> BB_VERSION        = "1.34.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "ubuntu-16.04"
> TARGET_SYS        = "arm-oe-linux-gnueabi"
> MACHINE           = "zynq-soft-z7000-mb-v2"
> DISTRO            = "gomspace"
> DISTRO_VERSION    = "2.0"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
> TARGET_FPU        = "hard"
> meta              = "pyro:9c75151116aa293dc8567c237d7e4da5bdec90e3"
> meta-xilinx       = "pyro:18097af3120a394a8e6933b7abc85e73e508c7e3"
> meta-oe
> meta-filesystems
> meta-networking
> meta-python       = "pyro:dfbdd28d206a74bf264c2f7ee0f7b3e5af587796"
> meta-z7000        = "pyro:b255ea4575b40d77a2f5dc9200de0718f979f175"
> 
> Initialising tasks: 100% |###########################################################################################################################################################################################################################################| Time: 0:00:03
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Error executing a python function in exec_python_func() autogenerated:
> 
> The stack trace of python calls that resulted in this exception/failure was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>       0001:
>   *** 0002:copy_buildsystem(d)
>       0003:
> File: '/workdir/krogoth/openembedded-core/meta/classes/populate_sdk_ext.bbclass', lineno: 298, function: copy_buildsystem
>       0294:            f.write('TCLIBCAPPEND = ""\n')
>       0295:            f.write('DL_DIR = "${TOPDIR}/downloads"\n')
>       0296:
>       0297:            f.write('INHERIT += "%s"\n' % 'uninative')
>   *** 0298:            f.write('UNINATIVE_CHECKSUM[%s] = "%s"\n\n' % (d.getVar('BUILD_ARCH'), uninative_checksum))
>       0299:            f.write('CONF_VERSION = "%s"\n\n' % d.getVar('CONF_VERSION', False))
>       0300:
>       0301:            # Some classes are not suitable for SDK, remove them from INHERIT
>       0302:            f.write('INHERIT_remove = "%s"\n' % d.getVar('SDK_INHERIT_BLACKLIST', False))
> Exception: UnboundLocalError: local variable 'uninative_checksum' referenced before assignment
> 
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed: copy_buildsystem
> ERROR: Logfile of failure stored in: /workdir/krogoth/build/tmp-glibc/work/zynq_soft_z7000_mb_v2-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_populate_sdk_ext.8408
> ERROR: Task (/workdir/krogoth/openembedded-core/meta/recipes-core/images/core-image-minimal.bb:do_populate_sdk_ext) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2214 tasks of which 2210 didn't need to be rerun and 1 failed.
> 
> Summary: 1 task failed:
>    /workdir/krogoth/openembedded-core/meta/recipes-core/images/core-image-minimal.bb:do_populate_sdk_ext
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> 
> 
> The standard SDK builds successfully all the way back from Fido throughout Rocko, however we would now like to build the Extensible SDK. Krogoth version builds it successfully, but Pyro and Rocko throws the above error (haven't tested Morty).
> 
> I am unable to reproduce using Poky and thus assume it to be related to the configuration of our distro/image. Any suggestions are highly appreciated.
> 
> Thanks,
> Martin
> 
> 
> 

