Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B464AE00575
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 02:08:29 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Feb 2014 02:04:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,511,1389772800"; d="scan'208";a="486465952"
Received: from pmckerno-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.159])
	by orsmga002.jf.intel.com with ESMTP; 20 Feb 2014 02:08:27 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Yang Chengwei <chengwei.yang@intel.com>
Date: Thu, 20 Feb 2014 10:08:25 +0000
Message-ID: <4890456.akrrDeAUnM@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.3-201.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <20140220092731.GL20025@chengwei-workstation.bj.intel.com>
References: <20140220092731.GL20025@chengwei-workstation.bj.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: No 'directfb' distro feature
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
X-List-Received-Date: Thu, 20 Feb 2014 10:08:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chengwei,

On Thursday 20 February 2014 17:27:31 Yang Chengwei wrote:
> When I was building a core-image-directfb, bitbake failed like below.
> 
> ---------->8------copied from #yocto@irc.freenode------->8--------
> 
> 16:16 < chengwei> $ bitbake core-image-directfb
> 16:16 < chengwei> Loading cache: 100%
> 
> |###########################################################################
> |##################|
> ETA:  00:00:00
> 16:16 < chengwei> Loaded 1218 entries from dependency cache.
> 16:16 < chengwei> ERROR: Nothing PROVIDES 'core-image-directfb'
> 16:16 < chengwei> ERROR: core-image-directfb was skipped: missing
> required distro feature ['directfb'] (not in DISTRO_FEATURES)
> 
> ------------>8------------end------->8-----------------
> 
> It complained "directfb" not in DISTRO_FEATURES, and that's true.
> 
> From the poky source code, I found that there is a commit introduced
> change to meta/recipes-graphics/images/core-image-directfb.bb by using
> "distro_feature_check", this *does* break the build though it's not the
> one to be blamed, the real bug is as bitbake said "there is no directfb
> feature" used by core-image-directfb.bb.
> 
> Is there a plan to fix this?

This is not a bug - the intention is that you customise DISTRO_FEATURES to
include the feature if you need it. You may find this section of the manual
useful:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#creating-your-own-distribution

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

