Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 681D7E0030B
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 11:25:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 May 2012 11:25:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="143858198"
Received: from unknown (HELO envy.home) ([10.7.199.60])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2012 11:25:00 -0700
Message-ID: <4FBD2B4F.5030203@linux.intel.com>
Date: Wed, 23 May 2012 11:24:15 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4FBCD12E.3050407@gmail.com>
In-Reply-To: <4FBCD12E.3050407@gmail.com>
X-Enigmail-Version: 1.4.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake failure on meta-cedartrail using master branch
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
X-List-Received-Date: Wed, 23 May 2012 18:25:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/23/2012 04:59 AM, jfabernathy wrote:
> FYI,
> 
> I just pulled the lasted patches into my system and ran a bitbake of 
> cedartrail with the PVR driver.

I have a fix for this, was waiting for an Ack and got side tracked.
Please pull meta-intel again and try again with the master branch.

You should have the following commit now:

commit a62c485edffed30ea95658760948fd50925adfb0
Author: Darren Hart <dvhart@linux.intel.com>
Date:   Fri May 18 09:19:31 2012 -0700

    linux-yocto_3.0: Update KMACHINE and KBRANCH to play nice with new
kerntools

Thanks,

Darren

> 
> I got a failure on the kernel build.  log below:
> ERROR: Logfile of failure stored in: 
> /build/cdv-master/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.29202
> Log data follows:
> | Branch meta-temp set up to track remote branch meta from origin.
> | git reset --mixed 620917de59eeb934b9f8cf35cc2d95c1ac8ed0fc
> | Deleted branch meta-temp (was 620917d).
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
> 434: yocto/standard/cedartrail-standard.scc: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
> 436: yocto/standard/cedartrail-standard.scc: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
> 437: yocto/standard/cedartrail-standard.scc: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
> 438: yocto/standard/cedartrail-standard.scc: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line 
> 441: yocto/standard/cedartrail-standard.scc: No such file or directory
> | readlink: missing operand
> | Try `readlink --help' for more information.
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/staERROR: Function failed: do_patch (see 
> /build/cdv-master/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.29202 
> for further information)
> | ndard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399: 
> yocto/standard/cedartrail-standard: No such file or directory
> | ERROR. Could not find an excutable target for yocto/standard/base
> | ERROR. Could not locate meta series for yocto/standard/cedartrail
> | ERROR. Could not modify yocto/standard/base
> NOTE: package 
> linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4: 
> task do_patch: Failed
> ERROR: Task 838 
> (/home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_patch) 
> failed with exit code '1'
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

