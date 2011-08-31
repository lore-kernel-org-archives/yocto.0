Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 765B0E0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 16:18:25 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Aug 2011 16:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,310,1312182000"; d="scan'208";a="44488945"
Received: from unknown (HELO [10.255.14.33]) ([10.255.14.33])
	by azsmga001.ch.intel.com with ESMTP; 31 Aug 2011 16:18:24 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E16E675@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E16E675@orsmsx505.amr.corp.intel.com>
Date: Wed, 31 Aug 2011 18:18:21 -0500
Message-ID: <1314832701.29348.32.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: e100 driver does not build
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
X-List-Received-Date: Wed, 31 Aug 2011 23:18:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Wed, 2011-08-31 at 16:04 -0700, Saxena, Rahul wrote:
> I am unable to get the e100 driver to build for my BSP.
> 
> I have configured to build it as a module. I do  not see the e100.ko
> file being generated nor does
> 
>  CONFIG_E100 appear in the generated .config file in my build area. 
> 
>  
> 
> However I do see the driver source file e100.c in
>   tmp/work/bspname-poky-linux/linux-yocto-3.0.3+git1
> +xxxx ../linux/drivers/net    
> 
>  
> 
> I do not have any problems with other drivers (igb, E1000 etc)  that I
> have configured in exactly similar way.
> 
>  
> 
> Any insight on this issue ?  
> 

It's probably missing another option it depends on e.g. is
CONFIG_NET_PCI and CONFIG_MII enabled in your .config?

Tom

>  
> 
> Thanks
> 
> Rahul 
> 
> 



