Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC4774C80039
	for <yocto@yoctoproject.org>; Fri,  3 Dec 2010 13:15:42 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB3JFZSd003954;
	Fri, 3 Dec 2010 11:15:35 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 3 Dec 2010 11:15:34 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 3 Dec 2010 11:15:35 -0800
Message-ID: <4CF941D5.5030407@windriver.com>
Date: Fri, 03 Dec 2010 14:15:33 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: Xianghua Xiao <xiaoxianghua@gmail.com>
References: <8A929EC0-8AF1-48BB-ACD4-9D38C8F72DCD@jonmasters.org><1291399287.16321.18.camel@feynman.coloradoengineeringinc.com><20101203184643.GW10755@ibawizard.net>
	<AANLkTinc8zq20orAerFvTz9T6CFkQe9pChAG9JwdEJTQ@mail.gmail.com>
In-Reply-To: <AANLkTinc8zq20orAerFvTz9T6CFkQe9pChAG9JwdEJTQ@mail.gmail.com>
X-OriginalArrivalTime: 03 Dec 2010 19:15:35.0142 (UTC)
	FILETIME=[76311060:01CB931E]
Cc: yocto@yoctoproject.org, beagleboard@googlegroups.com
Subject: Re: [beagleboard] Yocto
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
X-List-Received-Date: Fri, 03 Dec 2010 19:15:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10-12-03 02:11 PM, Xianghua Xiao wrote:
> On Fri, Dec 3, 2010 at 12:46 PM, Petr Štetiar<ynezz@true.cz>  wrote:
>> Michael J. Hammel<mjhammel@graphics-muse.org>  [2010-12-03 11:01:27]:
>>
>> Hi,
>>
>>> I've heard of Yocto only in passing.  I'm assuming it's another
>>> bitbake-based metabuild system?  Is there some reasoning why
>>> Meego/Linaro/OpenEmbedded/Angstrom/Custom Builds cannot fill the
>>> requirements of Yocto?  I don't mean that harshly at all - I'm just
>>> curious about the evolution and true target audiences of these projects.
>>> It's nice to have choices, but developers should have some idea of the
>>> differences so they can choose wisely when just starting.
>>
>> Richard wrote nice summary[1], it's worth reading and it might answer your
>> questions as well :-)
>>
>> 1. http://lists.linuxtogo.org/pipermail/openembedded-devel/2010-November/026598.html
>>
>> -- ynezz
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Beagle Board" group.
>> To post to this group, send email to beagleboard@googlegroups.com.
>> To unsubscribe from this group, send email to beagleboard+unsubscribe@googlegroups.com.
>> For more options, visit this group at http://groups.google.com/group/beagleboard?hl=en.
>>
>>
>
> May we know roughly how many paid resources are behind Yocto?
>
> Which arch will be first officially supported? Will it be ATOM as Poky
> is really part of Intel? Beagle/ARM will be done by the community
> instead?

I can provide some answers for this part of the query.

In the 0.9 release, we already support the following arches:

   - x86(64), mips, arm and powerpc

These are all based on a 2.6.34 kernel base (with an option
for 2.6.37-rcX shortly). There are simulated targets for
each arch, and a hardware reference for each as well
(for ARM the reference hardware is the beagleboard).

Hope that helps,

Bruce

>
> Thanks,
> Xianghua
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


