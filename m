Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 394E0E013A3
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 06:43:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q29EhEmU003485
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Mar 2012 06:43:14 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 9 Mar 2012 06:43:14 -0800
Message-ID: <4F5A1700.3080501@windriver.com>
Date: Fri, 9 Mar 2012 09:43:12 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Bob Cochran <yocto@mindchasers.com>
References: <4F59F59F.4040807@enea.com> <4F5A0913.20207@windriver.com>
	<4F5A1577.1010600@mindchasers.com>
In-Reply-To: <4F5A1577.1010600@mindchasers.com>
Cc: yocto@yoctoproject.org
Subject: Re: yocto and LTSI
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
X-List-Received-Date: Fri, 09 Mar 2012 14:43:16 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-03-09 09:36 AM, Bob Cochran wrote:
> On 03/09/2012 08:43 AM, Bruce Ashfield wrote:
>> On 12-03-09 07:20 AM, David Nyström wrote:
>>> Hi All,
>>>
>>> Whats yoctos take on LTSI ?
>>>
>>> http://git.linuxfoundation.org/?p=ltsi-kernel.git;a=summary
>>> http://lwn.net/Articles/484337/
>>>
>>> I've noticed that LTT-ng and other kernel patches are independently
>>> ported and maintained by the yocto project.
>>> Are there any plans for yocto to have ltsi-kernel patches as upstream ?
>>
>> We'll be syncing up with the ltsi kernel parts over the summer.
>> But yes, LTSI will be one of the sources used for yocto kernel trees.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>
> I just finished reviewing the slides for LTSI given at ELC:
> (https://events.linuxfoundation.org/images/stories/pdf/lf_elc12_shibata.pdf).
>
>
> Why does the Linux Foundation need to get behind yet another effort to
> maintain a kernel repository for embedded? It seems that many of the
> objectives are the same for the two projects regarding the kernel. Why
> not just branch a yearly Yocto kernel as long-term stable and add the
> support methodology outlined in the LTSI slides to this branch? Perhaps
> this could also be done with the Poky repo?

LTSI is still relatively new, a bit of patience is required for
us to effectively collaborate between the two areas.

But yocto will always have a newer kernel than LTSI as we work
throughout any given period. Quite simply put, there is no way to
have one kernel version that meets everyone's needs. That's always
been the case, and will likely continue to be the case for the
forseeable future.

>
> How is a developer supposed to view Yocto and LTSI? The former is
> cutting edge, developer friendly with all the bells & whistles, and
> experimental but use the latter for production??? Or maybe use the tools
> and rootfs from Yocto but the kernel from LTSI?

These sorts of things are still being worked out, when we actually
have a LSTI based yocto option, some sort of messaging will be
created.

>
> It seems Greg K-H of LTSI should join forces with Yocto and keep things
> simple & unified for us embedded developers (or Yocto should dump
> maintaining its own kernel repos and just draw from LTSI).

I already have initial conact with Greg on sync'ing up my efforts with
LSTI.  Perhaps someday there will be a more complete overlap in the
two, but today there isn't a complete overlap, so there will be
additions to  LTSI that some boards/features/etc that yocto requires.
Those additions may degrade to zero over time. In fact, if everything
would just go mainline .. that would be even better.

Cheers,

Bruce

>
>
> Bob
>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


