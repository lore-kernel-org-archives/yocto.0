Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11427E00716
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 11:14:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Jan 2013 11:14:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,516,1355126400"; d="scan'208";a="250824113"
Received: from unknown (HELO envy.home) ([10.255.15.13])
	by orsmga001.jf.intel.com with ESMTP; 22 Jan 2013 11:14:14 -0800
Message-ID: <50FEE506.1020002@intel.com>
Date: Tue, 22 Jan 2013 11:14:14 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Christian Ege <christian.ege@familie-ege.net>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592@ORSMSX101.amr.corp.intel.com>
	<8389da1c972242f1c69900ba7f48db4e-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkFcVEYOV0F1AUtXXl8wQEYHV1JdRVlTWw==-webmailer2@server04.webmailer.hosteurope.de>
In-Reply-To: <8389da1c972242f1c69900ba7f48db4e-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkFcVEYOV0F1AUtXXl8wQEYHV1JdRVlTWw==-webmailer2@server04.webmailer.hosteurope.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FW: YP Linux Kernel Development Manual
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
X-List-Received-Date: Tue, 22 Jan 2013 19:14:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/22/2013 12:59 AM, Christian Ege wrote:
>  Hi,
>  I am not sure if this is the problem you are struggling with.
>  I am wondering why class module.bbclass behaves completely different
>  than kernel.bbclacc
> 
>>  hi, I follow the kernel development manual "2.5. Incorporating
>> Out-of-Tree Modules",
>>  copy the "hello-mod_0.1.bb" and "files" folder into my taget layer
>> "meta-intel/meta-jasperforest/recipe-kernel", then add 
>> "MACHINE_EXTRA_
>> RDEPENDS += "kernel-module-hello" in the conf/local.conf
>>  after build and boot, there's no "hello.ko" found in the binary 
>> image
>>  also there's no hello.ko in the "tmp/work/..." folder
> 
>  If you hello-mod_0.1.bb inherits module class there is no mechanism
>  to create the kernel-module package. This only applies to the 
>  kernel.bbclass
> 
>  http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/module.bbclass
>  http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/module-base.bbclass
> 
>  Have a look at kernel.bbclass instead shows some pathon code which 
>  handles the module package creation:
>  http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel.bbclass#n301
> 
>  I've fixed this in my layer by stealing the code from kernel.bbclass
>  https://github.com/project-magpie/meta-stlinux/blob/master/recipes-bsp/tdt-driver/tdt-driver.inc
> 
>  With this you can also use the following extends with your module:
>  module_autoload_aotom = "aotom"
>  and
>  module_conf_stmfb = "options stmfb 
>  display0=1280x720-32@50:8m:pal:yuv:yuv"

Christian, this is a really good point I hadn't considered. Would you
care to take a stab at adding this to module.bbclass and sending the
patch to the oe-core list for review? CC'ing myself?

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

