Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDD28E00307
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 09:39:16 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Feb 2012 09:39:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="64908876"
Received: from unknown (HELO [10.255.14.208]) ([10.255.14.208])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Feb 2012 09:39:16 -0800
Message-ID: <4F3404C3.4060203@linux.intel.com>
Date: Thu, 09 Feb 2012 09:39:15 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4F323C52.8030304@intel.com> <1636213.TrTs1YKXOm@helios>
	<3FF9BD4A-F07C-4958-8758-9D4DC02171A0@beagleboard.org>
	<2515705.YAd3HxSNCM@helios>
In-Reply-To: <2515705.YAd3HxSNCM@helios>
Cc: yocto@yoctoproject.org, Koen Kooi <koen@beagleboard.org>
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Thu, 09 Feb 2012 17:39:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2012 07:31 AM, Paul Eggleton wrote:
> On Thursday 09 February 2012 15:51:11 Koen Kooi wrote:
>>> The status ought to be correct with regard to the patch author's
>>> assessment of whether or not the patch can go upstream.
>>
>> That's where I disagree, it's called 'Upstream-status', not
>> 'Perceived-upstream-status'. The field should reflect the status from an
>> upstream perspective, not from the OE perspective. So both 'Pending' and
>> 'Inappropriate' boil down to 'Not submitted' currently. Maybe I'm
>> overthinking all this :)
>
> Well unless I'm mistaken, the purpose of the field for which it was originally
> introduced is as I stated it, to track where we (layer maintainers) are in
> sending things upstream since the expectation is that we will be the ones
> doing the work required to do that. Whether or not the label(s) that get used
> accurately communicate that is another matter.
>
Paul is correct here, a number of people made various proposals for what 
to put into this field from the perspective of the maintainers. This was 
then documented by Mark Hatle and reviewed in the TSC at somepoint.  It 
is posted at:

http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

There is never a good set of words because everyone can translate then 
differently. I think everyone is doing there best.  For the existing set 
of Pending, we are working to get those upstream, they would then be 
marked Submitted, after that we can get more accurate response from the 
upstream and mark the patch as such.  I think that the Submitted step is 
getting missed and we go from Pending -> updated upstream status.

Once we get through the "Pending" batch we can revisit the remaining 800 
or so patches.

We are working on it, every little step makes things better.

Sau!

> Cheers,
> Paul
>

