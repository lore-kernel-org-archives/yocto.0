Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 599C34C800A5
	for <yocto@yoctoproject.org>; Tue, 31 May 2011 09:31:49 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 May 2011 07:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,297,1304319600"; 
   d="scan'208";a="4528486"
Received: from unknown (HELO [10.255.12.168]) ([10.255.12.168])
	by azsmga001.ch.intel.com with ESMTP; 31 May 2011 07:31:39 -0700
Message-ID: <4DE4FBCB.60902@linux.intel.com>
Date: Tue, 31 May 2011 07:31:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <87C8C51E47F55D47ABF9BB39687792ED41FA2C@POCITMSEXMB01.LntUniverse.com>	<4ED62A07621E9C41B8CB2F608655EF45F5C1@POCITMSEXMB01.LntUniverse.com>
	<201105310944.42555.paul.eggleton@linux.intel.com>
In-Reply-To: <201105310944.42555.paul.eggleton@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: FW: Problem to generate u-boot image
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
X-List-Received-Date: Tue, 31 May 2011 14:31:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/31/2011 01:44 AM, Paul Eggleton wrote:
> On Friday 27 May 2011 09:17:45 Nikhil Kamath wrote:
>> $ bitbake u-boot_git
> 
> When specifying a target for bitbake you can't include the version (the 
> underscore _ and everything after it). Poky will take care of selecting the 
> version for you; in this case there is only one. So you should run the 
> following instead:
> 
> $ bitbake u-boot
> 
> FYI for future reference if you do have multiple version choices and want to 
> force one of them to be selected that is not the default, you need to add this 
> somewhere (initially local.conf, but it may become part of your custom distro 
> if you later create one):
> 
> PREFERRED_VERSION_packagename = "1.0"
> 
> (Assuming packagename is the name of the package and 1.0 is the version you 
> want to select.)
> 
> Cheers,
> Paul
> 

Paul is correct in all the above. However, u-boot is very
machine-specific, and there is no qemuarm u-boot configuration. In order
to build u-boot, you must define:

UBOOT_MACHINE
UBOOT_ENTRYPOINT
UBOOT_LOADADDRESS

In bernard and older releases, the first is usally defined in the
u-boot_git.bb as a machine override:

UBOOT_MACHINE_your-machine = "uboot-machine-config"

Where uboot-machine-config is a named machine config that upstream
u-boot ships with its sources. The second and third variable are usually
defined in the machine configuration file.

For example, for the beagleboard, these values are set as:

UBOOT_MACHINE = "omap3_beagle_config"
UBOOT_ENTRYPOINT = "0x80008000"
UBOOT_LOADADDRESS = "0x80008000"

If you aren't sure what those values should be, consider starting a
thread on the u-boot mailing list on how to configure u-boot for your
specific machine.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

