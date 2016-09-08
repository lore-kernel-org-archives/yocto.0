Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95A1BE006C7; Thu,  8 Sep 2016 10:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98B13E0074C
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 10:43:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u88HhO8x015324
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 Sep 2016 10:43:24 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 8 Sep 2016 10:43:23 -0700
To: "Clark, Mark A" <Mark.Clark2@nov.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <BY1PR15MB0038C23C62995E16B5C66E2EBCF90@BY1PR15MB0038.namprd15.prod.outlook.com>
	<7697eebf-7ade-cc6f-1ec7-cfb47dc34b32@windriver.com>
	<6668b4da-0fcb-a22a-f1ae-6603b33265c7@windriver.com>
	<BY1PR15MB0038580C1E613BA5102B94BCBCFB0@BY1PR15MB0038.namprd15.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <344110ea-5f91-fff2-cc91-d1110618eb24@windriver.com>
Date: Thu, 8 Sep 2016 13:43:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <BY1PR15MB0038580C1E613BA5102B94BCBCFB0@BY1PR15MB0038.namprd15.prod.outlook.com>
Subject: Re: [EXTERNAL] Re: Update on issue witn do_package_qa
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
X-List-Received-Date: Thu, 08 Sep 2016 17:43:45 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-09-08 01:41 PM, Clark, Mark A wrote:
> Better but I'm still running into issues:  See below...

This still isn't using the BSP description that I mentioned in
the series I sent.

With this:

  WARNING: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 
do_kernel_configcheck: [kernel]: An auto generated BSP description was 
used, this normally indicates a misconfiguration.
  Check that your machine (${MACHINE}) has an associated kernel description.

You'll never get the right word size architecture. So unless I can see
the bbappend and layer that you are using to define the BSP, all I can
say is that it did build and boot for me, with what I sent.

Bruce

>
> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f9ea732b7/build$ bitbake core-image-rt
> Parsing recipes: 100% |#####################################################################################################| Time: 00:00:15
> Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301 targets, 46 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "i686-poky-linux"
> MACHINE           = "genericx86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.1.1"
> TUNE_FEATURES     = "m32 core2"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp    = "<unknown>:<unknown>"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_kernel_configcheck: [kernel]: An auto generated BSP description was used, this normally indicates a misconfiguration.
> Check that your machine (${MACHINE}) has an associated kernel description.
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_package_qa: QA Issue: Architecture did not match (3 to 62) on work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0/packages-split/kernel-vmlinux/boot/vmlinux-4.4.11-rt3-yocto-preempt-rt [arch]
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_package_qa: QA run found fatal errors. Please consider fixing them.
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in: /home/yocto/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f9ea732b7/build/tmp/work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0/temp/log.do_package_qa.28889
> ERROR: Task 61 (/home/yocto/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f9ea732b7/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb, do_package_qa) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1553 tasks of which 900 didn't need to be rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>   /home/yocto/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f9ea732b7/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb, do_package_qa
> Summary: There was 1 WARNING message shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Wednesday, September 07, 2016 6:14 PM
> To: Clark, Mark A <Mark.Clark2@nov.com>; yocto@yoctoproject.org
> Subject: [EXTERNAL] Re: [yocto] Update on issue witn do_package_qa
>
> On 2016-09-06 8:42 PM, Bruce Ashfield wrote:
>> On 2016-09-06 2:17 PM, Clark, Mark A wrote:
>>> Did a complete clone / checkout of krogoth this morning.  Same
>>> results.   Can't get a core-image-rt build of the latest poky.
>>
>> I'll fire off a build for this on Wednesday. As I mentioned, I've
>> fixed this in other branches, and this is very likely the same thing.
>>
>> I've just been chasing 4.8 issues and haven't had a chance to look at
>> it yet.
>
> I ran a build on this, and it was what I thought it was .. but the fix turned out to be a bit more than I expected.
>
> See my three top commits on:
> https://urldefense.proofpoint.com/v2/url?u=http-3A__git.yoctoproject.org_cgit_cgit.cgi_poky-2Dcontrib_log_-3Fh-3Dzedd_krogoth&d=DQID-g&c=oTZJxWjXA97U5efbDJZGEg&r=uNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=6UP3os7LX1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=2THqA97FSJcHRKqubrKvSKCINQGBQy9bPSbIW9MdMAA&e=
>
> The first two commits, I'll send for merging into krogoth, the top one labelled "scratch", is to illustrate what you need to add to have a valid BSP definition for genericx86 on preempt-rt.
>
> The summary of the fix is:
>
>   - CONFIG_64BIT wasn't being turned off
>   - It wasn't being turned off since there wasn't a BSP definition
>     for genericx86 on preempt-rt, hence common-pc wasn't being
>     used as the base. My 3rd patch defines it.
>   - You weren't warned of this auto generated BSP, due to some variables
>     not being expanded in the kconf check routine (which is my 2nd patch)
>   - The meta data is slightly out of date on krogoth for 4.4, so I bumped
>     the SRCREV for it (my first patch).
>
> If you try the branch that I pointed to above, it should work. I'll wait to hear about the QA check passing for you before sending those updates for merging.
>
> Cheers,
>
> Bruce
>
>>
>> Bruce
>>
>>>
>>>
>>>
>>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$ bitbake
>>> core-image-rt
>>>
>>> Parsing recipes: 100%
>>> |####################################################################
>>> |################|
>>>
>>> Time: 00:00:23
>>>
>>> Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301
>>> targets,
>>> 46 skipped, 0 masked, 0 errors.
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>>
>>>
>>>
>>> Build Configuration:
>>>
>>> BB_VERSION        = "1.30.0"
>>>
>>> BUILD_SYS         = "x86_64-linux"
>>>
>>> NATIVELSBSTRING   = "Ubuntu-14.04"
>>>
>>> TARGET_SYS        = "i686-poky-linux"
>>>
>>> MACHINE           = "genericx86"
>>>
>>> DISTRO            = "poky"
>>>
>>> DISTRO_VERSION    = "2.1.1"
>>>
>>> TUNE_FEATURES     = "m32 core2"
>>>
>>> TARGET_FPU        = ""
>>>
>>> meta
>>>
>>> meta-poky
>>>
>>> meta-yocto-bsp    = "krogoth:aad7166704021d82ad3a5ec468552f8f10360d41"
>>>
>>>
>>>
>>> NOTE: Fetching uninative binary shim from
>>> https://urldefense.proofpoint.com/v2/url?u=http-3A__downloads.yoctopr
>>> oject.org_releases_uninative_1.0.1_x86-5F64-2Dnativesdk-2Dlibc.tar.bz
>>> 2-3Bsha256sum-3Dacf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef93312
>>> 8498c8910f8&d=DQID-g&c=oTZJxWjXA97U5efbDJZGEg&r=uNDdMisgO1TeK0HLqspkD
>>> Vxt_f3Oh6mt6bTm6TDLFdI&m=6UP3os7LX1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&
>>> s=mg72lVCqjed0lDCOv8Tv3H5fgUADu6lNXQVdtknizVY&e=
>>>
>>>
>>> NOTE: Preparing RunQueue
>>>
>>> NOTE: Executing SetScene Tasks
>>>
>>> NOTE: Executing RunQueue Tasks
>>>
>>> WARNING: quilt-native-0.64-r0 do_fetch: Failed to fetch URL
>>> https://urldefense.proofpoint.com/v2/url?u=http-3A__download.savannah
>>> .gnu.org_releases_quilt_quilt-2D0.64.tar.gz&d=DQID-g&c=oTZJxWjXA97U5e
>>> fbDJZGEg&r=uNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=6UP3os7LX1Y6
>>> v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=Lz2D8S6v5drtWfGA58ZkF_sZ8rjGoQ3iUMy
>>> SNz63pJE&e= , attempting MIRRORS if available
>>>
>>> WARNING: attr-native-2.4.47-r0 do_fetch: Failed to fetch URL
>>> https://urldefense.proofpoint.com/v2/url?u=http-3A__download.savannah
>>> .gnu.org_releases_attr_attr-2D2.4.47.src.tar.gz&d=DQID-g&c=oTZJxWjXA9
>>> 7U5efbDJZGEg&r=uNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=6UP3os7L
>>> X1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=62NaoIFTQ2cktWY90O2dRIPoTkdNMnw
>>> QIKZI9rBLglg&e= , attempting MIRRORS if available
>>>
>>> WARNING: acl-native-2.2.52-r0 do_fetch: Failed to fetch URL
>>> https://urldefense.proofpoint.com/v2/url?u=http-3A__download.savannah
>>> .gnu.org_releases_acl_acl-2D2.2.52.src.tar.gz&d=DQID-g&c=oTZJxWjXA97U
>>> 5efbDJZGEg&r=uNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=6UP3os7LX1
>>> Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=splKMGr8gm-vel6D_BRpHIyLhUvD5oj-n
>>> WppPsKq-YY&e= , attempting MIRRORS if available
>>>
>>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>>> do_package_qa: QA Issue: Architecture did not match (3 to 62) on
>>> work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa7
>>> 0_bf2fbe7f2c-r0/packages-split/kernel-vmlinux/boot/vmlinux-4.4.11-rt3
>>> -yocto-preempt-rt
>>>
>>> [arch]
>>>
>>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>>> do_package_qa: QA run found fatal errors. Please consider fixing them.
>>>
>>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>>> do_package_qa: Function failed: do_package_qa
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/yocto/poky/build/tmp/work/genericx86-poky-linux/linux-yocto-rt/
>>> 4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0/temp/log.do_package_qa.244
>>> 6
>>>
>>>
>>> ERROR: Task 61
>>> (/home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
>>> do_package_qa) failed with exit code '1'
>>>
>>> NOTE: Tasks Summary: Attempted 1552 tasks of which 14 didn't need to
>>> be rerun and 1 failed.
>>>
>>> Waiting for 0 running tasks to finish:
>>>
>>>
>>>
>>> Summary: 1 task failed:
>>>
>>>   /home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
>>> do_package_qa
>>>
>>> Summary: There were 3 WARNING messages shown.
>>>
>>> Summary: There were 3 ERROR messages shown, returning a non-zero exit
>>> code.
>>>
>>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$
>>>
>>>
>>>
>>> ===============
>>>
>>>
>>>
>>> Changes from local.conf
>>>
>>>
>>>
>>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$ diff
>>> local.conf local.conf.org
>>>
>>> 32c32
>>>
>>> < MACHINE ?= "genericx86"
>>>
>>> ---
>>>
>>>> #MACHINE ?= "genericx86"
>>>
>>> 117c117
>>>
>>> < SDKMACHINE ?= "i686"
>>>
>>> ---
>>>
>>>> #SDKMACHINE ?= "i686"
>>>
>>> 239,240d238
>>>
>>> < PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
>>>
>>> < COMPATIBLE_MACHINE_genericx86 = "genericx86"
>>>
>>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *Mark Clark*
>>>
>>> Embedded Software Engineer
>>>
>>> Embedded Software, Cedar Park, TX
>>>
>>> Description: Description: Description: Description: National Oilwell
>>> Varco Logo Color CMYK.jpg
>>>
>>>  Wellbore Technologies - Dynamic Drilling Solutions
>>>
>>> Global Software Engineering
>>>
>>> Office: (512) 340-5435
>>>
>>> Mobile: (512) 736-9396
>>>
>>> /"One Team - Infinite Solutions"/
>>>
>>>
>>>
>>>
>>>
>>
>


