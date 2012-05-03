Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8D0FE013B7
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 04:00:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 May 2012 03:59:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148870369"
Received: from unknown (HELO helios.localnet) ([10.252.120.59])
	by fmsmga001.fm.intel.com with ESMTP; 03 May 2012 03:59:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>, yocto@yoctoproject.org
Date: Thu, 03 May 2012 11:59:44 +0100
Message-ID: <2960292.LSzt9uS7CS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-19-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <3705393.MBXsxixX8C@helios>
References: <44738C6D-691F-4F6D-ACCC-11A51F9CE4B2@gmail.com>
	<3705393.MBXsxixX8C@helios>
MIME-Version: 1.0
Subject: Re: Is it necessary to specify TARGET_ARM = "arm" ?
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
X-List-Received-Date: Thu, 03 May 2012 11:00:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 03 May 2012 11:49:08 Paul Eggleton wrote:
> Also, it's worth noting that in current meta-ti master you don't need to
> require tune-cortexa8.inc either since omap3.inc does this too (unless
> you're wanting to support use with an older version of the meta-ti layer).

Similarly the following are also taken care of by the current version of 
omap3.inc:

> > SOC_FAMILY = "omap3"
> > require conf/machine/include/soc-family.inc

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

