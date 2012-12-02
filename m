Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AB09E01465
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 15:37:49 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2012 15:37:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,202,1355126400"; d="scan'208";a="228012364"
Received: from unknown (HELO helios.localnet) ([10.252.123.12])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2012 15:37:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>
Date: Sun, 02 Dec 2012 23:37:47 +0000
Message-ID: <2546786.VL41nEahXp@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-18-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <50BBE5DA.3000302@intel.com>
References: <50BBDB70.2040803@intel.com> <5998848.CzcRMVOQ3K@helios>
	<50BBE5DA.3000302@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Use of BBPATH in a layer.conf file.
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
X-List-Received-Date: Sun, 02 Dec 2012 23:37:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 02 December 2012 15:35:54 you wrote:
> On 12/02/2012 03:24 PM, Paul Eggleton wrote:
> > On Sunday 02 December 2012 14:51:28 Scott Garman wrote:
> >> Robert Day has brought up an inconsistency in the way we append to
> >> BBPATH within a couple of our layer.conf files.
> >> 
> >> In meta-hob, meta-yocto-bsp, and meta-intel, we do:
> >> 
> >> BBPATH := "${BBPATH}:${LAYERDIR}"
> >> 
> >> but in meta-yocto, we do:
> >> 
> >> BBPATH := "${LAYERDIR}:${BBPATH}"
> >> 
> >> Unless someone explains to me that it's necessary to use this different
> >> ordering in meta-yocto's layer.conf, I will submit a patch to make this
> >> more consistent.
> > 
> > I think it actually ought to be:
> > 
> > BBPATH .= ":${LAYERDIR}"
> 
> Oh? Would this apply just to meta-yocto or all layer.conf files?

All, really. Functionally it makes no real difference, but I think it's 
preferred stylistically based on previous discussions.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

