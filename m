Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 588ABE01363
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 09:52:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Jul 2013 09:52:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,744,1367996400"; d="scan'208";a="336755056"
Received: from unknown (HELO helios.localnet) ([10.252.122.176])
	by azsmga001.ch.intel.com with ESMTP; 25 Jul 2013 09:51:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Date: Thu, 25 Jul 2013 17:51:46 +0100
Message-ID: <9684280.oh3HITqWcV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101BD@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E1101BB@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E1101BD@BLRINMSMBX01.bglrodc.lntinfotech.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: FW: Regarding offline build
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
X-List-Received-Date: Thu, 25 Jul 2013 16:52:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Amit,

On Thursday 25 July 2013 19:46:27 Amit Kumar wrote:
>      I am still struggling to build the yocto project offline. Please find
> below the details of DL_DIR after the "bitbake -c fetchall
> core-image-minimal" step. If anyone have idea about this, please guide me.

I can see at least xz-5.1.2alpha.tar.gz is missing from your downloads 
directory. I think I know why this might be happening, but for the moment 
you'll just need to run this on the download machine and then copy over the 
downloads directory again:

  bitbake -c fetch xz-native unzip-native

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

