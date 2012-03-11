Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC11E0030B
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2012 15:38:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Mar 2012 15:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137098437"
Received: from unknown (HELO helios.localnet) ([10.252.123.150])
	by fmsmga002.fm.intel.com with ESMTP; 11 Mar 2012 15:38:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Sun, 11 Mar 2012 22:38:13 +0000
Message-ID: <1503814.Y6Q9bri6nF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F5C9E99.5010509@mlbassoc.com>
References: <alpine.DEB.2.02.1203100438340.24798@oneiric>
	<2830925.MktUsbZfsZ@helios> <4F5C9E99.5010509@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sun, 11 Mar 2012 22:38:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 11 March 2012 06:46:17 Gary Thomas wrote:
> On 2012-03-11 06:33, Paul Eggleton wrote:
> > This is correct, and you can verify it by doing a diff of the OE-Core
> > meta/
> > subdirectory against Poky's meta/ - the only difference is that Poky does
> > not include the sample configs (it provides its own in meta-yocto).
> 
> Have you actually done such a comparison? 

Yes, I did so before sending the above message.

> I just compared them like this:
>    poky/yocto:
>       commit 320558f494c618f53e0c773db3ea0109476e8359
>       Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>       Date:   Wed Feb 29 12:59:14 2012 +0000
> 
>    openembedded-core:
>       commit 50dc8bfbac42b9a9b52a2f7d0568740c41790c13
>       Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>       Date:   Fri Mar 9 14:14:04 2012 +0800
> 
> These are the up-to-date master branches, as of 2012-03-11 12:40 GMT

I don't think you'll find they are. Your poky branch is behind OE-Core by quite 
a number of commits - in fact 320558f494c618f53e0c773db3ea0109476e8359 is 
where the 1.2_M3 branch HEAD is currently, are you sure you aren't on that 
branch instead of master?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

