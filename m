Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 129DFE01389
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 11:14:20 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2012 11:14:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="99207000"
Received: from unknown (HELO envy.home) ([10.7.199.59])
	by orsmga002.jf.intel.com with ESMTP; 16 Jan 2012 11:14:19 -0800
Message-ID: <4F1476F6.9070308@intel.com>
Date: Mon, 16 Jan 2012 11:13:58 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <D956029D25CF204F948EA0FB515E1EE2030A3D@ORSMSX105.amr.corp.intel.com>
	<4F147006.1070401@windriver.com>
In-Reply-To: <4F147006.1070401@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Linux RT build fail
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
X-List-Received-Date: Mon, 16 Jan 2012 19:14:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/16/2012 10:44 AM, Bruce Ashfield wrote:
> On 12-01-16 01:40 PM, Bodke, Kishore K wrote:
>> Hi,
>>
>> I get build failure for the rt.
>>
>> ERROR: Function 'do_patch' failed (see
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>> for further information)
>>
>> ERROR: Logfile of failure stored in:
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>>
>> Log data follows:
>>
>> | ERROR: Function 'do_patch' failed (see
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>> for further information)
>>
>> | Deleted branch meta-temp (was 620917d).
>>
>> |
>>
>> | ERROR: patch
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/linux/meta/cfg/kernel-cache/features/rt/rt-apply-patch-3.0.10-rt27.patch.patch
>> is not available
> 
> This is the problem. But I could have sworn that I fixed this, and
> send a merge request. When I just checked now, it still looks broken.
> 
> That being said, we should have seen this before now. Are any -rt
> kernels being build regularly on master ?

I just checked with Beth and we are not. I will open a bug against the
autobuilder, we need to do this regularly.

--
Darren

> 
> It is partially due to meta-kernel-dev picking up new kernel tools that
> do strict checking on patches by default (hence my question about
> anyone else building this on master).
> 
> I'm pushing a fix out now to the meta branch and will send it along
> with my next consolidated pull request.
> 
> Cheers,
> 
> Bruce
> 
>>
>> |
>>
>> | ERROR. Could not find an excutable target for
>> yocto/standard/preempt-rt/base
>>
>> | ERROR. Could not locate meta series for preempt-rt-standard
>>
>> | ERROR. Could not modify yocto/standard/preempt-rt/base
>>
>> NOTE: package
>> linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1:
>> task do_patch: Failed
>>
>> NOTE: package bzip2-1.0.6-r4: task do_compile: Succeeded
>>
>> ERROR: Task 3
>> (/usr/local/src/jan13/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb,
>> do_patch) failed with exit code '1'
>>
>> Is this anything to do with meta-kernel-dev I am using or something else?
>>
>> Thanks
>>
>> Kishore.
>>
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

