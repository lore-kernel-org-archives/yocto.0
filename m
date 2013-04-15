Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A61E00597
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 08:21:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3FFL7Z9009214
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 15 Apr 2013 08:21:07 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 15 Apr 2013 08:21:07 -0700
Message-ID: <516C1ADA.8050908@windriver.com>
Date: Mon, 15 Apr 2013 11:20:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: "Saridakis, Dean (US SSA)" <dean.saridakis@baesystems.com>
References: <201304151517.r3FFHWcD018317@mr1.windriver.com>
In-Reply-To: <201304151517.r3FFHWcD018317@mr1.windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Config fragment not being picked up
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
X-List-Received-Date: Mon, 15 Apr 2013 15:21:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-15 11:17 AM, Saridakis, Dean (US SSA) wrote:
>>>>>>> Think I've followed the example in the manual correctly. My append
>>>>>>> file
>>>> is
>>>>>> pretty simple:
>>>>>>>
>>>>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
>>>>>>
>>>>>> It looks like you forgot the colon at the end of the path.
>>>>>> Try this:
>>>>>>      FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>>>>
>>>>>> -Kevin
>>>>>
>>>>> Good eye, but afraid that didn't help (maybe the path was empty
>>>> before???). I think the files are getting picked up, since fetch will
>>>> fail if change the file name to force a not found error.
>>>>>
>>>>
>>>> What release are you using ? I tested this just last night before the
>>>> 1.4 release final RC .. so it definitely still works!
>>>>
>>>> How are you determining that it isn't being picked up?
>>>
>>> I believe the SDK is based on Yocto 1.2 / Poky 7.0 -- bitbake is 1.15.2.
>>> kernel.bbclass kernel_do_configure() looks like it only does a make
>> oldconfig on defconfig...?
>>> Should I expect to see the .cfg files being eppended there?
>>>
>>> The .config I end up with doesn't have the definitions from my .cfg
>> fragment files.
>>
>> Fragments are processed later in the build procedure. Assuming this is a
>> linux-yocto based bbappend, they'll be added in the kernel_configme task,
>> and will modify the base BSP configuration.
>>
>> That doesn't mean that all the settings will make it to the final .config, since
>> normal LKC processing and missing dependencies would drop
>> invalid/incorrect settings.
>
> The SDK .bb inherits directly from kernel & doesn't use linux-yocto.bb. So listtask doesn't show configme.
> I see an addtask for it in linux-yocto.inc, but am guessing that trying to shoehorn that in on top of the SDK (in my append file) is probably more trouble than it's worth.
> Guess I'm better off trying to figure out how to patch the defconfig?

The ability to use fragments requires that you at least use the
linux-yocto bbclass, it will work with non linux-yocto recipes, but
you need to follow the example in 
meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb

The 1.2 vintage fragments aren't as feature rich as 1.3 and 1.4, but
they should work to add simple fragment modifications.

I hate to see anyone hacking a defconfig unless nothing else works :)

Bruce

>
>
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>


