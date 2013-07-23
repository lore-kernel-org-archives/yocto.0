Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33126E0145C
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 03:35:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Jul 2013 03:35:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,726,1367996400"; d="scan'208";a="335468103"
Received: from unknown (HELO helios.localnet) ([10.252.122.115])
	by azsmga001.ch.intel.com with ESMTP; 23 Jul 2013 03:35:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Date: Tue, 23 Jul 2013 11:35:28 +0100
Message-ID: <13093998.oFjvbLO2OA@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E6AB4AB@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<687289320.4zlV4NqfiV@helios>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E6AB4AB@BLRINMSMBX01.bglrodc.lntinfotech.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Lee_Ballard@Dell.com" <Lee_Ballard@dell.com>
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
X-List-Received-Date: Tue, 23 Jul 2013 10:35:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Amit Kumar wrote:
> > To build the Yocot Project offline, i have done the following- 
> > [1] Downloaded the Poky-<latest>.tar.bz2 
> > [2] Untar it. and enter the poky
> > dir.
> > [3] execute the - source oe-init-build-env 
> > [4] edit the
> > conf/local.conf file as per ur suggesion.
> > [5] Build the image - bitbake core-image-minimal
> > 
> > But still i am getting an error-
> > To have to look into the error plz find the attached error log-

The missing step is you haven't populated DL_DIR (defaults to downloads/ under 
the build directory) with files that would normally be downloaded by the 
system, so it is attempting to download them and stopping because 
BB_NO_NETWORK is set, hence:

| ERROR: Function failed: Network access disabled through BB_NO_NETWORK 

The easiest thing to do is to go to a machine that does have full internet 
access, untar poky, source oe-init-build-env and then run:

 bitbake -c fetchall <imagename>

Then copy the contents of DL_DIR to the machine without network access and you 
should be ready to go. 

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

