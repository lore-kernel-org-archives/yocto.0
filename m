Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58407E011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 08:49:09 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2012 08:49:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,267,1355126400"; d="scan'208";a="256492131"
Received: from unknown (HELO helios.localnet) ([10.252.122.189])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2012 08:48:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Wed, 12 Dec 2012 16:48:58 +0000
Message-ID: <2131314.OQZPzJsPrp@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CANge7vWPf-sqGH_sdoVHoLvnpK_wPXC_QBAkUG2dEvMUzz99UQ@mail.gmail.com>
References: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC79C@ORSMSX101.amr.corp.intel.com>
	<CANge7vWPf-sqGH_sdoVHoLvnpK_wPXC_QBAkUG2dEvMUzz99UQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Disabling PREMIRRORS and upstream sources
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
X-List-Received-Date: Wed, 12 Dec 2012 16:49:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 12 December 2012 11:32:39 Jon Szymaniak wrote:
> Just to make sure I'm understanding this... so when I place PREMIRRORS = ""
> in a recipe, I see that it doesn't affect the associated variables in other
> recipes.
> 
> Is this because I'm inherently setting up PREMIRRORS_${PN}, which is
> initialized with the PREMIRROR defaults (and what was appended and
> prepended in the local.conf)?

When you set a variable within a recipe it's setting it just within the 
context of that recipe, so there's no way for it to affect other recipes.

> I'm also guessing that touching PREMIRRORS and MIRRORS within recipes
> is generally a bad practice. I'd be curious to hear if my use case
> sounds totally
> wacky, as I'm still very much getting up to speed on Yocto/OE and best
> practices.

I guess it's not unreasonable to want to avoid touching anything external when 
building something internal; but you're right as a general practice this is 
something we would not do in published recipes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

