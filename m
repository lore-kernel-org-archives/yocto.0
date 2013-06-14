Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE45E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 05:35:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 14 Jun 2013 05:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,866,1363158000"; d="scan'208";a="349837337"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2013 05:35:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Date: Fri, 14 Jun 2013 13:35:14 +0100
Message-ID: <2288061.xsrRZJUZS1@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <14746932.1IgOpEMSZM@helios>
References: <mailman.11.1371063601.16784.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A52C4CCB36E@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<14746932.1IgOpEMSZM@helios>
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
X-List-Received-Date: Fri, 14 Jun 2013 12:35:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 14 June 2013 13:30:20 Paul Eggleton wrote:
> > I tried do_compile[nostamp] ="1" but it did not work but same thing worked
> > for do_install[nostamp]="1"
> 
> If you really want to do this, I think you'll need to mark all tasks in the
> normal flow from do_compile onwards as nostamp i.e.:
> 
> do_compile
> do_compile_kernelmodules
> do_kernel_link_vmlinux
> do_install
> do_package
> do_packagedata
> do_package_write
> do_package_write_rpm
> do_populate_sysroot
> do_strip
> do_deploy
> do_uboot_mkimage
> do_sizecheck

(BTW - there's no guarantee this list is correct, I just grabbed what I 
thought looked appropriate from the -c listtasks list.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

