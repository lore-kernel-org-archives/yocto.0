Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B87ADE01404
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 00:14:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2012 00:14:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,299,1344236400"; d="scan'208";a="209236330"
Received: from unknown (HELO helios.localnet) ([10.252.121.121])
	by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2012 00:14:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 23 Aug 2012 08:14:45 +0100
Message-ID: <11217021.C8RtDxiqPt@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: of recipes and packages
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
X-List-Received-Date: Thu, 23 Aug 2012 07:14:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 22 August 2012 13:05:15 Trevor Woerner wrote:
> to discover the list of available recipes (for a given set of layers)
> one can use:
> $ bitbake -s
> 
> However:
> 
> $ bitbake --help | grep -- -s
> ...
>   -s, --show-versions   show current and preferred versions of all packages
> ...
> 
> "...versions of all _packages_"!? Shouldn't that be "recipes"?

It should, yes. FYI a long time ago we just used the word "package" to 
describe both the recipe and the output package - eventually it was realised 
that this was confusing and it was changed; however there are still odd 
vestiges of it in a few places, one of which you just pointed out. In this 
instance we can change it very easily in the BitBake help text and we should 
do so.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

