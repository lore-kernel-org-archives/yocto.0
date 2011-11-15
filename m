Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D02BE006BA
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 15:51:32 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Nov 2011 15:51:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="76048578"
Received: from unknown (HELO envy.home) ([10.255.12.20])
	by orsmga001.jf.intel.com with ESMTP; 15 Nov 2011 15:51:31 -0800
Message-ID: <4EC2FB03.4090701@linux.intel.com>
Date: Tue, 15 Nov 2011 15:51:31 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <alpine.DEB.2.02.1110301131040.522@localhost6.localdomain6>
	<4EAD7542.4070204@gna.org>
	<alpine.DEB.2.02.1110301214180.915@localhost6.localdomain6>
	<4EAED7B0.4050909@windriver.com>
	<alpine.DEB.2.02.1110311323050.8545@localhost6.localdomain6>
	<4EAEDD3A.9070601@mlbassoc.com> <4EB2D044.7050207@linux.intel.com>
	<alpine.DEB.2.02.1111031340010.6799@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB04E7@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB04E7@ORSMSX101.amr.corp.intel.com>
X-Enigmail-Version: 1.3.3
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: what's the proper value for BB_NUMBER_THREADS?
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
X-List-Received-Date: Tue, 15 Nov 2011 23:51:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 11/15/2011 03:08 PM, Rifenbark, Scott M wrote:
> I haven't heard more on this.  Should I adjust the documents to
> suggest 2x for both these variables?

I think that's a reasonable thing to do, yes.

--
Darren

> 
> Scott
> 
> -----Original Message----- From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Robert P. J.
> Day Sent: Thursday, November 03, 2011 10:42 AM To: Darren Hart Cc:
> yocto@yoctoproject.org Subject: Re: [yocto] what's the proper value
> for BB_NUMBER_THREADS?
> 
> On Thu, 3 Nov 2011, Darren Hart wrote:
> 
>> 
>> 
>> On 10/31/2011 10:39 AM, Gary Thomas wrote:
>>> On 2011-10-31 11:25, Robert P. J. Day wrote:
>>>> On Mon, 31 Oct 2011, Mark Hatle wrote:
>>>> 
>>>>> On 10/30/11 11:15 AM, Robert P. J. Day wrote:
>>>>>> On Sun, 30 Oct 2011, Christian Gagneraud wrote:
>>>>>> 
>>>>>>> On 30/10/11 15:32, Robert P. J. Day wrote:
>>>>>>>> 
>>>>>>>> all the docs recommend twice the number of cores
>>>>>>>> (AFAICT), yet the template local.conf file suggests
>>>>>>>> that, for a quad core, the value of 4 would be
>>>>>>>> appropriate.  shouldn't that say 8?  same with 
>>>>>>>> PARALLEL_MAKE?
>>>>>>> 
>>>>>>> Hi Robert,
>>>>>>> 
>>>>>>> The Poky ref manual says (rule of thumb) x2 for
>>>>>>> BB_NUMBER_THREADS, and x1.5 for PARALLEL_MAKE.
>>>>>> 
>>>>>> if that's the case, anyone object to my submitting a patch
>>>>>> to update local.conf.sample appropriately?
>>>>>> 
>>>>>> rday
>>>>>> 
>>>>> 
>>>>> I agree the manual and local.conf files should match.  The
>>>>> issue seems to be that the perfect values are subjective.
>>>>> Things like memory, disk speed, chipset latency, and of
>>>>> course processor speed/cores all affect the optimal setting.
>>>>> But we do need a consistent rule of thumb..  I myself usually
>>>>> use x2 for both THREADS and MAKE.
>>>> 
>>>> that's what i would normally use, assuming that having an
>>>> overly high value for either of those settings can't possibly
>>>> hurt.  if that's the consensus, i can adjust the references to
>>>> say 2x everywhere that i know of.  just let me know.
>>> 
>>> Look back in the archives - I think it was Richard that did a
>>> fairly extensive study of this and he (whoever it was) found that
>>> there were saturation points and trying to get beyond them had a
>>> negative impact.
>> 
>> 2x on each works well up to about 12 in my experience. Richard has
>> found benefits using 24 on a similar system with more memory.
>> However, if you aren't building on a monster machine, then 2x
>> serves as a reasonable rule of thumb.
> 
> since i vaguely recall that i was the one who asked about this, i can
> submit a patch for this unless someone else already wants to.  i can
> see that the places to change would be in some of the docs, as well
> as the comment in local.conf.sample.
> 
> anyone else want to take care of that?  anyone?  bueller?
> 
> rday
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

