Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D152E0122C
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 21:19:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 31 Aug 2011 21:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,311,1312182000"; d="scan'208";a="13084002"
Received: from unknown (HELO [10.255.14.33]) ([10.255.14.33])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Aug 2011 21:19:24 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D901889D799F@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901889D799F@orsmsx502.amr.corp.intel.com>
Date: Wed, 31 Aug 2011 23:19:20 -0500
Message-ID: <1314850760.10191.3.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: RT kernel with core-image-sato build failed for sugarbay
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
X-List-Received-Date: Thu, 01 Sep 2011 04:19:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Wed, 2011-08-31 at 16:49 -0700, Bodke, Kishore K wrote:
> Hi,
> 
>  
> 
> I am trying to build core-image-sato with rt kernel for sugarbay and
> it fails for the do_rootfs .
> 

FWIW, I was able to build and boot core-image-sato with the rt kernel:

Linux sugarbay 3.0.3-rt8-yocto-preempt-rt+ #1 SMP PREEMPT RT Wed Aug 31
21:33:27 CDT 2011 x86_64 GNU/Linux

using the following commits:

poky/master 705ec50edda7f7fb8c132238fe3f1477384a470e
meta/intel 902d2f3c919cd1d870dc8d35a7521cbba42e53ea

Actually, meta/intel was that commit with Darren's grub patch on top
(meta-intel/dvhart/grub-freetype).

Tom

>  
> 
> Attached is the build log.
> 
>  
> 
> Could you please let me know what went wrong?
> 
>  
> 
> Thanks
> 
> Kishore.
> 
> 



