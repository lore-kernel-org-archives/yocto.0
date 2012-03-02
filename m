Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C82F5E003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 09:15:47 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Mar 2012 09:15:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72854542"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Mar 2012 09:15:47 -0800
Message-ID: <4F510016.2050309@linux.intel.com>
Date: Fri, 02 Mar 2012 09:15:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1330663414.git.tom.zanussi@intel.com>
	<4F50F43C.7010307@linux.intel.com>
	<1330707770.2319.64.camel@elmorro>
In-Reply-To: <1330707770.2319.64.camel@elmorro>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/8] Yocto BSP tools
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
X-List-Received-Date: Fri, 02 Mar 2012 17:15:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/02/2012 09:02 AM, Tom Zanussi wrote:
> On Fri, 2012-03-02 at 08:24 -0800, Darren Hart wrote:

>>> For any subcommand, you can also use the word 'help' just before the
>>> subcommand to get more extensive documentation on the subcommand:
>>>
>>> $ yocto-bsp help create
>>>
>>
>> I believe it is more typical to have the "help" argument after the command:
>>
>> git branch -h, for example (since you used git-like in your
>> description). Not a big deal, but some might trip over this.
>>
> 
> Since it's advertised as a git-like tool, it's behaves as expected ;-)
> 
> $ git
> 
> See 'git help COMMAND' for more information on a specific command.

hah, I stand corrected :-)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

