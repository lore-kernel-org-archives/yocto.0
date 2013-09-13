Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD17FE0155F
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 03:48:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Sep 2013 03:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,897,1371106800"; d="scan'208";a="377656792"
Received: from unknown (HELO helios.localnet) ([10.252.123.177])
	by orsmga001.jf.intel.com with ESMTP; 13 Sep 2013 03:48:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Date: Fri, 13 Sep 2013 11:48:08 +0100
Message-ID: <3458929.5fRdMb9cIz@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A0171C4BD@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A0171C4BD@039-SN2MPN1-021.039d.mgd.msft.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: "tree" link is broken for some layers in http://layers.openembedded.org/layerindex/branch/master/layers/
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
X-List-Received-Date: Fri, 13 Sep 2013 10:48:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Zhenhua,

On Friday 13 September 2013 02:29:41 Luo Zhenhua-B19537 wrote:
> When I click the "tree" links of some layers in
> http://layers.openembedded.org/layerindex/branch/master/layers/, "400 Bad
> Request" error appears, can somebody take a look? Meta-intel
> Meta-fsl-arm
> Meta-fsl-ppc
> Meta-lsi
> Meta-ti
> ...

Oops, this was my fault. The generated URL is now correct, and I also fixed a 
bug where the URL fields were being cleared when editing a layer (and the 
change history showed that meta-kde was affected by this; I've now restored the 
values for its entry as well).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

