Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA65D4C811A9
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 17:21:06 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9MML6Qk012767
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 15:21:06 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 22 Oct 2010 15:21:06 -0700
Received: from Macintosh-5.local ([172.25.34.19]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 22 Oct 2010 15:21:06 -0700
Message-ID: <4CC20E51.1040600@windriver.com>
Date: Fri, 22 Oct 2010 17:21:05 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.11) Gecko/20101013 Thunderbird/3.1.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4CC0C619.7070201@linux.intel.com><625BA99ED14B2D499DC4E29D8138F1504D0149B5B7@shsmsx502.ccr.corp.intel.com><4CC1F268.6070902@linux.intel.com><855D0811-F556-42F1-89A3-60720E32044A@windriver.com><4CC20A7C.10408@linux.intel.com>
	<4CC20D61.8020301@windriver.com>
In-Reply-To: <4CC20D61.8020301@windriver.com>
X-OriginalArrivalTime: 22 Oct 2010 22:21:06.0490 (UTC)
	FILETIME=[6BA479A0:01CB7237]
Subject: Re: RFC: "Demo Use Cases" documentation for the web page
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
X-List-Received-Date: Fri, 22 Oct 2010 22:21:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/10 5:17 PM, Mark Hatle wrote:
> On 10/22/10 5:04 PM, Darren Hart wrote:
>> On 10/22/2010 02:04 PM, Alex deVries wrote:
>>>
>>> On 2010-10-22, at 4:22 PM, Darren Hart wrote:
>>>
>>>>> boards list used in this demo.
>>>>
>>>> Hrm... do we want to explicitly call them out? The point is that it was
>>>> multi-architecture, but for some to recreate it, the point is that it
>>>> doesn't really matter what hardware they have - poky can build for any
>>>> of them.
>>>>
>>>> What do others think, should we mention the specific boards in use at
>>>> the demo?
>>>
>>>
>>> Yeah, I think we should.  It proves that it really does run on other hardware, and the demo hw is the example.  Showing product names helps shake the image that this is IA-only.
>>
>> OK, so can someone provide me with an appropriate list of the non-IA
>> platforms? I know them as "The MIPS board" "The PPC board" etc.
>>
>
> arm - beagleboard (I don't know the revision)
> ppc - fsl-mpc8315e-rdb

Figured I should expand this..

Freescale MPC8315E-RDB  (I think w/ have the 'A' revision, but thats not likely 
important)

> mips - Ubiquity Networks Router Station Pro a.k.a. MIPS Linux Starter Kit
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto


