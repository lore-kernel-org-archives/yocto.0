Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 356A8E013C9
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 02:50:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Apr 2013 02:50:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,572,1363158000"; d="scan'208";a="329437714"
Received: from unknown (HELO helios.localnet) ([10.255.12.140])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2013 02:50:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Apr 2013 10:50:49 +0100
Message-ID: <1757782.s36vEYL6HR@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAAGt+t3a8AR_+W4toh_xTgw8RYRtVMg12cZdAdAtZ74t2A_OuQ@mail.gmail.com>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<1419490.bYp03IPXpY@helios>
	<CAAGt+t3a8AR_+W4toh_xTgw8RYRtVMg12cZdAdAtZ74t2A_OuQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Zafrullah Syed <zafrullahmehdi@gmail.com>
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 09:50:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 29 April 2013 11:28:22 Zafrullah Syed wrote:
> I cloned meta-gumstix[1] and meta-gumstix-extras[2] into poky folder and i
> tried to add these values of my machine in the local.conf file
> 
> MACHINE_KERNEL_PR = "r1"
> 
> KERNEL_IMAGETYPE = "uImage"
> 
> UBOOT_ENTRYPOINT = "0x80008000"
> UBOOT_LOADADDRESS = "0x80008000"
> 
> TARGET_ARCH = "arm"

Couple of things:

1) You should not be adding the above to conf/local.conf. Instead, you should 
set MACHINE in conf/local.conf to point to the appropriate machine (in this 
case "overo")

2) You must add at least the path to the directory where meta-gumstix is 
located on your build machine (and possibly meta-gumstix-extras) to 
conf/bblayers.conf.

If you don't do both of these you will continue to get the errors above.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

