Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A96DE00746
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 13:15:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4BKFDBM010441
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 May 2012 13:15:13 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 11 May 2012 13:15:13 -0700
Message-ID: <4FAD734F.5010503@windriver.com>
Date: Fri, 11 May 2012 16:15:11 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<4b87723a74ddeb8a322878d1eab1d519d4d065ae.1336697506.git.tom.zanussi@intel.com>
	<4FAD3A75.7070403@linux.intel.com>
	<1336764387.27808.36.camel@elmorro>
In-Reply-To: <1336764387.27808.36.camel@elmorro>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 02/10] meta/common-pc: use usb features
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
X-List-Received-Date: Fri, 11 May 2012 20:15:14 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-11 03:26 PM, Tom Zanussi wrote:
> On Fri, 2012-05-11 at 09:12 -0700, Darren Hart wrote:
>>
>> On 05/10/2012 05:59 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi<tom.zanussi@intel.com>
>>>
>>> Use the available ehci and uhci usb features and remove the associated
>>> config settings from the top-level common-pc feature.
>>>
>>> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
>>
>> For what this does:
>>
>> Acked-by: Darren Hart<dvhart@linux.intel.com>
>>
>> Further thoughts:
>>
>> I wonder why common-pc does not include OHCI HCDs?
>>
>>>   CONFIG_USB_STORAGE=y
>>
>> This should really be pulled out as well and added to the standard and
>> preempt-rt bsp-ktype.scc files.
>>
>
> The CONFIG_USB_STORAGE setting here is standalone, and the common-pc*
> don't have the other options contained in the usb-mass-storage feature,
> so that's why this was left behind.  Perhaps they should also include
> the usb-mass-storage feature as well, but that would be adding more than
> cleanup at this point.

Agreed. We can address that later, but for the cleanup, I can see why
it's orphaned.

This all change looks fine to me.

Bruce

>
> Anyway, note that the later patches do add the usb-mass-storage to the
> standard and preempt-rt files for the other non-common-pc* BSPs in the
> patchset.
>
>>
>>>   CONFIG_USB_HID=y
>>>   CONFIG_USB_HIDDEV=y
>>> diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
>>> index bab45e6..2338ea6 100644
>>> --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
>>> +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
>>> @@ -2,6 +2,8 @@ kconf hardware common-pc.cfg
>>>   kconf hardware common-pc-gfx.cfg
>>>
>>>   include cfg/boot-live.scc
>>
>> This should be moved to the standard and preempt-rt bsp-ktype.scc files
>> as well.
>>
>
> The later patches do this for the boot-live feature.
>
> Tom
>
>>> +include features/usb/ehci-hcd.scc
>>> +include features/usb/uhci-hcd.scc
>>>   include features/intel-e1xxxx/intel-e100.scc
>>>   include features/intel-e1xxxx/intel-e1xxxx.scc
>>>   include features/latencytop/latencytop.scc
>>
>
>


