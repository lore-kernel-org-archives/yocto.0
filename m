Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEAACE013A5;
	Mon, 19 Mar 2012 13:22:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2012 13:22:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="119250268"
Received: from unknown (HELO envy.home) ([10.7.199.162])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2012 13:22:48 -0700
Message-ID: <4F67956E.4090905@intel.com>
Date: Mon, 19 Mar 2012 13:22:06 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <90741FE9B50D654690EB940EDB456C8E0908E7@SHSMSX101.ccr.corp.intel.com>
	<1332152778.9740.3.camel@ted>
	<90741FE9B50D654690EB940EDB456C8E091117@SHSMSX101.ccr.corp.intel.com>
	<CDED78A957032E45B3239CDDA7642D15084A4D84@ORSMSX105.amr.corp.intel.com>
	<4F676946.6000609@intel.com> <1332188291.9740.71.camel@ted>
In-Reply-To: <1332188291.9740.71.camel@ted>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto weekly bug trend charts -- WW11
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
X-List-Received-Date: Mon, 19 Mar 2012 20:22:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/19/2012 01:18 PM, Richard Purdie wrote:
> On Mon, 2012-03-19 at 10:13 -0700, Darren Hart wrote:
>> On 03/19/2012 09:18 AM, Stewart, David C wrote:
>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>> bounces@yoctoproject.org] On Behalf Of Xu, Jiajun
>>>> Sent: Monday, March 19, 2012 8:33 AM
>>
>>>> BTW, when I check the open bug data, I find that a new variable is introduced
>>>> with new bugzilla for field "severity" - janitors. We do not include the bugs
>>>> marked as janitors in "Yocto Weekly Open bug Trend(Severity)". My thinking
>>>> is that janitors is similar with enhancement. We could treat it as
>>>> enhancement(with weight value "0"), or if we think it should be included into
>>>> WDD, we could set a weight value for it. How do you think of it?
>>>> Fortunately, we only have 4 bugs marked as janitors, and they are all new
>>>> reported last week. We could simply update the bug trend once we make the
>>>> decision.
>>>
>>> I suggest we make the janitor severity the same as low in the WDD calculation.
>>>
>>
>> I don't know what "low" would map to. The key says:
>>
>> "The weight we use for each severity: Critical:10, Major:7, Normal:5,
>> Minor:3, Enhancement:0 "
>>
>> In my view, Janitors should be marked the same as Enhancement, 0. If a
>> bug is important enough to track and impact release, it shouldn't be a
>> janitors bug, which by definition are intended to sit in a pool for
>> new-comers and irregular contributors to pick up.
> 
> I did talk briefly with Dave earlier and it was hard to decide whether
> these were minor or enhancement in nature. Enhancements are about adding
> new functionality, bugs of whatever severity are about issues in
> existing features. Janitor class issues could be in either category so
> you can argue this both ways from that perspective.
> 
> Did we end up deciding to have a janitor user to assign these too in the
> end or are they going to remain with various people until assigned? If
> the latter, I'd hate to see the WDD being skewed against people due to
> high numbers of janitor bugs so that might sway my argument.

Last I spoke with Michael (added to CC), the plan was to assign these to
a default "Yocto Janitor" id. Unfortunately, we don't have a way to set
this up for automatic assignment like we do for "component owner", as
Janitor bugs are currently identified by severity.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

