Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9DDFE00724
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 08:21:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Jan 2013 08:20:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,424,1355126400"; d="scan'208";a="243030076"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.53])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2013 08:21:43 -0800
Message-ID: <50EAF616.5060604@linux.intel.com>
Date: Mon, 07 Jan 2013 08:21:42 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <1219DA3ECB038C40A6CF638974AA84A52517920E@sestoex05.enea.se>
	<CADkTA4PNsOqwWbvDmyLGrcn6GVboeFkJX3voR1Pji_FoVU8m1w@mail.gmail.com>
In-Reply-To: <CADkTA4PNsOqwWbvDmyLGrcn6GVboeFkJX3voR1Pji_FoVU8m1w@mail.gmail.com>
X-Enigmail-Version: 1.4.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rick Yang <Rick.Yang@enea.com>
Subject: Re: yocto-kernel-tools
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
X-List-Received-Date: Mon, 07 Jan 2013 16:21:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/24/2012 08:15 AM, Bruce Ashfield wrote:
> 
> 
> 
> On Mon, Dec 24, 2012 at 6:28 AM, Rick Yang <Rick.Yang@enea.com
> <mailto:Rick.Yang@enea.com>> wrote:
> 
>     Hi , ____
> 
>     We have a linux release base on yocto, and we want to use
>     yocto-kernel-tools to manage kernel configuration fragments, instead
>     of the old method. So we want to know, when poky will use
>     yocto-kernel-tools to manage the kernel ? Is there a plan?
> 
> 
> I'm not sure I follow the question. Since yocto 1.0 the kern-tools have
> been used
> to manage the kernel, they've been changing over time, but the
> foundation and
> theory is the same.
> 
> If you want to manage a custom kernel, have a look in meta-skeleton for 
> linux-yocto-custom.bb <http://linux-yocto-custom.bb> and you can apply
> fragments to any upstream git tree
> of your choosing. It would of course be better if we get more
> contributions to the
> main linux-yocto meta data (yocto-kernel-cache and the linux-yocto meta
> branch), but
> that's completely voluntary. 

If you need some documentation on this please let us know, we have some
early docs going through some active development we can point you at if
interested.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

