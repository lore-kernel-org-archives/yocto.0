Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68017E00747
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 21:47:48 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r7U4lkpb004477
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 29 Aug 2013 21:47:46 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.245) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Thu, 29 Aug 2013 21:47:45 -0700
Message-ID: <522023F0.6080609@windriver.com>
Date: Fri, 30 Aug 2013 00:47:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
References: <6C2434209962DC46B88345CA85C334A201CAAD7035ED@Courier.syntech.org>
	<521F6E10.3090704@windriver.com>
	<6C2434209962DC46B88345CA85C334A201CAAD7035EE@Courier.syntech.org>
	<521FA4C5.5010102@windriver.com>
	<6C2434209962DC46B88345CA85C334A201CAAD7035F2@Courier.syntech.org>
In-Reply-To: <6C2434209962DC46B88345CA85C334A201CAAD7035F2@Courier.syntech.org>
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: yocto-bsp and kconf-check
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Aug 2013 04:47:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-29 5:39 PM, Jate Sujjavanich wrote:
> Some additional information: I noticed that the two CONFIG's are also defined in the fragment features/usb-net/usb-net.cfg. They are defined without using the non-hardware flag.
>

That's could be a contributing factor, if they have their bucket changed
by multiple fragments, the auditing gets harder.

I'll do a run with your BSP and let you know what I find.

Bruce

>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Thursday, August 29, 2013 3:45 PM
>> To: Jate Sujjavanich
>> Cc: 'yocto@yoctoproject.org'
>> Subject: Re: [yocto] yocto-bsp and kconf-check
>>
>> On 13-08-29 02:56 PM, Jate Sujjavanich wrote:
>>>> Which kernel version ?
>>>
>>> This is linux-yocto-3.8 and the dylan-9.0.0 yocto.
>>>
>>>> It's not about them being common or not, it's about BSPs following a
>>>> base policy versus having wild, per-board behaviour.
>>>
>>> I've cleaned up many items from the yocto-bsp generated
>>> {{machine}}.cfg that are already added by KTYPE. I have two remaining
>>> warnings for CONFIG_NET and CONFIG_NETDEVICES. Nested includes
>>> eventually lead to the line
>>>
>>> force kconf non-hardware base.cfg
>>>
>>> which adds those config options. I thought the non-hardware would
>> prevent the specified_non_hdw.cfg warning.
>>
>> It should, unless there's a bug. Can you send me the steps to reproduce
>> the config ? i.e. just your generated BSP layer in a .tgz should be
>> enough.
>>
>> Bruce
>>
>>>
>>>
>>> Any ideas?
>>>
>>>> -----Original Message-----
>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>> Sent: Thursday, August 29, 2013 11:52 AM
>>>> To: Jate Sujjavanich
>>>> Cc: 'yocto@yoctoproject.org'
>>>> Subject: Re: [yocto] yocto-bsp and kconf-check
>>>>
>>>> On 13-08-29 11:36 AM, Jate Sujjavanich wrote:
>>>>> It appears that the yocto-bsp script generates a kernel
>>>>> configuration
>>>> that creates some warnings during kern-tools' kconf_check. The
>>>> {{machine}}.cfg file has many non-hardware options, therefore the
>>>> script warns.
>>>>>
>>>>> It seems like many of these should be in the standard kernel
>>>> configuration. Is this correct, and does the yocto-bsp data need to
>>>> be updated?
>>>>
>>>> Which kernel version ? But the answer is not necessarily, if a
>>>> machine config is specifying something that hasn't been tagged
>>>> "hardware" or that has a specified exception, you get a warning.
>>>>
>>>> It's not about them being common or not, it's about BSPs following a
>>>> base policy versus having wild, per-board behaviour.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>>
>>>>> - Jate
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>
>


