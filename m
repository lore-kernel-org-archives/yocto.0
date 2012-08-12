Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 225BAE0049A
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 06:13:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Aug 2012 06:13:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,756,1336374000"; d="scan'208";a="179950799"
Received: from unknown (HELO helios.localnet) ([10.252.121.82])
	by azsmga001.ch.intel.com with ESMTP; 12 Aug 2012 06:13:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 12 Aug 2012 14:13:40 +0100
Message-ID: <6260373.pzVKEde8kG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-27-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CAHUNapRfzWsj1ZzFTZr9-dGCUXbsy+uwvC=J_iC-VnX0dy6ntQ@mail.gmail.com>
References: <CAHUNapRfzWsj1ZzFTZr9-dGCUXbsy+uwvC=J_iC-VnX0dy6ntQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: layer.conf: "packages" directory
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
X-List-Received-Date: Sun, 12 Aug 2012 13:13:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 12 August 2012 08:34:36 Trevor Woerner wrote:
> Hi,
> 
> In the Yocto Project Development Manual, section 4.1.2 "Creating Your
> Own Layer" it shows an example layer.conf file. In this example, right
> before adding the recipes to BBFILES, appears the comment: "We have a
> packages directory". The problem is, I can't find a directory named
> "packages" anywhere. Is this a historical left-over? Are "packages"
> and "recipes" synonymous in Yocto parlance?
> 
> Many other layer.conf files also contain this wording too:
> 
> meta/conf/layer.conf
> meta-fsl-arm/conf/layer.conf
> meta-hob/conf/layer.conf
> meta-intel/meta-n450/conf/layer.conf
> meta-intel/meta-emenlow/conf/layer.conf
> meta-intel/meta-tlk/conf/layer.conf
> meta-intel/conf/layer.conf
> meta-skeleton/conf/layer.conf
> meta-xilinx/conf/layer.conf
> meta-yocto/conf/layer.conf
> poky-extras/meta-kernel-dev/conf/layer.conf

That comment is quite out-of-date it would seem - "packages" was what the 
"recipes" directory was called (which was subsequently split out into multiple 
recipes-* directories).

We really ought to fix up these comments, especially in examples.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

