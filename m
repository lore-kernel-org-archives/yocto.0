Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB372E009D8; Wed, 29 Apr 2015 06:23:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B7DFE009CD
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 06:23:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3TDN1Vu015998
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 Apr 2015 06:23:02 -0700 (PDT)
Received: from [128.224.56.94] (128.224.56.94) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 29 Apr 2015 06:23:01 -0700
Message-ID: <5540DB34.6010102@windriver.com>
Date: Wed, 29 Apr 2015 09:23:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: =?windows-1252?Q?=22Schauml=F6ffel=2C_Jan=22?=
	<J.Schaumloeffel@astro-kom.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>	<553F90A3.9070501@windriver.com>	<82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>	<553FD83A.6040407@windriver.com>
	<4f2d75bf33ac423ab064f754e0b67655@ASTRO-EX1.Bensberg.de>
In-Reply-To: <4f2d75bf33ac423ab064f754e0b67655@ASTRO-EX1.Bensberg.de>
Subject: Re: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Wed, 29 Apr 2015 13:23:49 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 04/29/2015 03:38 AM, Schaumlöffel, Jan wrote:
>> Have you tried setting linux-dummy as the preferred provider for the kernel
>> ? That would skip the build processing doing anything more than satisfying
>> the various kernel dependencies.
>
> Ah, that's a good hint, I'll try that.
>
>>>
>>>> After your build has failed, if you look in STAGING_KERNEL_BUILDDIR
>>>> do you see the abiversion file ?
>>>
>>> There are three instances of the file:
>>>
>>> ~/yocto-build-fido$ find . -name kernel-abiversion
>>> ./tmp/work/beaglebone-poky-linux-gnueabi/linux-
>> yocto/3.14.36+gitAUTOIN
>>> C+162dfe3bb0_dbe5b52e93-r0/pkgdata/kernel-depmod/kernel-abiversion
>>> ./tmp/sysroots/beaglebone/pkgdata/kernel-depmod/kernel-abiversion
>>> ./tmp/work-shared/beaglebone/kernel-build-artifacts/kernel-abiversion
>>
>> Those are where I'd expect them for 1.8, so they should be found and used
>> by the various parts of the build process. Something different is happening in
>> your build .. hmm.
>
> It looks like those were from another run, built from scratch in a new directory I now see the following result:
>
>
> NOTE: Executing RunQueue Tasks
> ERROR: No kernel-abiversion file found (/home/astro/yocto-build-reproduce/tmp/sysroots/u159/pkgdata/kernel-depmod/kernel-abiversion), cannot run depmod, aborting
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /home/astro/yocto-build-reproduce/tmp/work/u159-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.7440
> ERROR: Task 7 (/home/astro/git/poky/meta/recipes-core/images/core-image-minimal.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1776 tasks of which 93 didn't need to be rerun and 1 failed.
> No currently running tasks (1775 of 1777)
>
> Summary: 1 task failed:
>    /home/astro/git/poky/meta/recipes-core/images/core-image-minimal.bb, do_rootfs
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> astro@eldk-vm:~/yocto-build-reproduce$ find . -name kernel-abiversion
> astro@eldk-vm:~/yocto-build-reproduce$ bitbake -e core-image-minimal | grep STAGING_KERNEL_BUILDDIR
> # $STAGING_KERNEL_BUILDDIR
> STAGING_KERNEL_BUILDDIR="/home/astro/yocto-build-reproduce/tmp/work-shared/u159/kernel-build-artifacts"
> astro@eldk-vm:~/yocto-build-reproduce$ ls -la /home/astro/yocto-build-reproduce/tmp/work-shared/u159/kernel-build-artifacts
> ls: cannot access /home/astro/yocto-build-reproduce/tmp/work-shared/u159/kernel-build-artifacts: No such file or directory
> astro@eldk-vm:~/yocto-build-reproduce$
>
> It looks like the entire STAGING_KERNEL_BUILDDIR is missing.
>
>
> I'll try some more variatons of my setup to try and narrow down why that happens.
>

That is really odd. I'll be interested to hear how that happened. I just
did a test and it points to where I expect:

  [/home/bruc...poky/build]> bitbake -e core-image-minimal | grep 
STAGING_KERNEL_BUILDDIR
# $STAGING_KERNEL_BUILDDIR
STAGING_KERNEL_BUILDDIR="/home/bruce/poky/build/tmp/work-shared/qemux86-64/kernel-build-artifacts"

Bruce



> Jan
>


