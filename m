Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36C9AE00303
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 09:45:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBNHjLOR023291
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Dec 2011 09:45:21 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 23 Dec 2011 09:45:21 -0800
Message-ID: <4EF4BE2D.1090707@windriver.com>
Date: Fri, 23 Dec 2011 12:45:17 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Philip Balister <philip@balister.org>
References: <4EF34776.9030002@gmail.com>	<5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>	<2143100.ORnxPSEQca@helios>	<9CC56138-C252-46A6-B318-9FA939CE2DAC@dominion.thruhere.net>	<B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
	<4EF4B610.6050904@windriver.com> <4EF4BCA3.30209@balister.org>
In-Reply-To: <4EF4BCA3.30209@balister.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: meta-ti?????
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
X-List-Received-Date: Fri, 23 Dec 2011 17:45:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-23 12:38 PM, Philip Balister wrote:
> On 12/23/2011 12:10 PM, Bruce Ashfield wrote:
>> On 11-12-23 08:10 AM, James Abernathy wrote:
>>>
>>> On Dec 23, 2011, at 3:50 AM, Koen Kooi wrote:
>>>
>>>>
>>>> Op 23 dec. 2011, om 09:37 heeft Paul Eggleton het volgende geschreven:
>>>>
>>>>> On Friday 23 December 2011 09:28:31 Koen Kooi wrote:
>>>>>> Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende geschreven:
>>>>>>> I know the examples in the documentation of Yocto use meta-intel a
>>>>>>> lot
>>>>>>> to get the board specific BSPs like meta-crownbay or meta-n450.
>>>>>>>
>>>>>>> Is there a meta-ti or similar that gets you the meta-beagleboard and
>>>>>>> meta-pandaboard?  If not how do you clone and checkout the pandaboard
>>>>>>> BPS?
>>>>>> http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstruments/
>>>>>>
>>>>>>
>>>>>> It has a README in there on how to set it up, read it and follow it
>>>>>> precisely.
>>>>>
>>>>> Just out of interest, why does meta-texasinstruments depend on
>>>>> meta-angstrom?
>>>>
>>>> It needs extra things in overrides and reuses tasks from there.
>>>
>>> Sorry for the follow-up, but if I clone the meta-texasinstruments bsp
>>> repository and checkout the pandaboard-rework branch,
>>> how does that relate to the Yocto branch/bsp yocto/standard/pandaboard
>>> on the Yocto site?
>>
>> I'll jump into the middle of the thread, and answer a couple of specific
>> questions and leave the larger what depends on what, and where
>> things evolve and why .. for another day.
>>
>> The yocto/standard/pandaboard in the 3.0 kernel tree is the refresh/update
>> of a reference BSP for the 3.0 (and newer) kernel(s).
>
> Who is the intended audience of this BSP? The Angstrom/meta-to layer is
> obviously intended for people using TI hardware and all the associated
> peripherals. Without defining your audience better, this jsut adds to
> the confusion end users are experiencing with all the words and layers
> being used in emails. This is becoming a real problem as new users enter
> the project.

Quite simply, the audience that needs a particular kernel version
and feature set, with the tooling to transition to a supported (i.e
not the yocto one) BSP.

Cheers,

Bruce

>
> Philip
>
>>
>> But what you are seeing ,in the linux-yocto kernel tree, is a work in
>> progress at the moment, since there is an associated layer that is a
>> combo layer, and uses the layer tooling to build on top work that has
>> already been done by TI and other distro layers.
>>
>> Since, as already been covered in this thread, there (often) multiple
>> places support for any  given board can be found. What you use, all
>> depends on what you are looking for.
>>
>> The linux-yocto variant is built/tested with a yocto + oe-core base
>> and receives updates of features/fixes that other BSPs in the tree
>> gets. (note: I'm not claiming this is unique, just that it is done
>> using the yocto kernel tooling ). A common set of features and docs
>> would accompany any related BSPs. In this case, the BSP was contributed
>> to the project on the 3.0 kernel, so I merged it into the tree to
>> have that integrated support with as few layers as possible.
>>
>> If you want the angstrom/TI pandaboard, doing what Koen suggests is
>> the ticket. Look at those layers, follow their READMEs and you'll be
>> good to go.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>
>>>
>>> Being a Yocto newbie, it's hard enough to understand all the branches
>>> on the yocto site. Relating the meta-angstrom is confusing.
>>>
>>> The light bulb has now gone on yet :-)
>>>
>>> Jim A
>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


