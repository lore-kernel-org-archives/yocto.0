Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 905B74C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 15:56:59 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6EKusG8007301
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Jul 2011 13:56:55 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 14 Jul 2011 13:56:54 -0700
Message-ID: <4E1F5814.1050201@windriver.com>
Date: Thu, 14 Jul 2011 16:56:52 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <F6CE52B0-7638-4DC3-BEC0-3DC44A6794A5@kernel.crashing.org>
	<4E1EEB87.1020200@windriver.com>
	<9BDFCF4A-EA10-4963-87E0-556604F3E0AB@dominion.thruhere.net>
	<4E1EF577.2080807@windriver.com>
	<AD2400E9-D0BD-4064-8905-40647AB26518@kernel.crashing.org>
	<1943392B-9988-4CDD-8147-E25F8C8C7203@dominion.thruhere.net>
	<4E1F182E.6000501@windriver.com>
	<6C5647FD-A95C-41E6-90A6-6427DEA04E61@kernel.crashing.org>
In-Reply-To: <6C5647FD-A95C-41E6-90A6-6427DEA04E61@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: IMAGE_FSTYPES that are supported?
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
X-List-Received-Date: Thu, 14 Jul 2011 20:56:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/14/11 12:34, Kumar Gala wrote:
>
> On Jul 14, 2011, at 11:24 AM, Bruce Ashfield wrote:
>
>> On 07/14/11 12:21, Koen Kooi wrote:
>>>
>>> Op 14 jul 2011, om 18:20 heeft Kumar Gala het volgende geschreven:
>>>
>>>>
>>>> On Jul 14, 2011, at 8:56 AM, Bruce Ashfield wrote:
>>>>
>>>>> On 07/14/11 09:40, Koen Kooi wrote:
>>>>>>
>>>>>> Op 14 jul 2011, om 15:13 heeft Bruce Ashfield het volgende geschreven:
>>>>>>
>>>>>>> On 07/14/11 09:05, Kumar Gala wrote:
>>>>>>>> Is there a list of which IMAGE_FSTYPES are supported.  I didn't see anything in the docs.  Looking to see if a u-boot 'mkimage' wrapped set of images is supported or not.
>>>>>>>
>>>>>>> I'm not 100% where the list is, but I can confirm that
>>>>>>> uImages are supported and work nicely. Assuming that
>>>>>>> you are talking about the common use case, and not something
>>>>>>> more exotic :)
>>>>>>
>>>>>>
>>>>>> I think he means partitioned uimages where you have a kernel + initrd in a single uimage. We don't support that *yet*, but all the needed blocks are there. And we finally get a usecase for having the loadadresses in the machine.conf files :)
>>>>>
>>>>> Yah, that's what I wondered as well. I've done this locally,
>>>>> but nothing out of the box .. so I had nagging doubts!
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>>>
>>>>
>>>> What's the IMAGE_FSTYPE for a normal uImage ?
>>>
>>> None, it's built by the kernel class, not the rootfs class.
>>
>> and to expand a bit, the machine conf would have:
>>
>> KERNEL_IMAGETYPE = "uImage"
>>
>> So the kernel class will build and produce a uImage for deployment.
>
> Ah, so there isnt support for getting a ramdisk wrapped via mkimage.

Correct, or at least not that I've used out of the box, and
this is what Koen was commenting on.

Cheers,

Bruce

>
> - k


