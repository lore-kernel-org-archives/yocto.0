Return-Path: <belen.barros.pena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35F74E01437
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 01:44:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Jun 2012 01:44:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="159500271"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by azsmga001.ch.intel.com with ESMTP; 22 Jun 2012 01:44:36 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.36]) with mapi id
	14.01.0355.002; Fri, 22 Jun 2012 09:44:17 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [yocto] self-hosted image vs. build appliance
Thread-Index: AQHNUFM1pXN3zXWi502/UZWXE7+HyQ==
Date: Fri, 22 Jun 2012 08:44:17 +0000
Message-ID: <CC09EE59.11C4A%belen.barros.pena@intel.com>
In-Reply-To: <4FE33C34.9060904@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.39.50]
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 22 Jun 2012 08:44:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <71396FCCE5D2E547A1E03B06FAFCD33B@intel.com>
Content-Transfer-Encoding: quoted-printable

Dave Stewart has suggested to use Build Appliance everywhere unless
someone comes up with something better. I think build-appliance-image is
definitely better than self-hosted-image, so I'll ask that to be changed
in Hob as part of bug 2636.

About the description, this is what Scott has suggested:

'An image you can run using the Yocto Project Build Appliance. It boots
from VMware Player or VMware Workstation. For more details, visit the
Yocto Project Website.'

'visit the Yocto Project Website' would be a link to
http://www.yoctoproject.org/documentation/build-appliance


Any thoughts?

Thanks!

Belen

On 21/06/2012 16:22, "Saul Wold" <sgw@linux.intel.com> wrote:

>On 06/21/2012 03:30 AM, Barros Pena, Belen wrote:
>> Hi Saul,
>>
>> Thanks for explaining. But I must say: to an outsider, the existing
>>naming
>> does not explain how these 2 things relate to each other.
>>
>> We are adding a description of the 'self-hosted-image' to Hob,
>>including a
>> link to the Build Appliance page in the Yocto Project website. But I am
>> not sure it will be enough to fully explain the relationship between
>>both.
>> Is there any reason why the recipe and the ovf file need to have
>>different
>> names?
>>
>How about build-appliance-image and building a Build Appliance ovf
>
>Sau!
>
>
>> Cheers
>>
>> Belen
>>
>>
>>
>> On 20/06/2012 17:44, "Saul Wold"<sgw@linux.intel.com>  wrote:
>>
>>> On 06/20/2012 09:23 AM, Barros Pena, Belen wrote:
>>>> Does anybody know why are we calling it 'self-hosted-image' in Hob and
>>>> 'build-appliance' in the Yocto Project website? Wouldn't it be easier
>>>>if
>>>> we used the same name everywhere? Which one should be used?
>>>>
>>> They are slightly different.  The self-hosted-image is the recipe name
>>> that generates the image.  The build-appliance is the VMware OVF file
>>> and bits needed to use VMPlayer or VMWorkstation.  The
>>>self-hosted-image
>>> is the underlying disk image used in the Build Appliance
>>>
>>> Sau!
>>>
>>>> Thanks!
>>>>
>>>> Belen
>>>>
>>>> ---------------------------------------------------------------------
>>>> Intel Corporation (UK) Limited
>>>> Registered No. 1134945 (England)
>>>> Registered Office: Pipers Way, Swindon SN3 1RJ
>>>> VAT No: 860 2173 47
>>>>
>>>> This e-mail and any attachments may contain confidential material for
>>>> the sole use of the intended recipient(s). Any review or distribution
>>>> by others is strictly prohibited. If you are not the intended
>>>> recipient, please contact the sender and delete all copies.
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>
>>
>>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


