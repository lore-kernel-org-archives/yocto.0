Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A1E9C4C810A8
	for <yocto@yoctoproject.org>; Thu,  4 Nov 2010 13:50:21 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA4IoKvZ010666;
	Thu, 4 Nov 2010 11:50:20 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 11:50:19 -0700
Received: from Macintosh-5.local ([172.25.36.228]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 11:50:19 -0700
Message-ID: <4CD3006A.607@windriver.com>
Date: Thu, 04 Nov 2010 13:50:18 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Leon Woestenberg <leon.woestenberg@gmail.com>
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com><4CD1849F.6010303@windriver.com><AANLkTinsewJh-==QbQ-LbXmNEZMSdqCKKpf-c8yi=m-a@mail.gmail.com><4CD2EB61.2090502@windriver.com><AANLkTimiWHMcwukn7j7aCx_KUHsp-yYdcb_G4omDQPpU@mail.gmail.com><4CD2F8F6.3080702@windriver.com>
	<AANLkTi=JebFH-aF9PDsXVR0QO+RBef4CbQSBP-yS7tG-@mail.gmail.com>
In-Reply-To: <AANLkTi=JebFH-aF9PDsXVR0QO+RBef4CbQSBP-yS7tG-@mail.gmail.com>
X-OriginalArrivalTime: 04 Nov 2010 18:50:20.0045 (UTC)
	FILETIME=[2124DBD0:01CB7C51]
Cc: yocto@yoctoproject.org
Subject: Re: ppc e500v2 support?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Nov 2010 18:50:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/4/10 1:43 PM, Leon Woestenberg wrote:
> Hello Mark,
>
> On Thu, Nov 4, 2010 at 7:18 PM, Mark Hatle<mark.hatle@windriver.com>  wrote:
>> On 11/4/10 1:02 PM, Leon Woestenberg wrote:
>>>> and for e500v2:
>>>> -mcpu=8548 -mfloat-gprs=double -mspe=yes -mabi=spe
>>>> Neither of those would be compatible with the existing "ppc" packaging
>>>> arch.
>>>>   We will need to generate at least one new packaging arch type, likely 2
>>>> (one for each).  Maybe called ppc_spe or something similar?
>>>>
>>> In OpenEmbedded we use the core variant as the packaging name:
>>>
>>> TARGET_CC_ARCH = "-mcpu=8548 -mspe=yes -mabi=spe -mhard-float
>>> -mfloat-gprs=double"
>>> BASE_PACKAGE_ARCH = "ppce500v2"
>>> FEED_ARCH = "ppce500v2"
>>> PACKAGE_EXTRA_ARCHS += "ppce500v2"
>>>
>>> Does that make sense?
>>>
>> I think this is an area we need to coordinate.. I'm not against calling is
>> ppce500v2 for right now.  However, I think this is a place we need to
>> coordinate efforts.  I'm going to attempt to pull together a list of Linux
>> ABIs&  potential optimizations in the Yocto wiki.
>>
>> The reason I bring this up is that over the years at Wind River, and my
>> previous experience at MontaVista... and watching Emdebian and other
>> projects.. _everyone_ names their package architectures differently..
>> because people only have a small view on the problem.  We finally have
>> enough history to have a chance at indicating what the actual ABIs are, and
>> how the compatibility matrix may fill out.  (also giving us a change to
>> finally give these architectures reasonable naming schemes!)
>>
> I don't see how we could be "final" on this, it seems a returning
> topic every few years.
>
> To bring in the OpenEmbedded arch namespace and our optimizations,
> from the "master" branch at OpenEmbedded:
> http://cgit.openembedded.org/cgit.cgi/openembedded/tree/conf/machine/include?h=master

This is a place where I think the Yocto Project can help.  We're likely never 
going to have a final answer.. but what we'll be able to do is give these 
impromptu ABIs reasonable names so when people talk, everyone can be talking 
about the same thing..

Then within the Yocto Project's build environment we can promote these namings 
as part of the implementation...

Open Embedded, and everyone else has legacy associated with their names, which 
we can try to either coordinate -- or at least help document...

--Mark

> Regards,


