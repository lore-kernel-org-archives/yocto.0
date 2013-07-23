Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 965BAE0143C
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 02:50:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Jul 2013 02:50:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,726,1367996400"; d="scan'208";a="335454928"
Received: from unknown (HELO helios.localnet) ([10.252.122.115])
	by azsmga001.ch.intel.com with ESMTP; 23 Jul 2013 02:50:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Date: Tue, 23 Jul 2013 10:50:39 +0100
Message-ID: <687289320.4zlV4NqfiV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101B2@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<6D31A433FC4A6747B1AD836EB116AA2C02BF6508BC@AUSX7MCPC110.AMER.DELL.COM>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E1101B2@BLRINMSMBX01.bglrodc.lntinfotech.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, "Lee_Ballard@Dell.com" <Lee_Ballard@dell.com>
Subject: Re: Regarding offline build
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
X-List-Received-Date: Tue, 23 Jul 2013 09:50:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 July 2013 12:11:33 Amit Kumar wrote:
> Hi Mr. Lee
>             Thanks for replay and suggesion to build Yocoto project offline.
> To build the Yocot Project offline, i have done the following-
> [1] Downloaded the Poky-<latest>.tar.bz2
> [2] Untar it. and enter the poky dir.
> [3] execute the - source oe-init-build-env
> [4] edit the conf/local.conf file as per ur suggesion.
> [5] Build the image - bitbake core-image-minimal
> 
> But still i am getting an error-
> To have to look into the error plz find the attached error log-
> 
> 
> 
> If u have any idea about that error but guide me to fix it.

Amit, sorry to be a pain but would you mind attaching the error report as a 
plain text file rather than a word processing document?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

