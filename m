Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E023E011AC
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 09:18:21 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Jan 2013 09:18:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,397,1355126400"; d="scan'208";a="266314480"
Received: from unknown (HELO envy.home) ([10.255.14.43])
	by orsmga002.jf.intel.com with ESMTP; 02 Jan 2013 09:18:20 -0800
Message-ID: <50E46BDB.10701@linux.intel.com>
Date: Wed, 02 Jan 2013 09:18:19 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1355766001.git.tom.zanussi@intel.com>
	<50D25D00.2010507@linux.intel.com>
	<1356018439.30533.44.camel@empanada>
In-Reply-To: <1356018439.30533.44.camel@empanada>
X-Enigmail-Version: 1.4.6
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5] RFC: new 'yocto-layer' tool for creating generic Yocto layers
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
X-List-Received-Date: Wed, 02 Jan 2013 17:18:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/20/2012 07:47 AM, Tom Zanussi wrote:
> On Wed, 2012-12-19 at 16:34 -0800, Darren Hart wrote:
>> On 12/17/2012 09:51 AM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi <tom.zanussi@intel.com>
>>>

> I'm thinking that most users probably won't use these tools very often,
> so providing a complete command-line equivalent encompassing all the
> options would be more trouble than it's worth.  It might make sense
> though to do it for the case of the 'simplest layer' which would mean
> just adding a 'priority' option in addition to the layer name already
> specified on the command line.


Nothing else to add, agreed.


>> It might make sense to create a recipes/ directory as well, just to
>> support convention.
>>
> 
> Not sure what you mean - if you say 'y' to either the recipe or the
> bbappend, it will create a recipes-example/ dir to contain them.  Do you
> mean something else?


Missed that, problem solved.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

