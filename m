Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5A6FE0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 12:52:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Jan 2012 12:52:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="97764228"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.156])
	by orsmga002.jf.intel.com with ESMTP; 12 Jan 2012 12:52:37 -0800
Message-ID: <4F0F4801.10102@intel.com>
Date: Thu, 12 Jan 2012 12:52:17 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901900BC33C@orsmsx502.amr.corp.intel.com>
	<4EE7DA4D.4080500@windriver.com> <4EE7DC81.6030609@intel.com>
	<4BD43A85686FC34D819098DB1C3999D901900BC38A@orsmsx502.amr.corp.intel.com>
	<4EE7DEC2.5050803@windriver.com>
	<4BD43A85686FC34D819098DB1C3999D901900BC3A3@orsmsx502.amr.corp.intel.com>
	<4EE83092.5000500@windriver.com> <4EE83861.4060607@intel.com>
	<4EE8AD93.8040100@windriver.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E255@orsmsx502.amr.corp.intel.com>
	<4EEB9CD5.7060004@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E281@orsmsx502.amr.corp.intel.com>
	<4EEBA792.9030404@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E3BE@orsmsx502.amr.corp.intel.com>
	<4EEBCF40.1050208@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E569@orsmsx502.amr.corp.intel.com>
	<4EEBF18C.3050302@intel.com> <4EEC068C.6080906@windriver.com>
	<1326400782.2413.192.camel@elmorro>
In-Reply-To: <1326400782.2413.192.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
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
X-List-Received-Date: Thu, 12 Jan 2012 20:52:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/12/2012 12:39 PM, Tom Zanussi wrote:
> On Fri, 2011-12-16 at 19:03 -0800, Bruce Ashfield wrote:
>> On 11-12-16 8:34 PM, Darren Hart wrote:
>>> On 12/16/2011 05:22 PM, Bodke, Kishore K wrote:
>>>>
>>>> With the attached Darren's kern-tools-native_git.bb file, build was success.
>>>> Thanks
>>>> Kishore.
>>>
>>> See the patch I just sent:kern-tools: Include do_install() in bbappend
>>> for what I believe to be the solution.
>>>
>>> I suppose the proper solution would be to version the kern-tools-native
>>> recipe when major things like that change, but given the nature of this
>>> layer, I think the above patch is adequate.
>>
>> That's not the solution to either problem (well, yes, it's a solution
>> and there's nothing inherently wrong with it, it's just covering up
>> the underlying issue) which is a layer dependency issue. In this case,
>> meta-kernel-dev tracks the master branch of poky, not any other branch
>> or version. And that is implicit, not explicit, hence why it got into
>> this tangle.
>>
>> We could simply branch meta-kernel-dev and have an edison branch for
>> it, not modify the appends to contain something that will just break
>> again in the future.
>>
>> But meta-kernel-dev isn't officially used by much at the moment, so
>> I'm not convinced that branching it is worth the trouble (but I can
>> be convinced otherwise). I'd rather either just remove the kern-tools
>> bbappend (I'm probably the only one on the planet that really needs
>> it), or just trust people to know what they are up to with the
>> meta-kernel-dev layer.
>>
> 
> Revisiting this - meta-kernel-dev is used in the documentation, and
> Scott has now run up against this when testing and updating it.  Since
> the documentation does use edison, and the walk-throughs have the user
> check out edison branches of both poky and the BSP layers, it would be
> consistent to have the user also do the same for meta-kernel-dev.
> Probably just an edison branch with the kern-tools bbappend removed
> would work fine...
> 
> Tom

Works for me.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

