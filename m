Received: from smtp8.emailarray.com (smtp8.emailarray.com [65.39.216.67])
 by mx.groups.io with SMTP id smtpd.web12.45794.1609163907895288053
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 05:58:28 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: balister.org, ip: 65.39.216.67, mailfrom: philip@balister.org)
Received: (qmail 82859 invoked by uid 89); 28 Dec 2020 13:58:23 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp8.emailarray.com with SMTP; 28 Dec 2020 13:58:23 -0000
Subject: Re: [yocto] chpasswd not working in yocto-2019
To: Raghu Icecraft Software Trainings <raghu.icecraft@gmail.com>,
 Paul Barker <pbarker@konsulko.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAKRDAG9vG0AsckYe2hJL9DW_FF6G_+71wLA5+hWG38xh7UjQUg@mail.gmail.com>
 <CAM9ZRVuM_zdytq2xYga15c4YpFNTZ3rNLPASZR-Akfb0Ao3x_A@mail.gmail.com>
 <CAKRDAG-CwUypnEGq05GocbGh-r_bt5HewOKqfWncWtyDoeXnpQ@mail.gmail.com>
From: "Philip Balister" <philip@balister.org>
Message-ID: <cc7a7a8d-49fd-987a-6b8e-cc00f6fa802e@balister.org>
Date: Mon, 28 Dec 2020 08:58:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAKRDAG-CwUypnEGq05GocbGh-r_bt5HewOKqfWncWtyDoeXnpQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/28/20 7:33 AM, Raghu Icecraft Software Trainings wrote:
> Paul,
> Thanks for the reply.
> I am using Xilinx-SDK based : Linux version 4.19.0-rt1-xilinx-v2019.1
> 
> Can you please let me know how to verify the yocto version running on
> target.

You might have better luck on the meta-xilinx mailing list. They should
know the details for their BSP.

More info on Xilnx layers and a pointer to subscribe info to the mailing
list is here:

https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841883/Yocto

Philip

> 
> Thanks,
> Raghu
> 
> On Mon, Dec 28, 2020 at 5:31 PM Paul Barker <pbarker@konsulko.com> wrote:
> 
>> On Mon, 28 Dec 2020 at 09:44, Raghu Icecraft Software Trainings
>> <raghu.icecraft@gmail.com> wrote:
>>>
>>> Hello,
>>> I have upgraded my kernel poky to 2019.1 version, here i am unable to
>> find chpasswd utility because of which i am unable to set password to my
>> root-user.
>>> Can you please let me know if the chpasswd utility has been changed or
>> modified please.
>>
>> Yocto Project doesn't have a version "2019.1", see
>> https://wiki.yoctoproject.org/wiki/Releases.
>>
>> I guess you're using a vendor supplied BSP or SDK with that version
>> number. Could you provide the Yocto Project version number and the
>> layers in use, or at least give some more info on where your "2019.1"
>> release is from.
>>
>> Thanks,
>>
>> --
>> Paul Barker
>> Konsulko Group
>>
> 
> 
> 
> 
> 
