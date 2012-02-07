Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86EB2E0136A
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 08:17:04 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Feb 2012 08:17:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="122023955"
Received: from unknown (HELO [10.255.15.17]) ([10.255.15.17])
	by fmsmga002.fm.intel.com with ESMTP; 07 Feb 2012 08:17:03 -0800
Message-ID: <4F314E7F.7060108@linux.intel.com>
Date: Tue, 07 Feb 2012 08:17:03 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CB56B9C2.7503%belen.barros.pena@intel.com>
In-Reply-To: <CB56B9C2.7503%belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Hob 1.2 design
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
X-List-Received-Date: Tue, 07 Feb 2012 16:17:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Belen,

Thanks for clarifying.

Shane - I noticed at least one bug has been closed because the second 
video didn't show the features (#1804) - seems like this isn't what was 
intended by features 'disappearing' in the latest video.

http://bugzilla.pokylinux.org/show_bug.cgi?id=1804

Cheers,
Joshua

On 07/02/12 03:23, Barros Pena, Belen wrote:
> Hi Joshua,
>
> Additional package details appear on clicking the package name using an
> information bubble. The bubble is also dismissed on click using a 'close'
> button. This functionality is shown on the first video (not on the second
> one: I skipped it to keep it short).
>
> Cheers
>
> Belen
>
> On 06/02/2012 21:32, "Joshua Lock"<josh@linux.intel.com>  wrote:
>
>> On 31/01/12 17:39, Wang, Shane wrote:
>>> Hi, all,
>>>
>>> Belen has a new video for Hob2 workflow and design.
>>>
>>> https://wiki.yoctoproject.org/wiki/File:Hob1.2-screencast2.mov
>>
>> It just came to my attention through another channel that the
>> description column of the packages table is no longer present.
>>
>> There had been some discussion about how to show relevant description
>> information in that column, so I'm surprised to see it go.
>>
>> Belen, I assume from a design perspective this field was removed as it
>> didn't show anything particularly useful? If we have useful data to
>> include in that field is there a more appropriate way to integrate it
>> into the UI? Perhaps a tooltip? Or an information overlay as has been
>> used in other areas of the design?
>>
>> I'm concerned that if we give the user a list of packages without any
>> more information we aren't making it easy for them to build an OS image
>> without already understanding exactly all of the components they need -
>> thoughts?
>>
>> Cheers,
>> Joshua
>> --
>> Joshua Lock
>>          Yocto Project "Johannes factotum"
>>          Intel Open Source Technology Centre
>

-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

