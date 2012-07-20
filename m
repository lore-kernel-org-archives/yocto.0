Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67EBAE002AB
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 21:53:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6K4rFO1020711
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 19 Jul 2012 21:53:15 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 19 Jul 2012 21:53:14 -0700
Message-ID: <5008E439.1050204@windriver.com>
Date: Fri, 20 Jul 2012 00:53:13 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <cover.1342504457.git.nitin.a.kamble@intel.com>
	<1342620801.2338.160.camel@trz-ThinkPad-T420>
	<ADD6A3980E8C39419A432FF422031B4C03188C9C@ORSMSX106.amr.corp.intel.com>
	<1342668398.2338.227.camel@trz-ThinkPad-T420>
	<ADD6A3980E8C39419A432FF422031B4C03188F51@ORSMSX106.amr.corp.intel.com>
	<1342709843.2338.233.camel@trz-ThinkPad-T420>
	<ADD6A3980E8C39419A432FF422031B4C03188FCC@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C03188FCC@ORSMSX106.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
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
X-List-Received-Date: Fri, 20 Jul 2012 04:53:16 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-19 11:25 AM, Kamble, Nitin A wrote:
>
>
>> -----Original Message-----
>> From: Zanussi, Tom
>> Sent: Thursday, July 19, 2012 8:27 PM
>> To: Kamble, Nitin A
>> Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com
>> Subject: RE: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
>>
>> On Thu, 2012-07-19 at 07:39 -0700, Kamble, Nitin A wrote:
>>>
>>>> -----Original Message-----
>>>> From: Zanussi, Tom
>>>> Sent: Thursday, July 19, 2012 8:57 AM
>>>> To: Kamble, Nitin A
>>>> Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com
>>>> Subject: RE: [PATCH 0/1] meta: update crownbay.scc for newer emgd
>>>> driver
>>>>
>>>> On Wed, 2012-07-18 at 19:58 -0700, Kamble, Nitin A wrote:
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Zanussi, Tom
>>>>>> Sent: Wednesday, July 18, 2012 7:43 PM
>>>>>> To: Kamble, Nitin A
>>>>>> Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com
>>>>>> Subject: Re: [PATCH 0/1] meta: update crownbay.scc for newer
>>>>>> emgd driver
>>>>>>
>>>>>> On Mon, 2012-07-16 at 22:57 -0700, nitin.a.kamble@intel.com wrote:
>>>>>>> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>>>>>>>
>>>>>>> This commit changes emgd kernel driver for crownbay bsp to the
>>>>>>> emgd-
>>>>>> 1.14.
>>>>>>>
>>>>>>
>>>>>> Nitin,
>>>>>>
>>>>>> Doesn't switching this over in the kenrnel require emgd-1.14
>>>>>> userspace recipe updates to work?  Did I miss those?
>>>>>>
>>>>>> Tom
>>>>>>
>>>>> Tom,
>>>>>      I am holding the emgd 1.14 userspace commits until the kernel
>>>>> repository
>>>> change goes upstream. The kernel recipe will need new SRCREV (with
>>>> emgd
>>>> 1.14 kernel parts) for the user level emgd 1.14 parts to work. And
>>>> that dependency will get satisfied once this commit is in.
>>>>>
>>>>
>>>> Yeah, I understand, the crownbay is typically the most complicated
>>>> update for all of those reasons - simultaneous new kernel
>>>> version/recipe, new emgd branch, and new emgd userspace recipe all at
>> the same time.
>>>>
>>>> In the past I've submitted them all at the same time for
>>>> simultaneous review and some coordination with Bruce - once the
>>>> kernel parts are in, the kernel recipe and the userspace parts can
>>>> then be pulled in along with a simple follow-on patch to update the
>> SRCREVs Bruce give us.
>>>>
>>>> The thing is that if Bruce pulls in the patch to switch to emgd-1.14
>>>> and only at that point do you post the userspace recipe, and it ends
>>>> up needing some rework, in the meantime the graphics remain
>>>> non-functional (I know, they already are, thanks to the package
>>>> re-ordering patches breaking the current recipe, but hopefully the
>>>> 1.14 changes will be in and we don't have to worry about it any more.).
>>>>
>>>> Does that make sense, and can you just post the userspace and kernel
>>>> recipe parts before we give Bruce the go-ahead in making the kernel
>>>> changes?  (I'd also like to try it out myself as well...).
>>>>
>>> Tom,
>>>    Until the crownbay bsp's Linux-yocto kernel recipe's meta SRCREV is
>> updated, these kernel repo changes have no effect in the build process.
>> Right ? So as I see, this commit does not make anything worst (or better).
>>> I am sending the userland recipe commits anyway; So that you can also test
>> it out.
>>>
>>
>> Right, but what if we have to update the meta SRCREV for a different reason
>> in the meantime (like we did last week for instance).  We're then forced to
>> take the emgd commit as well.
>
> I see the issue now. And I don't see a perfect solution to the issue. Because of commits in two different repos there always going to be this kind of a sync issue. The best is pull the commits in both repositories at the same time.

FYI: everything is staged and I have a SRCREV commit prepared for this.

When I hear a clear "yes" on the userspace changes, I can send the pull
request immediately.

Cheers,

Bruce

>
> Thanks,
> Nitin
>
>>
>> In any case, it's your BSP so it's up to you how you want to manage it, I'm just
>> trying to save you and the users some headaches.  It always made sense to
>> me to do it all at the same time, all else being equal...
>>
>> Tom
>>
>>>
>>> Thanks,
>>> Nitin
>>>
>>>
>>>
>>
>


