Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C657C4C803D6
	for <yocto@yoctoproject.org>; Tue, 24 May 2011 15:38:11 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4OKc8KW019635
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 24 May 2011 13:38:08 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 24 May 2011 13:38:08 -0700
Message-ID: <4DDC172E.1010602@windriver.com>
Date: Tue, 24 May 2011 16:38:06 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110419 Thunderbird/3.1.9 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Leon Woestenberg <leon.woestenberg@gmail.com>
References: <1290974426-24618-1-git-send-email-fransmeulenbroeks@gmail.com>	<20101129200549.GA25679@windriver.com>
	<BANLkTi=7KeMRTkQ7hsp0jXVJNTGfDCAYqQ@mail.gmail.com>
In-Reply-To: <BANLkTi=7KeMRTkQ7hsp0jXVJNTGfDCAYqQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-bsp-kirkwood: created layer for Marvellkirkwood
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
X-List-Received-Date: Tue, 24 May 2011 20:38:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-05-20 11:07 AM, Leon Woestenberg wrote:
> Hello,
>
> On Mon, Nov 29, 2010 at 9:05 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> In message: [yocto] [PATCH] meta-bsp-kirkwood: created layer for Marvellkirkwood
>> on 28/11/2010 Frans Meulenbroeks wrote:
>>
>>> This layer is a first attempt to create a layer for kirkwoord.
>>
>> On this topic. Is there any reason to not use linux-yocto
>> for the kernel ? Whenever possible, I'd like to get everyone
>> pulling in the same direction for these platforms. We have
>> ...
>> It also helps us review and push for platforms to be merged
>> upstrea if things go into a common kernel repository.
>> ...
>> It would also mean that the BSP would be kept up to date with
>> bug/security fixes and be considered for updating to
>> ...
>> at these patches in a 2.6.37 context (but obviously I don't
>> have the hardware to use for boot testing).
>>
> These are good points, but we have experienced *lots* of (old) vendor
> kernel patch dumps when I new machine is released.
>
> Surely most patches would not be accepted upstream, or have become
> obsolete (need only much forward porting work in the most ideal case).
>
> In OpenEmbedded, the linux/ directory is wildly populated for this
> practical reason.
>
> How are we going to shove every machine from OpenEmbedded linux/ into
> linux-yocto?

That's not the current plan, but it is of course possible
with enough effort (Where the effort is the obvious: updating
the patches to match the linux yocto targeted version).

>
> Or, better: who decides when it matches linux-yocto or should be
> linux-something else?

I know that I'd consider/help with any reasonable set of patches.
There really aren't any onerous set of requirements. We can build
BSPs out of common branches, share configs, etc, make things
easier for getting a BSP in the tree. Once in there, any
fixes or updates would automatically prop to the BSP. Getting
more boards buildable and supported only helps make things
better.

But there's a catch (isn't there always). Being willing to help
maintain the BSP if a feature merge or conflict occurs. And, if
possible, help look into mainlining the patches. But collecting
up the many vendor patches and sharing what's worth sharing,
moving the towards mainline is a pretty decent initial goal.

There's other options as well. The linux-yocto recipe will
build BSPs that are branched in remote repositories. Those
repos can be kept up to date with common features and fixes
as well.

>
> It's mainly a problem originated by vendors working for years on their
> port and then dumping their 2.6.32 kernel in 2.6.39 times, not blaming
> anyone else here :)

Absolutely. I'm in the same situation on a daily basis.

Cheers,

Bruce

>
> Regards,


