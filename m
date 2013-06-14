Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D385FE005B3
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 05:30:22 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 14 Jun 2013 05:30:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,866,1363158000"; d="scan'208";a="255005711"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Jun 2013 05:30:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Date: Fri, 14 Jun 2013 13:30:20 +0100
Message-ID: <14746932.1IgOpEMSZM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <17797116383D4341B029FDF34C22BF6A52C4CCB36E@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.11.1371063601.16784.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A52C4CCB36E@GUREXMB01.ASIAN.AD.ARICENT.COM>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Recompile the recipe everytime
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
X-List-Received-Date: Fri, 14 Jun 2013 12:30:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rohit,

On Thursday 13 June 2013 20:54:08 Rohit2 Jindal wrote:
> Please help me out I am stuck in some issue, actually I want my recipe to do
> compilation everytime on every run of
> 
> Bitbake linux-yocto
> 
> ie can I remove stamping or sstate-cache that it allows me to run
> compilation everytime on every run of bitbake linux-yocto.
> 
> 
> I tried do_compile[nostamp] ="1" but it did not work but same thing worked
> for do_install[nostamp]="1"

If you really want to do this, I think you'll need to mark all tasks in the 
normal flow from do_compile onwards as nostamp i.e.:

do_compile
do_compile_kernelmodules
do_kernel_link_vmlinux
do_install
do_package
do_packagedata
do_package_write
do_package_write_rpm
do_populate_sysroot
do_strip
do_deploy
do_uboot_mkimage
do_sizecheck

I have to say I don't recommend doing this. I would strongly suggest you use 
"bitbake -c compile -f linux-yocto" or "bitbake -C compile linux-yocto" (the 
latter will force compile and then automatically run all the needed tasks up 
to the default task).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

