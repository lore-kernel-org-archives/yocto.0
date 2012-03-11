Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16DE0E00749
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2012 05:33:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Mar 2012 05:33:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="136975799"
Received: from unknown (HELO helios.localnet) ([10.252.123.147])
	by fmsmga002.fm.intel.com with ESMTP; 11 Mar 2012 05:33:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@yoctoproject.org
Date: Sun, 11 Mar 2012 12:33:09 +0000
Message-ID: <2830925.MktUsbZfsZ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1203100438340.24798@oneiric>
References: <alpine.DEB.2.02.1203100438340.24798@oneiric>
MIME-Version: 1.0
Subject: Re: is yocto based on oe-core *as-is*?
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
X-List-Received-Date: Sun, 11 Mar 2012 12:33:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 10 March 2012 04:40:15 Robert P. J. Day wrote:
>   while i'm working my thru the docs, i want to verify that yocto is
> built on top of oe-core straight from the oe-core repo, is that
> correct?  as in, yocto doesn't make any yocto-specific mods to the
> fundamental, lower-level OE core layers, does it?  it simply adds
> layers on top, right?

This is correct, and you can verify it by doing a diff of the OE-Core meta/ 
subdirectory against Poky's meta/ - the only difference is that Poky does not 
include the sample configs (it provides its own in meta-yocto).

It's also worth noting that Poky uses its own distro (policy) configuration via 
meta-yocto, although this builds upon the default policy in OE-Core.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

