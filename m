Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08448E00533
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:22:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Oct 2012 14:22:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="209684466"
Received: from unknown (HELO envy.home) ([10.255.14.9])
	by orsmga001.jf.intel.com with ESMTP; 23 Oct 2012 14:22:39 -0700
Message-ID: <50870A60.1070007@intel.com>
Date: Tue, 23 Oct 2012 14:21:36 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
	<eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
	<1351026976.12186.70.camel@empanada>
In-Reply-To: <1351026976.12186.70.camel@empanada>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/6] crownbay README: add WebTitle & Compliance information
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
X-List-Received-Date: Tue, 23 Oct 2012 21:22:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/23/2012 02:16 PM, Tom Zanussi wrote:
> On Tue, 2012-10-23 at 13:24 -0700, nitin.a.kamble@intel.com wrote:

>> +WebTitle: Intel Atom E6xx processor with Intel EG20T Controller Hub development kit (crownbay)
>> +
> 
> I'm not sure this kind of thing should be in the README since we can
> have multiple downloadable BSPs per layer e.g. crownbay vs
> crownbay-noemgd.  I suppose in keeping with the build system you could
> have separate WebTitle_crownbay and WebTitle_crownbay-noemgd lines. ;-) 
> (and it would be nice if you could get rid of the CamelCaps too)
> 
> Why not put this info in the machine.conf, where we already have fields
> meant to be machine parseable e.g.
> 
> #@TYPE: Machine
> #@NAME: crownbay
> 
> #@WEBTITLE: ...

Oh much much better.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

