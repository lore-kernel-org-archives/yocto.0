Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5238E00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:05:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2012 11:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,268,1355126400"; d="scan'208";a="256583691"
Received: from unknown (HELO envy.home) ([10.255.13.227])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2012 11:59:02 -0800
Message-ID: <50C8E206.6040203@linux.intel.com>
Date: Wed, 12 Dec 2012 11:59:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
In-Reply-To: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
X-Enigmail-Version: 1.4.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: per-image ROOTFS sizes
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
X-List-Received-Date: Wed, 12 Dec 2012 20:05:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/11/2012 01:05 PM, Trevor Woerner wrote:
> Hi,
> 
> Are per-image ROOTFS sizes (i.e. IMAGE_ROOTFS_SIZE_<image>) still
> supported? From this:
> 
> http://patches.openembedded.org/patch/4671/
> 
> it would appear not. However
> poky-extras/meta-kernel-dev/conf/machine/example.conf contains
> IMAGE_ROOTFS_SIZE_ext3 (which would make it appear as though they
> are).
> 

Interesting, I haven't tried myself. Have you tried and run into an issue?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

