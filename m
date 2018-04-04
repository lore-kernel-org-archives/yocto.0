Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53AF3E00903; Wed,  4 Apr 2018 08:32:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C90B1E008E4
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 08:32:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Apr 2018 08:32:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,406,1517904000"; d="scan'208";a="29494210"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga007.fm.intel.com with ESMTP; 04 Apr 2018 08:32:48 -0700
Received: from klrodema-mobl1.amr.corp.intel.com (unknown [10.254.2.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 87E825801FC;
	Wed,  4 Apr 2018 08:32:48 -0700 (PDT)
To: Giordon Stark <kratsg@gmail.com>
References: <CAFzUWGn0awUAJcBMmUMu5F4ctNUWrR_soGB2NG0zXrMiq3VesQ@mail.gmail.com>
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <0a16a908-ee2f-7cc2-cdf7-680d4965579e@linux.intel.com>
Date: Wed, 4 Apr 2018 08:32:47 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAFzUWGn0awUAJcBMmUMu5F4ctNUWrR_soGB2NG0zXrMiq3VesQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel configuration patches not persisting?
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
X-List-Received-Date: Wed, 04 Apr 2018 15:32:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 4/4/18 7:48 AM, Giordon Stark wrote:
> Hi all,
> 
> I have a custom board with custom kernel config changes. Because of
> that, I append the u-boot recipe as well:
> 
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-bsp/u-boot/u-boot-xlnx_%25.bbappend 
> 
> with my machine.h and defconfig files
> here: https://github.com/kratsg/meta-l1calo/tree/master/recipes-bsp/u-boot/files/gfex-prototype4 
> 
> I find that when I make a change in the defconfig, such as
> "CONFIG_CPU_IDLE=n", bitbake properly recompiles all the necessary
> components... however, when I look at the running kernel configuration:
> 
> root@gfex-prototype4:~# cat /proc/config.gz | gunzip > run.config
> root@gfex-prototype4:~# vi run.config
> root@gfex-prototype4:~# cat run.config | grep CONFIG_CPU_IDLE
> CONFIG_CPU_IDLE=y
> # CONFIG_CPU_IDLE_GOV_LADDER is not set
> CONFIG_CPU_IDLE_GOV_MENU=y
> 
> it seems my change still wasn't propagated? I looked at the instructions
> here
> (https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#changing-the-configuration)
> but I'm not sure I want to duplicate my defconfig file into a second
> location to bbappend the linux-yocto.
> 
> Have I done something wrong? Am I missing something else?
> 
> Giordon
> -- 
> Giordon Stark

Hey Giordon,

It looks like you're confusing two topics: u-boot and kernel configuration.

Both u-boot and the kernel use kconfig. This can confuse folks that are
new to bootloader/kernel work.

Looking at your layer, you're actually interested in changing the
kernel's configuration rather than u-boot. For example, on the
gfex-prototype4 defconfig, you set ARCH_ZYNQMP, which is a kernel config
for the Xilinx Zynq boards. You probably want to add a bbappend for your
kernel and add the defconfig to that recipe.

Cheers,
Stephano


