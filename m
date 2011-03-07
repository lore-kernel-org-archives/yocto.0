Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD2D64C8009A
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2011 01:48:49 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p277mfAt018306;
	Sun, 6 Mar 2011 23:48:42 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 6 Mar 2011 23:48:41 -0800
Received: from [147.11.233.56] ([147.11.233.56]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 6 Mar 2011 23:48:41 -0800
Message-ID: <4D748DD8.5030402@windriver.com>
Date: Mon, 07 Mar 2011 02:48:40 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iktkgj$rpj$1@dough.gmane.org>
	<4D725AB1.8040309@linux.intel.com>	<4D72DACE.6050209@windriver.com>
	<ikvg0j$khm$1@dough.gmane.org>
In-Reply-To: <ikvg0j$khm$1@dough.gmane.org>
X-OriginalArrivalTime: 07 Mar 2011 07:48:41.0290 (UTC)
	FILETIME=[13A6D2A0:01CBDC9C]
Cc: yocto@yoctoproject.org
Subject: Re: yocto supported freescale eval boards
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
X-List-Received-Date: Mon, 07 Mar 2011 07:48:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-03-06 03:18 AM, Robert Berger wrote:
> Hi Darren, Bruce,
>
> On 03/06/2011 02:52 AM, Bruce Ashfield wrote:
>>>>
>>>>
>>>> Besides the PPC the iMX31ADS seems to be supported as well.
>>
>> The imx31ads is supported by older non linux-yocto recipes, so it
>> may have some bit rot at the moment. Until it gets refreshed onto
>> a linux-yocto base, your mileage will vary with it.
>
> Thanks for the hint;)
>
>>
>>>
>>> We're currently using the following board.
>>>
>>> http://search.digikey.com/scripts/DkSearch/dksus.dll?PName?Name=MPC8315E-RDBA-ND&Site=US&Lang=EN
>>>
>>
>> Confirmed. This is the board we are currently using.
>>
>>
>> There are definitely plans to update/refresh the FSL/e500 board
>> options. Unofficially there's a whole set of boards that will
>> work fine, and there's a good pool of good quality BSPs that are
>> viable options.
>>
>> I hesitate to say more, since nothing has been quite chosen yet
>> and I'd be speculating or worse misleading at this point. But
>> a newer e500 based board is something that will arrive once
>> everything falls into place.
>
> Do you happen to have some time estimation for this?

Nothing that I'd call a solid commitment at the moment.
Hopefully this will be something we can clarify in
the next little while.

>
>>
>> That being said, I can suggest/help with the addition of any of
>> a number of FSL powerpc based boards, it all depends on what
>> the requirements are for the board. Does it just have to
>> be readily available ? Less than 'x' dollars ? Any particular
>> peripheral support ?
>
> I'm doing a 5 days "Introduction to Embedded Linux" and a 5 days "Device
> Drivers and Kernel Internals" training which are pretty much hardware
> independent. Just want to avoid using LTIB and want to use yocto
> instead, since a "mainline" kernel is definitely preferred over whatever
> comes with LTIB. Most likely mainline will work with most of the powerpc
> based boards as long as I don't need any fancy peripherals.

A reasonable requirement and something that leaves a good
set of boards available.

>
> Thanks for the offer to help me adding a board. I'll have a chat with my
> customer and will let you know

Sounds good.

Bruce

>
> Regards,
>
> Robert
>
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>
>
> ...I read the system requirements label on a software package recently.
> It said "requires Windows NT or better". So I installed Unix. -- from a FAQ
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


