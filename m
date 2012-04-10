Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 006A8E01374
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 07:14:28 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Apr 2012 07:14:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87360332"
Received: from unknown (HELO envy.home) ([10.255.12.43])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Apr 2012 07:14:28 -0700
Message-ID: <4F84401E.1050803@linux.intel.com>
Date: Tue, 10 Apr 2012 07:13:50 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4F834792.20402@gmail.com> <4F835F6B.3010608@linux.intel.com>
	<4F842B3D.2070705@gmail.com>
In-Reply-To: <4F842B3D.2070705@gmail.com>
X-Enigmail-Version: 1.4
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build error on core-image-sato-sdk
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
X-List-Received-Date: Tue, 10 Apr 2012 14:14:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/10/2012 05:44 AM, jfabernathy wrote:
> On 04/09/2012 06:15 PM, Darren Hart wrote:
>>
>> On 04/09/2012 01:33 PM, jfabernathy wrote:
>>> at the end of the build of core-image-sato-sdk I got the following
>>> error.  I'm using the edison branch with the latest changes and also
>>> building the meta-cedartrail.  I had previously built core-image-sato
>>> successfully with this setup.
>>>
>>> Any ideas?
>>>
>>> ERROR: Function 'build_boot_bin' failed (see
>>> /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
>>> for further information)
>>> ERROR: Logfile of failure stored in:
>>> /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
>>> Log data follows:
>>> | mkdosfs: seek failed
>> Interesting.
>>
>> Can you provide the "OE Build Configuration" blob that prints at the
>> start of the build - I'm mostly interested in your commit IDs for.
> OE Build Configuration:
> BB_VERSION        = "1.13.3"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "cedartrail"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.1.1"
> TUNE_FEATURES     = "m32 core2"
> TARGET_FPU        = ""
> meta
> meta-yocto        = "edison:0fbd6a161576b2cafa8583adde0ffb15347c884a"
> meta-cedartrail   = "edison:072c6e99616c25c31521e05560433c67fb2a0292"
> meta-jfa          = "<unknown>:<unknown>"
> 
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> 
>> Also, please include the HEAD of your poky edison tree.
> Not sure what git command you want, but here is the git show:
> 
> jim@ubuntu-x64:~/poky$ git show edison
> commit 0fbd6a161576b2cafa8583adde0ffb15347c884a

Thanks Jim and Joshua,

It appears there is still something lacking in the edison
bootimg.bbclass. I'll investigate. Please watch bug 2138 for updates.

--
Darren
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

