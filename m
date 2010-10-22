Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C06FF4C80054
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 12:23:24 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Oct 2010 10:23:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,224,1286175600"; d="scan'208";a="339352338"
Received: from unknown (HELO [10.255.12.177]) ([10.255.12.177])
	by azsmga001.ch.intel.com with ESMTP; 22 Oct 2010 10:23:23 -0700
Message-ID: <4CC1C88B.707@linux.intel.com>
Date: Fri, 22 Oct 2010 10:23:23 -0700
From: "Saul G. Wold" <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <1287757431.16386.768.camel@rex>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BC182DD1@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC182DD1@orsmsx501.amr.corp.intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Last minute changes - Review Request
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 17:23:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/2010 09:32 AM, Stewart, David C wrote:
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Richard Purdie
>> Sent: Friday, October 22, 2010 7:24 AM
>>
>> Coming up to release there are a few things that the extended testing
>> has shown up which we have fixes for and which we should consider
>> including in the release. I also finally got around to doing the final
>> sstate stress testing and found several problematic issues. Given that
>> sstate and checksums are a significant feature of this release, I'd
>> really like them to work as well as we can make them. Prior to this I
>> had stress tested the backend up not the use of the packages. These
>> changes don't change any sstate packages themselves, just the use of
>> them.
>>
>> Since we already have the release images prepared and tested and these
>> are not going to change, the criteria for potential changes:
>>
>> a) We can unit test the changes and be confident they don't
>>    break/regress things.

For the Future: Besides doing a basic build, we need to have some real 
unit tests for bitbake and the poky infrastructure, I guess I need to 
turn this into a Testing feature request for 1.0 (look for it soon).

>> b) They fix important bugs that the user can easily run into
>>    or that make the project look bad.
After reviewing the changes I agree, don't get me wrong, I am still very 
nervous about these changes.

>> c) The changes are small, well documented and are obviously correct
>>    looking at the code/patch.
Some times we over look the obvious changes, been caught by that myself 
too many time.

>> d) The don't change the generated images.

<SNIP>

>> I'm not happy about being in this position and I know Dave will be very
>> nervous about these late changes. To mitigate this I'd like to propose
>> that a selection of people (Josh, Mark, Saul?) review these changes and
>> report back on whether they feel these are appropriate and also give the
>> build some testing with these applied.
>
> I'm so predictable... :-) Yes, I'm nervous. I looked at all of the patches and with the exception of one or two, they mostly seem like good ones. I will accept these if Josh/Mark/Saul give us a +1 on their review&  testing.
>

If there was 1 or 2 changes, I would be much happier, but there are 
almost a dozen changes, yes mostly individually they are OK, I am still 
reviewing them all, and have not started any testing with them yet.

I agree with Dave that there are a couple that I am more nervous about 
the pseudo/fakeroot as we have had so much trouble in the past, yes I 
know this will make things better, but what else will crop up?


>> Cheers,
>>
>> Richard
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.pokylinux.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto

