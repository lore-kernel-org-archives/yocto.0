Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A02A8E00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 11:06:17 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Dec 2011 11:06:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="84109289"
Received: from unknown (HELO [10.255.13.9]) ([10.255.13.9])
	by azsmga001.ch.intel.com with ESMTP; 09 Dec 2011 11:06:13 -0800
Message-ID: <4EE25C25.60100@linux.intel.com>
Date: Fri, 09 Dec 2011 11:06:13 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
	<4EE132C5.6040007@linux.intel.com>
	<CANJvwR-GVN+=JaS29oxmGM6mr-D6ncv+vsyVT2OaT+vOEaU8qA@mail.gmail.com>
	<4EE1957E.1060506@linux.intel.com>
	<CANJvwR9dvuxk8Mz_67igs2cge5LY=mi4PnnaKocQSmPF3kL95Q@mail.gmail.com>
	<CANJvwR9Xgk9sU4vANMdTx8PpFG3cg7a+KgDFE6fN64mrsoJniQ@mail.gmail.com>
In-Reply-To: <CANJvwR9Xgk9sU4vANMdTx8PpFG3cg7a+KgDFE6fN64mrsoJniQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: HOB usage
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
X-List-Received-Date: Fri, 09 Dec 2011 19:06:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/12/11 21:18, Sathishkumar Duraisamy wrote:
> On Fri, Dec 9, 2011 at 10:37 AM, Sathishkumar Duraisamy
> <bewithsathish@gmail.com> wrote:
>> On Fri, Dec 9, 2011 at 10:28 AM, Joshua Lock <josh@linux.intel.com> wrote:
>>> On 08/12/11 20:52, Sathishkumar Duraisamy wrote:
>>>> Hi,
>>>>
>>>> I migrating from Openembedded to yocto project and using Beagleboard
>>>> as playground.
>>>>
>>>> On Fri, Dec 9, 2011 at 3:27 AM, Joshua Lock <josh@linux.intel.com> wrote:
>>>>>
>>>>> On 05/12/11 10:35, madeeha javed wrote:
>>>>>> I an using Yocto Edison. My machine configuration is beagleboard. And
>>>>>> when I launch hob and Bake. I get a message that Output Image Type is
>>>>>> not set.When I Edit-> Preferences, I see that jffs2 and tar.bz2 are
>>>>>> set. And even if I select a different type, the message keeps is
>>>>>> there.
>>>>>
>>>> I too faced similar problem for hob.
>>>>
>>>>> Madeeha,
>>>>>
>>>>> I'm not able to replicate this issue. Have you modified any of the
>>>>> configuration files by hand? The three key files in build/conf are
>>>>> hob-post.conf, hob-pre.conf, local.conf
>>>>
>>>> Please find these files in the attachment.
>>>
>>> Did you forget the attachment? Or did the mailing list strip it?
>>
>> Sorry, I forget to attach.
>>>
>>>>
>>>>>
>>>>> It's possible you've hard-assigned the variable in there.
>>>>>
>>>>> If you can provide more information I can try and replicate. A copy of
>>>>> the above configuration files would be useful.
>>>>
>>>> In openembedded, I see the some lines like this
>>>>
>>>> # Add the required image file system types below. Valid are
>>>> # jffs2, tar(.gz|bz2), cpio(.gz), cramfs, ext2(.gz), ext3(.gz), ext4(.gz|.bz2),
>>>> # squashfs, squashfs-lzma
>>>> IMAGE_FSTYPES = "jffs2 tar"
>>>>
>>>> which is moved to hob-post.conf, which may causing the problems I hope.
>>>
> 
> I forget to say, in bash terminal, it works fine. In hob only it
> causing the issue.
> 

The hob-pre and hob-post files are not used from the terminal, unless
you explicitly pass them.
I will look at the configuration files you've shared.

Also, can you tell us how you are launching hob?

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

