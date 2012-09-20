Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5CC2E00655
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 14:33:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Sep 2012 14:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,455,1344236400"; d="scan'208";a="208993386"
Received: from unknown (HELO envy.home) ([10.7.199.50])
	by orsmga002.jf.intel.com with ESMTP; 20 Sep 2012 14:33:13 -0700
Message-ID: <505B8B7C.7080501@linux.intel.com>
Date: Thu, 20 Sep 2012 14:32:44 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: "Chatre, Reinette" <reinette.chatre@intel.com>
References: <1348166956.16487.26.camel@rchatre.jf.intel.com>
In-Reply-To: <1348166956.16487.26.camel@rchatre.jf.intel.com>
X-Enigmail-Version: 1.4.4
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Any hints when building boost-nativesdk?
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
X-List-Received-Date: Thu, 20 Sep 2012 21:33:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/20/2012 11:50 AM, Chatre, Reinette wrote:
> Hi,
> 
> I am running Yocto 1.2 and would like to include the boost development
> environment in my SDK. I created a bbappend for the boost recipe that
> only contains two lines:
> 
> PR = "${INC_PR}.1"
> BBCLASSEXTEND += "nativesdk"
> 
> When I build with the above I get the following warnings:
> NOTE: multiple providers are available for runtime boost-date-time (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-date-time

Khem, I thought this might be something you were familiar with. Any
thoughts?

--
Darren

> NOTE: multiple providers are available for runtime boost-filesystem (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-filesystem
> NOTE: multiple providers are available for runtime boost-graph (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-graph
> NOTE: multiple providers are available for runtime boost-iostreams (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-iostreams
> NOTE: multiple providers are available for runtime boost-program-options (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-program-options
> NOTE: multiple providers are available for runtime boost-regex (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-regex
> NOTE: multiple providers are available for runtime boost-signals (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-signals
> NOTE: multiple providers are available for runtime boost-system (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-system
> NOTE: multiple providers are available for runtime boost-test (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-test
> NOTE: multiple providers are available for runtime boost-thread (boost, boost-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match boost-thread
> 
> It seems a bit strange that "boost-nativesdk" is seen as a provider for
> any of those runtime components. Any hints what I should change to build
> things correctly?
> 
> Thank you very much
> 
> Reinette
>  
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

