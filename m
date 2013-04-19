Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64E4DE01496;
	Fri, 19 Apr 2013 01:25:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Apr 2013 01:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,507,1363158000"; d="scan'208";a="321585478"
Received: from unknown (HELO helios.localnet) ([10.255.13.209])
	by fmsmga001.fm.intel.com with ESMTP; 19 Apr 2013 01:25:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 19 Apr 2013 09:25:24 +0100
Message-ID: <1392229.rlL64ybf7G@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <FB1FE6F3-40EC-4711-95D0-5633B0103297@gmail.com>
References: <FB1FE6F3-40EC-4711-95D0-5633B0103297@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	meta-xilinx Mailing List <meta-xilinx@yoctoproject.org>
Subject: Re: [meta-xilinx] PREFERRED_VERSION_linux-libc-headers = "3.6" getting ignored
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
X-List-Received-Date: Fri, 19 Apr 2013 08:25:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 19 April 2013 11:44:49 Elvis Dowson wrote:
>        In my zynq-7-default-versions.inc file, I have the following
> definitions for preferred versions
> 
> PREFERRED_VERSION_virtual/kernel ?= "3.6"
> PREFERRED_VERSION_linux-libc-headers = "3.6"
> PREFERRED_VERSION_u-boot = "2012.10"
> 
> However, when I build core-image-minimal,
> PREFERRED_VERSION_linux-libc-headers = "3.6" gets ignored and it goes ahead
> and builds linux-libc-headers_3.8.bb
> 
> Is it only effective if specified in the local.conf file?

No, it should be effective anywhere - unless it's being overridden later on. In 
recent versions of bitbake, the -e option will show for each variable how the 
final value got set, you should be able to see where it is being overridden 
from there. Alternatively with older versions you should just be able to "git 
grep" for the value in each of the layers you have enabled in order to find 
where it is being set.

Are you sure you really need your own version of linux-libc-headers? Most of 
the time it is not necessary for the version to match that of the kernel you 
are using.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

