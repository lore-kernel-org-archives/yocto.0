Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66641E00723
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 08:22:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jun 2012 08:22:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="156751823"
Received: from unknown (HELO [10.255.12.124]) ([10.255.12.124])
	by orsmga001.jf.intel.com with ESMTP; 21 Jun 2012 08:22:29 -0700
Message-ID: <4FE33C34.9060904@linux.intel.com>
Date: Thu, 21 Jun 2012 08:22:28 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CC08AFF0.11AC2%belen.barros.pena@intel.com>
In-Reply-To: <CC08AFF0.11AC2%belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: self-hosted image vs. build appliance
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
X-List-Received-Date: Thu, 21 Jun 2012 15:22:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/21/2012 03:30 AM, Barros Pena, Belen wrote:
> Hi Saul,
>
> Thanks for explaining. But I must say: to an outsider, the existing naming
> does not explain how these 2 things relate to each other.
>
> We are adding a description of the 'self-hosted-image' to Hob, including a
> link to the Build Appliance page in the Yocto Project website. But I am
> not sure it will be enough to fully explain the relationship between both.
> Is there any reason why the recipe and the ovf file need to have different
> names?
>
How about build-appliance-image and building a Build Appliance ovf

Sau!


> Cheers
>
> Belen
>
>
>
> On 20/06/2012 17:44, "Saul Wold"<sgw@linux.intel.com>  wrote:
>
>> On 06/20/2012 09:23 AM, Barros Pena, Belen wrote:
>>> Does anybody know why are we calling it 'self-hosted-image' in Hob and
>>> 'build-appliance' in the Yocto Project website? Wouldn't it be easier if
>>> we used the same name everywhere? Which one should be used?
>>>
>> They are slightly different.  The self-hosted-image is the recipe name
>> that generates the image.  The build-appliance is the VMware OVF file
>> and bits needed to use VMPlayer or VMWorkstation.  The self-hosted-image
>> is the underlying disk image used in the Build Appliance
>>
>> Sau!
>>
>>> Thanks!
>>>
>>> Belen
>>>
>>> ---------------------------------------------------------------------
>>> Intel Corporation (UK) Limited
>>> Registered No. 1134945 (England)
>>> Registered Office: Pipers Way, Swindon SN3 1RJ
>>> VAT No: 860 2173 47
>>>
>>> This e-mail and any attachments may contain confidential material for
>>> the sole use of the intended recipient(s). Any review or distribution
>>> by others is strictly prohibited. If you are not the intended
>>> recipient, please contact the sender and delete all copies.
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>
>
>

