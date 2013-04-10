Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC81E014D0
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 08:00:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2013 08:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,447,1363158000"; d="scan'208";a="320344963"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2013 08:00:46 -0700
Received: from [10.237.108.114] (apalalax-mobl.ger.corp.intel.com
	[10.237.108.114])
	by linux.intel.com (Postfix) with ESMTP id B1D372C8001;
	Wed, 10 Apr 2013 08:00:38 -0700 (PDT)
Message-ID: <51657E9C.10808@linux.intel.com>
Date: Wed, 10 Apr 2013 18:00:44 +0300
From: Alexandru Palalau <alexandrux.palalau@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130215 Thunderbird/17.0.3
MIME-Version: 1.0
To: Rakesh Garg <rakesh.garg@aricent.com>
References: <2D511792EEA46345951D979490DB6D5B5E6BEC74CE@GUREXMB01.ASIAN.AD.ARICENT.COM>
In-Reply-To: <2D511792EEA46345951D979490DB6D5B5E6BEC74CE@GUREXMB01.ASIAN.AD.ARICENT.COM>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem while running "bitbake core-image-minimal"
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
X-List-Received-Date: Wed, 10 Apr 2013 15:00:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Just tried it on the same platform, under the same commit.
Most likely, this is a network problem on your side.
Try just to fetch the package using:

bitbake -c fetch gcc-cross-initial

Good luck!

On 4/10/2013 4:12 PM, Rakesh Garg wrote:
> Hi All,
>
> I am new to Yocto and is trying to do some hands-on.
>
> I downloaded the Yocto project on my Fedore-18 host by using the
> following command:
>
> git clone git://git.yoctoproject.org/poky.git
>
> and then ran the following commands:
>
> 1.source oe-init-build-env
>
> 2.configured local.conf with MACHINE=routerstationpro and rest as default.
>
> 3.bitbake core-image-minimal
>
> The last command runs for some time and then hangs for forever. (I’ve
> ran it for overnight also just incase it downloads too much since am
> running it for the first time). The screen logs says that it is running
> do_fetch for gcc-cross-initial-4.7.2-r19
>
> I also tried stopping and then re-running the command but no help. It
> again stucks at the same point.
>
> Following is the terminal output:
>
> Build Configuration:
> BB_VERSION = "1.17.1"
> BUILD_SYS = "i686-linux"
> NATIVELSBSTRING = "Fedora-18"
> TARGET_SYS = "mips-poky-linux"
> MACHINE = "routerstationpro"
> DISTRO = "poky"
> DISTRO_VERSION = "1.3+snapshot-20130410"
> TUNE_FEATURES = "o32 bigendian fpu-hard mips32"
> TARGET_FPU = ""
> meta
> meta-yocto
> meta-yocto-bsp = "master:cbdbc54e5743944fd24f497b46b3c54ad966d8eb"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> Currently 1 running tasks (158 of 1568):
> 0: gcc-cross-initial-4.7.2-r19 do_fetch (pid 5583)
>
> Please suggest what could be the possible reason for this issue.
>
> Thanks and Regards,
>
> Rakesh
>
>
>
>
>
> ===============================================================================
> Please refer to http://www.aricent.com/legal/email_disclaimer.html
> for important disclosures regarding this electronic communication.
> ===============================================================================
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Alexandru Palalau

