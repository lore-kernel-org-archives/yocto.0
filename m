Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 618C9E01025; Tue,  6 Sep 2016 17:42:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5727E01021
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 17:42:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u870gl7M019355
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 6 Sep 2016 17:42:47 -0700
Received: from server.local (147.11.117.90) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 6 Sep 2016 17:42:46 -0700
To: "Clark, Mark A" <Mark.Clark2@nov.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <BY1PR15MB0038C23C62995E16B5C66E2EBCF90@BY1PR15MB0038.namprd15.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <7697eebf-7ade-cc6f-1ec7-cfb47dc34b32@windriver.com>
Date: Tue, 6 Sep 2016 20:42:45 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <BY1PR15MB0038C23C62995E16B5C66E2EBCF90@BY1PR15MB0038.namprd15.prod.outlook.com>
Subject: Re: Update on issue witn do_package_qa
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
X-List-Received-Date: Wed, 07 Sep 2016 00:42:56 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-09-06 2:17 PM, Clark, Mark A wrote:
> Did a complete clone / checkout of krogoth this morning.  Same
> results.   Can’t get a core-image-rt build of the latest poky.

I'll fire off a build for this on Wednesday. As I mentioned, I've
fixed this in other branches, and this is very likely the same
thing.

I've just been chasing 4.8 issues and haven't had a chance to look
at it yet.

Bruce

>
>
>
> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$ bitbake core-image-rt
>
> Parsing recipes: 100%
> |####################################################################################|
> Time: 00:00:23
>
> Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301 targets,
> 46 skipped, 0 masked, 0 errors.
>
> NOTE: Resolving any missing task queue dependencies
>
>
>
> Build Configuration:
>
> BB_VERSION        = "1.30.0"
>
> BUILD_SYS         = "x86_64-linux"
>
> NATIVELSBSTRING   = "Ubuntu-14.04"
>
> TARGET_SYS        = "i686-poky-linux"
>
> MACHINE           = "genericx86"
>
> DISTRO            = "poky"
>
> DISTRO_VERSION    = "2.1.1"
>
> TUNE_FEATURES     = "m32 core2"
>
> TARGET_FPU        = ""
>
> meta
>
> meta-poky
>
> meta-yocto-bsp    = "krogoth:aad7166704021d82ad3a5ec468552f8f10360d41"
>
>
>
> NOTE: Fetching uninative binary shim from
> http://downloads.yoctoproject.org/releases/uninative/1.0.1/x86_64-nativesdk-libc.tar.bz2;sha256sum=acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8
>
> NOTE: Preparing RunQueue
>
> NOTE: Executing SetScene Tasks
>
> NOTE: Executing RunQueue Tasks
>
> WARNING: quilt-native-0.64-r0 do_fetch: Failed to fetch URL
> http://download.savannah.gnu.org/releases/quilt/quilt-0.64.tar.gz,
> attempting MIRRORS if available
>
> WARNING: attr-native-2.4.47-r0 do_fetch: Failed to fetch URL
> http://download.savannah.gnu.org/releases/attr/attr-2.4.47.src.tar.gz,
> attempting MIRRORS if available
>
> WARNING: acl-native-2.2.52-r0 do_fetch: Failed to fetch URL
> http://download.savannah.gnu.org/releases/acl/acl-2.2.52.src.tar.gz,
> attempting MIRRORS if available
>
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
> do_package_qa: QA Issue: Architecture did not match (3 to 62) on
> work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0/packages-split/kernel-vmlinux/boot/vmlinux-4.4.11-rt3-yocto-preempt-rt
> [arch]
>
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
> do_package_qa: QA run found fatal errors. Please consider fixing them.
>
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
> do_package_qa: Function failed: do_package_qa
>
> ERROR: Logfile of failure stored in:
> /home/yocto/poky/build/tmp/work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0/temp/log.do_package_qa.2446
>
> ERROR: Task 61
> (/home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
> do_package_qa) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 1552 tasks of which 14 didn't need to be
> rerun and 1 failed.
>
> Waiting for 0 running tasks to finish:
>
>
>
> Summary: 1 task failed:
>
>   /home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
> do_package_qa
>
> Summary: There were 3 WARNING messages shown.
>
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
>
> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$
>
>
>
> ===============
>
>
>
> Changes from local.conf
>
>
>
> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$ diff
> local.conf local.conf.org
>
> 32c32
>
> < MACHINE ?= "genericx86"
>
> ---
>
>> #MACHINE ?= "genericx86"
>
> 117c117
>
> < SDKMACHINE ?= "i686"
>
> ---
>
>> #SDKMACHINE ?= "i686"
>
> 239,240d238
>
> < PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
>
> < COMPATIBLE_MACHINE_genericx86 = "genericx86"
>
> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$
>
>
>
>
>
>
>
> *Mark Clark*
>
> Embedded Software Engineer
>
> Embedded Software, Cedar Park, TX
>
> Description: Description: Description: Description: National Oilwell
> Varco Logo Color CMYK.jpg
>
>  Wellbore Technologies – Dynamic Drilling Solutions
>
> Global Software Engineering
>
> Office: (512) 340-5435
>
> Mobile: (512) 736-9396
>
> /“One Team – Infinite Solutions”/
>
>
>
>
>


