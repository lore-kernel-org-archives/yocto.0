Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7929E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:37:07 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 14:37:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102157057"
Received: from unknown (HELO [10.255.14.103]) ([10.255.14.103])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 14:37:04 -0800
Message-ID: <4F29BE90.1010707@linux.intel.com>
Date: Wed, 01 Feb 2012 14:37:04 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1328135056.git.dvhart@linux.intel.com>
	<9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
In-Reply-To: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
Subject: Re: [pull-sys940x 1/4] meta-intel: Add Inforce SYS940x BSP
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
X-List-Received-Date: Wed, 01 Feb 2012 22:37:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 01/02/12 14:26, Darren Hart wrote:
> The Inforce SYS940x-ECX Developer-Ready Reference Platform features:
> o Intel Atom E6xx (0.6-1.6 GHz)
> o Up to 1GB on-board DDR2
> o Intel Platform Controller Hub EG20T
> o VGA,LVDS
> o HD Audio
> o SD Card
> o Dual SATA
> o Mini-PCIe
>
> http://www.inforcecomputing.com/SYS940X_ECX.html
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta-sys940x/COPYING.MIT                           |   17 +++
>   meta-sys940x/README                                |  140 ++++++++++++++++++++
>   meta-sys940x/README.sources                        |   18 +++
>   meta-sys940x/conf/layer.conf                       |   10 ++
>   meta-sys940x/conf/machine/sys940x-noemgd.conf      |   19 +++

When I played around with an earlier version of this branch recently the 
kernel for the noemgd machine didn't build, is that now fixed?

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

