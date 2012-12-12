Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD91EE00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 04:53:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Dec 2012 04:53:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,266,1355126400"; d="scan'208";a="262945442"
Received: from unknown (HELO helios.localnet) ([10.252.122.189])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2012 04:53:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Wed, 12 Dec 2012 12:52:59 +0000
Message-ID: <8920193.p7S0ikxaTq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
References: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
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
X-List-Received-Date: Wed, 12 Dec 2012 12:53:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 03 December 2012 10:19:00 Jon Szymaniak wrote:
> Is there a simple way to disable the use of PREMIRRORS and MIRRORS
> within a recipe?
> 
> (Perhaps the answer here might be worth mentioning in Section 12.23 of the
> Poky Reference  Manual?)
> 
> My use case for this is the situation where the code hasn't been released
> yet, so there's no point in checking mirrors.

I guess the easiest thing would be just to set PREMIRRORS and MIRRORS to "" in 
the recipe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

